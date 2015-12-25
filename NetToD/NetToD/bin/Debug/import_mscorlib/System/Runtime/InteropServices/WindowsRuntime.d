module System.Runtime.InteropServices.WindowsRuntime;
import System;
import System.Reflection;
public:
pragma(assembly,"mscorlib"){
class DefaultInterfaceAttribute : System.Attribute{
this (System.Type);
Type get_DefaultInterface();
}
class InterfaceImplementedInVersionAttribute : System.Attribute{
this (System.Type,System.Byte,System.Byte,System.Byte,System.Byte);
Type get_InterfaceType();
Byte get_MajorVersion();
Byte get_MinorVersion();
Byte get_BuildVersion();
Byte get_RevisionVersion();
}
class ReadOnlyArrayAttribute : System.Attribute{
this ();
}
class WriteOnlyArrayAttribute : System.Attribute{
this ();
}
class ReturnValueNameAttribute : System.Attribute{
this (System.String);
String get_Name();
}
class EventRegistrationToken : System.ValueType{
static Boolean op_Equality(System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken,System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken);
static Boolean op_Inequality(System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken,System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken);
Boolean Equals(System.Object);
Int32 GetHashCode();
}
interface IActivationFactory{
Object ActivateInstance();
}
class WindowsRuntimeMarshal : System.Object{
static IActivationFactory GetActivationFactory(System.Type);
static IntPtr StringToHString(System.String);
static String PtrToStringHString(System.IntPtr);
static Void FreeHString(System.IntPtr);
}
class WindowsRuntimeMetadata : System.Object{
}
class NamespaceResolveEventArgs : System.EventArgs{
this (System.String,System.Reflection.Assembly);
String get_NamespaceName();
Assembly get_RequestingAssembly();
}
class DesignerNamespaceResolveEventArgs : System.EventArgs{
this (System.String);
String get_NamespaceName();
}
}
