module System.Configuration.Assemblies;
import System;
public:
pragma(assembly,"mscorlib"){
class AssemblyHash : System.ValueType{
this (System.Byte[]);
this (System.Configuration.Assemblies.AssemblyHashAlgorithm,System.Byte[]);
AssemblyHashAlgorithm get_Algorithm();
Void set_Algorithm(System.Configuration.Assemblies.AssemblyHashAlgorithm);
Byte[] GetValue();
Void SetValue(System.Byte[]);
Object Clone();
}
class AssemblyHashAlgorithm : System.Enum{
}
class AssemblyVersionCompatibility : System.Enum{
}
}
