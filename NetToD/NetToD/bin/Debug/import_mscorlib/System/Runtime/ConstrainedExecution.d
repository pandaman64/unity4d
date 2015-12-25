module System.Runtime.ConstrainedExecution;
import System;
public:
pragma(assembly,"mscorlib"){
class CriticalFinalizerObject : System.Object{
}
class Consistency : System.Enum{
}
class Cer : System.Enum{
}
class ReliabilityContractAttribute : System.Attribute{
this (System.Runtime.ConstrainedExecution.Consistency,System.Runtime.ConstrainedExecution.Cer);
Consistency get_ConsistencyGuarantee();
Cer get_Cer();
}
class PrePrepareMethodAttribute : System.Attribute{
this ();
}
}
