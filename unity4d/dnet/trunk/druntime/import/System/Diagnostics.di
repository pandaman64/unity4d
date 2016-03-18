module System.Diagnostics;
import System;
import System.Threading;
import System.Reflection;
public:
pragma(assembly,"mscorlib"){
class ConditionalAttribute : System.Attribute{
this (System.String);
System.String get_ConditionString();
}
class Debugger : System.__object{
this ();
static System.Void Break();
static System.Boolean Launch();
static System.Void NotifyOfCrossThreadDependency();
static System.Boolean get_IsAttached();
static System.Void Log(System.Int32,System.String,System.String);
static System.Boolean IsLogging();
}
class DebuggerStepThroughAttribute : System.Attribute{
this ();
}
class DebuggerStepperBoundaryAttribute : System.Attribute{
this ();
}
class DebuggerHiddenAttribute : System.Attribute{
this ();
}
class DebuggerNonUserCodeAttribute : System.Attribute{
this ();
}
class DebuggableAttribute : System.Attribute{
static class DebuggingModes : System.Enum{
Int32 value__;
}
this (System.Boolean,System.Boolean);
this (System.Diagnostics.DebuggableAttribute.DebuggingModes);
System.Boolean get_IsJITTrackingEnabled();
System.Boolean get_IsJITOptimizerDisabled();
System.Diagnostics.DebuggableAttribute.DebuggingModes get_DebuggingFlags();
}
class DebuggerBrowsableState : System.Enum{
Int32 value__;
}
class DebuggerBrowsableAttribute : System.Attribute{
this (System.Diagnostics.DebuggerBrowsableState);
System.Diagnostics.DebuggerBrowsableState get_State();
}
class DebuggerTypeProxyAttribute : System.Attribute{
this (System.Type);
this (System.String);
System.String get_ProxyTypeName();
System.Void set_Target(System.Type);
System.Type get_Target();
System.String get_TargetTypeName();
System.Void set_TargetTypeName(System.String);
}
class DebuggerDisplayAttribute : System.Attribute{
this (System.String);
System.String get_Value();
System.String get_Name();
System.Void set_Name(System.String);
System.String get_Type();
System.Void set_Type(System.String);
System.Void set_Target(System.Type);
System.Type get_Target();
System.String get_TargetTypeName();
System.Void set_TargetTypeName(System.String);
}
class DebuggerVisualizerAttribute : System.Attribute{
this (System.String);
this (System.String,System.String);
this (System.String,System.Type);
this (System.Type);
this (System.Type,System.Type);
this (System.Type,System.String);
System.String get_VisualizerObjectSourceTypeName();
System.String get_VisualizerTypeName();
System.String get_Description();
System.Void set_Description(System.String);
System.Void set_Target(System.Type);
System.Type get_Target();
System.Void set_TargetTypeName(System.String);
System.String get_TargetTypeName();
}
class StackTrace : System.__object{
this ();
this (System.Boolean);
this (System.Int32);
this (System.Int32,System.Boolean);
this (System.Diagnostics.StackFrame);
this (System.Threading.Thread,System.Boolean);
System.Int32 get_FrameCount();
System.Diagnostics.StackFrame GetFrame(System.Int32);
System.Diagnostics.StackFrame[] GetFrames();
System.String ToString();
}
class StackFrame : System.__object{
this ();
this (System.Boolean);
this (System.Int32);
this (System.Int32,System.Boolean);
this (System.String,System.Int32);
this (System.String,System.Int32,System.Int32);
System.Reflection.MethodBase GetMethod();
System.Int32 GetNativeOffset();
System.Int32 GetILOffset();
System.String GetFileName();
System.Int32 GetFileLineNumber();
System.Int32 GetFileColumnNumber();
System.String ToString();
}
}
