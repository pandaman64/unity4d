module Microsoft.Win32.SafeHandles;
import System;
import System.Runtime.InteropServices;
public:
pragma(assembly,"mscorlib"){
class SafeFileHandle : Microsoft.Win32.SafeHandles.SafeHandleZeroOrMinusOneIsInvalid{
this (System.IntPtr,System.Boolean);
}
class SafeRegistryHandle : Microsoft.Win32.SafeHandles.SafeHandleZeroOrMinusOneIsInvalid{
this (System.IntPtr,System.Boolean);
}
class SafeWaitHandle : Microsoft.Win32.SafeHandles.SafeHandleZeroOrMinusOneIsInvalid{
this (System.IntPtr,System.Boolean);
}
class SafeHandleZeroOrMinusOneIsInvalid : System.Runtime.InteropServices.SafeHandle{
System.Boolean get_IsInvalid();
}
class SafeHandleMinusOneIsInvalid : System.Runtime.InteropServices.SafeHandle{
System.Boolean get_IsInvalid();
}
class CriticalHandleZeroOrMinusOneIsInvalid : System.Runtime.InteropServices.CriticalHandle{
System.Boolean get_IsInvalid();
}
class CriticalHandleMinusOneIsInvalid : System.Runtime.InteropServices.CriticalHandle{
System.Boolean get_IsInvalid();
}
class SafeAccessTokenHandle : System.Runtime.InteropServices.SafeHandle{
this (System.IntPtr);
System.Boolean get_IsInvalid();
static Microsoft.Win32.SafeHandles.SafeAccessTokenHandle get_InvalidHandle();
}
}
