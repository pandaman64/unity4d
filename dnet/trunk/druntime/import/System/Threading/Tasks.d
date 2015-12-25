module System.Threading.Tasks;
import System.Threading;
import System;
import System.Runtime.CompilerServices;
import System.Runtime.Serialization;
import System.Collections;
import System.Reflection;
public:
pragma(assembly,"mscorlib"){
class ParallelOptions : Object{
}
class Parallel : Object{
}
class ParallelLoopState : Object{
}
class ParallelLoopResult : ValueType{
}
class TaskStatus : Enum{
}
class Task : Object{
}
class TaskCreationOptions : Enum{
}
class TaskContinuationOptions : Enum{
}
class TaskCanceledException : OperationCanceledException{
}
class TaskSchedulerException : Exception{
}
class TaskFactory : Object{
}
class TaskScheduler : Object{
}
class UnobservedTaskExceptionEventArgs : EventArgs{
}
class ConcurrentExclusiveSchedulerPair : Object{
}
}
