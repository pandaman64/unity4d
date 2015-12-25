module System.Runtime.InteropServices.WindowsRuntime;
import System;
import System.Reflection;
public:
pragma(assembly,"mscorlib"){
class DefaultInterfaceAttribute : Attribute{
}
class InterfaceImplementedInVersionAttribute : Attribute{
}
class ReadOnlyArrayAttribute : Attribute{
}
class WriteOnlyArrayAttribute : Attribute{
}
class ReturnValueNameAttribute : Attribute{
}
class EventRegistrationToken : ValueType{
}
interface IActivationFactory{
}
class WindowsRuntimeMarshal : Object{
}
class WindowsRuntimeMetadata : Object{
}
class NamespaceResolveEventArgs : EventArgs{
}
class DesignerNamespaceResolveEventArgs : EventArgs{
}
}
