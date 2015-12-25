module System.Runtime.ExceptionServices;
import System;
public:
pragma(assembly,"mscorlib"){
class HandleProcessCorruptedStateExceptionsAttribute : System.Attribute{
this ();
}
class FirstChanceExceptionEventArgs : System.EventArgs{
this (System.Exception);
Exception get_Exception();
}
class ExceptionDispatchInfo : System.Object{
static ExceptionDispatchInfo Capture(System.Exception);
Exception get_SourceException();
Void Throw();
}
}
