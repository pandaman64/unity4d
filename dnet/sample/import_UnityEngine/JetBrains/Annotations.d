module JetBrains.Annotations;
import System;
public:
pragma(assembly,"UnityEngine"){
class CanBeNullAttribute : Attribute{
}
class NotNullAttribute : Attribute{
}
class StringFormatMethodAttribute : Attribute{
}
class InvokerParameterNameAttribute : Attribute{
}
class NotifyPropertyChangedInvocatorAttribute : Attribute{
}
class ContractAnnotationAttribute : Attribute{
}
class LocalizationRequiredAttribute : Attribute{
}
class CannotApplyEqualityOperatorAttribute : Attribute{
}
class BaseTypeRequiredAttribute : Attribute{
}
class UsedImplicitlyAttribute : Attribute{
}
class MeansImplicitUseAttribute : Attribute{
}
class ImplicitUseKindFlags : Enum{
}
class ImplicitUseTargetFlags : Enum{
}
class PublicAPIAttribute : Attribute{
}
class InstantHandleAttribute : Attribute{
}
class PureAttribute : Attribute{
}
class PathReferenceAttribute : Attribute{
}
class NoEnumerationAttribute : Attribute{
}
class AssertionMethodAttribute : Attribute{
}
class LinqTunnelAttribute : Attribute{
}
}
