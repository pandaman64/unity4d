module System.Runtime.InteropServices.Expando;
import System;
import System.Reflection;
public:
pragma(assembly,"mscorlib"){
interface IExpando{
System.Reflection.FieldInfo AddField(System.String);
System.Reflection.PropertyInfo AddProperty(System.String);
System.Reflection.MethodInfo AddMethod(System.String,System.Delegate);
System.Void RemoveMember(System.Reflection.MemberInfo);
}
}
