module System.Runtime.InteropServices.Expando;
import System;
import System.Reflection;
public:
pragma(assembly,"mscorlib"){
interface IExpando{
FieldInfo AddField(System.String);
PropertyInfo AddProperty(System.String);
MethodInfo AddMethod(System.String,System.Delegate);
Void RemoveMember(System.Reflection.MemberInfo);
}
}
