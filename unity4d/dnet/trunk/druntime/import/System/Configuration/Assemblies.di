module System.Configuration.Assemblies;
import System;
public:
pragma(assembly,"mscorlib"){
class AssemblyHash : System.ValueType{
this (System.Byte[]);
System.Byte[] GetValue();
System.Void SetValue(System.Byte[]);
System.__object Clone();
}
class AssemblyVersionCompatibility : System.Enum{
Int32 value__;
}
}
