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
class AutoResetEvent : System.Threading.EventWaitHandle{
this (System.Boolean);
}
class SendOrPostCallback : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.Void Invoke(System.__object);
System.IAsyncResult BeginInvoke(System.__object,System.AsyncCallback,System.__object);
System.Void EndInvoke(System.IAsyncResult);
}
class SynchronizationContext : System.__object{
this ();
System.Boolean IsWaitNotificationRequired();
System.Void Send(System.Threading.SendOrPostCallback,System.__object);
System.Void Post(System.Threading.SendOrPostCallback,System.__object);
System.Void OperationStarted();
System.Void OperationCompleted();
System.Int32 Wait(System.IntPtr[],System.Boolean,System.Int32);
static System.Void SetSynchronizationContext(System.Threading.SynchronizationContext);
static System.Threading.SynchronizationContext get_Current();
System.Threading.SynchronizationContext CreateCopy();
}
class CompressedStack : System.__object{
static System.Threading.CompressedStack Capture();
static System.Void Run(System.Threading.CompressedStack,System.Threading.ContextCallback,System.__object);
System.Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
static System.Threading.CompressedStack GetCompressedStack();
System.Threading.CompressedStack CreateCopy();
}
class EventResetMode : System.Enum{
Int32 value__;
}
class EventWaitHandle : System.Threading.WaitHandle{
this (System.Boolean,System.Threading.EventResetMode);
this (System.Boolean,System.Threading.EventResetMode,System.String);
static System.Threading.EventWaitHandle OpenExisting(System.String);
static System.Threading.EventWaitHandle OpenExisting(System.String,System.Security.AccessControl.EventWaitHandleRights);
System.Boolean Reset();
System.Boolean Set();
System.Security.AccessControl.EventWaitHandleSecurity GetAccessControl();
System.Void SetAccessControl(System.Security.AccessControl.EventWaitHandleSecurity);
}
class ContextCallback : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.Void Invoke(System.__object);
System.IAsyncResult BeginInvoke(System.__object,System.AsyncCallback,System.__object);
System.Void EndInvoke(System.IAsyncResult);
}
class AsyncFlowControl : System.ValueType{
System.Void Undo();
System.Void Dispose();
System.Int32 GetHashCode();
System.Boolean Equals(System.__object);
System.Boolean Equals(System.Threading.AsyncFlowControl);
static System.Boolean op_Equality(System.Threading.AsyncFlowControl,System.Threading.AsyncFlowControl);
static System.Boolean op_Inequality(System.Threading.AsyncFlowControl,System.Threading.AsyncFlowControl);
}
class ExecutionContext : System.__object{
System.Void Dispose();
static System.Void Run(System.Threading.ExecutionContext,System.Threading.ContextCallback,System.__object);
System.Threading.ExecutionContext CreateCopy();
static System.Threading.AsyncFlowControl SuppressFlow();
static System.Void RestoreFlow();
static System.Boolean IsFlowSuppressed();
static System.Threading.ExecutionContext Capture();
System.Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
}
class Interlocked : System.__object{
static System.Void MemoryBarrier();
}
class HostExecutionContext : System.__object{
this ();
this (System.__object);
System.Threading.HostExecutionContext CreateCopy();
System.Void Dispose();
System.Void Dispose(System.Boolean);
}
class HostExecutionContextManager : System.__object{
this ();
System.Void Revert(System.__object);
System.Threading.HostExecutionContext Capture();
System.__object SetHostExecutionContext(System.Threading.HostExecutionContext);
}
class LockCookie : System.ValueType{
System.Int32 GetHashCode();
System.Boolean Equals(System.__object);
System.Boolean Equals(System.Threading.LockCookie);
static System.Boolean op_Equality(System.Threading.LockCookie,System.Threading.LockCookie);
static System.Boolean op_Inequality(System.Threading.LockCookie,System.Threading.LockCookie);
}
class ManualResetEvent : System.Threading.EventWaitHandle{
this (System.Boolean);
}
class Monitor : System.__object{
static System.Void Enter(System.__object);
static System.Void Exit(System.__object);
static System.Boolean TryEnter(System.__object);
static System.Boolean TryEnter(System.__object,System.Int32);
static System.Boolean TryEnter(System.__object,System.TimeSpan);
static System.Boolean IsEntered(System.__object);
static System.Boolean Wait(System.__object,System.Int32,System.Boolean);
static System.Boolean Wait(System.__object,System.TimeSpan,System.Boolean);
static System.Boolean Wait(System.__object,System.Int32);
static System.Boolean Wait(System.__object,System.TimeSpan);
static System.Boolean Wait(System.__object);
static System.Void Pulse(System.__object);
static System.Void PulseAll(System.__object);
}
class Mutex : System.Threading.WaitHandle{
this (System.Boolean,System.String);
this (System.Boolean);
this ();
static System.Threading.Mutex OpenExisting(System.String);
static System.Threading.Mutex OpenExisting(System.String,System.Security.AccessControl.MutexRights);
System.Void ReleaseMutex();
System.Security.AccessControl.MutexSecurity GetAccessControl();
System.Void SetAccessControl(System.Security.AccessControl.MutexSecurity);
}
class NativeOverlapped : System.ValueType{
IntPtr InternalLow;
IntPtr InternalHigh;
Int32 OffsetLow;
Int32 OffsetHigh;
IntPtr EventHandle;
}
class Overlapped : System.__object{
this ();
this (System.Int32,System.Int32,System.IntPtr,System.IAsyncResult);
this (System.Int32,System.Int32,System.Int32,System.IAsyncResult);
System.IAsyncResult get_AsyncResult();
System.Void set_AsyncResult(System.IAsyncResult);
System.Int32 get_OffsetLow();
System.Void set_OffsetLow(System.Int32);
System.Int32 get_OffsetHigh();
System.Void set_OffsetHigh(System.Int32);
System.Int32 get_EventHandle();
System.Void set_EventHandle(System.Int32);
System.IntPtr get_EventHandleIntPtr();
System.Void set_EventHandleIntPtr(System.IntPtr);
}
class ParameterizedThreadStart : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.Void Invoke(System.__object);
System.IAsyncResult BeginInvoke(System.__object,System.AsyncCallback,System.__object);
System.Void EndInvoke(System.IAsyncResult);
}
class ReaderWriterLock : System.Runtime.ConstrainedExecution.CriticalFinalizerObject{
this ();
System.Boolean get_IsReaderLockHeld();
System.Boolean get_IsWriterLockHeld();
System.Int32 get_WriterSeqNum();
System.Void AcquireReaderLock(System.Int32);
System.Void AcquireReaderLock(System.TimeSpan);
System.Void AcquireWriterLock(System.Int32);
System.Void AcquireWriterLock(System.TimeSpan);
System.Void ReleaseReaderLock();
System.Void ReleaseWriterLock();
System.Threading.LockCookie UpgradeToWriterLock(System.Int32);
System.Threading.LockCookie UpgradeToWriterLock(System.TimeSpan);
System.Threading.LockCookie ReleaseLock();
System.Boolean AnyWritersSince(System.Int32);
}
class Thread : System.Runtime.ConstrainedExecution.CriticalFinalizerObject{
this (System.Threading.ThreadStart);
this (System.Threading.ThreadStart,System.Int32);
this (System.Threading.ParameterizedThreadStart);
this (System.Threading.ParameterizedThreadStart,System.Int32);
System.Int32 GetHashCode();
System.Int32 get_ManagedThreadId();
System.Void Start();
System.Void Start(System.__object);
System.Threading.ExecutionContext get_ExecutionContext();
System.Void SetCompressedStack(System.Threading.CompressedStack);
System.Threading.CompressedStack GetCompressedStack();
System.Void Abort(System.__object);
System.Void Abort();
static System.Void ResetAbort();
System.Void Suspend();
System.Void Resume();
System.Void Interrupt();
System.Threading.ThreadPriority get_Priority();
System.Void set_Priority(System.Threading.ThreadPriority);
System.Boolean get_IsAlive();
System.Boolean get_IsThreadPoolThread();
System.Void Join();
System.Boolean Join(System.Int32);
System.Boolean Join(System.TimeSpan);
static System.Void Sleep(System.Int32);
static System.Void Sleep(System.TimeSpan);
static System.Void SpinWait(System.Int32);
static System.Boolean Yield();
static System.Threading.Thread get_CurrentThread();
System.Void DisableComObjectEagerCleanup();
System.Boolean get_IsBackground();
System.Void set_IsBackground(System.Boolean);
System.Threading.ThreadState get_ThreadState();
System.Threading.ApartmentState get_ApartmentState();
System.Void set_ApartmentState(System.Threading.ApartmentState);
System.Threading.ApartmentState GetApartmentState();
System.Boolean TrySetApartmentState(System.Threading.ApartmentState);
System.Void SetApartmentState(System.Threading.ApartmentState);
static System.LocalDataStoreSlot AllocateDataSlot();
static System.LocalDataStoreSlot AllocateNamedDataSlot(System.String);
static System.LocalDataStoreSlot GetNamedDataSlot(System.String);
static System.Void FreeNamedDataSlot(System.String);
static System.__object GetData(System.LocalDataStoreSlot);
static System.Void SetData(System.LocalDataStoreSlot,System.__object);
System.Globalization.CultureInfo get_CurrentUICulture();
System.Void set_CurrentUICulture(System.Globalization.CultureInfo);
System.Globalization.CultureInfo get_CurrentCulture();
System.Void set_CurrentCulture(System.Globalization.CultureInfo);
static System.Runtime.Remoting.Contexts.Context get_CurrentContext();
static System.Security.Principal.IPrincipal get_CurrentPrincipal();
static System.Void set_CurrentPrincipal(System.Security.Principal.IPrincipal);
static System.AppDomain GetDomain();
static System.Int32 GetDomainID();
System.String get_Name();
System.Void set_Name(System.String);
static System.Void BeginCriticalRegion();
static System.Void EndCriticalRegion();
static System.Void BeginThreadAffinity();
static System.Void EndThreadAffinity();
static System.Void MemoryBarrier();
}
class RegisteredWaitHandle : System.MarshalByRefObject{
System.Boolean Unregister(System.Threading.WaitHandle);
}
class WaitCallback : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.Void Invoke(System.__object);
System.IAsyncResult BeginInvoke(System.__object,System.AsyncCallback,System.__object);
System.Void EndInvoke(System.IAsyncResult);
}
class WaitOrTimerCallback : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.Void Invoke(System.__object,System.Boolean);
System.IAsyncResult BeginInvoke(System.__object,System.Boolean,System.AsyncCallback,System.__object);
System.Void EndInvoke(System.IAsyncResult);
}
class IOCompletionCallback : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.Void EndInvoke(System.IAsyncResult);
}
class ThreadPool : System.__object{
static System.Boolean SetMaxThreads(System.Int32,System.Int32);
static System.Boolean SetMinThreads(System.Int32,System.Int32);
static System.Threading.RegisteredWaitHandle RegisterWaitForSingleObject(System.Threading.WaitHandle,System.Threading.WaitOrTimerCallback,System.__object,System.UInt32,System.Boolean);
static System.Threading.RegisteredWaitHandle UnsafeRegisterWaitForSingleObject(System.Threading.WaitHandle,System.Threading.WaitOrTimerCallback,System.__object,System.UInt32,System.Boolean);
static System.Threading.RegisteredWaitHandle RegisterWaitForSingleObject(System.Threading.WaitHandle,System.Threading.WaitOrTimerCallback,System.__object,System.Int32,System.Boolean);
static System.Threading.RegisteredWaitHandle UnsafeRegisterWaitForSingleObject(System.Threading.WaitHandle,System.Threading.WaitOrTimerCallback,System.__object,System.Int32,System.Boolean);
static System.Threading.RegisteredWaitHandle RegisterWaitForSingleObject(System.Threading.WaitHandle,System.Threading.WaitOrTimerCallback,System.__object,System.Int64,System.Boolean);
static System.Threading.RegisteredWaitHandle UnsafeRegisterWaitForSingleObject(System.Threading.WaitHandle,System.Threading.WaitOrTimerCallback,System.__object,System.Int64,System.Boolean);
static System.Threading.RegisteredWaitHandle RegisterWaitForSingleObject(System.Threading.WaitHandle,System.Threading.WaitOrTimerCallback,System.__object,System.TimeSpan,System.Boolean);
static System.Threading.RegisteredWaitHandle UnsafeRegisterWaitForSingleObject(System.Threading.WaitHandle,System.Threading.WaitOrTimerCallback,System.__object,System.TimeSpan,System.Boolean);
static System.Boolean QueueUserWorkItem(System.Threading.WaitCallback,System.__object);
static System.Boolean QueueUserWorkItem(System.Threading.WaitCallback);
static System.Boolean UnsafeQueueUserWorkItem(System.Threading.WaitCallback,System.__object);
static System.Boolean BindHandle(System.IntPtr);
static System.Boolean BindHandle(System.Runtime.InteropServices.SafeHandle);
}
class ThreadPriority : System.Enum{
Int32 value__;
}
class ThreadStart : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.Void Invoke();
System.IAsyncResult BeginInvoke(System.AsyncCallback,System.__object);
System.Void EndInvoke(System.IAsyncResult);
}
class ThreadState : System.Enum{
Int32 value__;
}
class Timeout : System.__object{
}
class TimerCallback : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.Void Invoke(System.__object);
System.IAsyncResult BeginInvoke(System.__object,System.AsyncCallback,System.__object);
System.Void EndInvoke(System.IAsyncResult);
}
class Timer : System.MarshalByRefObject{
this (System.Threading.TimerCallback,System.__object,System.Int32,System.Int32);
this (System.Threading.TimerCallback,System.__object,System.TimeSpan,System.TimeSpan);
this (System.Threading.TimerCallback,System.__object,System.UInt32,System.UInt32);
this (System.Threading.TimerCallback,System.__object,System.Int64,System.Int64);
this (System.Threading.TimerCallback);
System.Boolean Change(System.Int32,System.Int32);
System.Boolean Change(System.TimeSpan,System.TimeSpan);
System.Boolean Change(System.UInt32,System.UInt32);
System.Boolean Change(System.Int64,System.Int64);
System.Boolean Dispose(System.Threading.WaitHandle);
System.Void Dispose();
}
class Volatile : System.__object{
}
class WaitHandle : System.MarshalByRefObject{
System.IntPtr get_Handle();
System.Void set_Handle(System.IntPtr);
Microsoft.Win32.SafeHandles.SafeWaitHandle get_SafeWaitHandle();
System.Void set_SafeWaitHandle(Microsoft.Win32.SafeHandles.SafeWaitHandle);
System.Boolean WaitOne(System.Int32,System.Boolean);
System.Boolean WaitOne(System.TimeSpan,System.Boolean);
System.Boolean WaitOne();
System.Boolean WaitOne(System.Int32);
System.Boolean WaitOne(System.TimeSpan);
static System.Boolean WaitAll(System.Threading.WaitHandle[],System.Int32,System.Boolean);
static System.Boolean WaitAll(System.Threading.WaitHandle[],System.TimeSpan,System.Boolean);
static System.Boolean WaitAll(System.Threading.WaitHandle[]);
static System.Boolean WaitAll(System.Threading.WaitHandle[],System.Int32);
static System.Boolean WaitAll(System.Threading.WaitHandle[],System.TimeSpan);
static System.Int32 WaitAny(System.Threading.WaitHandle[],System.Int32,System.Boolean);
static System.Int32 WaitAny(System.Threading.WaitHandle[],System.TimeSpan,System.Boolean);
static System.Int32 WaitAny(System.Threading.WaitHandle[],System.TimeSpan);
static System.Int32 WaitAny(System.Threading.WaitHandle[]);
static System.Int32 WaitAny(System.Threading.WaitHandle[],System.Int32);
static System.Boolean SignalAndWait(System.Threading.WaitHandle,System.Threading.WaitHandle);
static System.Boolean SignalAndWait(System.Threading.WaitHandle,System.Threading.WaitHandle,System.TimeSpan,System.Boolean);
static System.Boolean SignalAndWait(System.Threading.WaitHandle,System.Threading.WaitHandle,System.Int32,System.Boolean);
System.Void Close();
System.Void Dispose();
}
class WaitHandleExtensions : System.__object{
static Microsoft.Win32.SafeHandles.SafeWaitHandle GetSafeWaitHandle(System.Threading.WaitHandle);
static System.Void SetSafeWaitHandle(System.Threading.WaitHandle,Microsoft.Win32.SafeHandles.SafeWaitHandle);
}
class ApartmentState : System.Enum{
Int32 value__;
}
class SpinLock : System.ValueType{
this (System.Boolean);
System.Void Exit();
System.Void Exit(System.Boolean);
System.Boolean get_IsHeld();
System.Boolean get_IsHeldByCurrentThread();
System.Boolean get_IsThreadOwnerTrackingEnabled();
}
class SpinWait : System.ValueType{
System.Int32 get_Count();
System.Boolean get_NextSpinWillYield();
System.Void SpinOnce();
System.Void Reset();
}
class CountdownEvent : System.__object{
this (System.Int32);
System.Int32 get_CurrentCount();
System.Int32 get_InitialCount();
System.Boolean get_IsSet();
System.Threading.WaitHandle get_WaitHandle();
System.Void Dispose();
System.Boolean Signal();
System.Boolean Signal(System.Int32);
System.Void AddCount();
System.Boolean TryAddCount();
System.Void AddCount(System.Int32);
System.Boolean TryAddCount(System.Int32);
System.Void Reset();
System.Void Reset(System.Int32);
System.Void Wait();
System.Void Wait(System.Threading.CancellationToken);
System.Boolean Wait(System.TimeSpan);
System.Boolean Wait(System.TimeSpan,System.Threading.CancellationToken);
System.Boolean Wait(System.Int32);
System.Boolean Wait(System.Int32,System.Threading.CancellationToken);
}
class LazyThreadSafetyMode : System.Enum{
Int32 value__;
}
class LazyInitializer : System.__object{
}
class SemaphoreSlim : System.__object{
this (System.Int32);
this (System.Int32,System.Int32);
System.Int32 get_CurrentCount();
System.Threading.WaitHandle get_AvailableWaitHandle();
System.Void Wait();
System.Void Wait(System.Threading.CancellationToken);
System.Boolean Wait(System.TimeSpan);
System.Boolean Wait(System.TimeSpan,System.Threading.CancellationToken);
System.Boolean Wait(System.Int32);
System.Boolean Wait(System.Int32,System.Threading.CancellationToken);
System.Threading.Tasks.Task WaitAsync();
System.Threading.Tasks.Task WaitAsync(System.Threading.CancellationToken);
System.Int32 Release();
System.Int32 Release(System.Int32);
System.Void Dispose();
}
class ManualResetEventSlim : System.__object{
this ();
this (System.Boolean);
this (System.Boolean,System.Int32);
System.Threading.WaitHandle get_WaitHandle();
System.Boolean get_IsSet();
System.Int32 get_SpinCount();
System.Void Set();
System.Void Reset();
System.Void Wait();
System.Void Wait(System.Threading.CancellationToken);
System.Boolean Wait(System.TimeSpan);
System.Boolean Wait(System.TimeSpan,System.Threading.CancellationToken);
System.Boolean Wait(System.Int32);
System.Boolean Wait(System.Int32,System.Threading.CancellationToken);
System.Void Dispose();
}
class CancellationTokenRegistration : System.ValueType{
System.Void Dispose();
static System.Boolean op_Equality(System.Threading.CancellationTokenRegistration,System.Threading.CancellationTokenRegistration);
static System.Boolean op_Inequality(System.Threading.CancellationTokenRegistration,System.Threading.CancellationTokenRegistration);
System.Boolean Equals(System.__object);
System.Boolean Equals(System.Threading.CancellationTokenRegistration);
System.Int32 GetHashCode();
}
class CancellationTokenSource : System.__object{
this ();
this (System.TimeSpan);
this (System.Int32);
System.Boolean get_IsCancellationRequested();
System.Threading.CancellationToken get_Token();
System.Void Cancel();
System.Void Cancel(System.Boolean);
System.Void CancelAfter(System.TimeSpan);
System.Void CancelAfter(System.Int32);
System.Void Dispose();
static System.Threading.CancellationTokenSource CreateLinkedTokenSource(System.Threading.CancellationToken,System.Threading.CancellationToken);
static System.Threading.CancellationTokenSource CreateLinkedTokenSource(System.Threading.CancellationToken[]);
}
class CancellationToken : System.ValueType{
this (System.Boolean);
static System.Threading.CancellationToken get_None();
System.Boolean get_IsCancellationRequested();
System.Boolean get_CanBeCanceled();
System.Threading.WaitHandle get_WaitHandle();
System.Threading.CancellationTokenRegistration Register(System.Action);
System.Threading.CancellationTokenRegistration Register(System.Action,System.Boolean);
System.Boolean Equals(System.Threading.CancellationToken);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
static System.Boolean op_Equality(System.Threading.CancellationToken,System.Threading.CancellationToken);
static System.Boolean op_Inequality(System.Threading.CancellationToken,System.Threading.CancellationToken);
System.Void ThrowIfCancellationRequested();
}
}
