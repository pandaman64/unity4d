module System.Runtime.ConstrainedExecution;
import System;
public:
pragma(assembly,"mscorlib"){
class CriticalFinalizerObject : System.__object{
}
class Consistency : System.Enum{
Int32 value__;
}
class Cer : System.Enum{
Int32 value__;
}
class ReliabilityContractAttribute : System.Attribute{
this (System.Runtime.ConstrainedExecution.Consistency,System.Runtime.ConstrainedExecution.Cer);
System.Runtime.ConstrainedExecution.Consistency get_ConsistencyGuarantee();
System.Runtime.ConstrainedExecution.Cer get_Cer();
}
class PrePrepareMethodAttribute : System.Attribute{
this ();
}
}
