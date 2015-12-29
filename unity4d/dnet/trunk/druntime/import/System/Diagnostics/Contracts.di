module System.Diagnostics.Contracts;
import System;
public:
pragma(assembly,"mscorlib"){
class PureAttribute : System.Attribute{
this ();
}
class ContractClassAttribute : System.Attribute{
this (System.Type);
System.Type get_TypeContainingContracts();
}
class ContractClassForAttribute : System.Attribute{
this (System.Type);
System.Type get_TypeContractsAreFor();
}
class ContractInvariantMethodAttribute : System.Attribute{
this ();
}
class ContractReferenceAssemblyAttribute : System.Attribute{
this ();
}
class ContractRuntimeIgnoredAttribute : System.Attribute{
this ();
}
class ContractVerificationAttribute : System.Attribute{
this (System.Boolean);
System.Boolean get_Value();
}
class ContractPublicPropertyNameAttribute : System.Attribute{
this (System.String);
System.String get_Name();
}
class ContractArgumentValidatorAttribute : System.Attribute{
this ();
}
class ContractAbbreviatorAttribute : System.Attribute{
this ();
}
class ContractOptionAttribute : System.Attribute{
this (System.String,System.String,System.Boolean);
this (System.String,System.String,System.String);
System.String get_Category();
System.String get_Setting();
System.Boolean get_Enabled();
System.String get_Value();
}
class Contract : System.__object{
static System.Void Assume(System.Boolean);
static System.Void Assume(System.Boolean,System.String);
static System.Void Assert(System.Boolean);
static System.Void Assert(System.Boolean,System.String);
static System.Void Requires(System.Boolean);
static System.Void Requires(System.Boolean,System.String);
static System.Void Ensures(System.Boolean);
static System.Void Ensures(System.Boolean,System.String);
static System.Void Invariant(System.Boolean);
static System.Void Invariant(System.Boolean,System.String);
static System.Void EndContractBlock();
}
class ContractFailureKind : System.Enum{
}
class ContractFailedEventArgs : System.EventArgs{
System.String get_Message();
System.String get_Condition();
System.Diagnostics.Contracts.ContractFailureKind get_FailureKind();
System.Boolean get_Handled();
System.Void SetHandled();
System.Boolean get_Unwind();
System.Void SetUnwind();
}
}
