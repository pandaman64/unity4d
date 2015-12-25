module System.Runtime.ConstrainedExecution;
import System;
public:
pragma(assembly,"mscorlib"){
class CriticalFinalizerObject : Object{
}
class Consistency : Enum{
}
class Cer : Enum{
}
class ReliabilityContractAttribute : Attribute{
}
class PrePrepareMethodAttribute : Attribute{
}
}
