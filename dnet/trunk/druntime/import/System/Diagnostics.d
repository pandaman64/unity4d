module System.Diagnostics;
import System;
import System.Threading;
import System.Reflection;
public:
pragma(assembly,"mscorlib"){
class ConditionalAttribute : Attribute{
}
class Debugger : Object{
}
class DebuggerStepThroughAttribute : Attribute{
}
class DebuggerStepperBoundaryAttribute : Attribute{
}
class DebuggerHiddenAttribute : Attribute{
}
class DebuggerNonUserCodeAttribute : Attribute{
}
class DebuggableAttribute : Attribute{
class DebuggingModes : Enum{
}
}
class DebuggerBrowsableState : Enum{
}
class DebuggerBrowsableAttribute : Attribute{
}
class DebuggerTypeProxyAttribute : Attribute{
}
class DebuggerDisplayAttribute : Attribute{
}
class DebuggerVisualizerAttribute : Attribute{
}
class StackTrace : Object{
}
class StackFrame : Object{
}
}
