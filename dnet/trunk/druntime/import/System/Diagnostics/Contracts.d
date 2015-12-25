module System.Diagnostics.Contracts;
import System;
public:
pragma(assembly,"mscorlib"){
class PureAttribute : Attribute{
}
class ContractClassAttribute : Attribute{
}
class ContractClassForAttribute : Attribute{
}
class ContractInvariantMethodAttribute : Attribute{
}
class ContractReferenceAssemblyAttribute : Attribute{
}
class ContractRuntimeIgnoredAttribute : Attribute{
}
class ContractVerificationAttribute : Attribute{
}
class ContractPublicPropertyNameAttribute : Attribute{
}
class ContractArgumentValidatorAttribute : Attribute{
}
class ContractAbbreviatorAttribute : Attribute{
}
class ContractOptionAttribute : Attribute{
}
class Contract : Object{
}
class ContractFailureKind : Enum{
}
class ContractFailedEventArgs : EventArgs{
}
}
