using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Configuration;
using System.Text;
using System.Threading.Tasks;
using System.Reflection;
using HageLibrary;

namespace NetToD
{
    public static class Program
    {
        static string CommaSeparatedRepresentation(this IEnumerable<ParameterInfo> parameters)
        {
            return string.Join(",", parameters.Select(p => p.ParameterType.DFullName()));
        }

        static string DName(this Type type)
        {
            switch (type.Name)
            {
                default:
                    //Object is reserved by D language
                    if (type.FullName == "UnityEngine.Object")
                    {
                        return "__UnityObject";
                    }
                    return type.Name;
            }
        }

        static string DFullName(this Type type)
        {
            if (type.FullName == "UnityEngine.Object")
            {
                return "UnityEngine.__UnityObject";
            }
            //インナークラスは+でつながるので置き換え
            return type.FullName.Replace('+', '.');
        }

        static string ModuleName(this string @namespace)
        {
            return @namespace.Split('.').Reverse().First();
        }

        static FileStream GetModuleFile(string file,string @namespace)
        {
            var root = $".\\import_{file}";
            if (@namespace == null)
            {
                Directory.CreateDirectory(root);
                return File.Create(root + "\\global.d");
            }
            var typeDirectory = @namespace.Split('.');
            var moduleName = @namespace.ModuleName() + ".d";
            var moduleDirectory = typeDirectory.Reverse().Skip(1).Reverse().ToArray();
            var fileDirectory = root + "\\" + string.Join("\\", moduleDirectory);
            Directory.CreateDirectory(fileDirectory);

            return File.Create(fileDirectory + "\\" + moduleName);
        }

        static bool IgnoredType(this Type type)
        {
            if (type.IsByRef || type.IsGenericType)
            {
                return true;
            }
            if (!type.IsNested && type.IsNotPublic)
            {
                return true;
            }
            if (type.IsNested && !type.IsNestedPublic)
            {
                return true;
            }
            if (type.BaseType != null && type.BaseType.IgnoredType())
            {
                return true;
            }
            if (type.IsArray && type.GetArrayRank() > 1)
            {
                return true;
            }
            if (type.HasElementType && type.GetElementType().IgnoredType())
            {
                return true;
            }
            return false;
        }
        static bool IgnroedParameter(this ParameterInfo parameter)
        {
            if (parameter.IsOut)
            {
                return true;
            }
            if (parameter.ParameterType.IgnoredType())
            {
                return true;
            }
            return false;
        }

        static void WriteType(StreamWriter writer, Type type)
        {
            if (type.IgnoredType())
            {
                return;
            }
            var typeType = type.IsInterface ? "interface" : "class";
            var typeName = type.DName();

            //.NETのインナークラスはD言語ではstaticなインナークラス(non-staticだとアウタークラスのthisをキャプチャする)
            if (type.IsNested)
            {
                writer.Write("static ");
            }
            writer.Write("{0} {1}", typeType, typeName);
            if (type.BaseType != null)
            {
                //継承はFullName
                writer.Write(" : {0}", type.BaseType.DFullName());
            }
            writer.WriteLine("{");

            //writer.WriteLine("public:");

            foreach (var nestedType in type.GetNestedTypes(BindingFlags.Public | BindingFlags.Instance | BindingFlags.DeclaredOnly))
            {
                WriteType(writer, nestedType);
            }

            foreach (
                var constructor in
                    type.GetConstructors(BindingFlags.Public | BindingFlags.Instance |
                                         BindingFlags.DeclaredOnly))
            {
                if (constructor.IsGenericMethod)
                {
                    continue;
                }
                if (constructor.GetParameters().Any(p => p.IgnroedParameter()))
                {
                    continue;
                }
                var parameter = string.Join(",", constructor.GetParameters().CommaSeparatedRepresentation());
                writer.WriteLine("this ({0});", parameter);
            }

            foreach (
                var method in
                    type.GetMethods(BindingFlags.Public | BindingFlags.Instance | BindingFlags.Static |
                                    BindingFlags.DeclaredOnly))
            {
                if (method.IsGenericMethod)
                {
                    continue;
                }
                var name = method.Name;
                var returnType = method.ReturnType;
                var returnTypeName = returnType.DName();
                if (method.GetParameters().Any(p => p.IgnroedParameter()) || returnType.IgnoredType())
                {
                    continue;
                }
                var parameter = string.Join(",", method.GetParameters().CommaSeparatedRepresentation());
                if (method.IsStatic)
                {
                    writer.Write("static ");
                }
                writer.WriteLine("{0} {1}({2});",
                    returnTypeName,
                    name,
                    parameter);
            }
            writer.WriteLine("}");
        }

        public static void Main(string[] args)
        {
            foreach (var argument in args)
            {
                var assembly = Assembly.Load(argument);
                var fullTypes =
                    assembly.GetExportedTypes()
                        .Where(type => !type.IsNested)
                        .GroupBy(type => type.Namespace)
                        .ToArray();
                //importするファイルの探索
                var imports = new Dictionary<string, HashSet<string>>();
                foreach (var fullType in fullTypes)
                {
                    var key = fullType.Key ?? "";
                    var usedNamespaces = new HashSet<string>(fullType.Select(t => t.Namespace ?? "").Where(n => n != key));
                    foreach (var type in fullType)
                    {
                        //コンストラクタの引数型
                        foreach (var @namespace in
                            type.GetConstructors()
                                .SelectMany(constructor => constructor.GetParameters()
                                .Where(p => !p.IgnroedParameter())
                                .Select(p => p.ParameterType.Namespace ?? "")
                                .Where(n => n != key)))
                        {
                            usedNamespaces.Add(@namespace);
                        }
                        //メソッドの引数型
                        foreach (var @namespace in
                            type.GetMethods().
                                SelectMany(
                                    method => method.GetParameters()
                                                    .Where(p => !p.IgnroedParameter())
                                                    .Select(p => p.ParameterType.Namespace ?? "")
                                                    .Where(n => n != key)))
                        {
                            usedNamespaces.Add(@namespace);
                        }
                        //メソッドの戻り値型
                        foreach (var @namespace in type.GetMethods()
                                                        .Where(method => !method.ReturnType.IgnoredType())
                                                        .Select(method => method.ReturnType.Namespace ?? "")
                                                        .Where(n => n != key))
                        {
                            usedNamespaces.Add(@namespace);
                        }
                        //継承元の型
                        //継承型をimportしてない
                        if ((type.BaseType?.Namespace ?? "") != key)
                        {
                            usedNamespaces.Add(type.BaseType?.Namespace ?? "");
                        }
                    }
                    imports[key] = usedNamespaces;
                }

                foreach (var fullType in fullTypes)
                {
                    var @namespace = fullType.Key;
                    using (var file = GetModuleFile(argument,@namespace))
                    using (var writer = new StreamWriter(file))
                    {
                        writer.WriteLine("module {0};", @namespace);

                        foreach (var import in imports[@namespace ?? ""])
                        {
                            if (import == "")
                            {
                                continue;
                            }
                            writer.WriteLine("import {0};", import);
                        }

                        writer.WriteLine("public:");

                        writer.WriteLine("pragma(assembly,\"{0}\"){{", assembly.GetName().Name);

                        foreach (var type in fullType)
                        {
                            WriteType(writer, type);
                        }
                        writer.WriteLine("}");
                    }
                }
            }
            
        }
    }
}
