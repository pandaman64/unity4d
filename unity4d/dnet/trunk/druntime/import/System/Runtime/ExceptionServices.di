module System.Runtime.ExceptionServices;
import System;
public:
pragma(assembly,"mscorlib"){
class HandleProcessCorruptedStateExceptionsAttribute : System.Attribute{
this ();
}
class FirstChanceExceptionEventArgs : System.EventArgs{
}
class ExceptionDispatchInfo : System.__object{
System.Void Throw();
}
}
