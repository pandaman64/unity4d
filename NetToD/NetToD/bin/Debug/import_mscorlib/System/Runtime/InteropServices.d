module System.Runtime.InteropServices;
import System;
import System.Reflection;
import System.Globalization;
import System.Runtime.Serialization;
import System.IO;
import System.Security.Policy;
import System.Collections;
import System.Runtime.ConstrainedExecution;
import System.Runtime.InteropServices.ComTypes;
import System.Security;
import System.Threading;
import Microsoft.Win32.SafeHandles;
import System.Reflection.Emit;
public:
pragma(assembly,"mscorlib"){
interface _Activator{
Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
}
interface _Attribute{
Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
}
interface _Thread{
Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
}
interface _Type{
Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
String ToString();
Boolean Equals(System.Object);
Int32 GetHashCode();
Type GetType();
MemberTypes get_MemberType();
String get_Name();
Type get_DeclaringType();
Type get_ReflectedType();
Object[] GetCustomAttributes(System.Type,System.Boolean);
Object[] GetCustomAttributes(System.Boolean);
Boolean IsDefined(System.Type,System.Boolean);
Guid get_GUID();
Module get_Module();
Assembly get_Assembly();
RuntimeTypeHandle get_TypeHandle();
String get_FullName();
String get_Namespace();
String get_AssemblyQualifiedName();
Int32 GetArrayRank();
Type get_BaseType();
ConstructorInfo[] GetConstructors(System.Reflection.BindingFlags);
Type GetInterface(System.String,System.Boolean);
Type[] GetInterfaces();
Type[] FindInterfaces(System.Reflection.TypeFilter,System.Object);
EventInfo GetEvent(System.String,System.Reflection.BindingFlags);
EventInfo[] GetEvents();
EventInfo[] GetEvents(System.Reflection.BindingFlags);
Type[] GetNestedTypes(System.Reflection.BindingFlags);
Type GetNestedType(System.String,System.Reflection.BindingFlags);
MemberInfo[] GetMember(System.String,System.Reflection.MemberTypes,System.Reflection.BindingFlags);
MemberInfo[] GetDefaultMembers();
MemberInfo[] FindMembers(System.Reflection.MemberTypes,System.Reflection.BindingFlags,System.Reflection.MemberFilter,System.Object);
Type GetElementType();
Boolean IsSubclassOf(System.Type);
Boolean IsInstanceOfType(System.Object);
Boolean IsAssignableFrom(System.Type);
InterfaceMapping GetInterfaceMap(System.Type);
MethodInfo GetMethod(System.String,System.Reflection.BindingFlags,System.Reflection.Binder,System.Type[],System.Reflection.ParameterModifier[]);
MethodInfo GetMethod(System.String,System.Reflection.BindingFlags);
MethodInfo[] GetMethods(System.Reflection.BindingFlags);
FieldInfo GetField(System.String,System.Reflection.BindingFlags);
FieldInfo[] GetFields(System.Reflection.BindingFlags);
PropertyInfo GetProperty(System.String,System.Reflection.BindingFlags);
PropertyInfo GetProperty(System.String,System.Reflection.BindingFlags,System.Reflection.Binder,System.Type,System.Type[],System.Reflection.ParameterModifier[]);
PropertyInfo[] GetProperties(System.Reflection.BindingFlags);
MemberInfo[] GetMember(System.String,System.Reflection.BindingFlags);
MemberInfo[] GetMembers(System.Reflection.BindingFlags);
Object InvokeMember(System.String,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object,System.Object[],System.Reflection.ParameterModifier[],System.Globalization.CultureInfo,System.String[]);
Type get_UnderlyingSystemType();
Object InvokeMember(System.String,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object,System.Object[],System.Globalization.CultureInfo);
Object InvokeMember(System.String,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object,System.Object[]);
ConstructorInfo GetConstructor(System.Reflection.BindingFlags,System.Reflection.Binder,System.Reflection.CallingConventions,System.Type[],System.Reflection.ParameterModifier[]);
ConstructorInfo GetConstructor(System.Reflection.BindingFlags,System.Reflection.Binder,System.Type[],System.Reflection.ParameterModifier[]);
ConstructorInfo GetConstructor(System.Type[]);
ConstructorInfo[] GetConstructors();
ConstructorInfo get_TypeInitializer();
MethodInfo GetMethod(System.String,System.Reflection.BindingFlags,System.Reflection.Binder,System.Reflection.CallingConventions,System.Type[],System.Reflection.ParameterModifier[]);
MethodInfo GetMethod(System.String,System.Type[],System.Reflection.ParameterModifier[]);
MethodInfo GetMethod(System.String,System.Type[]);
MethodInfo GetMethod(System.String);
MethodInfo[] GetMethods();
FieldInfo GetField(System.String);
FieldInfo[] GetFields();
Type GetInterface(System.String);
EventInfo GetEvent(System.String);
PropertyInfo GetProperty(System.String,System.Type,System.Type[],System.Reflection.ParameterModifier[]);
PropertyInfo GetProperty(System.String,System.Type,System.Type[]);
PropertyInfo GetProperty(System.String,System.Type[]);
PropertyInfo GetProperty(System.String,System.Type);
PropertyInfo GetProperty(System.String);
PropertyInfo[] GetProperties();
Type[] GetNestedTypes();
Type GetNestedType(System.String);
MemberInfo[] GetMember(System.String);
MemberInfo[] GetMembers();
TypeAttributes get_Attributes();
Boolean get_IsNotPublic();
Boolean get_IsPublic();
Boolean get_IsNestedPublic();
Boolean get_IsNestedPrivate();
Boolean get_IsNestedFamily();
Boolean get_IsNestedAssembly();
Boolean get_IsNestedFamANDAssem();
Boolean get_IsNestedFamORAssem();
Boolean get_IsAutoLayout();
Boolean get_IsLayoutSequential();
Boolean get_IsExplicitLayout();
Boolean get_IsClass();
Boolean get_IsInterface();
Boolean get_IsValueType();
Boolean get_IsAbstract();
Boolean get_IsSealed();
Boolean get_IsEnum();
Boolean get_IsSpecialName();
Boolean get_IsImport();
Boolean get_IsSerializable();
Boolean get_IsAnsiClass();
Boolean get_IsUnicodeClass();
Boolean get_IsAutoClass();
Boolean get_IsArray();
Boolean get_IsByRef();
Boolean get_IsPointer();
Boolean get_IsPrimitive();
Boolean get_IsCOMObject();
Boolean get_HasElementType();
Boolean get_IsContextful();
Boolean get_IsMarshalByRef();
Boolean Equals(System.Type);
}
interface _Assembly{
String ToString();
Boolean Equals(System.Object);
Int32 GetHashCode();
Type GetType();
String get_CodeBase();
String get_EscapedCodeBase();
AssemblyName GetName();
AssemblyName GetName(System.Boolean);
String get_FullName();
MethodInfo get_EntryPoint();
Type GetType(System.String);
Type GetType(System.String,System.Boolean);
Type[] GetExportedTypes();
Type[] GetTypes();
Stream GetManifestResourceStream(System.Type,System.String);
Stream GetManifestResourceStream(System.String);
FileStream GetFile(System.String);
FileStream[] GetFiles();
FileStream[] GetFiles(System.Boolean);
String[] GetManifestResourceNames();
ManifestResourceInfo GetManifestResourceInfo(System.String);
String get_Location();
Evidence get_Evidence();
Object[] GetCustomAttributes(System.Type,System.Boolean);
Object[] GetCustomAttributes(System.Boolean);
Boolean IsDefined(System.Type,System.Boolean);
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
Void add_ModuleResolve(System.Reflection.ModuleResolveEventHandler);
Void remove_ModuleResolve(System.Reflection.ModuleResolveEventHandler);
Type GetType(System.String,System.Boolean,System.Boolean);
Assembly GetSatelliteAssembly(System.Globalization.CultureInfo);
Assembly GetSatelliteAssembly(System.Globalization.CultureInfo,System.Version);
Module LoadModule(System.String,System.Byte[]);
Module LoadModule(System.String,System.Byte[],System.Byte[]);
Object CreateInstance(System.String);
Object CreateInstance(System.String,System.Boolean);
Object CreateInstance(System.String,System.Boolean,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object[],System.Globalization.CultureInfo,System.Object[]);
Module[] GetLoadedModules();
Module[] GetLoadedModules(System.Boolean);
Module[] GetModules();
Module[] GetModules(System.Boolean);
Module GetModule(System.String);
AssemblyName[] GetReferencedAssemblies();
Boolean get_GlobalAssemblyCache();
}
interface _MemberInfo{
Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
String ToString();
Boolean Equals(System.Object);
Int32 GetHashCode();
Type GetType();
MemberTypes get_MemberType();
String get_Name();
Type get_DeclaringType();
Type get_ReflectedType();
Object[] GetCustomAttributes(System.Type,System.Boolean);
Object[] GetCustomAttributes(System.Boolean);
Boolean IsDefined(System.Type,System.Boolean);
}
interface _MethodBase{
Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
String ToString();
Boolean Equals(System.Object);
Int32 GetHashCode();
Type GetType();
MemberTypes get_MemberType();
String get_Name();
Type get_DeclaringType();
Type get_ReflectedType();
Object[] GetCustomAttributes(System.Type,System.Boolean);
Object[] GetCustomAttributes(System.Boolean);
Boolean IsDefined(System.Type,System.Boolean);
ParameterInfo[] GetParameters();
MethodImplAttributes GetMethodImplementationFlags();
RuntimeMethodHandle get_MethodHandle();
MethodAttributes get_Attributes();
CallingConventions get_CallingConvention();
Object Invoke(System.Object,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object[],System.Globalization.CultureInfo);
Boolean get_IsPublic();
Boolean get_IsPrivate();
Boolean get_IsFamily();
Boolean get_IsAssembly();
Boolean get_IsFamilyAndAssembly();
Boolean get_IsFamilyOrAssembly();
Boolean get_IsStatic();
Boolean get_IsFinal();
Boolean get_IsVirtual();
Boolean get_IsHideBySig();
Boolean get_IsAbstract();
Boolean get_IsSpecialName();
Boolean get_IsConstructor();
Object Invoke(System.Object,System.Object[]);
}
interface _MethodInfo{
Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
String ToString();
Boolean Equals(System.Object);
Int32 GetHashCode();
Type GetType();
MemberTypes get_MemberType();
String get_Name();
Type get_DeclaringType();
Type get_ReflectedType();
Object[] GetCustomAttributes(System.Type,System.Boolean);
Object[] GetCustomAttributes(System.Boolean);
Boolean IsDefined(System.Type,System.Boolean);
ParameterInfo[] GetParameters();
MethodImplAttributes GetMethodImplementationFlags();
RuntimeMethodHandle get_MethodHandle();
MethodAttributes get_Attributes();
CallingConventions get_CallingConvention();
Object Invoke(System.Object,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object[],System.Globalization.CultureInfo);
Boolean get_IsPublic();
Boolean get_IsPrivate();
Boolean get_IsFamily();
Boolean get_IsAssembly();
Boolean get_IsFamilyAndAssembly();
Boolean get_IsFamilyOrAssembly();
Boolean get_IsStatic();
Boolean get_IsFinal();
Boolean get_IsVirtual();
Boolean get_IsHideBySig();
Boolean get_IsAbstract();
Boolean get_IsSpecialName();
Boolean get_IsConstructor();
Object Invoke(System.Object,System.Object[]);
Type get_ReturnType();
ICustomAttributeProvider get_ReturnTypeCustomAttributes();
MethodInfo GetBaseDefinition();
}
interface _ConstructorInfo{
Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
String ToString();
Boolean Equals(System.Object);
Int32 GetHashCode();
Type GetType();
MemberTypes get_MemberType();
String get_Name();
Type get_DeclaringType();
Type get_ReflectedType();
Object[] GetCustomAttributes(System.Type,System.Boolean);
Object[] GetCustomAttributes(System.Boolean);
Boolean IsDefined(System.Type,System.Boolean);
ParameterInfo[] GetParameters();
MethodImplAttributes GetMethodImplementationFlags();
RuntimeMethodHandle get_MethodHandle();
MethodAttributes get_Attributes();
CallingConventions get_CallingConvention();
Object Invoke_2(System.Object,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object[],System.Globalization.CultureInfo);
Boolean get_IsPublic();
Boolean get_IsPrivate();
Boolean get_IsFamily();
Boolean get_IsAssembly();
Boolean get_IsFamilyAndAssembly();
Boolean get_IsFamilyOrAssembly();
Boolean get_IsStatic();
Boolean get_IsFinal();
Boolean get_IsVirtual();
Boolean get_IsHideBySig();
Boolean get_IsAbstract();
Boolean get_IsSpecialName();
Boolean get_IsConstructor();
Object Invoke_3(System.Object,System.Object[]);
Object Invoke_4(System.Reflection.BindingFlags,System.Reflection.Binder,System.Object[],System.Globalization.CultureInfo);
Object Invoke_5(System.Object[]);
}
interface _FieldInfo{
Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
String ToString();
Boolean Equals(System.Object);
Int32 GetHashCode();
Type GetType();
MemberTypes get_MemberType();
String get_Name();
Type get_DeclaringType();
Type get_ReflectedType();
Object[] GetCustomAttributes(System.Type,System.Boolean);
Object[] GetCustomAttributes(System.Boolean);
Boolean IsDefined(System.Type,System.Boolean);
Type get_FieldType();
Object GetValue(System.Object);
Object GetValueDirect(System.TypedReference);
Void SetValue(System.Object,System.Object,System.Reflection.BindingFlags,System.Reflection.Binder,System.Globalization.CultureInfo);
Void SetValueDirect(System.TypedReference,System.Object);
RuntimeFieldHandle get_FieldHandle();
FieldAttributes get_Attributes();
Void SetValue(System.Object,System.Object);
Boolean get_IsPublic();
Boolean get_IsPrivate();
Boolean get_IsFamily();
Boolean get_IsAssembly();
Boolean get_IsFamilyAndAssembly();
Boolean get_IsFamilyOrAssembly();
Boolean get_IsStatic();
Boolean get_IsInitOnly();
Boolean get_IsLiteral();
Boolean get_IsNotSerialized();
Boolean get_IsSpecialName();
Boolean get_IsPinvokeImpl();
}
interface _PropertyInfo{
Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
String ToString();
Boolean Equals(System.Object);
Int32 GetHashCode();
Type GetType();
MemberTypes get_MemberType();
String get_Name();
Type get_DeclaringType();
Type get_ReflectedType();
Object[] GetCustomAttributes(System.Type,System.Boolean);
Object[] GetCustomAttributes(System.Boolean);
Boolean IsDefined(System.Type,System.Boolean);
Type get_PropertyType();
Object GetValue(System.Object,System.Object[]);
Object GetValue(System.Object,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object[],System.Globalization.CultureInfo);
Void SetValue(System.Object,System.Object,System.Object[]);
Void SetValue(System.Object,System.Object,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object[],System.Globalization.CultureInfo);
MethodInfo[] GetAccessors(System.Boolean);
MethodInfo GetGetMethod(System.Boolean);
MethodInfo GetSetMethod(System.Boolean);
ParameterInfo[] GetIndexParameters();
PropertyAttributes get_Attributes();
Boolean get_CanRead();
Boolean get_CanWrite();
MethodInfo[] GetAccessors();
MethodInfo GetGetMethod();
MethodInfo GetSetMethod();
Boolean get_IsSpecialName();
}
interface _EventInfo{
Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
String ToString();
Boolean Equals(System.Object);
Int32 GetHashCode();
Type GetType();
MemberTypes get_MemberType();
String get_Name();
Type get_DeclaringType();
Type get_ReflectedType();
Object[] GetCustomAttributes(System.Type,System.Boolean);
Object[] GetCustomAttributes(System.Boolean);
Boolean IsDefined(System.Type,System.Boolean);
MethodInfo GetAddMethod(System.Boolean);
MethodInfo GetRemoveMethod(System.Boolean);
MethodInfo GetRaiseMethod(System.Boolean);
EventAttributes get_Attributes();
MethodInfo GetAddMethod();
MethodInfo GetRemoveMethod();
MethodInfo GetRaiseMethod();
Void AddEventHandler(System.Object,System.Delegate);
Void RemoveEventHandler(System.Object,System.Delegate);
Type get_EventHandlerType();
Boolean get_IsSpecialName();
Boolean get_IsMulticast();
}
interface _ParameterInfo{
Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
}
interface _Module{
Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
}
interface _AssemblyName{
Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
}
class ArrayWithOffset : System.ValueType{
this (System.Object,System.Int32);
Object GetArray();
Int32 GetOffset();
Int32 GetHashCode();
Boolean Equals(System.Object);
Boolean Equals(System.Runtime.InteropServices.ArrayWithOffset);
static Boolean op_Equality(System.Runtime.InteropServices.ArrayWithOffset,System.Runtime.InteropServices.ArrayWithOffset);
static Boolean op_Inequality(System.Runtime.InteropServices.ArrayWithOffset,System.Runtime.InteropServices.ArrayWithOffset);
}
class UnmanagedFunctionPointerAttribute : System.Attribute{
this (System.Runtime.InteropServices.CallingConvention);
CallingConvention get_CallingConvention();
}
class TypeIdentifierAttribute : System.Attribute{
this ();
this (System.String,System.String);
String get_Scope();
String get_Identifier();
}
class AllowReversePInvokeCallsAttribute : System.Attribute{
this ();
}
class DispIdAttribute : System.Attribute{
this (System.Int32);
Int32 get_Value();
}
class ComInterfaceType : System.Enum{
}
class InterfaceTypeAttribute : System.Attribute{
this (System.Runtime.InteropServices.ComInterfaceType);
this (System.Int16);
ComInterfaceType get_Value();
}
class ComDefaultInterfaceAttribute : System.Attribute{
this (System.Type);
Type get_Value();
}
class ClassInterfaceType : System.Enum{
}
class ClassInterfaceAttribute : System.Attribute{
this (System.Runtime.InteropServices.ClassInterfaceType);
this (System.Int16);
ClassInterfaceType get_Value();
}
class ComVisibleAttribute : System.Attribute{
this (System.Boolean);
Boolean get_Value();
}
class TypeLibImportClassAttribute : System.Attribute{
this (System.Type);
String get_Value();
}
class LCIDConversionAttribute : System.Attribute{
this (System.Int32);
Int32 get_Value();
}
class ComRegisterFunctionAttribute : System.Attribute{
this ();
}
class ComUnregisterFunctionAttribute : System.Attribute{
this ();
}
class ProgIdAttribute : System.Attribute{
this (System.String);
String get_Value();
}
class ImportedFromTypeLibAttribute : System.Attribute{
this (System.String);
String get_Value();
}
class IDispatchImplType : System.Enum{
}
class IDispatchImplAttribute : System.Attribute{
this (System.Runtime.InteropServices.IDispatchImplType);
this (System.Int16);
IDispatchImplType get_Value();
}
class ComSourceInterfacesAttribute : System.Attribute{
this (System.String);
this (System.Type);
this (System.Type,System.Type);
this (System.Type,System.Type,System.Type);
this (System.Type,System.Type,System.Type,System.Type);
String get_Value();
}
class ComConversionLossAttribute : System.Attribute{
this ();
}
class TypeLibTypeFlags : System.Enum{
}
class TypeLibFuncFlags : System.Enum{
}
class TypeLibVarFlags : System.Enum{
}
class TypeLibTypeAttribute : System.Attribute{
this (System.Runtime.InteropServices.TypeLibTypeFlags);
this (System.Int16);
TypeLibTypeFlags get_Value();
}
class TypeLibFuncAttribute : System.Attribute{
this (System.Runtime.InteropServices.TypeLibFuncFlags);
this (System.Int16);
TypeLibFuncFlags get_Value();
}
class TypeLibVarAttribute : System.Attribute{
this (System.Runtime.InteropServices.TypeLibVarFlags);
this (System.Int16);
TypeLibVarFlags get_Value();
}
class VarEnum : System.Enum{
}
class UnmanagedType : System.Enum{
}
class MarshalAsAttribute : System.Attribute{
this (System.Runtime.InteropServices.UnmanagedType);
this (System.Int16);
UnmanagedType get_Value();
}
class ComImportAttribute : System.Attribute{
this ();
}
class GuidAttribute : System.Attribute{
this (System.String);
String get_Value();
}
class PreserveSigAttribute : System.Attribute{
this ();
}
class InAttribute : System.Attribute{
this ();
}
class OutAttribute : System.Attribute{
this ();
}
class OptionalAttribute : System.Attribute{
this ();
}
class DllImportSearchPath : System.Enum{
}
class DefaultDllImportSearchPathsAttribute : System.Attribute{
this (System.Runtime.InteropServices.DllImportSearchPath);
DllImportSearchPath get_Paths();
}
class DllImportAttribute : System.Attribute{
this (System.String);
String get_Value();
}
class StructLayoutAttribute : System.Attribute{
this (System.Runtime.InteropServices.LayoutKind);
this (System.Int16);
LayoutKind get_Value();
}
class FieldOffsetAttribute : System.Attribute{
this (System.Int32);
Int32 get_Value();
}
class ComAliasNameAttribute : System.Attribute{
this (System.String);
String get_Value();
}
class AutomationProxyAttribute : System.Attribute{
this (System.Boolean);
Boolean get_Value();
}
class PrimaryInteropAssemblyAttribute : System.Attribute{
this (System.Int32,System.Int32);
Int32 get_MajorVersion();
Int32 get_MinorVersion();
}
class CoClassAttribute : System.Attribute{
this (System.Type);
Type get_CoClass();
}
class ComEventInterfaceAttribute : System.Attribute{
this (System.Type,System.Type);
Type get_SourceInterface();
Type get_EventProvider();
}
class TypeLibVersionAttribute : System.Attribute{
this (System.Int32,System.Int32);
Int32 get_MajorVersion();
Int32 get_MinorVersion();
}
class ComCompatibleVersionAttribute : System.Attribute{
this (System.Int32,System.Int32,System.Int32,System.Int32);
Int32 get_MajorVersion();
Int32 get_MinorVersion();
Int32 get_BuildNumber();
Int32 get_RevisionNumber();
}
class BestFitMappingAttribute : System.Attribute{
this (System.Boolean);
Boolean get_BestFitMapping();
}
class DefaultCharSetAttribute : System.Attribute{
this (System.Runtime.InteropServices.CharSet);
CharSet get_CharSet();
}
class SetWin32ContextInIDispatchAttribute : System.Attribute{
this ();
}
class ManagedToNativeComInteropStubAttribute : System.Attribute{
this (System.Type,System.String);
Type get_ClassType();
String get_MethodName();
}
class CallingConvention : System.Enum{
}
class CharSet : System.Enum{
}
class COMException : System.Runtime.InteropServices.ExternalException{
this ();
this (System.String);
this (System.String,System.Exception);
this (System.String,System.Int32);
String ToString();
}
class CriticalHandle : System.Runtime.ConstrainedExecution.CriticalFinalizerObject{
Boolean get_IsClosed();
Boolean get_IsInvalid();
Void Close();
Void Dispose();
Void SetHandleAsInvalid();
}
class ExternalException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
this (System.String,System.Int32);
Int32 get_ErrorCode();
String ToString();
}
class GCHandleType : System.Enum{
}
class GCHandle : System.ValueType{
static GCHandle Alloc(System.Object);
static GCHandle Alloc(System.Object,System.Runtime.InteropServices.GCHandleType);
Void Free();
Object get_Target();
Void set_Target(System.Object);
IntPtr AddrOfPinnedObject();
Boolean get_IsAllocated();
static GCHandle op_Explicit(System.IntPtr);
static GCHandle FromIntPtr(System.IntPtr);
static IntPtr op_Explicit(System.Runtime.InteropServices.GCHandle);
static IntPtr ToIntPtr(System.Runtime.InteropServices.GCHandle);
Int32 GetHashCode();
Boolean Equals(System.Object);
static Boolean op_Equality(System.Runtime.InteropServices.GCHandle,System.Runtime.InteropServices.GCHandle);
static Boolean op_Inequality(System.Runtime.InteropServices.GCHandle,System.Runtime.InteropServices.GCHandle);
}
class HandleRef : System.ValueType{
this (System.Object,System.IntPtr);
Object get_Wrapper();
IntPtr get_Handle();
static IntPtr op_Explicit(System.Runtime.InteropServices.HandleRef);
static IntPtr ToIntPtr(System.Runtime.InteropServices.HandleRef);
}
interface ICustomMarshaler{
Object MarshalNativeToManaged(System.IntPtr);
IntPtr MarshalManagedToNative(System.Object);
Void CleanUpNativeData(System.IntPtr);
Void CleanUpManagedData(System.Object);
Int32 GetNativeDataSize();
}
interface _Exception{
String ToString();
Boolean Equals(System.Object);
Int32 GetHashCode();
Type GetType();
String get_Message();
Exception GetBaseException();
String get_StackTrace();
String get_HelpLink();
Void set_HelpLink(System.String);
String get_Source();
Void set_Source(System.String);
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
Exception get_InnerException();
MethodBase get_TargetSite();
}
class InvalidOleVariantTypeException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class LayoutKind : System.Enum{
}
class CustomQueryInterfaceMode : System.Enum{
}
class Marshal : System.Object{
static String PtrToStringAnsi(System.IntPtr);
static String PtrToStringAnsi(System.IntPtr,System.Int32);
static String PtrToStringUni(System.IntPtr,System.Int32);
static String PtrToStringAuto(System.IntPtr,System.Int32);
static String PtrToStringUni(System.IntPtr);
static String PtrToStringAuto(System.IntPtr);
static Int32 SizeOf(System.Object);
static Int32 SizeOf(System.Type);
static IntPtr OffsetOf(System.Type,System.String);
static IntPtr UnsafeAddrOfPinnedArrayElement(System.Array,System.Int32);
static Void Copy(System.Int32[],System.Int32,System.IntPtr,System.Int32);
static Void Copy(System.Char[],System.Int32,System.IntPtr,System.Int32);
static Void Copy(System.Int16[],System.Int32,System.IntPtr,System.Int32);
static Void Copy(System.Int64[],System.Int32,System.IntPtr,System.Int32);
static Void Copy(System.Single[],System.Int32,System.IntPtr,System.Int32);
static Void Copy(System.Double[],System.Int32,System.IntPtr,System.Int32);
static Void Copy(System.Byte[],System.Int32,System.IntPtr,System.Int32);
static Void Copy(System.IntPtr[],System.Int32,System.IntPtr,System.Int32);
static Void Copy(System.IntPtr,System.Int32[],System.Int32,System.Int32);
static Void Copy(System.IntPtr,System.Char[],System.Int32,System.Int32);
static Void Copy(System.IntPtr,System.Int16[],System.Int32,System.Int32);
static Void Copy(System.IntPtr,System.Int64[],System.Int32,System.Int32);
static Void Copy(System.IntPtr,System.Single[],System.Int32,System.Int32);
static Void Copy(System.IntPtr,System.Double[],System.Int32,System.Int32);
static Void Copy(System.IntPtr,System.Byte[],System.Int32,System.Int32);
static Void Copy(System.IntPtr,System.IntPtr[],System.Int32,System.Int32);
static Byte ReadByte(System.Object,System.Int32);
static Byte ReadByte(System.IntPtr,System.Int32);
static Byte ReadByte(System.IntPtr);
static Int16 ReadInt16(System.Object,System.Int32);
static Int16 ReadInt16(System.IntPtr,System.Int32);
static Int16 ReadInt16(System.IntPtr);
static Int32 ReadInt32(System.Object,System.Int32);
static Int32 ReadInt32(System.IntPtr,System.Int32);
static Int32 ReadInt32(System.IntPtr);
static IntPtr ReadIntPtr(System.Object,System.Int32);
static IntPtr ReadIntPtr(System.IntPtr,System.Int32);
static IntPtr ReadIntPtr(System.IntPtr);
static Int64 ReadInt64(System.Object,System.Int32);
static Int64 ReadInt64(System.IntPtr,System.Int32);
static Int64 ReadInt64(System.IntPtr);
static Void WriteByte(System.IntPtr,System.Int32,System.Byte);
static Void WriteByte(System.IntPtr,System.Byte);
static Void WriteInt16(System.IntPtr,System.Int32,System.Int16);
static Void WriteInt16(System.IntPtr,System.Int16);
static Void WriteInt16(System.IntPtr,System.Int32,System.Char);
static Void WriteInt16(System.IntPtr,System.Char);
static Void WriteInt32(System.IntPtr,System.Int32,System.Int32);
static Void WriteInt32(System.IntPtr,System.Int32);
static Void WriteIntPtr(System.IntPtr,System.Int32,System.IntPtr);
static Void WriteIntPtr(System.IntPtr,System.IntPtr);
static Void WriteInt64(System.IntPtr,System.Int32,System.Int64);
static Void WriteInt64(System.IntPtr,System.Int64);
static Int32 GetLastWin32Error();
static Int32 GetHRForLastWin32Error();
static Void Prelink(System.Reflection.MethodInfo);
static Void PrelinkAll(System.Type);
static Int32 NumParamBytes(System.Reflection.MethodInfo);
static IntPtr GetExceptionPointers();
static Int32 GetExceptionCode();
static Void StructureToPtr(System.Object,System.IntPtr,System.Boolean);
static Void PtrToStructure(System.IntPtr,System.Object);
static Object PtrToStructure(System.IntPtr,System.Type);
static Void DestroyStructure(System.IntPtr,System.Type);
static IntPtr GetHINSTANCE(System.Reflection.Module);
static Void ThrowExceptionForHR(System.Int32);
static Void ThrowExceptionForHR(System.Int32,System.IntPtr);
static Exception GetExceptionForHR(System.Int32);
static Exception GetExceptionForHR(System.Int32,System.IntPtr);
static Int32 GetHRForException(System.Exception);
static IntPtr GetUnmanagedThunkForManagedMethodPtr(System.IntPtr,System.IntPtr,System.Int32);
static IntPtr GetManagedThunkForUnmanagedMethodPtr(System.IntPtr,System.IntPtr,System.Int32);
static Thread GetThreadFromFiberCookie(System.Int32);
static IntPtr AllocHGlobal(System.IntPtr);
static IntPtr AllocHGlobal(System.Int32);
static Void FreeHGlobal(System.IntPtr);
static IntPtr ReAllocHGlobal(System.IntPtr,System.IntPtr);
static IntPtr StringToHGlobalAnsi(System.String);
static IntPtr StringToHGlobalUni(System.String);
static IntPtr StringToHGlobalAuto(System.String);
static String GetTypeLibName(System.Runtime.InteropServices.UCOMITypeLib);
static String GetTypeLibName(System.Runtime.InteropServices.ComTypes.ITypeLib);
static Guid GetTypeLibGuid(System.Runtime.InteropServices.UCOMITypeLib);
static Guid GetTypeLibGuid(System.Runtime.InteropServices.ComTypes.ITypeLib);
static Int32 GetTypeLibLcid(System.Runtime.InteropServices.UCOMITypeLib);
static Int32 GetTypeLibLcid(System.Runtime.InteropServices.ComTypes.ITypeLib);
static Guid GetTypeLibGuidForAssembly(System.Reflection.Assembly);
static String GetTypeInfoName(System.Runtime.InteropServices.UCOMITypeInfo);
static String GetTypeInfoName(System.Runtime.InteropServices.ComTypes.ITypeInfo);
static Type GetTypeForITypeInfo(System.IntPtr);
static Type GetTypeFromCLSID(System.Guid);
static IntPtr GetITypeInfoForType(System.Type);
static IntPtr GetIUnknownForObject(System.Object);
static IntPtr GetIUnknownForObjectInContext(System.Object);
static IntPtr GetIDispatchForObject(System.Object);
static IntPtr GetIDispatchForObjectInContext(System.Object);
static IntPtr GetComInterfaceForObject(System.Object,System.Type);
static IntPtr GetComInterfaceForObject(System.Object,System.Type,System.Runtime.InteropServices.CustomQueryInterfaceMode);
static IntPtr GetComInterfaceForObjectInContext(System.Object,System.Type);
static Object GetObjectForIUnknown(System.IntPtr);
static Object GetUniqueObjectForIUnknown(System.IntPtr);
static Object GetTypedObjectForIUnknown(System.IntPtr,System.Type);
static IntPtr CreateAggregatedObject(System.IntPtr,System.Object);
static Void CleanupUnusedObjectsInCurrentContext();
static Boolean AreComObjectsAvailableForCleanup();
static Boolean IsComObject(System.Object);
static IntPtr AllocCoTaskMem(System.Int32);
static IntPtr StringToCoTaskMemUni(System.String);
static IntPtr StringToCoTaskMemAuto(System.String);
static IntPtr StringToCoTaskMemAnsi(System.String);
static Void FreeCoTaskMem(System.IntPtr);
static IntPtr ReAllocCoTaskMem(System.IntPtr,System.Int32);
static Int32 ReleaseComObject(System.Object);
static Int32 FinalReleaseComObject(System.Object);
static Object GetComObjectData(System.Object,System.Object);
static Boolean SetComObjectData(System.Object,System.Object,System.Object);
static Object CreateWrapperOfType(System.Object,System.Type);
static Void ReleaseThreadCache();
static Boolean IsTypeVisibleFromCom(System.Type);
static Int32 AddRef(System.IntPtr);
static Int32 Release(System.IntPtr);
static Void FreeBSTR(System.IntPtr);
static IntPtr StringToBSTR(System.String);
static String PtrToStringBSTR(System.IntPtr);
static Void GetNativeVariantForObject(System.Object,System.IntPtr);
static Object GetObjectForNativeVariant(System.IntPtr);
static Object[] GetObjectsForNativeVariants(System.IntPtr,System.Int32);
static Int32 GetStartComSlot(System.Type);
static Int32 GetEndComSlot(System.Type);
static Int32 GetComSlotForMethodInfo(System.Reflection.MemberInfo);
static Guid GenerateGuidForType(System.Type);
static String GenerateProgIdForType(System.Type);
static Object BindToMoniker(System.String);
static Object GetActiveObject(System.String);
static Void ChangeWrapperHandleStrength(System.Object,System.Boolean);
static Delegate GetDelegateForFunctionPointer(System.IntPtr,System.Type);
static IntPtr GetFunctionPointerForDelegate(System.Delegate);
static IntPtr SecureStringToBSTR(System.Security.SecureString);
static IntPtr SecureStringToCoTaskMemAnsi(System.Security.SecureString);
static IntPtr SecureStringToCoTaskMemUnicode(System.Security.SecureString);
static Void ZeroFreeBSTR(System.IntPtr);
static Void ZeroFreeCoTaskMemAnsi(System.IntPtr);
static Void ZeroFreeCoTaskMemUnicode(System.IntPtr);
static IntPtr SecureStringToGlobalAllocAnsi(System.Security.SecureString);
static IntPtr SecureStringToGlobalAllocUnicode(System.Security.SecureString);
static Void ZeroFreeGlobalAllocAnsi(System.IntPtr);
static Void ZeroFreeGlobalAllocUnicode(System.IntPtr);
}
class MarshalDirectiveException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class RuntimeEnvironment : System.Object{
this ();
static Boolean FromGlobalAccessCache(System.Reflection.Assembly);
static String GetSystemVersion();
static String GetRuntimeDirectory();
static String get_SystemConfigurationFile();
static IntPtr GetRuntimeInterfaceAsIntPtr(System.Guid,System.Guid);
static Object GetRuntimeInterfaceAsObject(System.Guid,System.Guid);
}
class SEHException : System.Runtime.InteropServices.ExternalException{
this ();
this (System.String);
this (System.String,System.Exception);
Boolean CanResume();
}
class SafeBuffer : Microsoft.Win32.SafeHandles.SafeHandleZeroOrMinusOneIsInvalid{
Void Initialize(System.UInt64);
Void Initialize(System.UInt32,System.UInt32);
Void ReleasePointer();
UInt64 get_ByteLength();
}
class SafeHandle : System.Runtime.ConstrainedExecution.CriticalFinalizerObject{
IntPtr DangerousGetHandle();
Boolean get_IsClosed();
Boolean get_IsInvalid();
Void Close();
Void Dispose();
Void SetHandleAsInvalid();
Void DangerousRelease();
}
class BStrWrapper : System.Object{
this (System.String);
this (System.Object);
String get_WrappedObject();
}
class CurrencyWrapper : System.Object{
this (System.Decimal);
this (System.Object);
Decimal get_WrappedObject();
}
class DispatchWrapper : System.Object{
this (System.Object);
Object get_WrappedObject();
}
class ErrorWrapper : System.Object{
this (System.Int32);
this (System.Object);
this (System.Exception);
Int32 get_ErrorCode();
}
class UnknownWrapper : System.Object{
this (System.Object);
Object get_WrappedObject();
}
class VariantWrapper : System.Object{
this (System.Object);
Object get_WrappedObject();
}
class ComMemberType : System.Enum{
}
class ExtensibleClassFactory : System.Object{
static Void RegisterObjectCreationCallback(System.Runtime.InteropServices.ObjectCreationDelegate);
}
interface ICustomAdapter{
Object GetUnderlyingObject();
}
interface ICustomFactory{
MarshalByRefObject CreateInstance(System.Type);
}
class CustomQueryInterfaceResult : System.Enum{
}
interface ICustomQueryInterface{
}
class InvalidComObjectException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class AssemblyRegistrationFlags : System.Enum{
}
interface IRegistrationServices{
Boolean RegisterAssembly(System.Reflection.Assembly,System.Runtime.InteropServices.AssemblyRegistrationFlags);
Boolean UnregisterAssembly(System.Reflection.Assembly);
Type[] GetRegistrableTypesInAssembly(System.Reflection.Assembly);
String GetProgIdForType(System.Type);
Guid GetManagedCategoryGuid();
Boolean TypeRequiresRegistration(System.Type);
Boolean TypeRepresentsComType(System.Type);
}
class TypeLibImporterFlags : System.Enum{
}
class TypeLibExporterFlags : System.Enum{
}
class ImporterEventKind : System.Enum{
}
class ExporterEventKind : System.Enum{
}
interface ITypeLibImporterNotifySink{
Void ReportEvent(System.Runtime.InteropServices.ImporterEventKind,System.Int32,System.String);
Assembly ResolveRef(System.Object);
}
interface ITypeLibExporterNotifySink{
Void ReportEvent(System.Runtime.InteropServices.ExporterEventKind,System.Int32,System.String);
Object ResolveRef(System.Reflection.Assembly);
}
interface ITypeLibConverter{
AssemblyBuilder ConvertTypeLibToAssembly(System.Object,System.String,System.Runtime.InteropServices.TypeLibImporterFlags,System.Runtime.InteropServices.ITypeLibImporterNotifySink,System.Byte[],System.Reflection.StrongNameKeyPair,System.String,System.Version);
Object ConvertAssemblyToTypeLib(System.Reflection.Assembly,System.String,System.Runtime.InteropServices.TypeLibExporterFlags,System.Runtime.InteropServices.ITypeLibExporterNotifySink);
AssemblyBuilder ConvertTypeLibToAssembly(System.Object,System.String,System.Int32,System.Runtime.InteropServices.ITypeLibImporterNotifySink,System.Byte[],System.Reflection.StrongNameKeyPair,System.Boolean);
}
interface ITypeLibExporterNameProvider{
String[] GetNames();
}
class ObjectCreationDelegate : System.MulticastDelegate{
this (System.Object,System.IntPtr);
IntPtr Invoke(System.IntPtr);
IAsyncResult BeginInvoke(System.IntPtr,System.AsyncCallback,System.Object);
IntPtr EndInvoke(System.IAsyncResult);
}
class RegistrationClassContext : System.Enum{
}
class RegistrationConnectionType : System.Enum{
}
class RegistrationServices : System.Object{
this ();
Boolean RegisterAssembly(System.Reflection.Assembly,System.Runtime.InteropServices.AssemblyRegistrationFlags);
Boolean UnregisterAssembly(System.Reflection.Assembly);
Type[] GetRegistrableTypesInAssembly(System.Reflection.Assembly);
String GetProgIdForType(System.Type);
Guid GetManagedCategoryGuid();
Boolean TypeRequiresRegistration(System.Type);
Boolean TypeRepresentsComType(System.Type);
Int32 RegisterTypeForComClients(System.Type,System.Runtime.InteropServices.RegistrationClassContext,System.Runtime.InteropServices.RegistrationConnectionType);
Void UnregisterTypeForComClients(System.Int32);
}
class SafeArrayRankMismatchException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class SafeArrayTypeMismatchException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class TypeLibConverter : System.Object{
this ();
AssemblyBuilder ConvertTypeLibToAssembly(System.Object,System.String,System.Int32,System.Runtime.InteropServices.ITypeLibImporterNotifySink,System.Byte[],System.Reflection.StrongNameKeyPair,System.Boolean);
AssemblyBuilder ConvertTypeLibToAssembly(System.Object,System.String,System.Runtime.InteropServices.TypeLibImporterFlags,System.Runtime.InteropServices.ITypeLibImporterNotifySink,System.Byte[],System.Reflection.StrongNameKeyPair,System.String,System.Version);
Object ConvertAssemblyToTypeLib(System.Reflection.Assembly,System.String,System.Runtime.InteropServices.TypeLibExporterFlags,System.Runtime.InteropServices.ITypeLibExporterNotifySink);
}
class BIND_OPTS : System.ValueType{
}
interface UCOMIBindCtx{
Void RegisterObjectBound(System.Object);
Void RevokeObjectBound(System.Object);
Void ReleaseBoundObjects();
Void RegisterObjectParam(System.String,System.Object);
Void RevokeObjectParam(System.String);
}
interface UCOMIConnectionPointContainer{
}
interface UCOMIConnectionPoint{
Void Unadvise(System.Int32);
}
interface UCOMIEnumMoniker{
Int32 Skip(System.Int32);
Int32 Reset();
}
class CONNECTDATA : System.ValueType{
}
interface UCOMIEnumConnections{
Int32 Skip(System.Int32);
Void Reset();
}
interface UCOMIEnumConnectionPoints{
Int32 Skip(System.Int32);
Int32 Reset();
}
interface UCOMIEnumString{
Int32 Skip(System.Int32);
Int32 Reset();
}
interface UCOMIEnumVARIANT{
Int32 Next(System.Int32,System.Int32,System.Int32);
Int32 Skip(System.Int32);
Int32 Reset();
Void Clone(System.Int32);
}
class FILETIME : System.ValueType{
}
interface UCOMIMoniker{
Int32 IsDirty();
Void Load(System.Runtime.InteropServices.UCOMIStream);
Void Save(System.Runtime.InteropServices.UCOMIStream,System.Boolean);
Void IsEqual(System.Runtime.InteropServices.UCOMIMoniker);
Void IsRunning(System.Runtime.InteropServices.UCOMIBindCtx,System.Runtime.InteropServices.UCOMIMoniker,System.Runtime.InteropServices.UCOMIMoniker);
}
interface UCOMIPersistFile{
Int32 IsDirty();
Void Load(System.String,System.Int32);
Void Save(System.String,System.Boolean);
Void SaveCompleted(System.String);
}
interface UCOMIRunningObjectTable{
Void Revoke(System.Int32);
Void IsRunning(System.Runtime.InteropServices.UCOMIMoniker);
}
class STATSTG : System.ValueType{
}
interface UCOMIStream{
Void Write(System.Byte[],System.Int32,System.IntPtr);
Void Seek(System.Int64,System.Int32,System.IntPtr);
Void SetSize(System.Int64);
Void CopyTo(System.Runtime.InteropServices.UCOMIStream,System.Int64,System.IntPtr,System.IntPtr);
Void Commit(System.Int32);
Void Revert();
Void LockRegion(System.Int64,System.Int64,System.Int32);
Void UnlockRegion(System.Int64,System.Int64,System.Int32);
}
class DESCKIND : System.Enum{
}
class BINDPTR : System.ValueType{
}
interface UCOMITypeComp{
}
class TYPEKIND : System.Enum{
}
class TYPEFLAGS : System.Enum{
}
class IMPLTYPEFLAGS : System.Enum{
}
class TYPEATTR : System.ValueType{
}
class FUNCDESC : System.ValueType{
}
class IDLFLAG : System.Enum{
}
class IDLDESC : System.ValueType{
}
class PARAMFLAG : System.Enum{
}
class PARAMDESC : System.ValueType{
}
class TYPEDESC : System.ValueType{
}
class ELEMDESC : System.ValueType{
static class DESCUNION : System.ValueType{
}
}
class VARDESC : System.ValueType{
static class DESCUNION : System.ValueType{
}
}
class DISPPARAMS : System.ValueType{
}
class EXCEPINFO : System.ValueType{
}
class FUNCKIND : System.Enum{
}
class INVOKEKIND : System.Enum{
}
class CALLCONV : System.Enum{
}
class FUNCFLAGS : System.Enum{
}
class VARFLAGS : System.Enum{
}
interface UCOMITypeInfo{
Void ReleaseTypeAttr(System.IntPtr);
Void ReleaseFuncDesc(System.IntPtr);
Void ReleaseVarDesc(System.IntPtr);
}
class SYSKIND : System.Enum{
}
class LIBFLAGS : System.Enum{
}
class TYPELIBATTR : System.ValueType{
}
interface UCOMITypeLib{
Int32 GetTypeInfoCount();
Boolean IsName(System.String,System.Int32);
Void ReleaseTLibAttr(System.IntPtr);
}
class ComEventsHelper : System.Object{
static Void Combine(System.Object,System.Guid,System.Int32,System.Delegate);
static Delegate Remove(System.Object,System.Guid,System.Int32,System.Delegate);
}
interface _AssemblyBuilder{
Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
}
interface _ConstructorBuilder{
Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
}
interface _CustomAttributeBuilder{
Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
}
interface _EnumBuilder{
Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
}
interface _EventBuilder{
Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
}
interface _FieldBuilder{
Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
}
interface _ILGenerator{
Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
}
interface _LocalBuilder{
Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
}
interface _MethodBuilder{
Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
}
interface _MethodRental{
Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
}
interface _ModuleBuilder{
Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
}
interface _ParameterBuilder{
Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
}
interface _PropertyBuilder{
Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
}
interface _SignatureHelper{
Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
}
interface _TypeBuilder{
Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
}
}
