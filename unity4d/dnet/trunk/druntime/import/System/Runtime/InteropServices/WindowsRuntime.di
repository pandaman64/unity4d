module System.Runtime.InteropServices.WindowsRuntime;
import System;
import System.Reflection;
public:
pragma(assembly,"mscorlib"){
class DefaultInterfaceAttribute : System.Attribute{
this (System.Type);
System.Type get_DefaultInterface();
}
class InterfaceImplementedInVersionAttribute : System.Attribute{
this (System.Type,System.Byte,System.Byte,System.Byte,System.Byte);
System.Type get_InterfaceType();
System.Byte get_MajorVersion();
System.Byte get_MinorVersion();
System.Byte get_BuildVersion();
System.Byte get_RevisionVersion();
}
class ReadOnlyArrayAttribute : System.Attribute{
this ();
}
class WriteOnlyArrayAttribute : System.Attribute{
this ();
}
class ReturnValueNameAttribute : System.Attribute{
this (System.String);
System.String get_Name();
}
class EventRegistrationToken : System.ValueType{
static System.Boolean op_Equality(System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken,System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken);
static System.Boolean op_Inequality(System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken,System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
}
interface IActivationFactory{
System.__object ActivateInstance();
}
class WindowsRuntimeMarshal : System.__object{
static System.Runtime.InteropServices.WindowsRuntime.IActivationFactory GetActivationFactory(System.Type);
static System.IntPtr StringToHString(System.String);
static System.String PtrToStringHString(System.IntPtr);
static System.Void FreeHString(System.IntPtr);
}
class WindowsRuntimeMetadata : System.__object{
}
class NamespaceResolveEventArgs : System.EventArgs{
this (System.String,System.Reflection.Assembly);
System.String get_NamespaceName();
System.Reflection.Assembly get_RequestingAssembly();
}
class DesignerNamespaceResolveEventArgs : System.EventArgs{
this (System.String);
System.String get_NamespaceName();
}
}
