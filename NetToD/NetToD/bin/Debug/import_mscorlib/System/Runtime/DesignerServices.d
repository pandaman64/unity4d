module System.Runtime.DesignerServices;
import System;
import System.Reflection;
public:
pragma(assembly,"mscorlib"){
class WindowsRuntimeDesignerContext : System.Object{
static Void SetIterationContext(System.Runtime.DesignerServices.WindowsRuntimeDesignerContext);
Assembly GetAssembly(System.String);
Type GetType(System.String);
String get_Name();
}
}
