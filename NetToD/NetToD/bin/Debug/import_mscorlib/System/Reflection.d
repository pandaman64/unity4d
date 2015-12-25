module System.Reflection;
import System;
import System.Runtime.Serialization;
import System.Collections;
import System.Security.Policy;
import System.Configuration.Assemblies;
import System.Security;
import System.Globalization;
import System.IO;
import System.Runtime.Remoting;
import System.Security.Cryptography.X509Certificates;
import System.Runtime.InteropServices;
public:
pragma(assembly,"mscorlib"){
class AmbiguousMatchException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class ModuleResolveEventHandler : System.MulticastDelegate{
this (System.Object,System.IntPtr);
Module Invoke(System.Object,System.ResolveEventArgs);
IAsyncResult BeginInvoke(System.Object,System.ResolveEventArgs,System.AsyncCallback,System.Object);
Module EndInvoke(System.IAsyncResult);
}
class Assembly : System.Object{
static String CreateQualifiedName(System.String,System.String);
static Assembly GetAssembly(System.Type);
static Boolean op_Equality(System.Reflection.Assembly,System.Reflection.Assembly);
static Boolean op_Inequality(System.Reflection.Assembly,System.Reflection.Assembly);
Boolean Equals(System.Object);
Int32 GetHashCode();
static Assembly LoadFrom(System.String);
static Assembly ReflectionOnlyLoadFrom(System.String);
static Assembly LoadFrom(System.String,System.Security.Policy.Evidence);
static Assembly LoadFrom(System.String,System.Security.Policy.Evidence,System.Byte[],System.Configuration.Assemblies.AssemblyHashAlgorithm);
static Assembly LoadFrom(System.String,System.Byte[],System.Configuration.Assemblies.AssemblyHashAlgorithm);
static Assembly UnsafeLoadFrom(System.String);
static Assembly Load(System.String);
static Assembly ReflectionOnlyLoad(System.String);
static Assembly Load(System.String,System.Security.Policy.Evidence);
static Assembly Load(System.Reflection.AssemblyName);
static Assembly Load(System.Reflection.AssemblyName,System.Security.Policy.Evidence);
static Assembly LoadWithPartialName(System.String);
static Assembly LoadWithPartialName(System.String,System.Security.Policy.Evidence);
static Assembly Load(System.Byte[]);
static Assembly ReflectionOnlyLoad(System.Byte[]);
static Assembly Load(System.Byte[],System.Byte[]);
static Assembly Load(System.Byte[],System.Byte[],System.Security.SecurityContextSource);
static Assembly Load(System.Byte[],System.Byte[],System.Security.Policy.Evidence);
static Assembly LoadFile(System.String);
static Assembly LoadFile(System.String,System.Security.Policy.Evidence);
static Assembly GetExecutingAssembly();
static Assembly GetCallingAssembly();
static Assembly GetEntryAssembly();
Void add_ModuleResolve(System.Reflection.ModuleResolveEventHandler);
Void remove_ModuleResolve(System.Reflection.ModuleResolveEventHandler);
String get_CodeBase();
String get_EscapedCodeBase();
AssemblyName GetName();
AssemblyName GetName(System.Boolean);
String get_FullName();
MethodInfo get_EntryPoint();
Type GetType(System.String);
Type GetType(System.String,System.Boolean);
Type GetType(System.String,System.Boolean,System.Boolean);
Type[] GetExportedTypes();
Type[] GetTypes();
Stream GetManifestResourceStream(System.Type,System.String);
Stream GetManifestResourceStream(System.String);
Assembly GetSatelliteAssembly(System.Globalization.CultureInfo);
Assembly GetSatelliteAssembly(System.Globalization.CultureInfo,System.Version);
Evidence get_Evidence();
PermissionSet get_PermissionSet();
Boolean get_IsFullyTrusted();
SecurityRuleSet get_SecurityRuleSet();
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
Module get_ManifestModule();
Object[] GetCustomAttributes(System.Boolean);
Object[] GetCustomAttributes(System.Type,System.Boolean);
Boolean IsDefined(System.Type,System.Boolean);
Boolean get_ReflectionOnly();
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
FileStream GetFile(System.String);
FileStream[] GetFiles();
FileStream[] GetFiles(System.Boolean);
String[] GetManifestResourceNames();
AssemblyName[] GetReferencedAssemblies();
ManifestResourceInfo GetManifestResourceInfo(System.String);
String ToString();
String get_Location();
String get_ImageRuntimeVersion();
Boolean get_GlobalAssemblyCache();
Int64 get_HostContext();
Boolean get_IsDynamic();
}
class AssemblyCopyrightAttribute : System.Attribute{
this (System.String);
String get_Copyright();
}
class AssemblyTrademarkAttribute : System.Attribute{
this (System.String);
String get_Trademark();
}
class AssemblyProductAttribute : System.Attribute{
this (System.String);
String get_Product();
}
class AssemblyCompanyAttribute : System.Attribute{
this (System.String);
String get_Company();
}
class AssemblyDescriptionAttribute : System.Attribute{
this (System.String);
String get_Description();
}
class AssemblyTitleAttribute : System.Attribute{
this (System.String);
String get_Title();
}
class AssemblyConfigurationAttribute : System.Attribute{
this (System.String);
String get_Configuration();
}
class AssemblyDefaultAliasAttribute : System.Attribute{
this (System.String);
String get_DefaultAlias();
}
class AssemblyInformationalVersionAttribute : System.Attribute{
this (System.String);
String get_InformationalVersion();
}
class AssemblyFileVersionAttribute : System.Attribute{
this (System.String);
String get_Version();
}
class AssemblyCultureAttribute : System.Attribute{
this (System.String);
String get_Culture();
}
class AssemblyVersionAttribute : System.Attribute{
this (System.String);
String get_Version();
}
class AssemblyKeyFileAttribute : System.Attribute{
this (System.String);
String get_KeyFile();
}
class AssemblyDelaySignAttribute : System.Attribute{
this (System.Boolean);
Boolean get_DelaySign();
}
class AssemblyAlgorithmIdAttribute : System.Attribute{
this (System.Configuration.Assemblies.AssemblyHashAlgorithm);
this (System.UInt32);
UInt32 get_AlgorithmId();
}
class AssemblyFlagsAttribute : System.Attribute{
this (System.UInt32);
this (System.Int32);
this (System.Reflection.AssemblyNameFlags);
UInt32 get_Flags();
Int32 get_AssemblyFlags();
}
class AssemblyMetadataAttribute : System.Attribute{
this (System.String,System.String);
String get_Key();
String get_Value();
}
class AssemblySignatureKeyAttribute : System.Attribute{
this (System.String,System.String);
String get_PublicKey();
String get_Countersignature();
}
class AssemblyKeyNameAttribute : System.Attribute{
this (System.String);
String get_KeyName();
}
class AssemblyName : System.Object{
this ();
this (System.String);
String get_Name();
Void set_Name(System.String);
Version get_Version();
Void set_Version(System.Version);
CultureInfo get_CultureInfo();
Void set_CultureInfo(System.Globalization.CultureInfo);
String get_CultureName();
Void set_CultureName(System.String);
String get_CodeBase();
Void set_CodeBase(System.String);
String get_EscapedCodeBase();
ProcessorArchitecture get_ProcessorArchitecture();
Void set_ProcessorArchitecture(System.Reflection.ProcessorArchitecture);
AssemblyContentType get_ContentType();
Void set_ContentType(System.Reflection.AssemblyContentType);
Object Clone();
static AssemblyName GetAssemblyName(System.String);
Byte[] GetPublicKey();
Void SetPublicKey(System.Byte[]);
Byte[] GetPublicKeyToken();
Void SetPublicKeyToken(System.Byte[]);
AssemblyNameFlags get_Flags();
Void set_Flags(System.Reflection.AssemblyNameFlags);
AssemblyHashAlgorithm get_HashAlgorithm();
Void set_HashAlgorithm(System.Configuration.Assemblies.AssemblyHashAlgorithm);
AssemblyVersionCompatibility get_VersionCompatibility();
Void set_VersionCompatibility(System.Configuration.Assemblies.AssemblyVersionCompatibility);
StrongNameKeyPair get_KeyPair();
Void set_KeyPair(System.Reflection.StrongNameKeyPair);
String get_FullName();
String ToString();
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
Void OnDeserialization(System.Object);
static Boolean ReferenceMatchesDefinition(System.Reflection.AssemblyName,System.Reflection.AssemblyName);
}
class AssemblyNameProxy : System.MarshalByRefObject{
this ();
AssemblyName GetAssemblyName(System.String);
}
class AssemblyNameFlags : System.Enum{
}
class AssemblyContentType : System.Enum{
}
class ProcessorArchitecture : System.Enum{
}
class CustomAttributeExtensions : System.Object{
static Attribute GetCustomAttribute(System.Reflection.Assembly,System.Type);
static Attribute GetCustomAttribute(System.Reflection.Module,System.Type);
static Attribute GetCustomAttribute(System.Reflection.MemberInfo,System.Type);
static Attribute GetCustomAttribute(System.Reflection.ParameterInfo,System.Type);
static Attribute GetCustomAttribute(System.Reflection.MemberInfo,System.Type,System.Boolean);
static Attribute GetCustomAttribute(System.Reflection.ParameterInfo,System.Type,System.Boolean);
static Boolean IsDefined(System.Reflection.Assembly,System.Type);
static Boolean IsDefined(System.Reflection.Module,System.Type);
static Boolean IsDefined(System.Reflection.MemberInfo,System.Type);
static Boolean IsDefined(System.Reflection.ParameterInfo,System.Type);
static Boolean IsDefined(System.Reflection.MemberInfo,System.Type,System.Boolean);
static Boolean IsDefined(System.Reflection.ParameterInfo,System.Type,System.Boolean);
}
class CustomAttributeFormatException : System.FormatException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class Binder : System.Object{
FieldInfo BindToField(System.Reflection.BindingFlags,System.Reflection.FieldInfo[],System.Object,System.Globalization.CultureInfo);
MethodBase SelectMethod(System.Reflection.BindingFlags,System.Reflection.MethodBase[],System.Type[],System.Reflection.ParameterModifier[]);
PropertyInfo SelectProperty(System.Reflection.BindingFlags,System.Reflection.PropertyInfo[],System.Type,System.Type[],System.Reflection.ParameterModifier[]);
Object ChangeType(System.Object,System.Type,System.Globalization.CultureInfo);
}
class BindingFlags : System.Enum{
}
class CallingConventions : System.Enum{
}
class ConstructorInfo : System.Reflection.MethodBase{
static Boolean op_Equality(System.Reflection.ConstructorInfo,System.Reflection.ConstructorInfo);
static Boolean op_Inequality(System.Reflection.ConstructorInfo,System.Reflection.ConstructorInfo);
Boolean Equals(System.Object);
Int32 GetHashCode();
MemberTypes get_MemberType();
Object Invoke(System.Reflection.BindingFlags,System.Reflection.Binder,System.Object[],System.Globalization.CultureInfo);
Object Invoke(System.Object[]);
}
class CustomAttributeData : System.Object{
String ToString();
Int32 GetHashCode();
Boolean Equals(System.Object);
Type get_AttributeType();
ConstructorInfo get_Constructor();
}
class CustomAttributeNamedArgument : System.ValueType{
this (System.Reflection.MemberInfo,System.Object);
this (System.Reflection.MemberInfo,System.Reflection.CustomAttributeTypedArgument);
static Boolean op_Equality(System.Reflection.CustomAttributeNamedArgument,System.Reflection.CustomAttributeNamedArgument);
static Boolean op_Inequality(System.Reflection.CustomAttributeNamedArgument,System.Reflection.CustomAttributeNamedArgument);
String ToString();
Int32 GetHashCode();
Boolean Equals(System.Object);
MemberInfo get_MemberInfo();
CustomAttributeTypedArgument get_TypedValue();
String get_MemberName();
Boolean get_IsField();
}
class CustomAttributeTypedArgument : System.ValueType{
this (System.Type,System.Object);
this (System.Object);
static Boolean op_Equality(System.Reflection.CustomAttributeTypedArgument,System.Reflection.CustomAttributeTypedArgument);
static Boolean op_Inequality(System.Reflection.CustomAttributeTypedArgument,System.Reflection.CustomAttributeTypedArgument);
String ToString();
Int32 GetHashCode();
Boolean Equals(System.Object);
Type get_ArgumentType();
Object get_Value();
}
class DefaultMemberAttribute : System.Attribute{
this (System.String);
String get_MemberName();
}
class EventAttributes : System.Enum{
}
class EventInfo : System.Reflection.MemberInfo{
static Boolean op_Equality(System.Reflection.EventInfo,System.Reflection.EventInfo);
static Boolean op_Inequality(System.Reflection.EventInfo,System.Reflection.EventInfo);
Boolean Equals(System.Object);
Int32 GetHashCode();
MemberTypes get_MemberType();
MethodInfo[] GetOtherMethods(System.Boolean);
MethodInfo GetAddMethod(System.Boolean);
MethodInfo GetRemoveMethod(System.Boolean);
MethodInfo GetRaiseMethod(System.Boolean);
EventAttributes get_Attributes();
MethodInfo get_AddMethod();
MethodInfo get_RemoveMethod();
MethodInfo get_RaiseMethod();
MethodInfo[] GetOtherMethods();
MethodInfo GetAddMethod();
MethodInfo GetRemoveMethod();
MethodInfo GetRaiseMethod();
Void AddEventHandler(System.Object,System.Delegate);
Void RemoveEventHandler(System.Object,System.Delegate);
Type get_EventHandlerType();
Boolean get_IsSpecialName();
Boolean get_IsMulticast();
}
class FieldAttributes : System.Enum{
}
class FieldInfo : System.Reflection.MemberInfo{
static FieldInfo GetFieldFromHandle(System.RuntimeFieldHandle);
static FieldInfo GetFieldFromHandle(System.RuntimeFieldHandle,System.RuntimeTypeHandle);
static Boolean op_Equality(System.Reflection.FieldInfo,System.Reflection.FieldInfo);
static Boolean op_Inequality(System.Reflection.FieldInfo,System.Reflection.FieldInfo);
Boolean Equals(System.Object);
Int32 GetHashCode();
MemberTypes get_MemberType();
Type[] GetRequiredCustomModifiers();
Type[] GetOptionalCustomModifiers();
Void SetValueDirect(System.TypedReference,System.Object);
Object GetValueDirect(System.TypedReference);
RuntimeFieldHandle get_FieldHandle();
Type get_FieldType();
Object GetValue(System.Object);
Object GetRawConstantValue();
Void SetValue(System.Object,System.Object,System.Reflection.BindingFlags,System.Reflection.Binder,System.Globalization.CultureInfo);
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
Boolean get_IsSecurityCritical();
Boolean get_IsSecuritySafeCritical();
Boolean get_IsSecurityTransparent();
}
class GenericParameterAttributes : System.Enum{
}
interface ICustomAttributeProvider{
Object[] GetCustomAttributes(System.Type,System.Boolean);
Object[] GetCustomAttributes(System.Boolean);
Boolean IsDefined(System.Type,System.Boolean);
}
interface IReflectableType{
TypeInfo GetTypeInfo();
}
class IntrospectionExtensions : System.Object{
static TypeInfo GetTypeInfo(System.Type);
}
class RuntimeReflectionExtensions : System.Object{
static PropertyInfo GetRuntimeProperty(System.Type,System.String);
static EventInfo GetRuntimeEvent(System.Type,System.String);
static MethodInfo GetRuntimeMethod(System.Type,System.String,System.Type[]);
static FieldInfo GetRuntimeField(System.Type,System.String);
static MethodInfo GetRuntimeBaseDefinition(System.Reflection.MethodInfo);
static InterfaceMapping GetRuntimeInterfaceMap(System.Reflection.TypeInfo,System.Type);
static MethodInfo GetMethodInfo(System.Delegate);
}
class InterfaceMapping : System.ValueType{
}
class InvalidFilterCriteriaException : System.ApplicationException{
this ();
this (System.String);
this (System.String,System.Exception);
}
interface IReflect{
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
}
class ManifestResourceInfo : System.Object{
this (System.Reflection.Assembly,System.String,System.Reflection.ResourceLocation);
Assembly get_ReferencedAssembly();
String get_FileName();
ResourceLocation get_ResourceLocation();
}
class ResourceLocation : System.Enum{
}
class MemberFilter : System.MulticastDelegate{
this (System.Object,System.IntPtr);
Boolean Invoke(System.Reflection.MemberInfo,System.Object);
IAsyncResult BeginInvoke(System.Reflection.MemberInfo,System.Object,System.AsyncCallback,System.Object);
Boolean EndInvoke(System.IAsyncResult);
}
class MemberInfo : System.Object{
MemberTypes get_MemberType();
String get_Name();
Type get_DeclaringType();
Type get_ReflectedType();
Object[] GetCustomAttributes(System.Boolean);
Object[] GetCustomAttributes(System.Type,System.Boolean);
Boolean IsDefined(System.Type,System.Boolean);
Int32 get_MetadataToken();
Module get_Module();
static Boolean op_Equality(System.Reflection.MemberInfo,System.Reflection.MemberInfo);
static Boolean op_Inequality(System.Reflection.MemberInfo,System.Reflection.MemberInfo);
Boolean Equals(System.Object);
Int32 GetHashCode();
}
class MemberTypes : System.Enum{
}
class MethodAttributes : System.Enum{
}
class MethodBase : System.Reflection.MemberInfo{
static MethodBase GetMethodFromHandle(System.RuntimeMethodHandle);
static MethodBase GetMethodFromHandle(System.RuntimeMethodHandle,System.RuntimeTypeHandle);
static MethodBase GetCurrentMethod();
static Boolean op_Equality(System.Reflection.MethodBase,System.Reflection.MethodBase);
static Boolean op_Inequality(System.Reflection.MethodBase,System.Reflection.MethodBase);
Boolean Equals(System.Object);
Int32 GetHashCode();
ParameterInfo[] GetParameters();
MethodImplAttributes get_MethodImplementationFlags();
MethodImplAttributes GetMethodImplementationFlags();
RuntimeMethodHandle get_MethodHandle();
MethodAttributes get_Attributes();
Object Invoke(System.Object,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object[],System.Globalization.CultureInfo);
CallingConventions get_CallingConvention();
Type[] GetGenericArguments();
Boolean get_IsGenericMethodDefinition();
Boolean get_ContainsGenericParameters();
Boolean get_IsGenericMethod();
Boolean get_IsSecurityCritical();
Boolean get_IsSecuritySafeCritical();
Boolean get_IsSecurityTransparent();
Object Invoke(System.Object,System.Object[]);
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
MethodBody GetMethodBody();
}
class MethodImplAttributes : System.Enum{
}
class MethodInfo : System.Reflection.MethodBase{
static Boolean op_Equality(System.Reflection.MethodInfo,System.Reflection.MethodInfo);
static Boolean op_Inequality(System.Reflection.MethodInfo,System.Reflection.MethodInfo);
Boolean Equals(System.Object);
Int32 GetHashCode();
MemberTypes get_MemberType();
Type get_ReturnType();
ParameterInfo get_ReturnParameter();
ICustomAttributeProvider get_ReturnTypeCustomAttributes();
MethodInfo GetBaseDefinition();
Type[] GetGenericArguments();
MethodInfo GetGenericMethodDefinition();
MethodInfo MakeGenericMethod(System.Type[]);
Delegate CreateDelegate(System.Type);
Delegate CreateDelegate(System.Type,System.Object);
}
class Missing : System.Object{
}
class PortableExecutableKinds : System.Enum{
}
class ImageFileMachine : System.Enum{
}
class Module : System.Object{
static Boolean op_Equality(System.Reflection.Module,System.Reflection.Module);
static Boolean op_Inequality(System.Reflection.Module,System.Reflection.Module);
Boolean Equals(System.Object);
Int32 GetHashCode();
String ToString();
Object[] GetCustomAttributes(System.Boolean);
Object[] GetCustomAttributes(System.Type,System.Boolean);
Boolean IsDefined(System.Type,System.Boolean);
MethodBase ResolveMethod(System.Int32);
MethodBase ResolveMethod(System.Int32,System.Type[],System.Type[]);
FieldInfo ResolveField(System.Int32);
FieldInfo ResolveField(System.Int32,System.Type[],System.Type[]);
Type ResolveType(System.Int32);
Type ResolveType(System.Int32,System.Type[],System.Type[]);
MemberInfo ResolveMember(System.Int32);
MemberInfo ResolveMember(System.Int32,System.Type[],System.Type[]);
Byte[] ResolveSignature(System.Int32);
String ResolveString(System.Int32);
Int32 get_MDStreamVersion();
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
Type GetType(System.String,System.Boolean);
Type GetType(System.String);
Type GetType(System.String,System.Boolean,System.Boolean);
String get_FullyQualifiedName();
Type[] FindTypes(System.Reflection.TypeFilter,System.Object);
Type[] GetTypes();
Guid get_ModuleVersionId();
Int32 get_MetadataToken();
Boolean IsResource();
FieldInfo[] GetFields();
FieldInfo[] GetFields(System.Reflection.BindingFlags);
FieldInfo GetField(System.String);
FieldInfo GetField(System.String,System.Reflection.BindingFlags);
MethodInfo[] GetMethods();
MethodInfo[] GetMethods(System.Reflection.BindingFlags);
MethodInfo GetMethod(System.String,System.Reflection.BindingFlags,System.Reflection.Binder,System.Reflection.CallingConventions,System.Type[],System.Reflection.ParameterModifier[]);
MethodInfo GetMethod(System.String,System.Type[]);
MethodInfo GetMethod(System.String);
String get_ScopeName();
String get_Name();
Assembly get_Assembly();
ModuleHandle get_ModuleHandle();
X509Certificate GetSignerCertificate();
}
class ObfuscateAssemblyAttribute : System.Attribute{
this (System.Boolean);
Boolean get_AssemblyIsPrivate();
Boolean get_StripAfterObfuscation();
Void set_StripAfterObfuscation(System.Boolean);
}
class ObfuscationAttribute : System.Attribute{
this ();
Boolean get_StripAfterObfuscation();
Void set_StripAfterObfuscation(System.Boolean);
Boolean get_Exclude();
Void set_Exclude(System.Boolean);
Boolean get_ApplyToMembers();
Void set_ApplyToMembers(System.Boolean);
String get_Feature();
Void set_Feature(System.String);
}
class ExceptionHandlingClauseOptions : System.Enum{
}
class ExceptionHandlingClause : System.Object{
ExceptionHandlingClauseOptions get_Flags();
Int32 get_TryOffset();
Int32 get_TryLength();
Int32 get_HandlerOffset();
Int32 get_HandlerLength();
Int32 get_FilterOffset();
Type get_CatchType();
String ToString();
}
class MethodBody : System.Object{
Int32 get_LocalSignatureMetadataToken();
Int32 get_MaxStackSize();
Boolean get_InitLocals();
Byte[] GetILAsByteArray();
}
class LocalVariableInfo : System.Object{
String ToString();
Type get_LocalType();
Boolean get_IsPinned();
Int32 get_LocalIndex();
}
class ParameterAttributes : System.Enum{
}
class ParameterInfo : System.Object{
Type get_ParameterType();
String get_Name();
Boolean get_HasDefaultValue();
Object get_DefaultValue();
Object get_RawDefaultValue();
Int32 get_Position();
ParameterAttributes get_Attributes();
MemberInfo get_Member();
Boolean get_IsIn();
Boolean get_IsOut();
Boolean get_IsLcid();
Boolean get_IsRetval();
Boolean get_IsOptional();
Int32 get_MetadataToken();
Type[] GetRequiredCustomModifiers();
Type[] GetOptionalCustomModifiers();
String ToString();
Object[] GetCustomAttributes(System.Boolean);
Object[] GetCustomAttributes(System.Type,System.Boolean);
Boolean IsDefined(System.Type,System.Boolean);
Object GetRealObject(System.Runtime.Serialization.StreamingContext);
}
class ParameterModifier : System.ValueType{
this (System.Int32);
Boolean get_Item(System.Int32);
Void set_Item(System.Int32,System.Boolean);
}
class Pointer : System.Object{
}
class PropertyAttributes : System.Enum{
}
class PropertyInfo : System.Reflection.MemberInfo{
static Boolean op_Equality(System.Reflection.PropertyInfo,System.Reflection.PropertyInfo);
static Boolean op_Inequality(System.Reflection.PropertyInfo,System.Reflection.PropertyInfo);
Boolean Equals(System.Object);
Int32 GetHashCode();
MemberTypes get_MemberType();
Object GetConstantValue();
Object GetRawConstantValue();
Type get_PropertyType();
Void SetValue(System.Object,System.Object,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object[],System.Globalization.CultureInfo);
MethodInfo[] GetAccessors(System.Boolean);
MethodInfo GetGetMethod(System.Boolean);
MethodInfo GetSetMethod(System.Boolean);
ParameterInfo[] GetIndexParameters();
PropertyAttributes get_Attributes();
Boolean get_CanRead();
Boolean get_CanWrite();
Object GetValue(System.Object);
Object GetValue(System.Object,System.Object[]);
Object GetValue(System.Object,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object[],System.Globalization.CultureInfo);
Void SetValue(System.Object,System.Object);
Void SetValue(System.Object,System.Object,System.Object[]);
Type[] GetRequiredCustomModifiers();
Type[] GetOptionalCustomModifiers();
MethodInfo[] GetAccessors();
MethodInfo get_GetMethod();
MethodInfo get_SetMethod();
MethodInfo GetGetMethod();
MethodInfo GetSetMethod();
Boolean get_IsSpecialName();
}
class ReflectionContext : System.Object{
Assembly MapAssembly(System.Reflection.Assembly);
TypeInfo MapType(System.Reflection.TypeInfo);
TypeInfo GetTypeForObject(System.Object);
}
class ReflectionTypeLoadException : System.SystemException{
this (System.Type[],System.Exception[]);
this (System.Type[],System.Exception[],System.String);
Type[] get_Types();
Exception[] get_LoaderExceptions();
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
}
class ResourceAttributes : System.Enum{
}
class StrongNameKeyPair : System.Object{
this (System.IO.FileStream);
this (System.Byte[]);
this (System.String);
Byte[] get_PublicKey();
}
class TargetException : System.ApplicationException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class TargetInvocationException : System.ApplicationException{
this (System.Exception);
this (System.String,System.Exception);
}
class TargetParameterCountException : System.ApplicationException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class TypeAttributes : System.Enum{
}
class TypeDelegator : System.Reflection.TypeInfo{
this (System.Type);
Boolean IsAssignableFrom(System.Reflection.TypeInfo);
Guid get_GUID();
Int32 get_MetadataToken();
Object InvokeMember(System.String,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object,System.Object[],System.Reflection.ParameterModifier[],System.Globalization.CultureInfo,System.String[]);
Module get_Module();
Assembly get_Assembly();
RuntimeTypeHandle get_TypeHandle();
String get_Name();
String get_FullName();
String get_Namespace();
String get_AssemblyQualifiedName();
Type get_BaseType();
ConstructorInfo[] GetConstructors(System.Reflection.BindingFlags);
MethodInfo[] GetMethods(System.Reflection.BindingFlags);
FieldInfo GetField(System.String,System.Reflection.BindingFlags);
FieldInfo[] GetFields(System.Reflection.BindingFlags);
Type GetInterface(System.String,System.Boolean);
Type[] GetInterfaces();
EventInfo GetEvent(System.String,System.Reflection.BindingFlags);
EventInfo[] GetEvents();
PropertyInfo[] GetProperties(System.Reflection.BindingFlags);
EventInfo[] GetEvents(System.Reflection.BindingFlags);
Type[] GetNestedTypes(System.Reflection.BindingFlags);
Type GetNestedType(System.String,System.Reflection.BindingFlags);
MemberInfo[] GetMember(System.String,System.Reflection.MemberTypes,System.Reflection.BindingFlags);
MemberInfo[] GetMembers(System.Reflection.BindingFlags);
Boolean get_IsConstructedGenericType();
Type GetElementType();
Type get_UnderlyingSystemType();
Object[] GetCustomAttributes(System.Boolean);
Object[] GetCustomAttributes(System.Type,System.Boolean);
Boolean IsDefined(System.Type,System.Boolean);
InterfaceMapping GetInterfaceMap(System.Type);
}
class TypeFilter : System.MulticastDelegate{
this (System.Object,System.IntPtr);
Boolean Invoke(System.Type,System.Object);
IAsyncResult BeginInvoke(System.Type,System.Object,System.AsyncCallback,System.Object);
Boolean EndInvoke(System.IAsyncResult);
}
class TypeInfo : System.Type{
Type AsType();
Type[] get_GenericTypeParameters();
Boolean IsAssignableFrom(System.Reflection.TypeInfo);
EventInfo GetDeclaredEvent(System.String);
FieldInfo GetDeclaredField(System.String);
MethodInfo GetDeclaredMethod(System.String);
TypeInfo GetDeclaredNestedType(System.String);
PropertyInfo GetDeclaredProperty(System.String);
}
}
