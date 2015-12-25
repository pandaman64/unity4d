module System.Threading;
import System;
import System.Runtime.Serialization;
import System.Collections;
import System.Reflection;
import System.Security.AccessControl;
import Microsoft.Win32.SafeHandles;
import System.Runtime.Remoting;
import System.Runtime.ConstrainedExecution;
import System.Globalization;
import System.Security.Principal;
import System.Runtime.Remoting.Contexts;
import System.Runtime.InteropServices;
import System.Threading.Tasks;
public:
pragma(assembly,"mscorlib"){
class AbandonedMutexException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
this (System.Int32,System.Threading.WaitHandle);
this (System.String,System.Int32,System.Threading.WaitHandle);
this (System.String,System.Exception,System.Int32,System.Threading.WaitHandle);
Mutex get_Mutex();
Int32 get_MutexIndex();
}
class AutoResetEvent : System.Threading.EventWaitHandle{
this (System.Boolean);
}
class SendOrPostCallback : System.MulticastDelegate{
this (System.Object,System.IntPtr);
Void Invoke(System.Object);
IAsyncResult BeginInvoke(System.Object,System.AsyncCallback,System.Object);
Void EndInvoke(System.IAsyncResult);
}
class SynchronizationContext : System.Object{
this ();
Boolean IsWaitNotificationRequired();
Void Send(System.Threading.SendOrPostCallback,System.Object);
Void Post(System.Threading.SendOrPostCallback,System.Object);
Void OperationStarted();
Void OperationCompleted();
Int32 Wait(System.IntPtr[],System.Boolean,System.Int32);
static Void SetSynchronizationContext(System.Threading.SynchronizationContext);
static SynchronizationContext get_Current();
SynchronizationContext CreateCopy();
}
class CompressedStack : System.Object{
static CompressedStack Capture();
static Void Run(System.Threading.CompressedStack,System.Threading.ContextCallback,System.Object);
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
static CompressedStack GetCompressedStack();
CompressedStack CreateCopy();
}
class EventResetMode : System.Enum{
}
class EventWaitHandle : System.Threading.WaitHandle{
this (System.Boolean,System.Threading.EventResetMode);
this (System.Boolean,System.Threading.EventResetMode,System.String);
static EventWaitHandle OpenExisting(System.String);
static EventWaitHandle OpenExisting(System.String,System.Security.AccessControl.EventWaitHandleRights);
Boolean Reset();
Boolean Set();
EventWaitHandleSecurity GetAccessControl();
Void SetAccessControl(System.Security.AccessControl.EventWaitHandleSecurity);
}
class ContextCallback : System.MulticastDelegate{
this (System.Object,System.IntPtr);
Void Invoke(System.Object);
IAsyncResult BeginInvoke(System.Object,System.AsyncCallback,System.Object);
Void EndInvoke(System.IAsyncResult);
}
class AsyncFlowControl : System.ValueType{
Void Undo();
Void Dispose();
Int32 GetHashCode();
Boolean Equals(System.Object);
Boolean Equals(System.Threading.AsyncFlowControl);
static Boolean op_Equality(System.Threading.AsyncFlowControl,System.Threading.AsyncFlowControl);
static Boolean op_Inequality(System.Threading.AsyncFlowControl,System.Threading.AsyncFlowControl);
}
class ExecutionContext : System.Object{
Void Dispose();
static Void Run(System.Threading.ExecutionContext,System.Threading.ContextCallback,System.Object);
ExecutionContext CreateCopy();
static AsyncFlowControl SuppressFlow();
static Void RestoreFlow();
static Boolean IsFlowSuppressed();
static ExecutionContext Capture();
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
}
class Interlocked : System.Object{
static Void MemoryBarrier();
}
class HostExecutionContext : System.Object{
this ();
this (System.Object);
HostExecutionContext CreateCopy();
Void Dispose();
Void Dispose(System.Boolean);
}
class HostExecutionContextManager : System.Object{
this ();
Void Revert(System.Object);
HostExecutionContext Capture();
Object SetHostExecutionContext(System.Threading.HostExecutionContext);
}
class LockCookie : System.ValueType{
Int32 GetHashCode();
Boolean Equals(System.Object);
Boolean Equals(System.Threading.LockCookie);
static Boolean op_Equality(System.Threading.LockCookie,System.Threading.LockCookie);
static Boolean op_Inequality(System.Threading.LockCookie,System.Threading.LockCookie);
}
class LockRecursionException : System.Exception{
this ();
this (System.String);
this (System.String,System.Exception);
}
class ManualResetEvent : System.Threading.EventWaitHandle{
this (System.Boolean);
}
class Monitor : System.Object{
static Void Enter(System.Object);
static Void Exit(System.Object);
static Boolean TryEnter(System.Object);
static Boolean TryEnter(System.Object,System.Int32);
static Boolean TryEnter(System.Object,System.TimeSpan);
static Boolean IsEntered(System.Object);
static Boolean Wait(System.Object,System.Int32,System.Boolean);
static Boolean Wait(System.Object,System.TimeSpan,System.Boolean);
static Boolean Wait(System.Object,System.Int32);
static Boolean Wait(System.Object,System.TimeSpan);
static Boolean Wait(System.Object);
static Void Pulse(System.Object);
static Void PulseAll(System.Object);
}
class Mutex : System.Threading.WaitHandle{
this (System.Boolean,System.String);
this (System.Boolean);
this ();
static Mutex OpenExisting(System.String);
static Mutex OpenExisting(System.String,System.Security.AccessControl.MutexRights);
Void ReleaseMutex();
MutexSecurity GetAccessControl();
Void SetAccessControl(System.Security.AccessControl.MutexSecurity);
}
class NativeOverlapped : System.ValueType{
}
class Overlapped : System.Object{
this ();
this (System.Int32,System.Int32,System.IntPtr,System.IAsyncResult);
this (System.Int32,System.Int32,System.Int32,System.IAsyncResult);
IAsyncResult get_AsyncResult();
Void set_AsyncResult(System.IAsyncResult);
Int32 get_OffsetLow();
Void set_OffsetLow(System.Int32);
Int32 get_OffsetHigh();
Void set_OffsetHigh(System.Int32);
Int32 get_EventHandle();
Void set_EventHandle(System.Int32);
IntPtr get_EventHandleIntPtr();
Void set_EventHandleIntPtr(System.IntPtr);
}
class ParameterizedThreadStart : System.MulticastDelegate{
this (System.Object,System.IntPtr);
Void Invoke(System.Object);
IAsyncResult BeginInvoke(System.Object,System.AsyncCallback,System.Object);
Void EndInvoke(System.IAsyncResult);
}
class ReaderWriterLock : System.Runtime.ConstrainedExecution.CriticalFinalizerObject{
this ();
Boolean get_IsReaderLockHeld();
Boolean get_IsWriterLockHeld();
Int32 get_WriterSeqNum();
Void AcquireReaderLock(System.Int32);
Void AcquireReaderLock(System.TimeSpan);
Void AcquireWriterLock(System.Int32);
Void AcquireWriterLock(System.TimeSpan);
Void ReleaseReaderLock();
Void ReleaseWriterLock();
LockCookie UpgradeToWriterLock(System.Int32);
LockCookie UpgradeToWriterLock(System.TimeSpan);
LockCookie ReleaseLock();
Boolean AnyWritersSince(System.Int32);
}
class SemaphoreFullException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class SynchronizationLockException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class Thread : System.Runtime.ConstrainedExecution.CriticalFinalizerObject{
this (System.Threading.ThreadStart);
this (System.Threading.ThreadStart,System.Int32);
this (System.Threading.ParameterizedThreadStart);
this (System.Threading.ParameterizedThreadStart,System.Int32);
Int32 GetHashCode();
Int32 get_ManagedThreadId();
Void Start();
Void Start(System.Object);
ExecutionContext get_ExecutionContext();
Void SetCompressedStack(System.Threading.CompressedStack);
CompressedStack GetCompressedStack();
Void Abort(System.Object);
Void Abort();
static Void ResetAbort();
Void Suspend();
Void Resume();
Void Interrupt();
ThreadPriority get_Priority();
Void set_Priority(System.Threading.ThreadPriority);
Boolean get_IsAlive();
Boolean get_IsThreadPoolThread();
Void Join();
Boolean Join(System.Int32);
Boolean Join(System.TimeSpan);
static Void Sleep(System.Int32);
static Void Sleep(System.TimeSpan);
static Void SpinWait(System.Int32);
static Boolean Yield();
static Thread get_CurrentThread();
Void DisableComObjectEagerCleanup();
Boolean get_IsBackground();
Void set_IsBackground(System.Boolean);
ThreadState get_ThreadState();
ApartmentState get_ApartmentState();
Void set_ApartmentState(System.Threading.ApartmentState);
ApartmentState GetApartmentState();
Boolean TrySetApartmentState(System.Threading.ApartmentState);
Void SetApartmentState(System.Threading.ApartmentState);
static LocalDataStoreSlot AllocateDataSlot();
static LocalDataStoreSlot AllocateNamedDataSlot(System.String);
static LocalDataStoreSlot GetNamedDataSlot(System.String);
static Void FreeNamedDataSlot(System.String);
static Object GetData(System.LocalDataStoreSlot);
static Void SetData(System.LocalDataStoreSlot,System.Object);
CultureInfo get_CurrentUICulture();
Void set_CurrentUICulture(System.Globalization.CultureInfo);
CultureInfo get_CurrentCulture();
Void set_CurrentCulture(System.Globalization.CultureInfo);
static Context get_CurrentContext();
static IPrincipal get_CurrentPrincipal();
static Void set_CurrentPrincipal(System.Security.Principal.IPrincipal);
static AppDomain GetDomain();
static Int32 GetDomainID();
String get_Name();
Void set_Name(System.String);
static Void BeginCriticalRegion();
static Void EndCriticalRegion();
static Void BeginThreadAffinity();
static Void EndThreadAffinity();
static Void MemoryBarrier();
}
class ThreadAbortException : System.SystemException{
Object get_ExceptionState();
}
class ThreadInterruptedException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class RegisteredWaitHandle : System.MarshalByRefObject{
Boolean Unregister(System.Threading.WaitHandle);
}
class WaitCallback : System.MulticastDelegate{
this (System.Object,System.IntPtr);
Void Invoke(System.Object);
IAsyncResult BeginInvoke(System.Object,System.AsyncCallback,System.Object);
Void EndInvoke(System.IAsyncResult);
}
class WaitOrTimerCallback : System.MulticastDelegate{
this (System.Object,System.IntPtr);
Void Invoke(System.Object,System.Boolean);
IAsyncResult BeginInvoke(System.Object,System.Boolean,System.AsyncCallback,System.Object);
Void EndInvoke(System.IAsyncResult);
}
class IOCompletionCallback : System.MulticastDelegate{
this (System.Object,System.IntPtr);
Void EndInvoke(System.IAsyncResult);
}
class ThreadPool : System.Object{
static Boolean SetMaxThreads(System.Int32,System.Int32);
static Boolean SetMinThreads(System.Int32,System.Int32);
static RegisteredWaitHandle RegisterWaitForSingleObject(System.Threading.WaitHandle,System.Threading.WaitOrTimerCallback,System.Object,System.UInt32,System.Boolean);
static RegisteredWaitHandle UnsafeRegisterWaitForSingleObject(System.Threading.WaitHandle,System.Threading.WaitOrTimerCallback,System.Object,System.UInt32,System.Boolean);
static RegisteredWaitHandle RegisterWaitForSingleObject(System.Threading.WaitHandle,System.Threading.WaitOrTimerCallback,System.Object,System.Int32,System.Boolean);
static RegisteredWaitHandle UnsafeRegisterWaitForSingleObject(System.Threading.WaitHandle,System.Threading.WaitOrTimerCallback,System.Object,System.Int32,System.Boolean);
static RegisteredWaitHandle RegisterWaitForSingleObject(System.Threading.WaitHandle,System.Threading.WaitOrTimerCallback,System.Object,System.Int64,System.Boolean);
static RegisteredWaitHandle UnsafeRegisterWaitForSingleObject(System.Threading.WaitHandle,System.Threading.WaitOrTimerCallback,System.Object,System.Int64,System.Boolean);
static RegisteredWaitHandle RegisterWaitForSingleObject(System.Threading.WaitHandle,System.Threading.WaitOrTimerCallback,System.Object,System.TimeSpan,System.Boolean);
static RegisteredWaitHandle UnsafeRegisterWaitForSingleObject(System.Threading.WaitHandle,System.Threading.WaitOrTimerCallback,System.Object,System.TimeSpan,System.Boolean);
static Boolean QueueUserWorkItem(System.Threading.WaitCallback,System.Object);
static Boolean QueueUserWorkItem(System.Threading.WaitCallback);
static Boolean UnsafeQueueUserWorkItem(System.Threading.WaitCallback,System.Object);
static Boolean BindHandle(System.IntPtr);
static Boolean BindHandle(System.Runtime.InteropServices.SafeHandle);
}
class ThreadPriority : System.Enum{
}
class ThreadStart : System.MulticastDelegate{
this (System.Object,System.IntPtr);
Void Invoke();
IAsyncResult BeginInvoke(System.AsyncCallback,System.Object);
Void EndInvoke(System.IAsyncResult);
}
class ThreadState : System.Enum{
}
class ThreadStateException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class ThreadStartException : System.SystemException{
}
class Timeout : System.Object{
}
class TimerCallback : System.MulticastDelegate{
this (System.Object,System.IntPtr);
Void Invoke(System.Object);
IAsyncResult BeginInvoke(System.Object,System.AsyncCallback,System.Object);
Void EndInvoke(System.IAsyncResult);
}
class Timer : System.MarshalByRefObject{
this (System.Threading.TimerCallback,System.Object,System.Int32,System.Int32);
this (System.Threading.TimerCallback,System.Object,System.TimeSpan,System.TimeSpan);
this (System.Threading.TimerCallback,System.Object,System.UInt32,System.UInt32);
this (System.Threading.TimerCallback,System.Object,System.Int64,System.Int64);
this (System.Threading.TimerCallback);
Boolean Change(System.Int32,System.Int32);
Boolean Change(System.TimeSpan,System.TimeSpan);
Boolean Change(System.UInt32,System.UInt32);
Boolean Change(System.Int64,System.Int64);
Boolean Dispose(System.Threading.WaitHandle);
Void Dispose();
}
class Volatile : System.Object{
}
class WaitHandle : System.MarshalByRefObject{
IntPtr get_Handle();
Void set_Handle(System.IntPtr);
SafeWaitHandle get_SafeWaitHandle();
Void set_SafeWaitHandle(Microsoft.Win32.SafeHandles.SafeWaitHandle);
Boolean WaitOne(System.Int32,System.Boolean);
Boolean WaitOne(System.TimeSpan,System.Boolean);
Boolean WaitOne();
Boolean WaitOne(System.Int32);
Boolean WaitOne(System.TimeSpan);
static Boolean WaitAll(System.Threading.WaitHandle[],System.Int32,System.Boolean);
static Boolean WaitAll(System.Threading.WaitHandle[],System.TimeSpan,System.Boolean);
static Boolean WaitAll(System.Threading.WaitHandle[]);
static Boolean WaitAll(System.Threading.WaitHandle[],System.Int32);
static Boolean WaitAll(System.Threading.WaitHandle[],System.TimeSpan);
static Int32 WaitAny(System.Threading.WaitHandle[],System.Int32,System.Boolean);
static Int32 WaitAny(System.Threading.WaitHandle[],System.TimeSpan,System.Boolean);
static Int32 WaitAny(System.Threading.WaitHandle[],System.TimeSpan);
static Int32 WaitAny(System.Threading.WaitHandle[]);
static Int32 WaitAny(System.Threading.WaitHandle[],System.Int32);
static Boolean SignalAndWait(System.Threading.WaitHandle,System.Threading.WaitHandle);
static Boolean SignalAndWait(System.Threading.WaitHandle,System.Threading.WaitHandle,System.TimeSpan,System.Boolean);
static Boolean SignalAndWait(System.Threading.WaitHandle,System.Threading.WaitHandle,System.Int32,System.Boolean);
Void Close();
Void Dispose();
}
class WaitHandleExtensions : System.Object{
static SafeWaitHandle GetSafeWaitHandle(System.Threading.WaitHandle);
static Void SetSafeWaitHandle(System.Threading.WaitHandle,Microsoft.Win32.SafeHandles.SafeWaitHandle);
}
class WaitHandleCannotBeOpenedException : System.ApplicationException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class ApartmentState : System.Enum{
}
class SpinLock : System.ValueType{
this (System.Boolean);
Void Exit();
Void Exit(System.Boolean);
Boolean get_IsHeld();
Boolean get_IsHeldByCurrentThread();
Boolean get_IsThreadOwnerTrackingEnabled();
}
class SpinWait : System.ValueType{
Int32 get_Count();
Boolean get_NextSpinWillYield();
Void SpinOnce();
Void Reset();
}
class CountdownEvent : System.Object{
this (System.Int32);
Int32 get_CurrentCount();
Int32 get_InitialCount();
Boolean get_IsSet();
WaitHandle get_WaitHandle();
Void Dispose();
Boolean Signal();
Boolean Signal(System.Int32);
Void AddCount();
Boolean TryAddCount();
Void AddCount(System.Int32);
Boolean TryAddCount(System.Int32);
Void Reset();
Void Reset(System.Int32);
Void Wait();
Void Wait(System.Threading.CancellationToken);
Boolean Wait(System.TimeSpan);
Boolean Wait(System.TimeSpan,System.Threading.CancellationToken);
Boolean Wait(System.Int32);
Boolean Wait(System.Int32,System.Threading.CancellationToken);
}
class LazyThreadSafetyMode : System.Enum{
}
class LazyInitializer : System.Object{
}
class SemaphoreSlim : System.Object{
this (System.Int32);
this (System.Int32,System.Int32);
Int32 get_CurrentCount();
WaitHandle get_AvailableWaitHandle();
Void Wait();
Void Wait(System.Threading.CancellationToken);
Boolean Wait(System.TimeSpan);
Boolean Wait(System.TimeSpan,System.Threading.CancellationToken);
Boolean Wait(System.Int32);
Boolean Wait(System.Int32,System.Threading.CancellationToken);
Task WaitAsync();
Task WaitAsync(System.Threading.CancellationToken);
Int32 Release();
Int32 Release(System.Int32);
Void Dispose();
}
class ManualResetEventSlim : System.Object{
this ();
this (System.Boolean);
this (System.Boolean,System.Int32);
WaitHandle get_WaitHandle();
Boolean get_IsSet();
Int32 get_SpinCount();
Void Set();
Void Reset();
Void Wait();
Void Wait(System.Threading.CancellationToken);
Boolean Wait(System.TimeSpan);
Boolean Wait(System.TimeSpan,System.Threading.CancellationToken);
Boolean Wait(System.Int32);
Boolean Wait(System.Int32,System.Threading.CancellationToken);
Void Dispose();
}
class CancellationTokenRegistration : System.ValueType{
Void Dispose();
static Boolean op_Equality(System.Threading.CancellationTokenRegistration,System.Threading.CancellationTokenRegistration);
static Boolean op_Inequality(System.Threading.CancellationTokenRegistration,System.Threading.CancellationTokenRegistration);
Boolean Equals(System.Object);
Boolean Equals(System.Threading.CancellationTokenRegistration);
Int32 GetHashCode();
}
class CancellationTokenSource : System.Object{
this ();
this (System.TimeSpan);
this (System.Int32);
Boolean get_IsCancellationRequested();
CancellationToken get_Token();
Void Cancel();
Void Cancel(System.Boolean);
Void CancelAfter(System.TimeSpan);
Void CancelAfter(System.Int32);
Void Dispose();
static CancellationTokenSource CreateLinkedTokenSource(System.Threading.CancellationToken,System.Threading.CancellationToken);
static CancellationTokenSource CreateLinkedTokenSource(System.Threading.CancellationToken[]);
}
class CancellationToken : System.ValueType{
this (System.Boolean);
static CancellationToken get_None();
Boolean get_IsCancellationRequested();
Boolean get_CanBeCanceled();
WaitHandle get_WaitHandle();
CancellationTokenRegistration Register(System.Action);
CancellationTokenRegistration Register(System.Action,System.Boolean);
Boolean Equals(System.Threading.CancellationToken);
Boolean Equals(System.Object);
Int32 GetHashCode();
static Boolean op_Equality(System.Threading.CancellationToken,System.Threading.CancellationToken);
static Boolean op_Inequality(System.Threading.CancellationToken,System.Threading.CancellationToken);
Void ThrowIfCancellationRequested();
}
}
