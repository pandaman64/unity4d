module System.Diagnostics.Contracts.Internal;
import System.Diagnostics.Contracts;
import System;
public:
pragma(assembly,"mscorlib"){
class ContractHelper : System.Object{
static String RaiseContractFailedEvent(System.Diagnostics.Contracts.ContractFailureKind,System.String,System.String,System.Exception);
static Void TriggerFailure(System.Diagnostics.Contracts.ContractFailureKind,System.String,System.String,System.String,System.Exception);
}
}
