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
System.Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
}
interface _Attribute{
System.Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
}
interface _Thread{
System.Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
}
interface _Type{
System.Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
System.String ToString();
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.Type GetType();
System.Reflection.MemberTypes get_MemberType();
System.String get_Name();
System.Type get_DeclaringType();
System.Type get_ReflectedType();
System.__object[] GetCustomAttributes(System.Type,System.Boolean);
System.__object[] GetCustomAttributes(System.Boolean);
System.Boolean IsDefined(System.Type,System.Boolean);
System.Guid get_GUID();
System.Reflection.Module get_Module();
System.Reflection.Assembly get_Assembly();
System.RuntimeTypeHandle get_TypeHandle();
System.String get_FullName();
System.String get_Namespace();
System.String get_AssemblyQualifiedName();
System.Int32 GetArrayRank();
System.Type get_BaseType();
System.Reflection.ConstructorInfo[] GetConstructors(System.Reflection.BindingFlags);
System.Type GetInterface(System.String,System.Boolean);
System.Type[] GetInterfaces();
System.Type[] FindInterfaces(System.Reflection.TypeFilter,System.__object);
System.Reflection.EventInfo GetEvent(System.String,System.Reflection.BindingFlags);
System.Reflection.EventInfo[] GetEvents();
System.Reflection.EventInfo[] GetEvents(System.Reflection.BindingFlags);
System.Type[] GetNestedTypes(System.Reflection.BindingFlags);
System.Type GetNestedType(System.String,System.Reflection.BindingFlags);
System.Reflection.MemberInfo[] GetMember(System.String,System.Reflection.MemberTypes,System.Reflection.BindingFlags);
System.Reflection.MemberInfo[] GetDefaultMembers();
System.Reflection.MemberInfo[] FindMembers(System.Reflection.MemberTypes,System.Reflection.BindingFlags,System.Reflection.MemberFilter,System.__object);
System.Type GetElementType();
System.Boolean IsSubclassOf(System.Type);
System.Boolean IsInstanceOfType(System.__object);
System.Boolean IsAssignableFrom(System.Type);
System.Reflection.InterfaceMapping GetInterfaceMap(System.Type);
System.Reflection.MethodInfo GetMethod(System.String,System.Reflection.BindingFlags,System.Reflection.Binder,System.Type[],System.Reflection.ParameterModifier[]);
System.Reflection.MethodInfo GetMethod(System.String,System.Reflection.BindingFlags);
System.Reflection.MethodInfo[] GetMethods(System.Reflection.BindingFlags);
System.Reflection.FieldInfo GetField(System.String,System.Reflection.BindingFlags);
System.Reflection.FieldInfo[] GetFields(System.Reflection.BindingFlags);
System.Reflection.PropertyInfo GetProperty(System.String,System.Reflection.BindingFlags);
System.Reflection.PropertyInfo GetProperty(System.String,System.Reflection.BindingFlags,System.Reflection.Binder,System.Type,System.Type[],System.Reflection.ParameterModifier[]);
System.Reflection.PropertyInfo[] GetProperties(System.Reflection.BindingFlags);
System.Reflection.MemberInfo[] GetMember(System.String,System.Reflection.BindingFlags);
System.Reflection.MemberInfo[] GetMembers(System.Reflection.BindingFlags);
System.__object InvokeMember(System.String,System.Reflection.BindingFlags,System.Reflection.Binder,System.__object,System.__object[],System.Reflection.ParameterModifier[],System.Globalization.CultureInfo,System.String[]);
System.Type get_UnderlyingSystemType();
System.__object InvokeMember(System.String,System.Reflection.BindingFlags,System.Reflection.Binder,System.__object,System.__object[],System.Globalization.CultureInfo);
System.__object InvokeMember(System.String,System.Reflection.BindingFlags,System.Reflection.Binder,System.__object,System.__object[]);
System.Reflection.ConstructorInfo GetConstructor(System.Reflection.BindingFlags,System.Reflection.Binder,System.Reflection.CallingConventions,System.Type[],System.Reflection.ParameterModifier[]);
System.Reflection.ConstructorInfo GetConstructor(System.Reflection.BindingFlags,System.Reflection.Binder,System.Type[],System.Reflection.ParameterModifier[]);
System.Reflection.ConstructorInfo GetConstructor(System.Type[]);
System.Reflection.ConstructorInfo[] GetConstructors();
System.Reflection.ConstructorInfo get_TypeInitializer();
System.Reflection.MethodInfo GetMethod(System.String,System.Reflection.BindingFlags,System.Reflection.Binder,System.Reflection.CallingConventions,System.Type[],System.Reflection.ParameterModifier[]);
System.Reflection.MethodInfo GetMethod(System.String,System.Type[],System.Reflection.ParameterModifier[]);
System.Reflection.MethodInfo GetMethod(System.String,System.Type[]);
System.Reflection.MethodInfo GetMethod(System.String);
System.Reflection.MethodInfo[] GetMethods();
System.Reflection.FieldInfo GetField(System.String);
System.Reflection.FieldInfo[] GetFields();
System.Type GetInterface(System.String);
System.Reflection.EventInfo GetEvent(System.String);
System.Reflection.PropertyInfo GetProperty(System.String,System.Type,System.Type[],System.Reflection.ParameterModifier[]);
System.Reflection.PropertyInfo GetProperty(System.String,System.Type,System.Type[]);
System.Reflection.PropertyInfo GetProperty(System.String,System.Type[]);
System.Reflection.PropertyInfo GetProperty(System.String,System.Type);
System.Reflection.PropertyInfo GetProperty(System.String);
System.Reflection.PropertyInfo[] GetProperties();
System.Type[] GetNestedTypes();
System.Type GetNestedType(System.String);
System.Reflection.MemberInfo[] GetMember(System.String);
System.Reflection.MemberInfo[] GetMembers();
System.Reflection.TypeAttributes get_Attributes();
System.Boolean get_IsNotPublic();
System.Boolean get_IsPublic();
System.Boolean get_IsNestedPublic();
System.Boolean get_IsNestedPrivate();
System.Boolean get_IsNestedFamily();
System.Boolean get_IsNestedAssembly();
System.Boolean get_IsNestedFamANDAssem();
System.Boolean get_IsNestedFamORAssem();
System.Boolean get_IsAutoLayout();
System.Boolean get_IsLayoutSequential();
System.Boolean get_IsExplicitLayout();
System.Boolean get_IsClass();
System.Boolean get_IsInterface();
System.Boolean get_IsValueType();
System.Boolean get_IsAbstract();
System.Boolean get_IsSealed();
System.Boolean get_IsEnum();
System.Boolean get_IsSpecialName();
System.Boolean get_IsImport();
System.Boolean get_IsSerializable();
System.Boolean get_IsAnsiClass();
System.Boolean get_IsUnicodeClass();
System.Boolean get_IsAutoClass();
System.Boolean get_IsArray();
System.Boolean get_IsByRef();
System.Boolean get_IsPointer();
System.Boolean get_IsPrimitive();
System.Boolean get_IsCOMObject();
System.Boolean get_HasElementType();
System.Boolean get_IsContextful();
System.Boolean get_IsMarshalByRef();
System.Boolean Equals(System.Type);
}
interface _Assembly{
System.String ToString();
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.Type GetType();
System.String get_CodeBase();
System.String get_EscapedCodeBase();
System.Reflection.AssemblyName GetName();
System.Reflection.AssemblyName GetName(System.Boolean);
System.String get_FullName();
System.Reflection.MethodInfo get_EntryPoint();
System.Type GetType(System.String);
System.Type GetType(System.String,System.Boolean);
System.Type[] GetExportedTypes();
System.Type[] GetTypes();
System.IO.Stream GetManifestResourceStream(System.Type,System.String);
System.IO.Stream GetManifestResourceStream(System.String);
System.IO.FileStream GetFile(System.String);
System.IO.FileStream[] GetFiles();
System.IO.FileStream[] GetFiles(System.Boolean);
System.String[] GetManifestResourceNames();
System.Reflection.ManifestResourceInfo GetManifestResourceInfo(System.String);
System.String get_Location();
System.Security.Policy.Evidence get_Evidence();
System.__object[] GetCustomAttributes(System.Type,System.Boolean);
System.__object[] GetCustomAttributes(System.Boolean);
System.Boolean IsDefined(System.Type,System.Boolean);
System.Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
System.Void add_ModuleResolve(System.Reflection.ModuleResolveEventHandler);
System.Void remove_ModuleResolve(System.Reflection.ModuleResolveEventHandler);
System.Type GetType(System.String,System.Boolean,System.Boolean);
System.Reflection.Assembly GetSatelliteAssembly(System.Globalization.CultureInfo);
System.Reflection.Assembly GetSatelliteAssembly(System.Globalization.CultureInfo,System.Version);
System.Reflection.Module LoadModule(System.String,System.Byte[]);
System.Reflection.Module LoadModule(System.String,System.Byte[],System.Byte[]);
System.__object CreateInstance(System.String);
System.__object CreateInstance(System.String,System.Boolean);
System.__object CreateInstance(System.String,System.Boolean,System.Reflection.BindingFlags,System.Reflection.Binder,System.__object[],System.Globalization.CultureInfo,System.__object[]);
System.Reflection.Module[] GetLoadedModules();
System.Reflection.Module[] GetLoadedModules(System.Boolean);
System.Reflection.Module[] GetModules();
System.Reflection.Module[] GetModules(System.Boolean);
System.Reflection.Module GetModule(System.String);
System.Reflection.AssemblyName[] GetReferencedAssemblies();
System.Boolean get_GlobalAssemblyCache();
}
interface _MemberInfo{
System.Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
System.String ToString();
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.Type GetType();
System.Reflection.MemberTypes get_MemberType();
System.String get_Name();
System.Type get_DeclaringType();
System.Type get_ReflectedType();
System.__object[] GetCustomAttributes(System.Type,System.Boolean);
System.__object[] GetCustomAttributes(System.Boolean);
System.Boolean IsDefined(System.Type,System.Boolean);
}
interface _MethodBase{
System.Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
System.String ToString();
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.Type GetType();
System.Reflection.MemberTypes get_MemberType();
System.String get_Name();
System.Type get_DeclaringType();
System.Type get_ReflectedType();
System.__object[] GetCustomAttributes(System.Type,System.Boolean);
System.__object[] GetCustomAttributes(System.Boolean);
System.Boolean IsDefined(System.Type,System.Boolean);
System.Reflection.ParameterInfo[] GetParameters();
System.Reflection.MethodImplAttributes GetMethodImplementationFlags();
System.RuntimeMethodHandle get_MethodHandle();
System.Reflection.MethodAttributes get_Attributes();
System.Reflection.CallingConventions get_CallingConvention();
System.__object Invoke(System.__object,System.Reflection.BindingFlags,System.Reflection.Binder,System.__object[],System.Globalization.CultureInfo);
System.Boolean get_IsPublic();
System.Boolean get_IsPrivate();
System.Boolean get_IsFamily();
System.Boolean get_IsAssembly();
System.Boolean get_IsFamilyAndAssembly();
System.Boolean get_IsFamilyOrAssembly();
System.Boolean get_IsStatic();
System.Boolean get_IsFinal();
System.Boolean get_IsVirtual();
System.Boolean get_IsHideBySig();
System.Boolean get_IsAbstract();
System.Boolean get_IsSpecialName();
System.Boolean get_IsConstructor();
System.__object Invoke(System.__object,System.__object[]);
}
interface _MethodInfo{
System.Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
System.String ToString();
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.Type GetType();
System.Reflection.MemberTypes get_MemberType();
System.String get_Name();
System.Type get_DeclaringType();
System.Type get_ReflectedType();
System.__object[] GetCustomAttributes(System.Type,System.Boolean);
System.__object[] GetCustomAttributes(System.Boolean);
System.Boolean IsDefined(System.Type,System.Boolean);
System.Reflection.ParameterInfo[] GetParameters();
System.Reflection.MethodImplAttributes GetMethodImplementationFlags();
System.RuntimeMethodHandle get_MethodHandle();
System.Reflection.MethodAttributes get_Attributes();
System.Reflection.CallingConventions get_CallingConvention();
System.__object Invoke(System.__object,System.Reflection.BindingFlags,System.Reflection.Binder,System.__object[],System.Globalization.CultureInfo);
System.Boolean get_IsPublic();
System.Boolean get_IsPrivate();
System.Boolean get_IsFamily();
System.Boolean get_IsAssembly();
System.Boolean get_IsFamilyAndAssembly();
System.Boolean get_IsFamilyOrAssembly();
System.Boolean get_IsStatic();
System.Boolean get_IsFinal();
System.Boolean get_IsVirtual();
System.Boolean get_IsHideBySig();
System.Boolean get_IsAbstract();
System.Boolean get_IsSpecialName();
System.Boolean get_IsConstructor();
System.__object Invoke(System.__object,System.__object[]);
System.Type get_ReturnType();
System.Reflection.ICustomAttributeProvider get_ReturnTypeCustomAttributes();
System.Reflection.MethodInfo GetBaseDefinition();
}
interface _ConstructorInfo{
System.Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
System.String ToString();
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.Type GetType();
System.Reflection.MemberTypes get_MemberType();
System.String get_Name();
System.Type get_DeclaringType();
System.Type get_ReflectedType();
System.__object[] GetCustomAttributes(System.Type,System.Boolean);
System.__object[] GetCustomAttributes(System.Boolean);
System.Boolean IsDefined(System.Type,System.Boolean);
System.Reflection.ParameterInfo[] GetParameters();
System.Reflection.MethodImplAttributes GetMethodImplementationFlags();
System.RuntimeMethodHandle get_MethodHandle();
System.Reflection.MethodAttributes get_Attributes();
System.Reflection.CallingConventions get_CallingConvention();
System.__object Invoke_2(System.__object,System.Reflection.BindingFlags,System.Reflection.Binder,System.__object[],System.Globalization.CultureInfo);
System.Boolean get_IsPublic();
System.Boolean get_IsPrivate();
System.Boolean get_IsFamily();
System.Boolean get_IsAssembly();
System.Boolean get_IsFamilyAndAssembly();
System.Boolean get_IsFamilyOrAssembly();
System.Boolean get_IsStatic();
System.Boolean get_IsFinal();
System.Boolean get_IsVirtual();
System.Boolean get_IsHideBySig();
System.Boolean get_IsAbstract();
System.Boolean get_IsSpecialName();
System.Boolean get_IsConstructor();
System.__object Invoke_3(System.__object,System.__object[]);
System.__object Invoke_4(System.Reflection.BindingFlags,System.Reflection.Binder,System.__object[],System.Globalization.CultureInfo);
System.__object Invoke_5(System.__object[]);
}
interface _FieldInfo{
System.Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
System.String ToString();
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.Type GetType();
System.Reflection.MemberTypes get_MemberType();
System.String get_Name();
System.Type get_DeclaringType();
System.Type get_ReflectedType();
System.__object[] GetCustomAttributes(System.Type,System.Boolean);
System.__object[] GetCustomAttributes(System.Boolean);
System.Boolean IsDefined(System.Type,System.Boolean);
System.Type get_FieldType();
System.__object GetValue(System.__object);
System.__object GetValueDirect(System.TypedReference);
System.Void SetValue(System.__object,System.__object,System.Reflection.BindingFlags,System.Reflection.Binder,System.Globalization.CultureInfo);
System.Void SetValueDirect(System.TypedReference,System.__object);
System.RuntimeFieldHandle get_FieldHandle();
System.Reflection.FieldAttributes get_Attributes();
System.Void SetValue(System.__object,System.__object);
System.Boolean get_IsPublic();
System.Boolean get_IsPrivate();
System.Boolean get_IsFamily();
System.Boolean get_IsAssembly();
System.Boolean get_IsFamilyAndAssembly();
System.Boolean get_IsFamilyOrAssembly();
System.Boolean get_IsStatic();
System.Boolean get_IsInitOnly();
System.Boolean get_IsLiteral();
System.Boolean get_IsNotSerialized();
System.Boolean get_IsSpecialName();
System.Boolean get_IsPinvokeImpl();
}
interface _PropertyInfo{
System.Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
System.String ToString();
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.Type GetType();
System.Reflection.MemberTypes get_MemberType();
System.String get_Name();
System.Type get_DeclaringType();
System.Type get_ReflectedType();
System.__object[] GetCustomAttributes(System.Type,System.Boolean);
System.__object[] GetCustomAttributes(System.Boolean);
System.Boolean IsDefined(System.Type,System.Boolean);
System.Type get_PropertyType();
System.__object GetValue(System.__object,System.__object[]);
System.__object GetValue(System.__object,System.Reflection.BindingFlags,System.Reflection.Binder,System.__object[],System.Globalization.CultureInfo);
System.Void SetValue(System.__object,System.__object,System.__object[]);
System.Void SetValue(System.__object,System.__object,System.Reflection.BindingFlags,System.Reflection.Binder,System.__object[],System.Globalization.CultureInfo);
System.Reflection.MethodInfo[] GetAccessors(System.Boolean);
System.Reflection.MethodInfo GetGetMethod(System.Boolean);
System.Reflection.MethodInfo GetSetMethod(System.Boolean);
System.Reflection.ParameterInfo[] GetIndexParameters();
System.Reflection.PropertyAttributes get_Attributes();
System.Boolean get_CanRead();
System.Boolean get_CanWrite();
System.Reflection.MethodInfo[] GetAccessors();
System.Reflection.MethodInfo GetGetMethod();
System.Reflection.MethodInfo GetSetMethod();
System.Boolean get_IsSpecialName();
}
interface _EventInfo{
System.Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
System.String ToString();
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.Type GetType();
System.Reflection.MemberTypes get_MemberType();
System.String get_Name();
System.Type get_DeclaringType();
System.Type get_ReflectedType();
System.__object[] GetCustomAttributes(System.Type,System.Boolean);
System.__object[] GetCustomAttributes(System.Boolean);
System.Boolean IsDefined(System.Type,System.Boolean);
System.Reflection.MethodInfo GetAddMethod(System.Boolean);
System.Reflection.MethodInfo GetRemoveMethod(System.Boolean);
System.Reflection.MethodInfo GetRaiseMethod(System.Boolean);
System.Reflection.EventAttributes get_Attributes();
System.Reflection.MethodInfo GetAddMethod();
System.Reflection.MethodInfo GetRemoveMethod();
System.Reflection.MethodInfo GetRaiseMethod();
System.Void AddEventHandler(System.__object,System.Delegate);
System.Void RemoveEventHandler(System.__object,System.Delegate);
System.Type get_EventHandlerType();
System.Boolean get_IsSpecialName();
System.Boolean get_IsMulticast();
}
interface _ParameterInfo{
System.Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
}
interface _Module{
System.Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
}
interface _AssemblyName{
System.Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
}
class ArrayWithOffset : System.ValueType{
this (System.__object,System.Int32);
System.__object GetArray();
System.Int32 GetOffset();
System.Int32 GetHashCode();
System.Boolean Equals(System.__object);
System.Boolean Equals(System.Runtime.InteropServices.ArrayWithOffset);
static System.Boolean op_Equality(System.Runtime.InteropServices.ArrayWithOffset,System.Runtime.InteropServices.ArrayWithOffset);
static System.Boolean op_Inequality(System.Runtime.InteropServices.ArrayWithOffset,System.Runtime.InteropServices.ArrayWithOffset);
}
class UnmanagedFunctionPointerAttribute : System.Attribute{
this (System.Runtime.InteropServices.CallingConvention);
System.Runtime.InteropServices.CallingConvention get_CallingConvention();
}
class TypeIdentifierAttribute : System.Attribute{
this ();
this (System.String,System.String);
System.String get_Scope();
System.String get_Identifier();
}
class AllowReversePInvokeCallsAttribute : System.Attribute{
this ();
}
class DispIdAttribute : System.Attribute{
this (System.Int32);
System.Int32 get_Value();
}
class ComInterfaceType : System.Enum{
}
class InterfaceTypeAttribute : System.Attribute{
this (System.Runtime.InteropServices.ComInterfaceType);
this (System.Int16);
System.Runtime.InteropServices.ComInterfaceType get_Value();
}
class ComDefaultInterfaceAttribute : System.Attribute{
this (System.Type);
System.Type get_Value();
}
class ClassInterfaceType : System.Enum{
}
class ClassInterfaceAttribute : System.Attribute{
this (System.Runtime.InteropServices.ClassInterfaceType);
this (System.Int16);
System.Runtime.InteropServices.ClassInterfaceType get_Value();
}
class ComVisibleAttribute : System.Attribute{
this (System.Boolean);
System.Boolean get_Value();
}
class TypeLibImportClassAttribute : System.Attribute{
this (System.Type);
System.String get_Value();
}
class LCIDConversionAttribute : System.Attribute{
this (System.Int32);
System.Int32 get_Value();
}
class ComRegisterFunctionAttribute : System.Attribute{
this ();
}
class ComUnregisterFunctionAttribute : System.Attribute{
this ();
}
class ProgIdAttribute : System.Attribute{
this (System.String);
System.String get_Value();
}
class ImportedFromTypeLibAttribute : System.Attribute{
this (System.String);
System.String get_Value();
}
class IDispatchImplType : System.Enum{
}
class IDispatchImplAttribute : System.Attribute{
this (System.Runtime.InteropServices.IDispatchImplType);
this (System.Int16);
System.Runtime.InteropServices.IDispatchImplType get_Value();
}
class ComSourceInterfacesAttribute : System.Attribute{
this (System.String);
this (System.Type);
this (System.Type,System.Type);
this (System.Type,System.Type,System.Type);
this (System.Type,System.Type,System.Type,System.Type);
System.String get_Value();
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
System.Runtime.InteropServices.TypeLibTypeFlags get_Value();
}
class TypeLibFuncAttribute : System.Attribute{
this (System.Runtime.InteropServices.TypeLibFuncFlags);
this (System.Int16);
System.Runtime.InteropServices.TypeLibFuncFlags get_Value();
}
class TypeLibVarAttribute : System.Attribute{
this (System.Runtime.InteropServices.TypeLibVarFlags);
this (System.Int16);
System.Runtime.InteropServices.TypeLibVarFlags get_Value();
}
class VarEnum : System.Enum{
}
class UnmanagedType : System.Enum{
}
class MarshalAsAttribute : System.Attribute{
this (System.Runtime.InteropServices.UnmanagedType);
this (System.Int16);
System.Runtime.InteropServices.UnmanagedType get_Value();
}
class ComImportAttribute : System.Attribute{
this ();
}
class GuidAttribute : System.Attribute{
this (System.String);
System.String get_Value();
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
System.Runtime.InteropServices.DllImportSearchPath get_Paths();
}
class DllImportAttribute : System.Attribute{
this (System.String);
System.String get_Value();
}
class StructLayoutAttribute : System.Attribute{
this (System.Runtime.InteropServices.LayoutKind);
this (System.Int16);
System.Runtime.InteropServices.LayoutKind get_Value();
}
class FieldOffsetAttribute : System.Attribute{
this (System.Int32);
System.Int32 get_Value();
}
class ComAliasNameAttribute : System.Attribute{
this (System.String);
System.String get_Value();
}
class AutomationProxyAttribute : System.Attribute{
this (System.Boolean);
System.Boolean get_Value();
}
class PrimaryInteropAssemblyAttribute : System.Attribute{
this (System.Int32,System.Int32);
System.Int32 get_MajorVersion();
System.Int32 get_MinorVersion();
}
class CoClassAttribute : System.Attribute{
this (System.Type);
System.Type get_CoClass();
}
class ComEventInterfaceAttribute : System.Attribute{
this (System.Type,System.Type);
System.Type get_SourceInterface();
System.Type get_EventProvider();
}
class TypeLibVersionAttribute : System.Attribute{
this (System.Int32,System.Int32);
System.Int32 get_MajorVersion();
System.Int32 get_MinorVersion();
}
class ComCompatibleVersionAttribute : System.Attribute{
this (System.Int32,System.Int32,System.Int32,System.Int32);
System.Int32 get_MajorVersion();
System.Int32 get_MinorVersion();
System.Int32 get_BuildNumber();
System.Int32 get_RevisionNumber();
}
class BestFitMappingAttribute : System.Attribute{
this (System.Boolean);
System.Boolean get_BestFitMapping();
}
class DefaultCharSetAttribute : System.Attribute{
this (System.Runtime.InteropServices.CharSet);
System.Runtime.InteropServices.CharSet get_CharSet();
}
class SetWin32ContextInIDispatchAttribute : System.Attribute{
this ();
}
class ManagedToNativeComInteropStubAttribute : System.Attribute{
this (System.Type,System.String);
System.Type get_ClassType();
System.String get_MethodName();
}
class CallingConvention : System.Enum{
}
class CharSet : System.Enum{
}
class CriticalHandle : System.Runtime.ConstrainedExecution.CriticalFinalizerObject{
System.Boolean get_IsClosed();
System.Boolean get_IsInvalid();
System.Void Close();
System.Void Dispose();
System.Void SetHandleAsInvalid();
}
class GCHandleType : System.Enum{
}
class GCHandle : System.ValueType{
static System.Runtime.InteropServices.GCHandle Alloc(System.__object);
static System.Runtime.InteropServices.GCHandle Alloc(System.__object,System.Runtime.InteropServices.GCHandleType);
System.Void Free();
System.__object get_Target();
System.Void set_Target(System.__object);
System.IntPtr AddrOfPinnedObject();
System.Boolean get_IsAllocated();
static System.Runtime.InteropServices.GCHandle op_Explicit(System.IntPtr);
static System.Runtime.InteropServices.GCHandle FromIntPtr(System.IntPtr);
static System.IntPtr op_Explicit(System.Runtime.InteropServices.GCHandle);
static System.IntPtr ToIntPtr(System.Runtime.InteropServices.GCHandle);
System.Int32 GetHashCode();
System.Boolean Equals(System.__object);
static System.Boolean op_Equality(System.Runtime.InteropServices.GCHandle,System.Runtime.InteropServices.GCHandle);
static System.Boolean op_Inequality(System.Runtime.InteropServices.GCHandle,System.Runtime.InteropServices.GCHandle);
}
class HandleRef : System.ValueType{
this (System.__object,System.IntPtr);
System.__object get_Wrapper();
System.IntPtr get_Handle();
static System.IntPtr op_Explicit(System.Runtime.InteropServices.HandleRef);
static System.IntPtr ToIntPtr(System.Runtime.InteropServices.HandleRef);
}
interface ICustomMarshaler{
System.__object MarshalNativeToManaged(System.IntPtr);
System.IntPtr MarshalManagedToNative(System.__object);
System.Void CleanUpNativeData(System.IntPtr);
System.Void CleanUpManagedData(System.__object);
System.Int32 GetNativeDataSize();
}
interface _Exception{
System.String ToString();
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.Type GetType();
System.String get_Message();
System.String get_StackTrace();
System.String get_HelpLink();
System.Void set_HelpLink(System.String);
System.String get_Source();
System.Void set_Source(System.String);
System.Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
System.Reflection.MethodBase get_TargetSite();
}
class LayoutKind : System.Enum{
}
class CustomQueryInterfaceMode : System.Enum{
}
class Marshal : System.__object{
static System.String PtrToStringAnsi(System.IntPtr);
static System.String PtrToStringAnsi(System.IntPtr,System.Int32);
static System.String PtrToStringUni(System.IntPtr,System.Int32);
static System.String PtrToStringAuto(System.IntPtr,System.Int32);
static System.String PtrToStringUni(System.IntPtr);
static System.String PtrToStringAuto(System.IntPtr);
static System.Int32 SizeOf(System.__object);
static System.Int32 SizeOf(System.Type);
static System.IntPtr OffsetOf(System.Type,System.String);
static System.IntPtr UnsafeAddrOfPinnedArrayElement(System.Array,System.Int32);
static System.Void Copy(System.Int32[],System.Int32,System.IntPtr,System.Int32);
static System.Void Copy(System.Char[],System.Int32,System.IntPtr,System.Int32);
static System.Void Copy(System.Int16[],System.Int32,System.IntPtr,System.Int32);
static System.Void Copy(System.Int64[],System.Int32,System.IntPtr,System.Int32);
static System.Void Copy(System.Single[],System.Int32,System.IntPtr,System.Int32);
static System.Void Copy(System.Double[],System.Int32,System.IntPtr,System.Int32);
static System.Void Copy(System.Byte[],System.Int32,System.IntPtr,System.Int32);
static System.Void Copy(System.IntPtr[],System.Int32,System.IntPtr,System.Int32);
static System.Void Copy(System.IntPtr,System.Int32[],System.Int32,System.Int32);
static System.Void Copy(System.IntPtr,System.Char[],System.Int32,System.Int32);
static System.Void Copy(System.IntPtr,System.Int16[],System.Int32,System.Int32);
static System.Void Copy(System.IntPtr,System.Int64[],System.Int32,System.Int32);
static System.Void Copy(System.IntPtr,System.Single[],System.Int32,System.Int32);
static System.Void Copy(System.IntPtr,System.Double[],System.Int32,System.Int32);
static System.Void Copy(System.IntPtr,System.Byte[],System.Int32,System.Int32);
static System.Void Copy(System.IntPtr,System.IntPtr[],System.Int32,System.Int32);
static System.Byte ReadByte(System.__object,System.Int32);
static System.Byte ReadByte(System.IntPtr,System.Int32);
static System.Byte ReadByte(System.IntPtr);
static System.Int16 ReadInt16(System.__object,System.Int32);
static System.Int16 ReadInt16(System.IntPtr,System.Int32);
static System.Int16 ReadInt16(System.IntPtr);
static System.Int32 ReadInt32(System.__object,System.Int32);
static System.Int32 ReadInt32(System.IntPtr,System.Int32);
static System.Int32 ReadInt32(System.IntPtr);
static System.IntPtr ReadIntPtr(System.__object,System.Int32);
static System.IntPtr ReadIntPtr(System.IntPtr,System.Int32);
static System.IntPtr ReadIntPtr(System.IntPtr);
static System.Int64 ReadInt64(System.__object,System.Int32);
static System.Int64 ReadInt64(System.IntPtr,System.Int32);
static System.Int64 ReadInt64(System.IntPtr);
static System.Void WriteByte(System.IntPtr,System.Int32,System.Byte);
static System.Void WriteByte(System.IntPtr,System.Byte);
static System.Void WriteInt16(System.IntPtr,System.Int32,System.Int16);
static System.Void WriteInt16(System.IntPtr,System.Int16);
static System.Void WriteInt16(System.IntPtr,System.Int32,System.Char);
static System.Void WriteInt16(System.IntPtr,System.Char);
static System.Void WriteInt32(System.IntPtr,System.Int32,System.Int32);
static System.Void WriteInt32(System.IntPtr,System.Int32);
static System.Void WriteIntPtr(System.IntPtr,System.Int32,System.IntPtr);
static System.Void WriteIntPtr(System.IntPtr,System.IntPtr);
static System.Void WriteInt64(System.IntPtr,System.Int32,System.Int64);
static System.Void WriteInt64(System.IntPtr,System.Int64);
static System.Int32 GetLastWin32Error();
static System.Int32 GetHRForLastWin32Error();
static System.Void Prelink(System.Reflection.MethodInfo);
static System.Void PrelinkAll(System.Type);
static System.Int32 NumParamBytes(System.Reflection.MethodInfo);
static System.IntPtr GetExceptionPointers();
static System.Int32 GetExceptionCode();
static System.Void StructureToPtr(System.__object,System.IntPtr,System.Boolean);
static System.Void PtrToStructure(System.IntPtr,System.__object);
static System.__object PtrToStructure(System.IntPtr,System.Type);
static System.Void DestroyStructure(System.IntPtr,System.Type);
static System.IntPtr GetHINSTANCE(System.Reflection.Module);
static System.Void ThrowExceptionForHR(System.Int32);
static System.Void ThrowExceptionForHR(System.Int32,System.IntPtr);
static System.IntPtr GetUnmanagedThunkForManagedMethodPtr(System.IntPtr,System.IntPtr,System.Int32);
static System.IntPtr GetManagedThunkForUnmanagedMethodPtr(System.IntPtr,System.IntPtr,System.Int32);
static System.Threading.Thread GetThreadFromFiberCookie(System.Int32);
static System.IntPtr AllocHGlobal(System.IntPtr);
static System.IntPtr AllocHGlobal(System.Int32);
static System.Void FreeHGlobal(System.IntPtr);
static System.IntPtr ReAllocHGlobal(System.IntPtr,System.IntPtr);
static System.IntPtr StringToHGlobalAnsi(System.String);
static System.IntPtr StringToHGlobalUni(System.String);
static System.IntPtr StringToHGlobalAuto(System.String);
static System.String GetTypeLibName(System.Runtime.InteropServices.UCOMITypeLib);
static System.String GetTypeLibName(System.Runtime.InteropServices.ComTypes.ITypeLib);
static System.Guid GetTypeLibGuid(System.Runtime.InteropServices.UCOMITypeLib);
static System.Guid GetTypeLibGuid(System.Runtime.InteropServices.ComTypes.ITypeLib);
static System.Int32 GetTypeLibLcid(System.Runtime.InteropServices.UCOMITypeLib);
static System.Int32 GetTypeLibLcid(System.Runtime.InteropServices.ComTypes.ITypeLib);
static System.Guid GetTypeLibGuidForAssembly(System.Reflection.Assembly);
static System.String GetTypeInfoName(System.Runtime.InteropServices.UCOMITypeInfo);
static System.String GetTypeInfoName(System.Runtime.InteropServices.ComTypes.ITypeInfo);
static System.Type GetTypeForITypeInfo(System.IntPtr);
static System.Type GetTypeFromCLSID(System.Guid);
static System.IntPtr GetITypeInfoForType(System.Type);
static System.IntPtr GetIUnknownForObject(System.__object);
static System.IntPtr GetIUnknownForObjectInContext(System.__object);
static System.IntPtr GetIDispatchForObject(System.__object);
static System.IntPtr GetIDispatchForObjectInContext(System.__object);
static System.IntPtr GetComInterfaceForObject(System.__object,System.Type);
static System.IntPtr GetComInterfaceForObject(System.__object,System.Type,System.Runtime.InteropServices.CustomQueryInterfaceMode);
static System.IntPtr GetComInterfaceForObjectInContext(System.__object,System.Type);
static System.__object GetObjectForIUnknown(System.IntPtr);
static System.__object GetUniqueObjectForIUnknown(System.IntPtr);
static System.__object GetTypedObjectForIUnknown(System.IntPtr,System.Type);
static System.IntPtr CreateAggregatedObject(System.IntPtr,System.__object);
static System.Void CleanupUnusedObjectsInCurrentContext();
static System.Boolean AreComObjectsAvailableForCleanup();
static System.Boolean IsComObject(System.__object);
static System.IntPtr AllocCoTaskMem(System.Int32);
static System.IntPtr StringToCoTaskMemUni(System.String);
static System.IntPtr StringToCoTaskMemAuto(System.String);
static System.IntPtr StringToCoTaskMemAnsi(System.String);
static System.Void FreeCoTaskMem(System.IntPtr);
static System.IntPtr ReAllocCoTaskMem(System.IntPtr,System.Int32);
static System.Int32 ReleaseComObject(System.__object);
static System.Int32 FinalReleaseComObject(System.__object);
static System.__object GetComObjectData(System.__object,System.__object);
static System.Boolean SetComObjectData(System.__object,System.__object,System.__object);
static System.__object CreateWrapperOfType(System.__object,System.Type);
static System.Void ReleaseThreadCache();
static System.Boolean IsTypeVisibleFromCom(System.Type);
static System.Int32 AddRef(System.IntPtr);
static System.Int32 Release(System.IntPtr);
static System.Void FreeBSTR(System.IntPtr);
static System.IntPtr StringToBSTR(System.String);
static System.String PtrToStringBSTR(System.IntPtr);
static System.Void GetNativeVariantForObject(System.__object,System.IntPtr);
static System.__object GetObjectForNativeVariant(System.IntPtr);
static System.__object[] GetObjectsForNativeVariants(System.IntPtr,System.Int32);
static System.Int32 GetStartComSlot(System.Type);
static System.Int32 GetEndComSlot(System.Type);
static System.Int32 GetComSlotForMethodInfo(System.Reflection.MemberInfo);
static System.Guid GenerateGuidForType(System.Type);
static System.String GenerateProgIdForType(System.Type);
static System.__object BindToMoniker(System.String);
static System.__object GetActiveObject(System.String);
static System.Void ChangeWrapperHandleStrength(System.__object,System.Boolean);
static System.Delegate GetDelegateForFunctionPointer(System.IntPtr,System.Type);
static System.IntPtr GetFunctionPointerForDelegate(System.Delegate);
static System.IntPtr SecureStringToBSTR(System.Security.SecureString);
static System.IntPtr SecureStringToCoTaskMemAnsi(System.Security.SecureString);
static System.IntPtr SecureStringToCoTaskMemUnicode(System.Security.SecureString);
static System.Void ZeroFreeBSTR(System.IntPtr);
static System.Void ZeroFreeCoTaskMemAnsi(System.IntPtr);
static System.Void ZeroFreeCoTaskMemUnicode(System.IntPtr);
static System.IntPtr SecureStringToGlobalAllocAnsi(System.Security.SecureString);
static System.IntPtr SecureStringToGlobalAllocUnicode(System.Security.SecureString);
static System.Void ZeroFreeGlobalAllocAnsi(System.IntPtr);
static System.Void ZeroFreeGlobalAllocUnicode(System.IntPtr);
}
class RuntimeEnvironment : System.__object{
this ();
static System.Boolean FromGlobalAccessCache(System.Reflection.Assembly);
static System.String GetSystemVersion();
static System.String GetRuntimeDirectory();
static System.String get_SystemConfigurationFile();
static System.IntPtr GetRuntimeInterfaceAsIntPtr(System.Guid,System.Guid);
static System.__object GetRuntimeInterfaceAsObject(System.Guid,System.Guid);
}
class SafeBuffer : Microsoft.Win32.SafeHandles.SafeHandleZeroOrMinusOneIsInvalid{
System.Void Initialize(System.UInt64);
System.Void Initialize(System.UInt32,System.UInt32);
System.Void ReleasePointer();
System.UInt64 get_ByteLength();
}
class SafeHandle : System.Runtime.ConstrainedExecution.CriticalFinalizerObject{
System.IntPtr DangerousGetHandle();
System.Boolean get_IsClosed();
System.Boolean get_IsInvalid();
System.Void Close();
System.Void Dispose();
System.Void SetHandleAsInvalid();
System.Void DangerousRelease();
}
class BStrWrapper : System.__object{
this (System.String);
this (System.__object);
System.String get_WrappedObject();
}
class CurrencyWrapper : System.__object{
this (System.Decimal);
this (System.__object);
System.Decimal get_WrappedObject();
}
class DispatchWrapper : System.__object{
this (System.__object);
System.__object get_WrappedObject();
}
class ErrorWrapper : System.__object{
this (System.Int32);
this (System.__object);
System.Int32 get_ErrorCode();
}
class UnknownWrapper : System.__object{
this (System.__object);
System.__object get_WrappedObject();
}
class VariantWrapper : System.__object{
this (System.__object);
System.__object get_WrappedObject();
}
class ComMemberType : System.Enum{
}
class ExtensibleClassFactory : System.__object{
static System.Void RegisterObjectCreationCallback(System.Runtime.InteropServices.ObjectCreationDelegate);
}
interface ICustomAdapter{
System.__object GetUnderlyingObject();
}
interface ICustomFactory{
System.MarshalByRefObject CreateInstance(System.Type);
}
class CustomQueryInterfaceResult : System.Enum{
}
interface ICustomQueryInterface{
}
class AssemblyRegistrationFlags : System.Enum{
}
interface IRegistrationServices{
System.Boolean RegisterAssembly(System.Reflection.Assembly,System.Runtime.InteropServices.AssemblyRegistrationFlags);
System.Boolean UnregisterAssembly(System.Reflection.Assembly);
System.Type[] GetRegistrableTypesInAssembly(System.Reflection.Assembly);
System.String GetProgIdForType(System.Type);
System.Guid GetManagedCategoryGuid();
System.Boolean TypeRequiresRegistration(System.Type);
System.Boolean TypeRepresentsComType(System.Type);
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
System.Void ReportEvent(System.Runtime.InteropServices.ImporterEventKind,System.Int32,System.String);
System.Reflection.Assembly ResolveRef(System.__object);
}
interface ITypeLibExporterNotifySink{
System.Void ReportEvent(System.Runtime.InteropServices.ExporterEventKind,System.Int32,System.String);
System.__object ResolveRef(System.Reflection.Assembly);
}
interface ITypeLibConverter{
System.Reflection.Emit.AssemblyBuilder ConvertTypeLibToAssembly(System.__object,System.String,System.Runtime.InteropServices.TypeLibImporterFlags,System.Runtime.InteropServices.ITypeLibImporterNotifySink,System.Byte[],System.Reflection.StrongNameKeyPair,System.String,System.Version);
System.__object ConvertAssemblyToTypeLib(System.Reflection.Assembly,System.String,System.Runtime.InteropServices.TypeLibExporterFlags,System.Runtime.InteropServices.ITypeLibExporterNotifySink);
System.Reflection.Emit.AssemblyBuilder ConvertTypeLibToAssembly(System.__object,System.String,System.Int32,System.Runtime.InteropServices.ITypeLibImporterNotifySink,System.Byte[],System.Reflection.StrongNameKeyPair,System.Boolean);
}
interface ITypeLibExporterNameProvider{
System.String[] GetNames();
}
class ObjectCreationDelegate : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.IntPtr Invoke(System.IntPtr);
System.IAsyncResult BeginInvoke(System.IntPtr,System.AsyncCallback,System.__object);
System.IntPtr EndInvoke(System.IAsyncResult);
}
class RegistrationClassContext : System.Enum{
}
class RegistrationConnectionType : System.Enum{
}
class RegistrationServices : System.__object{
this ();
System.Boolean RegisterAssembly(System.Reflection.Assembly,System.Runtime.InteropServices.AssemblyRegistrationFlags);
System.Boolean UnregisterAssembly(System.Reflection.Assembly);
System.Type[] GetRegistrableTypesInAssembly(System.Reflection.Assembly);
System.String GetProgIdForType(System.Type);
System.Guid GetManagedCategoryGuid();
System.Boolean TypeRequiresRegistration(System.Type);
System.Boolean TypeRepresentsComType(System.Type);
System.Int32 RegisterTypeForComClients(System.Type,System.Runtime.InteropServices.RegistrationClassContext,System.Runtime.InteropServices.RegistrationConnectionType);
System.Void UnregisterTypeForComClients(System.Int32);
}
class TypeLibConverter : System.__object{
this ();
System.Reflection.Emit.AssemblyBuilder ConvertTypeLibToAssembly(System.__object,System.String,System.Int32,System.Runtime.InteropServices.ITypeLibImporterNotifySink,System.Byte[],System.Reflection.StrongNameKeyPair,System.Boolean);
System.Reflection.Emit.AssemblyBuilder ConvertTypeLibToAssembly(System.__object,System.String,System.Runtime.InteropServices.TypeLibImporterFlags,System.Runtime.InteropServices.ITypeLibImporterNotifySink,System.Byte[],System.Reflection.StrongNameKeyPair,System.String,System.Version);
System.__object ConvertAssemblyToTypeLib(System.Reflection.Assembly,System.String,System.Runtime.InteropServices.TypeLibExporterFlags,System.Runtime.InteropServices.ITypeLibExporterNotifySink);
}
class BIND_OPTS : System.ValueType{
}
interface UCOMIBindCtx{
System.Void RegisterObjectBound(System.__object);
System.Void RevokeObjectBound(System.__object);
System.Void ReleaseBoundObjects();
System.Void RegisterObjectParam(System.String,System.__object);
System.Void RevokeObjectParam(System.String);
}
interface UCOMIConnectionPointContainer{
}
interface UCOMIConnectionPoint{
System.Void Unadvise(System.Int32);
}
interface UCOMIEnumMoniker{
System.Int32 Skip(System.Int32);
System.Int32 Reset();
}
class CONNECTDATA : System.ValueType{
}
interface UCOMIEnumConnections{
System.Int32 Skip(System.Int32);
System.Void Reset();
}
interface UCOMIEnumConnectionPoints{
System.Int32 Skip(System.Int32);
System.Int32 Reset();
}
interface UCOMIEnumString{
System.Int32 Skip(System.Int32);
System.Int32 Reset();
}
interface UCOMIEnumVARIANT{
System.Int32 Next(System.Int32,System.Int32,System.Int32);
System.Int32 Skip(System.Int32);
System.Int32 Reset();
System.Void Clone(System.Int32);
}
class FILETIME : System.ValueType{
}
interface UCOMIMoniker{
System.Int32 IsDirty();
System.Void Load(System.Runtime.InteropServices.UCOMIStream);
System.Void Save(System.Runtime.InteropServices.UCOMIStream,System.Boolean);
System.Void IsEqual(System.Runtime.InteropServices.UCOMIMoniker);
System.Void IsRunning(System.Runtime.InteropServices.UCOMIBindCtx,System.Runtime.InteropServices.UCOMIMoniker,System.Runtime.InteropServices.UCOMIMoniker);
}
interface UCOMIPersistFile{
System.Int32 IsDirty();
System.Void Load(System.String,System.Int32);
System.Void Save(System.String,System.Boolean);
System.Void SaveCompleted(System.String);
}
interface UCOMIRunningObjectTable{
System.Void Revoke(System.Int32);
System.Void IsRunning(System.Runtime.InteropServices.UCOMIMoniker);
}
class STATSTG : System.ValueType{
}
interface UCOMIStream{
System.Void Write(System.Byte[],System.Int32,System.IntPtr);
System.Void Seek(System.Int64,System.Int32,System.IntPtr);
System.Void SetSize(System.Int64);
System.Void CopyTo(System.Runtime.InteropServices.UCOMIStream,System.Int64,System.IntPtr,System.IntPtr);
System.Void Commit(System.Int32);
System.Void Revert();
System.Void LockRegion(System.Int64,System.Int64,System.Int32);
System.Void UnlockRegion(System.Int64,System.Int64,System.Int32);
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
System.Void ReleaseTypeAttr(System.IntPtr);
System.Void ReleaseFuncDesc(System.IntPtr);
System.Void ReleaseVarDesc(System.IntPtr);
}
class SYSKIND : System.Enum{
}
class LIBFLAGS : System.Enum{
}
class TYPELIBATTR : System.ValueType{
}
interface UCOMITypeLib{
System.Int32 GetTypeInfoCount();
System.Boolean IsName(System.String,System.Int32);
System.Void ReleaseTLibAttr(System.IntPtr);
}
class ComEventsHelper : System.__object{
static System.Void Combine(System.__object,System.Guid,System.Int32,System.Delegate);
static System.Delegate Remove(System.__object,System.Guid,System.Int32,System.Delegate);
}
interface _AssemblyBuilder{
System.Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
}
interface _ConstructorBuilder{
System.Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
}
interface _CustomAttributeBuilder{
System.Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
}
interface _EnumBuilder{
System.Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
}
interface _EventBuilder{
System.Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
}
interface _FieldBuilder{
System.Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
}
interface _ILGenerator{
System.Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
}
interface _LocalBuilder{
System.Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
}
interface _MethodBuilder{
System.Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
}
interface _MethodRental{
System.Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
}
interface _ModuleBuilder{
System.Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
}
interface _ParameterBuilder{
System.Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
}
interface _PropertyBuilder{
System.Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
}
interface _SignatureHelper{
System.Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
}
interface _TypeBuilder{
System.Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
}
}
