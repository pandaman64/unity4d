module Microsoft.Win32.SafeHandles;
import System;
import System.Runtime.InteropServices;
public:
pragma(assembly,"mscorlib"){
class SafeFileHandle : SafeHandleZeroOrMinusOneIsInvalid{
}
class SafeRegistryHandle : SafeHandleZeroOrMinusOneIsInvalid{
}
class SafeWaitHandle : SafeHandleZeroOrMinusOneIsInvalid{
}
class SafeHandleZeroOrMinusOneIsInvalid : SafeHandle{
}
class SafeHandleMinusOneIsInvalid : SafeHandle{
}
class CriticalHandleZeroOrMinusOneIsInvalid : CriticalHandle{
}
class CriticalHandleMinusOneIsInvalid : CriticalHandle{
}
class SafeAccessTokenHandle : SafeHandle{
}
}
