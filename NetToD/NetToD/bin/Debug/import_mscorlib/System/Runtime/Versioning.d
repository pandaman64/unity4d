module System.Runtime.Versioning;
import System;
public:
pragma(assembly,"mscorlib"){
class ComponentGuaranteesOptions : System.Enum{
}
class ComponentGuaranteesAttribute : System.Attribute{
this (System.Runtime.Versioning.ComponentGuaranteesOptions);
ComponentGuaranteesOptions get_Guarantees();
}
class ResourceConsumptionAttribute : System.Attribute{
this (System.Runtime.Versioning.ResourceScope);
this (System.Runtime.Versioning.ResourceScope,System.Runtime.Versioning.ResourceScope);
ResourceScope get_ResourceScope();
ResourceScope get_ConsumptionScope();
}
class ResourceExposureAttribute : System.Attribute{
this (System.Runtime.Versioning.ResourceScope);
ResourceScope get_ResourceExposureLevel();
}
class ResourceScope : System.Enum{
}
class VersioningHelper : System.Object{
static String MakeVersionSafeName(System.String,System.Runtime.Versioning.ResourceScope,System.Runtime.Versioning.ResourceScope,System.Type);
static String MakeVersionSafeName(System.String,System.Runtime.Versioning.ResourceScope,System.Runtime.Versioning.ResourceScope);
}
class TargetFrameworkAttribute : System.Attribute{
this (System.String);
String get_FrameworkName();
String get_FrameworkDisplayName();
Void set_FrameworkDisplayName(System.String);
}
class CompatibilitySwitch : System.Object{
static Boolean IsEnabled(System.String);
static String GetValue(System.String);
}
}
