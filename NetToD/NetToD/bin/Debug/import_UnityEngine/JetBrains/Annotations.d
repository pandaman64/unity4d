module JetBrains.Annotations;
import System;
public:
pragma(assembly,"UnityEngine"){
class CanBeNullAttribute : System.Attribute{
this ();
}
class NotNullAttribute : System.Attribute{
this ();
}
class StringFormatMethodAttribute : System.Attribute{
this (System.String);
String get_FormatParameterName();
}
class InvokerParameterNameAttribute : System.Attribute{
this ();
}
class NotifyPropertyChangedInvocatorAttribute : System.Attribute{
this ();
this (System.String);
String get_ParameterName();
}
class ContractAnnotationAttribute : System.Attribute{
this (System.String);
this (System.String,System.Boolean);
String get_Contract();
Boolean get_ForceFullStates();
}
class LocalizationRequiredAttribute : System.Attribute{
this ();
this (System.Boolean);
Boolean get_Required();
}
class CannotApplyEqualityOperatorAttribute : System.Attribute{
this ();
}
class BaseTypeRequiredAttribute : System.Attribute{
this (System.Type);
Type get_BaseType();
}
class UsedImplicitlyAttribute : System.Attribute{
this ();
this (JetBrains.Annotations.ImplicitUseKindFlags);
this (JetBrains.Annotations.ImplicitUseTargetFlags);
this (JetBrains.Annotations.ImplicitUseKindFlags,JetBrains.Annotations.ImplicitUseTargetFlags);
ImplicitUseKindFlags get_UseKindFlags();
ImplicitUseTargetFlags get_TargetFlags();
}
class MeansImplicitUseAttribute : System.Attribute{
this ();
this (JetBrains.Annotations.ImplicitUseKindFlags);
this (JetBrains.Annotations.ImplicitUseTargetFlags);
this (JetBrains.Annotations.ImplicitUseKindFlags,JetBrains.Annotations.ImplicitUseTargetFlags);
ImplicitUseKindFlags get_UseKindFlags();
ImplicitUseTargetFlags get_TargetFlags();
}
class ImplicitUseKindFlags : System.Enum{
}
class ImplicitUseTargetFlags : System.Enum{
}
class PublicAPIAttribute : System.Attribute{
this ();
this (System.String);
String get_Comment();
}
class InstantHandleAttribute : System.Attribute{
this ();
}
class PureAttribute : System.Attribute{
this ();
}
class PathReferenceAttribute : System.Attribute{
this ();
this (System.String);
String get_BasePath();
}
class NoEnumerationAttribute : System.Attribute{
this ();
}
class AssertionMethodAttribute : System.Attribute{
this ();
}
class LinqTunnelAttribute : System.Attribute{
this ();
}
}
