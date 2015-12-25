module System.Runtime.CompilerServices;
import System;
import System.Diagnostics.Contracts;
import System.Runtime.Serialization;
import System.Collections;
import System.Reflection;
import System.Threading.Tasks;
public:
pragma(assembly,"mscorlib"){
class StringFreezingAttribute : System.Attribute{
this ();
}
class ContractHelper : System.Object{
static String RaiseContractFailedEvent(System.Diagnostics.Contracts.ContractFailureKind,System.String,System.String,System.Exception);
static Void TriggerFailure(System.Diagnostics.Contracts.ContractFailureKind,System.String,System.String,System.String,System.Exception);
}
class AccessedThroughPropertyAttribute : System.Attribute{
this (System.String);
String get_PropertyName();
}
class CallConvCdecl : System.Object{
this ();
}
class CallConvStdcall : System.Object{
this ();
}
class CallConvThiscall : System.Object{
this ();
}
class CallConvFastcall : System.Object{
this ();
}
class RuntimeHelpers : System.Object{
static class TryCode : System.MulticastDelegate{
this (System.Object,System.IntPtr);
Void Invoke(System.Object);
IAsyncResult BeginInvoke(System.Object,System.AsyncCallback,System.Object);
Void EndInvoke(System.IAsyncResult);
}
static class CleanupCode : System.MulticastDelegate{
this (System.Object,System.IntPtr);
Void Invoke(System.Object,System.Boolean);
IAsyncResult BeginInvoke(System.Object,System.Boolean,System.AsyncCallback,System.Object);
Void EndInvoke(System.IAsyncResult);
}
static Void InitializeArray(System.Array,System.RuntimeFieldHandle);
static Object GetObjectValue(System.Object);
static Void RunClassConstructor(System.RuntimeTypeHandle);
static Void RunModuleConstructor(System.ModuleHandle);
static Void PrepareMethod(System.RuntimeMethodHandle);
static Void PrepareMethod(System.RuntimeMethodHandle,System.RuntimeTypeHandle[]);
static Void PrepareDelegate(System.Delegate);
static Void PrepareContractedDelegate(System.Delegate);
static Int32 GetHashCode(System.Object);
static Boolean Equals(System.Object,System.Object);
static Int32 get_OffsetToStringData();
static Void EnsureSufficientExecutionStack();
static Void ProbeForSufficientStack();
static Void PrepareConstrainedRegions();
static Void PrepareConstrainedRegionsNoOP();
static Void ExecuteCodeWithGuaranteedCleanup(System.Runtime.CompilerServices.RuntimeHelpers.TryCode,System.Runtime.CompilerServices.RuntimeHelpers.CleanupCode,System.Object);
}
class CompilerGeneratedAttribute : System.Attribute{
this ();
}
class CustomConstantAttribute : System.Attribute{
Object get_Value();
}
class DateTimeConstantAttribute : System.Runtime.CompilerServices.CustomConstantAttribute{
this (System.Int64);
Object get_Value();
}
class DiscardableAttribute : System.Attribute{
this ();
}
class DecimalConstantAttribute : System.Attribute{
this (System.Byte,System.Byte,System.UInt32,System.UInt32,System.UInt32);
this (System.Byte,System.Byte,System.Int32,System.Int32,System.Int32);
Decimal get_Value();
}
class DisablePrivateReflectionAttribute : System.Attribute{
this ();
}
class CompilationRelaxations : System.Enum{
}
class CompilationRelaxationsAttribute : System.Attribute{
this (System.Int32);
this (System.Runtime.CompilerServices.CompilationRelaxations);
Int32 get_CompilationRelaxations();
}
class CompilerGlobalScopeAttribute : System.Attribute{
this ();
}
class ExtensionAttribute : System.Attribute{
this ();
}
class FixedBufferAttribute : System.Attribute{
this (System.Type,System.Int32);
Type get_ElementType();
Int32 get_Length();
}
class IndexerNameAttribute : System.Attribute{
this (System.String);
}
class InternalsVisibleToAttribute : System.Attribute{
this (System.String);
String get_AssemblyName();
Boolean get_AllInternalsVisible();
Void set_AllInternalsVisible(System.Boolean);
}
class IsVolatile : System.Object{
}
class MethodImplOptions : System.Enum{
}
class MethodCodeType : System.Enum{
}
class MethodImplAttribute : System.Attribute{
this (System.Runtime.CompilerServices.MethodImplOptions);
this (System.Int16);
this ();
MethodImplOptions get_Value();
}
class FixedAddressValueTypeAttribute : System.Attribute{
this ();
}
class UnsafeValueTypeAttribute : System.Attribute{
this ();
}
class RequiredAttributeAttribute : System.Attribute{
this (System.Type);
Type get_RequiredContract();
}
class LoadHint : System.Enum{
}
class DefaultDependencyAttribute : System.Attribute{
this (System.Runtime.CompilerServices.LoadHint);
LoadHint get_LoadHint();
}
class DependencyAttribute : System.Attribute{
this (System.String,System.Runtime.CompilerServices.LoadHint);
String get_DependentAssembly();
LoadHint get_LoadHint();
}
class CompilerMarshalOverride : System.Object{
}
class HasCopySemanticsAttribute : System.Attribute{
this ();
}
class IsBoxed : System.Object{
}
class IsByValue : System.Object{
}
class IsConst : System.Object{
}
class IsExplicitlyDereferenced : System.Object{
}
class IsImplicitlyDereferenced : System.Object{
}
class IsJitIntrinsic : System.Object{
}
class IsLong : System.Object{
}
class IsPinned : System.Object{
}
class IsSignUnspecifiedByte : System.Object{
}
class IsUdtReturn : System.Object{
}
class ScopelessEnumAttribute : System.Attribute{
this ();
}
class SpecialNameAttribute : System.Attribute{
this ();
}
class IsCopyConstructed : System.Object{
}
class SuppressIldasmAttribute : System.Attribute{
this ();
}
class NativeCppClassAttribute : System.Attribute{
this ();
}
class TypeForwardedToAttribute : System.Attribute{
this (System.Type);
Type get_Destination();
}
class TypeForwardedFromAttribute : System.Attribute{
this (System.String);
String get_AssemblyFullName();
}
class ReferenceAssemblyAttribute : System.Attribute{
this ();
this (System.String);
String get_Description();
}
class RuntimeCompatibilityAttribute : System.Attribute{
this ();
Boolean get_WrapNonExceptionThrows();
Void set_WrapNonExceptionThrows(System.Boolean);
}
class RuntimeWrappedException : System.Exception{
Object get_WrappedException();
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
}
class CallerFilePathAttribute : System.Attribute{
this ();
}
class CallerLineNumberAttribute : System.Attribute{
this ();
}
class CallerMemberNameAttribute : System.Attribute{
this ();
}
class StateMachineAttribute : System.Attribute{
this (System.Type);
Type get_StateMachineType();
}
class IteratorStateMachineAttribute : System.Runtime.CompilerServices.StateMachineAttribute{
this (System.Type);
}
class AsyncStateMachineAttribute : System.Runtime.CompilerServices.StateMachineAttribute{
this (System.Type);
}
class AsyncVoidMethodBuilder : System.ValueType{
static AsyncVoidMethodBuilder Create();
Void SetStateMachine(System.Runtime.CompilerServices.IAsyncStateMachine);
Void SetResult();
Void SetException(System.Exception);
}
class AsyncTaskMethodBuilder : System.ValueType{
static AsyncTaskMethodBuilder Create();
Void SetStateMachine(System.Runtime.CompilerServices.IAsyncStateMachine);
Task get_Task();
Void SetResult();
Void SetException(System.Exception);
}
interface IAsyncStateMachine{
Void MoveNext();
Void SetStateMachine(System.Runtime.CompilerServices.IAsyncStateMachine);
}
interface INotifyCompletion{
Void OnCompleted(System.Action);
}
interface ICriticalNotifyCompletion{
Void UnsafeOnCompleted(System.Action);
}
class TaskAwaiter : System.ValueType{
Boolean get_IsCompleted();
Void OnCompleted(System.Action);
Void UnsafeOnCompleted(System.Action);
Void GetResult();
}
class ConfiguredTaskAwaitable : System.ValueType{
static class ConfiguredTaskAwaiter : System.ValueType{
Boolean get_IsCompleted();
Void OnCompleted(System.Action);
Void UnsafeOnCompleted(System.Action);
Void GetResult();
}
ConfiguredTaskAwaiter GetAwaiter();
}
class YieldAwaitable : System.ValueType{
static class YieldAwaiter : System.ValueType{
Boolean get_IsCompleted();
Void OnCompleted(System.Action);
Void UnsafeOnCompleted(System.Action);
Void GetResult();
}
YieldAwaiter GetAwaiter();
}
class FormattableStringFactory : System.Object{
static FormattableString Create(System.String,System.Object[]);
}
class IDispatchConstantAttribute : System.Runtime.CompilerServices.CustomConstantAttribute{
this ();
Object get_Value();
}
class IUnknownConstantAttribute : System.Runtime.CompilerServices.CustomConstantAttribute{
this ();
Object get_Value();
}
}
