module System.Threading.Tasks;
import System.Threading;
import System;
import System.Runtime.CompilerServices;
import System.Runtime.Serialization;
import System.Collections;
import System.Reflection;
public:
pragma(assembly,"mscorlib"){
class ParallelOptions : System.__object{
this ();
System.Threading.Tasks.TaskScheduler get_TaskScheduler();
System.Void set_TaskScheduler(System.Threading.Tasks.TaskScheduler);
System.Int32 get_MaxDegreeOfParallelism();
System.Void set_MaxDegreeOfParallelism(System.Int32);
System.Threading.CancellationToken get_CancellationToken();
System.Void set_CancellationToken(System.Threading.CancellationToken);
}
class Parallel : System.__object{
static System.Void Invoke(System.Action[]);
static System.Void Invoke(System.Threading.Tasks.ParallelOptions,System.Action[]);
}
class ParallelLoopState : System.__object{
System.Boolean get_ShouldExitCurrentIteration();
System.Boolean get_IsStopped();
System.Boolean get_IsExceptional();
System.Void Stop();
System.Void Break();
}
class ParallelLoopResult : System.ValueType{
System.Boolean get_IsCompleted();
}
class TaskStatus : System.Enum{
}
class Task : System.__object{
this (System.Action);
this (System.Action,System.Threading.CancellationToken);
this (System.Action,System.Threading.Tasks.TaskCreationOptions);
this (System.Action,System.Threading.CancellationToken,System.Threading.Tasks.TaskCreationOptions);
System.Void Start();
System.Void Start(System.Threading.Tasks.TaskScheduler);
System.Void RunSynchronously();
System.Void RunSynchronously(System.Threading.Tasks.TaskScheduler);
System.Int32 get_Id();
System.Threading.Tasks.TaskStatus get_Status();
System.Boolean get_IsCanceled();
System.Boolean get_IsCompleted();
System.Threading.Tasks.TaskCreationOptions get_CreationOptions();
System.__object get_AsyncState();
static System.Threading.Tasks.TaskFactory get_Factory();
static System.Threading.Tasks.Task get_CompletedTask();
System.Boolean get_IsFaulted();
System.Void Dispose();
System.Runtime.CompilerServices.TaskAwaiter GetAwaiter();
System.Runtime.CompilerServices.ConfiguredTaskAwaitable ConfigureAwait(System.Boolean);
static System.Runtime.CompilerServices.YieldAwaitable Yield();
System.Void Wait();
System.Boolean Wait(System.TimeSpan);
System.Void Wait(System.Threading.CancellationToken);
System.Boolean Wait(System.Int32);
System.Boolean Wait(System.Int32,System.Threading.CancellationToken);
static System.Void WaitAll(System.Threading.Tasks.Task[]);
static System.Boolean WaitAll(System.Threading.Tasks.Task[],System.TimeSpan);
static System.Boolean WaitAll(System.Threading.Tasks.Task[],System.Int32);
static System.Void WaitAll(System.Threading.Tasks.Task[],System.Threading.CancellationToken);
static System.Boolean WaitAll(System.Threading.Tasks.Task[],System.Int32,System.Threading.CancellationToken);
static System.Int32 WaitAny(System.Threading.Tasks.Task[]);
static System.Int32 WaitAny(System.Threading.Tasks.Task[],System.TimeSpan);
static System.Int32 WaitAny(System.Threading.Tasks.Task[],System.Threading.CancellationToken);
static System.Int32 WaitAny(System.Threading.Tasks.Task[],System.Int32);
static System.Int32 WaitAny(System.Threading.Tasks.Task[],System.Int32,System.Threading.CancellationToken);
static System.Threading.Tasks.Task FromCanceled(System.Threading.CancellationToken);
static System.Threading.Tasks.Task Run(System.Action);
static System.Threading.Tasks.Task Run(System.Action,System.Threading.CancellationToken);
static System.Threading.Tasks.Task Delay(System.TimeSpan);
static System.Threading.Tasks.Task Delay(System.TimeSpan,System.Threading.CancellationToken);
static System.Threading.Tasks.Task Delay(System.Int32);
static System.Threading.Tasks.Task Delay(System.Int32,System.Threading.CancellationToken);
static System.Threading.Tasks.Task WhenAll(System.Threading.Tasks.Task[]);
}
class TaskCreationOptions : System.Enum{
}
class TaskContinuationOptions : System.Enum{
}
class TaskFactory : System.__object{
this ();
this (System.Threading.CancellationToken);
this (System.Threading.Tasks.TaskScheduler);
this (System.Threading.Tasks.TaskCreationOptions,System.Threading.Tasks.TaskContinuationOptions);
this (System.Threading.CancellationToken,System.Threading.Tasks.TaskCreationOptions,System.Threading.Tasks.TaskContinuationOptions,System.Threading.Tasks.TaskScheduler);
System.Threading.CancellationToken get_CancellationToken();
System.Threading.Tasks.TaskScheduler get_Scheduler();
System.Threading.Tasks.TaskCreationOptions get_CreationOptions();
System.Threading.Tasks.TaskContinuationOptions get_ContinuationOptions();
System.Threading.Tasks.Task StartNew(System.Action);
System.Threading.Tasks.Task StartNew(System.Action,System.Threading.CancellationToken);
System.Threading.Tasks.Task StartNew(System.Action,System.Threading.Tasks.TaskCreationOptions);
System.Threading.Tasks.Task StartNew(System.Action,System.Threading.CancellationToken,System.Threading.Tasks.TaskCreationOptions,System.Threading.Tasks.TaskScheduler);
}
class TaskScheduler : System.__object{
System.Int32 get_MaximumConcurrencyLevel();
static System.Threading.Tasks.TaskScheduler get_Default();
static System.Threading.Tasks.TaskScheduler get_Current();
static System.Threading.Tasks.TaskScheduler FromCurrentSynchronizationContext();
System.Int32 get_Id();
}
class UnobservedTaskExceptionEventArgs : System.EventArgs{
System.Void SetObserved();
System.Boolean get_Observed();
}
class ConcurrentExclusiveSchedulerPair : System.__object{
this ();
this (System.Threading.Tasks.TaskScheduler);
this (System.Threading.Tasks.TaskScheduler,System.Int32);
this (System.Threading.Tasks.TaskScheduler,System.Int32,System.Int32);
System.Void Complete();
System.Threading.Tasks.Task get_Completion();
System.Threading.Tasks.TaskScheduler get_ConcurrentScheduler();
System.Threading.Tasks.TaskScheduler get_ExclusiveScheduler();
}
}
