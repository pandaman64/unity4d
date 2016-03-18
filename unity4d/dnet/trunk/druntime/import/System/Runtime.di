module System.Runtime;
import System;
import System.Runtime.ConstrainedExecution;
public:
pragma(assembly,"mscorlib"){
class MemoryFailPoint : System.Runtime.ConstrainedExecution.CriticalFinalizerObject{
this (System.Int32);
System.Void Dispose();
}
class GCLargeObjectHeapCompactionMode : System.Enum{
Int32 value__;
}
class GCLatencyMode : System.Enum{
Int32 value__;
}
class GCSettings : System.__object{
static System.Runtime.GCLatencyMode get_LatencyMode();
static System.Void set_LatencyMode(System.Runtime.GCLatencyMode);
static System.Runtime.GCLargeObjectHeapCompactionMode get_LargeObjectHeapCompactionMode();
static System.Void set_LargeObjectHeapCompactionMode(System.Runtime.GCLargeObjectHeapCompactionMode);
static System.Boolean get_IsServerGC();
}
class AssemblyTargetedPatchBandAttribute : System.Attribute{
this (System.String);
System.String get_TargetedPatchBand();
}
class TargetedPatchingOptOutAttribute : System.Attribute{
this (System.String);
System.String get_Reason();
}
class ProfileOptimization : System.__object{
static System.Void SetProfileRoot(System.String);
static System.Void StartProfile(System.String);
}
}
