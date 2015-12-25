module System.Diagnostics;
import System;
import System.Threading;
import System.Reflection;
public:
pragma(assembly,"mscorlib"){
class ConditionalAttribute : System.Attribute{
this (System.String);
String get_ConditionString();
}
class Debugger : System.Object{
this ();
static Void Break();
static Boolean Launch();
static Void NotifyOfCrossThreadDependency();
static Boolean get_IsAttached();
static Void Log(System.Int32,System.String,System.String);
static Boolean IsLogging();
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
}
this (System.Boolean,System.Boolean);
this (System.Diagnostics.DebuggableAttribute.DebuggingModes);
Boolean get_IsJITTrackingEnabled();
Boolean get_IsJITOptimizerDisabled();
DebuggingModes get_DebuggingFlags();
}
class DebuggerBrowsableState : System.Enum{
}
class DebuggerBrowsableAttribute : System.Attribute{
this (System.Diagnostics.DebuggerBrowsableState);
DebuggerBrowsableState get_State();
}
class DebuggerTypeProxyAttribute : System.Attribute{
this (System.Type);
this (System.String);
String get_ProxyTypeName();
Void set_Target(System.Type);
Type get_Target();
String get_TargetTypeName();
Void set_TargetTypeName(System.String);
}
class DebuggerDisplayAttribute : System.Attribute{
this (System.String);
String get_Value();
String get_Name();
Void set_Name(System.String);
String get_Type();
Void set_Type(System.String);
Void set_Target(System.Type);
Type get_Target();
String get_TargetTypeName();
Void set_TargetTypeName(System.String);
}
class DebuggerVisualizerAttribute : System.Attribute{
this (System.String);
this (System.String,System.String);
this (System.String,System.Type);
this (System.Type);
this (System.Type,System.Type);
this (System.Type,System.String);
String get_VisualizerObjectSourceTypeName();
String get_VisualizerTypeName();
String get_Description();
Void set_Description(System.String);
Void set_Target(System.Type);
Type get_Target();
Void set_TargetTypeName(System.String);
String get_TargetTypeName();
}
class StackTrace : System.Object{
this ();
this (System.Boolean);
this (System.Int32);
this (System.Int32,System.Boolean);
this (System.Exception);
this (System.Exception,System.Boolean);
this (System.Exception,System.Int32);
this (System.Exception,System.Int32,System.Boolean);
this (System.Diagnostics.StackFrame);
this (System.Threading.Thread,System.Boolean);
Int32 get_FrameCount();
StackFrame GetFrame(System.Int32);
StackFrame[] GetFrames();
String ToString();
}
class StackFrame : System.Object{
this ();
this (System.Boolean);
this (System.Int32);
this (System.Int32,System.Boolean);
this (System.String,System.Int32);
this (System.String,System.Int32,System.Int32);
MethodBase GetMethod();
Int32 GetNativeOffset();
Int32 GetILOffset();
String GetFileName();
Int32 GetFileLineNumber();
Int32 GetFileColumnNumber();
String ToString();
}
}
