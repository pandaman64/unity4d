module System.Runtime.InteropServices;
import System;
import System.Reflection;
import System.Globalization;
import System.Runtime.Serialization;
import System.IO;
import System.Security.Policy;
import System.Collections;
import System.Runtime.InteropServices.ComTypes;
import System.Security;
import System.Threading;
import System.Reflection.Emit;
import system.Runtime.ConstrainedExecution;
import Microsoft.Win32.SafeHandles;
public:
pragma(assembly,"mscorlib"){
interface _Activator{
}
interface _Attribute{
}
interface _Thread{
}
interface _Type{
}
interface _Assembly{
}
interface _MemberInfo{
}
interface _MethodBase{
}
interface _MethodInfo{
}
interface _ConstructorInfo{
}
interface _FieldInfo{
}
interface _PropertyInfo{
}
interface _EventInfo{
}
interface _ParameterInfo{
}
interface _Module{
}
interface _AssemblyName{
}
class ArrayWithOffset : ValueType{
}
class UnmanagedFunctionPointerAttribute : Attribute{
}
class TypeIdentifierAttribute : Attribute{
}
class AllowReversePInvokeCallsAttribute : Attribute{
}
class DispIdAttribute : Attribute{
}
class ComInterfaceType : Enum{
}
class InterfaceTypeAttribute : Attribute{
}
class ComDefaultInterfaceAttribute : Attribute{
}
class ClassInterfaceType : Enum{
}
class ClassInterfaceAttribute : Attribute{
}
class ComVisibleAttribute : Attribute{
}
class TypeLibImportClassAttribute : Attribute{
}
class LCIDConversionAttribute : Attribute{
}
class ComRegisterFunctionAttribute : Attribute{
}
class ComUnregisterFunctionAttribute : Attribute{
}
class ProgIdAttribute : Attribute{
}
class ImportedFromTypeLibAttribute : Attribute{
}
class IDispatchImplType : Enum{
}
class IDispatchImplAttribute : Attribute{
}
class ComSourceInterfacesAttribute : Attribute{
}
class ComConversionLossAttribute : Attribute{
}
class TypeLibTypeFlags : Enum{
}
class TypeLibFuncFlags : Enum{
}
class TypeLibVarFlags : Enum{
}
class TypeLibTypeAttribute : Attribute{
}
class TypeLibFuncAttribute : Attribute{
}
class TypeLibVarAttribute : Attribute{
}
class VarEnum : Enum{
}
class UnmanagedType : Enum{
}
class MarshalAsAttribute : Attribute{
}
class ComImportAttribute : Attribute{
}
class GuidAttribute : Attribute{
}
class PreserveSigAttribute : Attribute{
}
class InAttribute : Attribute{
}
class OutAttribute : Attribute{
}
class OptionalAttribute : Attribute{
}
class DllImportSearchPath : Enum{
}
class DefaultDllImportSearchPathsAttribute : Attribute{
}
class DllImportAttribute : Attribute{
}
class StructLayoutAttribute : Attribute{
}
class FieldOffsetAttribute : Attribute{
}
class ComAliasNameAttribute : Attribute{
}
class AutomationProxyAttribute : Attribute{
}
class PrimaryInteropAssemblyAttribute : Attribute{
}
class CoClassAttribute : Attribute{
}
class ComEventInterfaceAttribute : Attribute{
}
class TypeLibVersionAttribute : Attribute{
}
class ComCompatibleVersionAttribute : Attribute{
}
class BestFitMappingAttribute : Attribute{
}
class DefaultCharSetAttribute : Attribute{
}
class SetWin32ContextInIDispatchAttribute : Attribute{
}
class ManagedToNativeComInteropStubAttribute : Attribute{
}
class CallingConvention : Enum{
}
class CharSet : Enum{
}
class COMException : ExternalException{
}
class CriticalHandle : CriticalFinalizerObject{
}
class ExternalException : SystemException{
}
class GCHandleType : Enum{
}
class GCHandle : ValueType{
}
class HandleRef : ValueType{
}
interface ICustomMarshaler{
}
interface _Exception{
}
class InvalidOleVariantTypeException : SystemException{
}
class LayoutKind : Enum{
}
class CustomQueryInterfaceMode : Enum{
}
class Marshal : Object{
}
class MarshalDirectiveException : SystemException{
}
class RuntimeEnvironment : Object{
}
class SEHException : ExternalException{
}
class SafeBuffer : SafeHandleZeroOrMinusOneIsInvalid{
}
class SafeHandle : CriticalFinalizerObject{
}
class BStrWrapper : Object{
}
class CurrencyWrapper : Object{
}
class DispatchWrapper : Object{
}
class ErrorWrapper : Object{
}
class UnknownWrapper : Object{
}
class VariantWrapper : Object{
}
class ComMemberType : Enum{
}
class ExtensibleClassFactory : Object{
}
interface ICustomAdapter{
}
interface ICustomFactory{
}
class CustomQueryInterfaceResult : Enum{
}
interface ICustomQueryInterface{
}
class InvalidComObjectException : SystemException{
}
class AssemblyRegistrationFlags : Enum{
}
interface IRegistrationServices{
}
class TypeLibImporterFlags : Enum{
}
class TypeLibExporterFlags : Enum{
}
class ImporterEventKind : Enum{
}
class ExporterEventKind : Enum{
}
interface ITypeLibImporterNotifySink{
}
interface ITypeLibExporterNotifySink{
}
interface ITypeLibConverter{
}
interface ITypeLibExporterNameProvider{
}
class ObjectCreationDelegate : MulticastDelegate{
}
class RegistrationClassContext : Enum{
}
class RegistrationConnectionType : Enum{
}
class RegistrationServices : Object{
}
class SafeArrayRankMismatchException : SystemException{
}
class SafeArrayTypeMismatchException : SystemException{
}
class TypeLibConverter : Object{
}
class BIND_OPTS : ValueType{
}
interface UCOMIBindCtx{
}
interface UCOMIConnectionPointContainer{
}
interface UCOMIConnectionPoint{
}
interface UCOMIEnumMoniker{
}
class CONNECTDATA : ValueType{
}
interface UCOMIEnumConnections{
}
interface UCOMIEnumConnectionPoints{
}
interface UCOMIEnumString{
}
interface UCOMIEnumVARIANT{
}
class FILETIME : ValueType{
}
interface UCOMIMoniker{
}
interface UCOMIPersistFile{
}
interface UCOMIRunningObjectTable{
}
class STATSTG : ValueType{
}
interface UCOMIStream{
}
class DESCKIND : Enum{
}
class BINDPTR : ValueType{
}
interface UCOMITypeComp{
}
class TYPEKIND : Enum{
}
class TYPEFLAGS : Enum{
}
class IMPLTYPEFLAGS : Enum{
}
class TYPEATTR : ValueType{
}
class FUNCDESC : ValueType{
}
class IDLFLAG : Enum{
}
class IDLDESC : ValueType{
}
class PARAMFLAG : Enum{
}
class PARAMDESC : ValueType{
}
class TYPEDESC : ValueType{
}
class ELEMDESC : ValueType{
class DESCUNION : ValueType{
}
}
class VARDESC : ValueType{
class DESCUNION : ValueType{
}
}
class DISPPARAMS : ValueType{
}
class EXCEPINFO : ValueType{
}
class FUNCKIND : Enum{
}
class INVOKEKIND : Enum{
}
class CALLCONV : Enum{
}
class FUNCFLAGS : Enum{
}
class VARFLAGS : Enum{
}
interface UCOMITypeInfo{
}
class SYSKIND : Enum{
}
class LIBFLAGS : Enum{
}
class TYPELIBATTR : ValueType{
}
interface UCOMITypeLib{
}
class ComEventsHelper : Object{
}
interface _AssemblyBuilder{
}
interface _ConstructorBuilder{
}
interface _CustomAttributeBuilder{
}
interface _EnumBuilder{
}
interface _EventBuilder{
}
interface _FieldBuilder{
}
interface _ILGenerator{
}
interface _LocalBuilder{
}
interface _MethodBuilder{
}
interface _MethodRental{
}
interface _ModuleBuilder{
}
interface _ParameterBuilder{
}
interface _PropertyBuilder{
}
interface _SignatureHelper{
}
interface _TypeBuilder{
}
}
