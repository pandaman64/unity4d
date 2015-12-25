module System.Diagnostics.Contracts;
import System;
public:
pragma(assembly,"mscorlib"){
class PureAttribute : System.Attribute{
this ();
}
class ContractClassAttribute : System.Attribute{
this (System.Type);
Type get_TypeContainingContracts();
}
class ContractClassForAttribute : System.Attribute{
this (System.Type);
Type get_TypeContractsAreFor();
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
Boolean get_Value();
}
class ContractPublicPropertyNameAttribute : System.Attribute{
this (System.String);
String get_Name();
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
String get_Category();
String get_Setting();
Boolean get_Enabled();
String get_Value();
}
class Contract : System.Object{
static Void Assume(System.Boolean);
static Void Assume(System.Boolean,System.String);
static Void Assert(System.Boolean);
static Void Assert(System.Boolean,System.String);
static Void Requires(System.Boolean);
static Void Requires(System.Boolean,System.String);
static Void Ensures(System.Boolean);
static Void Ensures(System.Boolean,System.String);
static Void Invariant(System.Boolean);
static Void Invariant(System.Boolean,System.String);
static Void EndContractBlock();
}
class ContractFailureKind : System.Enum{
}
class ContractFailedEventArgs : System.EventArgs{
this (System.Diagnostics.Contracts.ContractFailureKind,System.String,System.String,System.Exception);
String get_Message();
String get_Condition();
ContractFailureKind get_FailureKind();
Exception get_OriginalException();
Boolean get_Handled();
Void SetHandled();
Boolean get_Unwind();
Void SetUnwind();
}
}
