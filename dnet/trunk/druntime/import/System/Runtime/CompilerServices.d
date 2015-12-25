module System.Runtime.CompilerServices;
import System;
import System.Diagnostics.Contracts;
import System.Runtime.Serialization;
import System.Collections;
import System.Reflection;
import System.Threading.Tasks;
public:
pragma(assembly,"mscorlib"){
class StringFreezingAttribute : Attribute{
}
class ContractHelper : Object{
}
class AccessedThroughPropertyAttribute : Attribute{
}
class CallConvCdecl : Object{
}
class CallConvStdcall : Object{
}
class CallConvThiscall : Object{
}
class CallConvFastcall : Object{
}
class RuntimeHelpers : Object{
class TryCode : MulticastDelegate{
}
class CleanupCode : MulticastDelegate{
}
}
class CompilerGeneratedAttribute : Attribute{
}
class CustomConstantAttribute : Attribute{
}
class DateTimeConstantAttribute : CustomConstantAttribute{
}
class DiscardableAttribute : Attribute{
}
class DecimalConstantAttribute : Attribute{
}
class DisablePrivateReflectionAttribute : Attribute{
}
class CompilationRelaxations : Enum{
}
class CompilationRelaxationsAttribute : Attribute{
}
class CompilerGlobalScopeAttribute : Attribute{
}
class ExtensionAttribute : Attribute{
}
class FixedBufferAttribute : Attribute{
}
class IndexerNameAttribute : Attribute{
}
class InternalsVisibleToAttribute : Attribute{
}
class IsVolatile : Object{
}
class MethodImplOptions : Enum{
}
class MethodCodeType : Enum{
}
class MethodImplAttribute : Attribute{
}
class FixedAddressValueTypeAttribute : Attribute{
}
class UnsafeValueTypeAttribute : Attribute{
}
class RequiredAttributeAttribute : Attribute{
}
class LoadHint : Enum{
}
class DefaultDependencyAttribute : Attribute{
}
class DependencyAttribute : Attribute{
}
class CompilerMarshalOverride : Object{
}
class HasCopySemanticsAttribute : Attribute{
}
class IsBoxed : Object{
}
class IsByValue : Object{
}
class IsConst : Object{
}
class IsExplicitlyDereferenced : Object{
}
class IsImplicitlyDereferenced : Object{
}
class IsJitIntrinsic : Object{
}
class IsLong : Object{
}
class IsPinned : Object{
}
class IsSignUnspecifiedByte : Object{
}
class IsUdtReturn : Object{
}
class ScopelessEnumAttribute : Attribute{
}
class SpecialNameAttribute : Attribute{
}
class IsCopyConstructed : Object{
}
class SuppressIldasmAttribute : Attribute{
}
class NativeCppClassAttribute : Attribute{
}
class TypeForwardedToAttribute : Attribute{
}
class TypeForwardedFromAttribute : Attribute{
}
class ReferenceAssemblyAttribute : Attribute{
}
class RuntimeCompatibilityAttribute : Attribute{
}
class RuntimeWrappedException : Exception{
}
class CallerFilePathAttribute : Attribute{
}
class CallerLineNumberAttribute : Attribute{
}
class CallerMemberNameAttribute : Attribute{
}
class StateMachineAttribute : Attribute{
}
class IteratorStateMachineAttribute : StateMachineAttribute{
}
class AsyncStateMachineAttribute : StateMachineAttribute{
}
class AsyncVoidMethodBuilder : ValueType{
}
class AsyncTaskMethodBuilder : ValueType{
}
interface IAsyncStateMachine{
}
interface INotifyCompletion{
}
interface ICriticalNotifyCompletion{
}
class TaskAwaiter : ValueType{
}
class ConfiguredTaskAwaitable : ValueType{
class ConfiguredTaskAwaiter : ValueType{
}
}
class YieldAwaitable : ValueType{
class YieldAwaiter : ValueType{
}
}
class FormattableStringFactory : Object{
}
class IDispatchConstantAttribute : CustomConstantAttribute{
}
class IUnknownConstantAttribute : CustomConstantAttribute{
}
}
