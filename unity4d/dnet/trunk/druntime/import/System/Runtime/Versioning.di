module System.Runtime.Versioning;
import System;
public:
pragma(assembly,"mscorlib"){
class ComponentGuaranteesOptions : System.Enum{
}
class ComponentGuaranteesAttribute : System.Attribute{
this (System.Runtime.Versioning.ComponentGuaranteesOptions);
System.Runtime.Versioning.ComponentGuaranteesOptions get_Guarantees();
}
class ResourceConsumptionAttribute : System.Attribute{
this (System.Runtime.Versioning.ResourceScope);
this (System.Runtime.Versioning.ResourceScope,System.Runtime.Versioning.ResourceScope);
System.Runtime.Versioning.ResourceScope get_ResourceScope();
System.Runtime.Versioning.ResourceScope get_ConsumptionScope();
}
class ResourceExposureAttribute : System.Attribute{
this (System.Runtime.Versioning.ResourceScope);
System.Runtime.Versioning.ResourceScope get_ResourceExposureLevel();
}
class ResourceScope : System.Enum{
}
class VersioningHelper : System.__object{
static System.String MakeVersionSafeName(System.String,System.Runtime.Versioning.ResourceScope,System.Runtime.Versioning.ResourceScope,System.Type);
static System.String MakeVersionSafeName(System.String,System.Runtime.Versioning.ResourceScope,System.Runtime.Versioning.ResourceScope);
}
class TargetFrameworkAttribute : System.Attribute{
this (System.String);
System.String get_FrameworkName();
System.String get_FrameworkDisplayName();
System.Void set_FrameworkDisplayName(System.String);
}
class CompatibilitySwitch : System.__object{
static System.Boolean IsEnabled(System.String);
static System.String GetValue(System.String);
}
}
