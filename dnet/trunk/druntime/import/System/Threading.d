module System.Threading;
import System;
import System.Runtime.Serialization;
import System.Collections;
import System.Reflection;
import System.Security.AccessControl;
import Microsoft.Win32.SafeHandles;
import System.Runtime.Remoting;
import System.Globalization;
import System.Security.Principal;
import System.Runtime.Remoting.Contexts;
import System.Runtime.InteropServices;
import System.Threading.Tasks;
import system.Runtime.ConstrainedExecution;
public:
pragma(assembly,"mscorlib"){
class AbandonedMutexException : SystemException{
}
class AutoResetEvent : EventWaitHandle{
}
class SendOrPostCallback : MulticastDelegate{
}
class SynchronizationContext : Object{
}
class CompressedStack : Object{
}
class EventResetMode : Enum{
}
class EventWaitHandle : WaitHandle{
}
class ContextCallback : MulticastDelegate{
}
class AsyncFlowControl : ValueType{
}
class ExecutionContext : Object{
}
class Interlocked : Object{
}
class HostExecutionContext : Object{
}
class HostExecutionContextManager : Object{
}
class LockCookie : ValueType{
}
class LockRecursionException : Exception{
}
class ManualResetEvent : EventWaitHandle{
}
class Monitor : Object{
}
class Mutex : WaitHandle{
}
class NativeOverlapped : ValueType{
}
class Overlapped : Object{
}
class ParameterizedThreadStart : MulticastDelegate{
}
class ReaderWriterLock : CriticalFinalizerObject{
}
class SemaphoreFullException : SystemException{
}
class SynchronizationLockException : SystemException{
}
class Thread : CriticalFinalizerObject{
}
class ThreadAbortException : SystemException{
}
class ThreadInterruptedException : SystemException{
}
class RegisteredWaitHandle : MarshalByRefObject{
}
class WaitCallback : MulticastDelegate{
}
class WaitOrTimerCallback : MulticastDelegate{
}
class IOCompletionCallback : MulticastDelegate{
}
class ThreadPool : Object{
}
class ThreadPriority : Enum{
}
class ThreadStart : MulticastDelegate{
}
class ThreadState : Enum{
}
class ThreadStateException : SystemException{
}
class ThreadStartException : SystemException{
}
class Timeout : Object{
}
class TimerCallback : MulticastDelegate{
}
class Timer : MarshalByRefObject{
}
class Volatile : Object{
}
class WaitHandle : MarshalByRefObject{
}
class WaitHandleExtensions : Object{
}
class WaitHandleCannotBeOpenedException : ApplicationException{
}
class ApartmentState : Enum{
}
class SpinLock : ValueType{
}
class SpinWait : ValueType{
}
class CountdownEvent : Object{
}
class LazyThreadSafetyMode : Enum{
}
class LazyInitializer : Object{
}
class SemaphoreSlim : Object{
}
class ManualResetEventSlim : Object{
}
class CancellationTokenRegistration : ValueType{
}
class CancellationTokenSource : Object{
}
class CancellationToken : ValueType{
}
}
