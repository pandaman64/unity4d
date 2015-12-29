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
class ContractHelper : System.__object{
}
class AccessedThroughPropertyAttribute : System.Attribute{
this (System.String);
System.String get_PropertyName();
}
class CallConvCdecl : System.__object{
this ();
}
class CallConvStdcall : System.__object{
this ();
}
class CallConvThiscall : System.__object{
this ();
}
class CallConvFastcall : System.__object{
this ();
}
class RuntimeHelpers : System.__object{
static class TryCode : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.Void Invoke(System.__object);
System.IAsyncResult BeginInvoke(System.__object,System.AsyncCallback,System.__object);
System.Void EndInvoke(System.IAsyncResult);
}
static class CleanupCode : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.Void Invoke(System.__object,System.Boolean);
System.IAsyncResult BeginInvoke(System.__object,System.Boolean,System.AsyncCallback,System.__object);
System.Void EndInvoke(System.IAsyncResult);
}
static System.Void InitializeArray(System.Array,System.RuntimeFieldHandle);
static System.__object GetObjectValue(System.__object);
static System.Void RunClassConstructor(System.RuntimeTypeHandle);
static System.Void RunModuleConstructor(System.ModuleHandle);
static System.Void PrepareMethod(System.RuntimeMethodHandle);
static System.Void PrepareMethod(System.RuntimeMethodHandle,System.RuntimeTypeHandle[]);
static System.Void PrepareDelegate(System.Delegate);
static System.Void PrepareContractedDelegate(System.Delegate);
static System.Int32 GetHashCode(System.__object);
static System.Boolean Equals(System.__object,System.__object);
static System.Int32 get_OffsetToStringData();
static System.Void EnsureSufficientExecutionStack();
static System.Void ProbeForSufficientStack();
static System.Void PrepareConstrainedRegions();
static System.Void PrepareConstrainedRegionsNoOP();
static System.Void ExecuteCodeWithGuaranteedCleanup(System.Runtime.CompilerServices.RuntimeHelpers.TryCode,System.Runtime.CompilerServices.RuntimeHelpers.CleanupCode,System.__object);
}
class CompilerGeneratedAttribute : System.Attribute{
this ();
}
class CustomConstantAttribute : System.Attribute{
System.__object get_Value();
}
class DateTimeConstantAttribute : System.Runtime.CompilerServices.CustomConstantAttribute{
this (System.Int64);
System.__object get_Value();
}
class DiscardableAttribute : System.Attribute{
this ();
}
class DecimalConstantAttribute : System.Attribute{
this (System.Byte,System.Byte,System.UInt32,System.UInt32,System.UInt32);
this (System.Byte,System.Byte,System.Int32,System.Int32,System.Int32);
System.Decimal get_Value();
}
class DisablePrivateReflectionAttribute : System.Attribute{
this ();
}
class CompilationRelaxations : System.Enum{
}
class CompilationRelaxationsAttribute : System.Attribute{
this (System.Int32);
this (System.Runtime.CompilerServices.CompilationRelaxations);
System.Int32 get_CompilationRelaxations();
}
class CompilerGlobalScopeAttribute : System.Attribute{
this ();
}
class ExtensionAttribute : System.Attribute{
this ();
}
class FixedBufferAttribute : System.Attribute{
this (System.Type,System.Int32);
System.Type get_ElementType();
System.Int32 get_Length();
}
class IndexerNameAttribute : System.Attribute{
this (System.String);
}
class InternalsVisibleToAttribute : System.Attribute{
this (System.String);
System.String get_AssemblyName();
System.Boolean get_AllInternalsVisible();
System.Void set_AllInternalsVisible(System.Boolean);
}
class IsVolatile : System.__object{
}
class MethodImplOptions : System.Enum{
}
class MethodCodeType : System.Enum{
}
class MethodImplAttribute : System.Attribute{
this (System.Runtime.CompilerServices.MethodImplOptions);
this (System.Int16);
this ();
System.Runtime.CompilerServices.MethodImplOptions get_Value();
}
class FixedAddressValueTypeAttribute : System.Attribute{
this ();
}
class UnsafeValueTypeAttribute : System.Attribute{
this ();
}
class RequiredAttributeAttribute : System.Attribute{
this (System.Type);
System.Type get_RequiredContract();
}
class LoadHint : System.Enum{
}
class DefaultDependencyAttribute : System.Attribute{
this (System.Runtime.CompilerServices.LoadHint);
System.Runtime.CompilerServices.LoadHint get_LoadHint();
}
class DependencyAttribute : System.Attribute{
this (System.String,System.Runtime.CompilerServices.LoadHint);
System.String get_DependentAssembly();
System.Runtime.CompilerServices.LoadHint get_LoadHint();
}
class CompilerMarshalOverride : System.__object{
}
class HasCopySemanticsAttribute : System.Attribute{
this ();
}
class IsBoxed : System.__object{
}
class IsByValue : System.__object{
}
class IsConst : System.__object{
}
class IsExplicitlyDereferenced : System.__object{
}
class IsImplicitlyDereferenced : System.__object{
}
class IsJitIntrinsic : System.__object{
}
class IsLong : System.__object{
}
class IsPinned : System.__object{
}
class IsSignUnspecifiedByte : System.__object{
}
class IsUdtReturn : System.__object{
}
class ScopelessEnumAttribute : System.Attribute{
this ();
}
class SpecialNameAttribute : System.Attribute{
this ();
}
class IsCopyConstructed : System.__object{
}
class SuppressIldasmAttribute : System.Attribute{
this ();
}
class NativeCppClassAttribute : System.Attribute{
this ();
}
class TypeForwardedToAttribute : System.Attribute{
this (System.Type);
System.Type get_Destination();
}
class TypeForwardedFromAttribute : System.Attribute{
this (System.String);
System.String get_AssemblyFullName();
}
class ReferenceAssemblyAttribute : System.Attribute{
this ();
this (System.String);
System.String get_Description();
}
class RuntimeCompatibilityAttribute : System.Attribute{
this ();
System.Boolean get_WrapNonExceptionThrows();
System.Void set_WrapNonExceptionThrows(System.Boolean);
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
System.Type get_StateMachineType();
}
class IteratorStateMachineAttribute : System.Runtime.CompilerServices.StateMachineAttribute{
this (System.Type);
}
class AsyncStateMachineAttribute : System.Runtime.CompilerServices.StateMachineAttribute{
this (System.Type);
}
class AsyncVoidMethodBuilder : System.ValueType{
static System.Runtime.CompilerServices.AsyncVoidMethodBuilder Create();
System.Void SetStateMachine(System.Runtime.CompilerServices.IAsyncStateMachine);
System.Void SetResult();
}
class AsyncTaskMethodBuilder : System.ValueType{
static System.Runtime.CompilerServices.AsyncTaskMethodBuilder Create();
System.Void SetStateMachine(System.Runtime.CompilerServices.IAsyncStateMachine);
System.Threading.Tasks.Task get_Task();
System.Void SetResult();
}
interface IAsyncStateMachine{
System.Void MoveNext();
System.Void SetStateMachine(System.Runtime.CompilerServices.IAsyncStateMachine);
}
interface INotifyCompletion{
System.Void OnCompleted(System.Action);
}
interface ICriticalNotifyCompletion{
System.Void UnsafeOnCompleted(System.Action);
}
class TaskAwaiter : System.ValueType{
System.Boolean get_IsCompleted();
System.Void OnCompleted(System.Action);
System.Void UnsafeOnCompleted(System.Action);
System.Void GetResult();
}
class ConfiguredTaskAwaitable : System.ValueType{
static class ConfiguredTaskAwaiter : System.ValueType{
System.Boolean get_IsCompleted();
System.Void OnCompleted(System.Action);
System.Void UnsafeOnCompleted(System.Action);
System.Void GetResult();
}
System.Runtime.CompilerServices.ConfiguredTaskAwaitable.ConfiguredTaskAwaiter GetAwaiter();
}
class YieldAwaitable : System.ValueType{
static class YieldAwaiter : System.ValueType{
System.Boolean get_IsCompleted();
System.Void OnCompleted(System.Action);
System.Void UnsafeOnCompleted(System.Action);
System.Void GetResult();
}
System.Runtime.CompilerServices.YieldAwaitable.YieldAwaiter GetAwaiter();
}
class FormattableStringFactory : System.__object{
static System.FormattableString Create(System.String,System.__object[]);
}
class IDispatchConstantAttribute : System.Runtime.CompilerServices.CustomConstantAttribute{
this ();
System.__object get_Value();
}
class IUnknownConstantAttribute : System.Runtime.CompilerServices.CustomConstantAttribute{
this ();
System.__object get_Value();
}
}
