module System.Runtime.DesignerServices;
import System;
import System.Reflection;
public:
pragma(assembly,"mscorlib"){
class WindowsRuntimeDesignerContext : System.__object{
static System.Void SetIterationContext(System.Runtime.DesignerServices.WindowsRuntimeDesignerContext);
System.Reflection.Assembly GetAssembly(System.String);
System.Type GetType(System.String);
System.String get_Name();
}
}
