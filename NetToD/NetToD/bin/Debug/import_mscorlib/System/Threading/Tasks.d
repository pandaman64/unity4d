module System.Threading.Tasks;
import System.Threading;
import System;
import System.Runtime.CompilerServices;
import System.Runtime.Serialization;
import System.Collections;
import System.Reflection;
public:
pragma(assembly,"mscorlib"){
class ParallelOptions : System.Object{
this ();
TaskScheduler get_TaskScheduler();
Void set_TaskScheduler(System.Threading.Tasks.TaskScheduler);
Int32 get_MaxDegreeOfParallelism();
Void set_MaxDegreeOfParallelism(System.Int32);
CancellationToken get_CancellationToken();
Void set_CancellationToken(System.Threading.CancellationToken);
}
class Parallel : System.Object{
static Void Invoke(System.Action[]);
static Void Invoke(System.Threading.Tasks.ParallelOptions,System.Action[]);
}
class ParallelLoopState : System.Object{
Boolean get_ShouldExitCurrentIteration();
Boolean get_IsStopped();
Boolean get_IsExceptional();
Void Stop();
Void Break();
}
class ParallelLoopResult : System.ValueType{
Boolean get_IsCompleted();
}
class TaskStatus : System.Enum{
}
class Task : System.Object{
this (System.Action);
this (System.Action,System.Threading.CancellationToken);
this (System.Action,System.Threading.Tasks.TaskCreationOptions);
this (System.Action,System.Threading.CancellationToken,System.Threading.Tasks.TaskCreationOptions);
Void Start();
Void Start(System.Threading.Tasks.TaskScheduler);
Void RunSynchronously();
Void RunSynchronously(System.Threading.Tasks.TaskScheduler);
Int32 get_Id();
AggregateException get_Exception();
TaskStatus get_Status();
Boolean get_IsCanceled();
Boolean get_IsCompleted();
TaskCreationOptions get_CreationOptions();
Object get_AsyncState();
static TaskFactory get_Factory();
static Task get_CompletedTask();
Boolean get_IsFaulted();
Void Dispose();
TaskAwaiter GetAwaiter();
ConfiguredTaskAwaitable ConfigureAwait(System.Boolean);
static YieldAwaitable Yield();
Void Wait();
Boolean Wait(System.TimeSpan);
Void Wait(System.Threading.CancellationToken);
Boolean Wait(System.Int32);
Boolean Wait(System.Int32,System.Threading.CancellationToken);
static Void WaitAll(System.Threading.Tasks.Task[]);
static Boolean WaitAll(System.Threading.Tasks.Task[],System.TimeSpan);
static Boolean WaitAll(System.Threading.Tasks.Task[],System.Int32);
static Void WaitAll(System.Threading.Tasks.Task[],System.Threading.CancellationToken);
static Boolean WaitAll(System.Threading.Tasks.Task[],System.Int32,System.Threading.CancellationToken);
static Int32 WaitAny(System.Threading.Tasks.Task[]);
static Int32 WaitAny(System.Threading.Tasks.Task[],System.TimeSpan);
static Int32 WaitAny(System.Threading.Tasks.Task[],System.Threading.CancellationToken);
static Int32 WaitAny(System.Threading.Tasks.Task[],System.Int32);
static Int32 WaitAny(System.Threading.Tasks.Task[],System.Int32,System.Threading.CancellationToken);
static Task FromException(System.Exception);
static Task FromCanceled(System.Threading.CancellationToken);
static Task Run(System.Action);
static Task Run(System.Action,System.Threading.CancellationToken);
static Task Delay(System.TimeSpan);
static Task Delay(System.TimeSpan,System.Threading.CancellationToken);
static Task Delay(System.Int32);
static Task Delay(System.Int32,System.Threading.CancellationToken);
static Task WhenAll(System.Threading.Tasks.Task[]);
}
class TaskCreationOptions : System.Enum{
}
class TaskContinuationOptions : System.Enum{
}
class TaskCanceledException : System.OperationCanceledException{
this ();
this (System.String);
this (System.String,System.Exception);
this (System.Threading.Tasks.Task);
Task get_Task();
}
class TaskSchedulerException : System.Exception{
this ();
this (System.String);
this (System.Exception);
this (System.String,System.Exception);
}
class TaskFactory : System.Object{
this ();
this (System.Threading.CancellationToken);
this (System.Threading.Tasks.TaskScheduler);
this (System.Threading.Tasks.TaskCreationOptions,System.Threading.Tasks.TaskContinuationOptions);
this (System.Threading.CancellationToken,System.Threading.Tasks.TaskCreationOptions,System.Threading.Tasks.TaskContinuationOptions,System.Threading.Tasks.TaskScheduler);
CancellationToken get_CancellationToken();
TaskScheduler get_Scheduler();
TaskCreationOptions get_CreationOptions();
TaskContinuationOptions get_ContinuationOptions();
Task StartNew(System.Action);
Task StartNew(System.Action,System.Threading.CancellationToken);
Task StartNew(System.Action,System.Threading.Tasks.TaskCreationOptions);
Task StartNew(System.Action,System.Threading.CancellationToken,System.Threading.Tasks.TaskCreationOptions,System.Threading.Tasks.TaskScheduler);
}
class TaskScheduler : System.Object{
Int32 get_MaximumConcurrencyLevel();
static TaskScheduler get_Default();
static TaskScheduler get_Current();
static TaskScheduler FromCurrentSynchronizationContext();
Int32 get_Id();
}
class UnobservedTaskExceptionEventArgs : System.EventArgs{
this (System.AggregateException);
Void SetObserved();
Boolean get_Observed();
AggregateException get_Exception();
}
class ConcurrentExclusiveSchedulerPair : System.Object{
this ();
this (System.Threading.Tasks.TaskScheduler);
this (System.Threading.Tasks.TaskScheduler,System.Int32);
this (System.Threading.Tasks.TaskScheduler,System.Int32,System.Int32);
Void Complete();
Task get_Completion();
TaskScheduler get_ConcurrentScheduler();
TaskScheduler get_ExclusiveScheduler();
}
}
