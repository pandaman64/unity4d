module System.Runtime;
import System;
import System.Runtime.ConstrainedExecution;
public:
pragma(assembly,"mscorlib"){
class MemoryFailPoint : System.Runtime.ConstrainedExecution.CriticalFinalizerObject{
this (System.Int32);
Void Dispose();
}
class GCLargeObjectHeapCompactionMode : System.Enum{
}
class GCLatencyMode : System.Enum{
}
class GCSettings : System.Object{
static GCLatencyMode get_LatencyMode();
static Void set_LatencyMode(System.Runtime.GCLatencyMode);
static GCLargeObjectHeapCompactionMode get_LargeObjectHeapCompactionMode();
static Void set_LargeObjectHeapCompactionMode(System.Runtime.GCLargeObjectHeapCompactionMode);
static Boolean get_IsServerGC();
}
class AssemblyTargetedPatchBandAttribute : System.Attribute{
this (System.String);
String get_TargetedPatchBand();
}
class TargetedPatchingOptOutAttribute : System.Attribute{
this (System.String);
String get_Reason();
}
class ProfileOptimization : System.Object{
static Void SetProfileRoot(System.String);
static Void StartProfile(System.String);
}
}
