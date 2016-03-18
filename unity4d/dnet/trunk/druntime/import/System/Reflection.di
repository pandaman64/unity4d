module System.Reflection;
import System;
import System.Runtime.Serialization;
import System.Collections;
import System.Security.Policy;
import System.Security;
import System.Globalization;
import System.IO;
import System.Configuration.Assemblies;
import System.Runtime.Remoting;
import System.Security.Cryptography.X509Certificates;
import System.Runtime.InteropServices;
public:
pragma(assembly,"mscorlib"){
class ModuleResolveEventHandler : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.Reflection.Module Invoke(System.__object,System.ResolveEventArgs);
System.IAsyncResult BeginInvoke(System.__object,System.ResolveEventArgs,System.AsyncCallback,System.__object);
System.Reflection.Module EndInvoke(System.IAsyncResult);
}
class Assembly : System.__object{
static System.String CreateQualifiedName(System.String,System.String);
static System.Reflection.Assembly GetAssembly(System.Type);
static System.Boolean op_Equality(System.Reflection.Assembly,System.Reflection.Assembly);
static System.Boolean op_Inequality(System.Reflection.Assembly,System.Reflection.Assembly);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
static System.Reflection.Assembly LoadFrom(System.String);
static System.Reflection.Assembly ReflectionOnlyLoadFrom(System.String);
static System.Reflection.Assembly LoadFrom(System.String,System.Security.Policy.Evidence);
static System.Reflection.Assembly UnsafeLoadFrom(System.String);
static System.Reflection.Assembly Load(System.String);
static System.Reflection.Assembly ReflectionOnlyLoad(System.String);
static System.Reflection.Assembly Load(System.String,System.Security.Policy.Evidence);
static System.Reflection.Assembly Load(System.Reflection.AssemblyName);
static System.Reflection.Assembly Load(System.Reflection.AssemblyName,System.Security.Policy.Evidence);
static System.Reflection.Assembly LoadWithPartialName(System.String);
static System.Reflection.Assembly LoadWithPartialName(System.String,System.Security.Policy.Evidence);
static System.Reflection.Assembly Load(System.Byte[]);
static System.Reflection.Assembly ReflectionOnlyLoad(System.Byte[]);
static System.Reflection.Assembly Load(System.Byte[],System.Byte[]);
static System.Reflection.Assembly Load(System.Byte[],System.Byte[],System.Security.SecurityContextSource);
static System.Reflection.Assembly Load(System.Byte[],System.Byte[],System.Security.Policy.Evidence);
static System.Reflection.Assembly LoadFile(System.String);
static System.Reflection.Assembly LoadFile(System.String,System.Security.Policy.Evidence);
static System.Reflection.Assembly GetExecutingAssembly();
static System.Reflection.Assembly GetCallingAssembly();
static System.Reflection.Assembly GetEntryAssembly();
System.Void add_ModuleResolve(System.Reflection.ModuleResolveEventHandler);
System.Void remove_ModuleResolve(System.Reflection.ModuleResolveEventHandler);
System.String get_CodeBase();
System.String get_EscapedCodeBase();
System.Reflection.AssemblyName GetName();
System.Reflection.AssemblyName GetName(System.Boolean);
System.String get_FullName();
System.Reflection.MethodInfo get_EntryPoint();
System.Type GetType(System.String);
System.Type GetType(System.String,System.Boolean);
System.Type GetType(System.String,System.Boolean,System.Boolean);
System.Type[] GetExportedTypes();
System.Type[] GetTypes();
System.IO.Stream GetManifestResourceStream(System.Type,System.String);
System.IO.Stream GetManifestResourceStream(System.String);
System.Reflection.Assembly GetSatelliteAssembly(System.Globalization.CultureInfo);
System.Reflection.Assembly GetSatelliteAssembly(System.Globalization.CultureInfo,System.Version);
System.Security.Policy.Evidence get_Evidence();
System.Security.PermissionSet get_PermissionSet();
System.Boolean get_IsFullyTrusted();
System.Security.SecurityRuleSet get_SecurityRuleSet();
System.Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
System.Reflection.Module get_ManifestModule();
System.__object[] GetCustomAttributes(System.Boolean);
System.__object[] GetCustomAttributes(System.Type,System.Boolean);
System.Boolean IsDefined(System.Type,System.Boolean);
System.Boolean get_ReflectionOnly();
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
System.IO.FileStream GetFile(System.String);
System.IO.FileStream[] GetFiles();
System.IO.FileStream[] GetFiles(System.Boolean);
System.String[] GetManifestResourceNames();
System.Reflection.AssemblyName[] GetReferencedAssemblies();
System.Reflection.ManifestResourceInfo GetManifestResourceInfo(System.String);
System.String ToString();
System.String get_Location();
System.String get_ImageRuntimeVersion();
System.Boolean get_GlobalAssemblyCache();
System.Int64 get_HostContext();
System.Boolean get_IsDynamic();
}
class AssemblyCopyrightAttribute : System.Attribute{
this (System.String);
System.String get_Copyright();
}
class AssemblyTrademarkAttribute : System.Attribute{
this (System.String);
System.String get_Trademark();
}
class AssemblyProductAttribute : System.Attribute{
this (System.String);
System.String get_Product();
}
class AssemblyCompanyAttribute : System.Attribute{
this (System.String);
System.String get_Company();
}
class AssemblyDescriptionAttribute : System.Attribute{
this (System.String);
System.String get_Description();
}
class AssemblyTitleAttribute : System.Attribute{
this (System.String);
System.String get_Title();
}
class AssemblyConfigurationAttribute : System.Attribute{
this (System.String);
System.String get_Configuration();
}
class AssemblyDefaultAliasAttribute : System.Attribute{
this (System.String);
System.String get_DefaultAlias();
}
class AssemblyInformationalVersionAttribute : System.Attribute{
this (System.String);
System.String get_InformationalVersion();
}
class AssemblyFileVersionAttribute : System.Attribute{
this (System.String);
System.String get_Version();
}
class AssemblyCultureAttribute : System.Attribute{
this (System.String);
System.String get_Culture();
}
class AssemblyVersionAttribute : System.Attribute{
this (System.String);
System.String get_Version();
}
class AssemblyKeyFileAttribute : System.Attribute{
this (System.String);
System.String get_KeyFile();
}
class AssemblyDelaySignAttribute : System.Attribute{
this (System.Boolean);
System.Boolean get_DelaySign();
}
class AssemblyAlgorithmIdAttribute : System.Attribute{
this (System.UInt32);
System.UInt32 get_AlgorithmId();
}
class AssemblyFlagsAttribute : System.Attribute{
this (System.UInt32);
this (System.Int32);
this (System.Reflection.AssemblyNameFlags);
System.UInt32 get_Flags();
System.Int32 get_AssemblyFlags();
}
class AssemblyMetadataAttribute : System.Attribute{
this (System.String,System.String);
System.String get_Key();
System.String get_Value();
}
class AssemblySignatureKeyAttribute : System.Attribute{
this (System.String,System.String);
System.String get_PublicKey();
System.String get_Countersignature();
}
class AssemblyKeyNameAttribute : System.Attribute{
this (System.String);
System.String get_KeyName();
}
class AssemblyName : System.__object{
this ();
this (System.String);
System.String get_Name();
System.Void set_Name(System.String);
System.Version get_Version();
System.Void set_Version(System.Version);
System.Globalization.CultureInfo get_CultureInfo();
System.Void set_CultureInfo(System.Globalization.CultureInfo);
System.String get_CultureName();
System.Void set_CultureName(System.String);
System.String get_CodeBase();
System.Void set_CodeBase(System.String);
System.String get_EscapedCodeBase();
System.Reflection.ProcessorArchitecture get_ProcessorArchitecture();
System.Void set_ProcessorArchitecture(System.Reflection.ProcessorArchitecture);
System.Reflection.AssemblyContentType get_ContentType();
System.Void set_ContentType(System.Reflection.AssemblyContentType);
System.__object Clone();
static System.Reflection.AssemblyName GetAssemblyName(System.String);
System.Byte[] GetPublicKey();
System.Void SetPublicKey(System.Byte[]);
System.Byte[] GetPublicKeyToken();
System.Void SetPublicKeyToken(System.Byte[]);
System.Reflection.AssemblyNameFlags get_Flags();
System.Void set_Flags(System.Reflection.AssemblyNameFlags);
System.Configuration.Assemblies.AssemblyVersionCompatibility get_VersionCompatibility();
System.Void set_VersionCompatibility(System.Configuration.Assemblies.AssemblyVersionCompatibility);
System.Reflection.StrongNameKeyPair get_KeyPair();
System.Void set_KeyPair(System.Reflection.StrongNameKeyPair);
System.String get_FullName();
System.String ToString();
System.Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
System.Void OnDeserialization(System.__object);
static System.Boolean ReferenceMatchesDefinition(System.Reflection.AssemblyName,System.Reflection.AssemblyName);
}
class AssemblyNameProxy : System.MarshalByRefObject{
this ();
System.Reflection.AssemblyName GetAssemblyName(System.String);
}
class AssemblyNameFlags : System.Enum{
Int32 value__;
}
class AssemblyContentType : System.Enum{
Int32 value__;
}
class ProcessorArchitecture : System.Enum{
Int32 value__;
}
class CustomAttributeExtensions : System.__object{
static System.Attribute GetCustomAttribute(System.Reflection.Assembly,System.Type);
static System.Attribute GetCustomAttribute(System.Reflection.Module,System.Type);
static System.Attribute GetCustomAttribute(System.Reflection.MemberInfo,System.Type);
static System.Attribute GetCustomAttribute(System.Reflection.ParameterInfo,System.Type);
static System.Attribute GetCustomAttribute(System.Reflection.MemberInfo,System.Type,System.Boolean);
static System.Attribute GetCustomAttribute(System.Reflection.ParameterInfo,System.Type,System.Boolean);
static System.Boolean IsDefined(System.Reflection.Assembly,System.Type);
static System.Boolean IsDefined(System.Reflection.Module,System.Type);
static System.Boolean IsDefined(System.Reflection.MemberInfo,System.Type);
static System.Boolean IsDefined(System.Reflection.ParameterInfo,System.Type);
static System.Boolean IsDefined(System.Reflection.MemberInfo,System.Type,System.Boolean);
static System.Boolean IsDefined(System.Reflection.ParameterInfo,System.Type,System.Boolean);
}
class Binder : System.__object{
System.Reflection.FieldInfo BindToField(System.Reflection.BindingFlags,System.Reflection.FieldInfo[],System.__object,System.Globalization.CultureInfo);
System.Reflection.MethodBase SelectMethod(System.Reflection.BindingFlags,System.Reflection.MethodBase[],System.Type[],System.Reflection.ParameterModifier[]);
System.Reflection.PropertyInfo SelectProperty(System.Reflection.BindingFlags,System.Reflection.PropertyInfo[],System.Type,System.Type[],System.Reflection.ParameterModifier[]);
System.__object ChangeType(System.__object,System.Type,System.Globalization.CultureInfo);
}
class BindingFlags : System.Enum{
Int32 value__;
}
class CallingConventions : System.Enum{
Int32 value__;
}
class ConstructorInfo : System.Reflection.MethodBase{
static System.Boolean op_Equality(System.Reflection.ConstructorInfo,System.Reflection.ConstructorInfo);
static System.Boolean op_Inequality(System.Reflection.ConstructorInfo,System.Reflection.ConstructorInfo);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.Reflection.MemberTypes get_MemberType();
System.__object Invoke(System.Reflection.BindingFlags,System.Reflection.Binder,System.__object[],System.Globalization.CultureInfo);
System.__object Invoke(System.__object[]);
}
class CustomAttributeData : System.__object{
System.String ToString();
System.Int32 GetHashCode();
System.Boolean Equals(System.__object);
System.Type get_AttributeType();
System.Reflection.ConstructorInfo get_Constructor();
}
class CustomAttributeNamedArgument : System.ValueType{
this (System.Reflection.MemberInfo,System.__object);
this (System.Reflection.MemberInfo,System.Reflection.CustomAttributeTypedArgument);
static System.Boolean op_Equality(System.Reflection.CustomAttributeNamedArgument,System.Reflection.CustomAttributeNamedArgument);
static System.Boolean op_Inequality(System.Reflection.CustomAttributeNamedArgument,System.Reflection.CustomAttributeNamedArgument);
System.String ToString();
System.Int32 GetHashCode();
System.Boolean Equals(System.__object);
System.Reflection.MemberInfo get_MemberInfo();
System.Reflection.CustomAttributeTypedArgument get_TypedValue();
System.String get_MemberName();
System.Boolean get_IsField();
}
class CustomAttributeTypedArgument : System.ValueType{
this (System.Type,System.__object);
this (System.__object);
static System.Boolean op_Equality(System.Reflection.CustomAttributeTypedArgument,System.Reflection.CustomAttributeTypedArgument);
static System.Boolean op_Inequality(System.Reflection.CustomAttributeTypedArgument,System.Reflection.CustomAttributeTypedArgument);
System.String ToString();
System.Int32 GetHashCode();
System.Boolean Equals(System.__object);
System.Type get_ArgumentType();
System.__object get_Value();
}
class DefaultMemberAttribute : System.Attribute{
this (System.String);
System.String get_MemberName();
}
class EventAttributes : System.Enum{
Int32 value__;
}
class EventInfo : System.Reflection.MemberInfo{
static System.Boolean op_Equality(System.Reflection.EventInfo,System.Reflection.EventInfo);
static System.Boolean op_Inequality(System.Reflection.EventInfo,System.Reflection.EventInfo);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.Reflection.MemberTypes get_MemberType();
System.Reflection.MethodInfo[] GetOtherMethods(System.Boolean);
System.Reflection.MethodInfo GetAddMethod(System.Boolean);
System.Reflection.MethodInfo GetRemoveMethod(System.Boolean);
System.Reflection.MethodInfo GetRaiseMethod(System.Boolean);
System.Reflection.EventAttributes get_Attributes();
System.Reflection.MethodInfo get_AddMethod();
System.Reflection.MethodInfo get_RemoveMethod();
System.Reflection.MethodInfo get_RaiseMethod();
System.Reflection.MethodInfo[] GetOtherMethods();
System.Reflection.MethodInfo GetAddMethod();
System.Reflection.MethodInfo GetRemoveMethod();
System.Reflection.MethodInfo GetRaiseMethod();
System.Void AddEventHandler(System.__object,System.Delegate);
System.Void RemoveEventHandler(System.__object,System.Delegate);
System.Type get_EventHandlerType();
System.Boolean get_IsSpecialName();
System.Boolean get_IsMulticast();
}
class FieldAttributes : System.Enum{
Int32 value__;
}
class FieldInfo : System.Reflection.MemberInfo{
static System.Reflection.FieldInfo GetFieldFromHandle(System.RuntimeFieldHandle);
static System.Reflection.FieldInfo GetFieldFromHandle(System.RuntimeFieldHandle,System.RuntimeTypeHandle);
static System.Boolean op_Equality(System.Reflection.FieldInfo,System.Reflection.FieldInfo);
static System.Boolean op_Inequality(System.Reflection.FieldInfo,System.Reflection.FieldInfo);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.Reflection.MemberTypes get_MemberType();
System.Type[] GetRequiredCustomModifiers();
System.Type[] GetOptionalCustomModifiers();
System.Void SetValueDirect(System.TypedReference,System.__object);
System.__object GetValueDirect(System.TypedReference);
System.RuntimeFieldHandle get_FieldHandle();
System.Type get_FieldType();
System.__object GetValue(System.__object);
System.__object GetRawConstantValue();
System.Void SetValue(System.__object,System.__object,System.Reflection.BindingFlags,System.Reflection.Binder,System.Globalization.CultureInfo);
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
System.Boolean get_IsSecurityCritical();
System.Boolean get_IsSecuritySafeCritical();
System.Boolean get_IsSecurityTransparent();
}
class GenericParameterAttributes : System.Enum{
Int32 value__;
}
interface ICustomAttributeProvider{
System.__object[] GetCustomAttributes(System.Type,System.Boolean);
System.__object[] GetCustomAttributes(System.Boolean);
System.Boolean IsDefined(System.Type,System.Boolean);
}
interface IReflectableType{
}
class IntrospectionExtensions : System.__object{
}
class RuntimeReflectionExtensions : System.__object{
static System.Reflection.PropertyInfo GetRuntimeProperty(System.Type,System.String);
static System.Reflection.EventInfo GetRuntimeEvent(System.Type,System.String);
static System.Reflection.MethodInfo GetRuntimeMethod(System.Type,System.String,System.Type[]);
static System.Reflection.FieldInfo GetRuntimeField(System.Type,System.String);
static System.Reflection.MethodInfo GetRuntimeBaseDefinition(System.Reflection.MethodInfo);
static System.Reflection.MethodInfo GetMethodInfo(System.Delegate);
}
class InterfaceMapping : System.ValueType{
Type TargetType;
Type InterfaceType;
MethodInfo[] TargetMethods;
MethodInfo[] InterfaceMethods;
}
interface IReflect{
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
}
class ManifestResourceInfo : System.__object{
this (System.Reflection.Assembly,System.String,System.Reflection.ResourceLocation);
System.Reflection.Assembly get_ReferencedAssembly();
System.String get_FileName();
System.Reflection.ResourceLocation get_ResourceLocation();
}
class ResourceLocation : System.Enum{
Int32 value__;
}
class MemberFilter : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.Boolean Invoke(System.Reflection.MemberInfo,System.__object);
System.IAsyncResult BeginInvoke(System.Reflection.MemberInfo,System.__object,System.AsyncCallback,System.__object);
System.Boolean EndInvoke(System.IAsyncResult);
}
class MemberInfo : System.__object{
System.Reflection.MemberTypes get_MemberType();
System.String get_Name();
System.Type get_DeclaringType();
System.Type get_ReflectedType();
System.__object[] GetCustomAttributes(System.Boolean);
System.__object[] GetCustomAttributes(System.Type,System.Boolean);
System.Boolean IsDefined(System.Type,System.Boolean);
System.Int32 get_MetadataToken();
System.Reflection.Module get_Module();
static System.Boolean op_Equality(System.Reflection.MemberInfo,System.Reflection.MemberInfo);
static System.Boolean op_Inequality(System.Reflection.MemberInfo,System.Reflection.MemberInfo);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
}
class MemberTypes : System.Enum{
Int32 value__;
}
class MethodAttributes : System.Enum{
Int32 value__;
}
class MethodBase : System.Reflection.MemberInfo{
static System.Reflection.MethodBase GetMethodFromHandle(System.RuntimeMethodHandle);
static System.Reflection.MethodBase GetMethodFromHandle(System.RuntimeMethodHandle,System.RuntimeTypeHandle);
static System.Reflection.MethodBase GetCurrentMethod();
static System.Boolean op_Equality(System.Reflection.MethodBase,System.Reflection.MethodBase);
static System.Boolean op_Inequality(System.Reflection.MethodBase,System.Reflection.MethodBase);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.Reflection.ParameterInfo[] GetParameters();
System.Reflection.MethodImplAttributes get_MethodImplementationFlags();
System.Reflection.MethodImplAttributes GetMethodImplementationFlags();
System.RuntimeMethodHandle get_MethodHandle();
System.Reflection.MethodAttributes get_Attributes();
System.__object Invoke(System.__object,System.Reflection.BindingFlags,System.Reflection.Binder,System.__object[],System.Globalization.CultureInfo);
System.Reflection.CallingConventions get_CallingConvention();
System.Type[] GetGenericArguments();
System.Boolean get_IsGenericMethodDefinition();
System.Boolean get_ContainsGenericParameters();
System.Boolean get_IsGenericMethod();
System.Boolean get_IsSecurityCritical();
System.Boolean get_IsSecuritySafeCritical();
System.Boolean get_IsSecurityTransparent();
System.__object Invoke(System.__object,System.__object[]);
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
System.Reflection.MethodBody GetMethodBody();
}
class MethodImplAttributes : System.Enum{
Int32 value__;
}
class MethodInfo : System.Reflection.MethodBase{
static System.Boolean op_Equality(System.Reflection.MethodInfo,System.Reflection.MethodInfo);
static System.Boolean op_Inequality(System.Reflection.MethodInfo,System.Reflection.MethodInfo);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.Reflection.MemberTypes get_MemberType();
System.Type get_ReturnType();
System.Reflection.ParameterInfo get_ReturnParameter();
System.Reflection.ICustomAttributeProvider get_ReturnTypeCustomAttributes();
System.Reflection.MethodInfo GetBaseDefinition();
System.Type[] GetGenericArguments();
System.Reflection.MethodInfo GetGenericMethodDefinition();
System.Reflection.MethodInfo MakeGenericMethod(System.Type[]);
System.Delegate CreateDelegate(System.Type);
System.Delegate CreateDelegate(System.Type,System.__object);
}
class Missing : System.__object{
}
class PortableExecutableKinds : System.Enum{
Int32 value__;
}
class ImageFileMachine : System.Enum{
Int32 value__;
}
class Module : System.__object{
static System.Boolean op_Equality(System.Reflection.Module,System.Reflection.Module);
static System.Boolean op_Inequality(System.Reflection.Module,System.Reflection.Module);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.String ToString();
System.__object[] GetCustomAttributes(System.Boolean);
System.__object[] GetCustomAttributes(System.Type,System.Boolean);
System.Boolean IsDefined(System.Type,System.Boolean);
System.Reflection.MethodBase ResolveMethod(System.Int32);
System.Reflection.MethodBase ResolveMethod(System.Int32,System.Type[],System.Type[]);
System.Reflection.FieldInfo ResolveField(System.Int32);
System.Reflection.FieldInfo ResolveField(System.Int32,System.Type[],System.Type[]);
System.Type ResolveType(System.Int32);
System.Type ResolveType(System.Int32,System.Type[],System.Type[]);
System.Reflection.MemberInfo ResolveMember(System.Int32);
System.Reflection.MemberInfo ResolveMember(System.Int32,System.Type[],System.Type[]);
System.Byte[] ResolveSignature(System.Int32);
System.String ResolveString(System.Int32);
System.Int32 get_MDStreamVersion();
System.Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
System.Type GetType(System.String,System.Boolean);
System.Type GetType(System.String);
System.Type GetType(System.String,System.Boolean,System.Boolean);
System.String get_FullyQualifiedName();
System.Type[] FindTypes(System.Reflection.TypeFilter,System.__object);
System.Type[] GetTypes();
System.Guid get_ModuleVersionId();
System.Int32 get_MetadataToken();
System.Boolean IsResource();
System.Reflection.FieldInfo[] GetFields();
System.Reflection.FieldInfo[] GetFields(System.Reflection.BindingFlags);
System.Reflection.FieldInfo GetField(System.String);
System.Reflection.FieldInfo GetField(System.String,System.Reflection.BindingFlags);
System.Reflection.MethodInfo[] GetMethods();
System.Reflection.MethodInfo[] GetMethods(System.Reflection.BindingFlags);
System.Reflection.MethodInfo GetMethod(System.String,System.Reflection.BindingFlags,System.Reflection.Binder,System.Reflection.CallingConventions,System.Type[],System.Reflection.ParameterModifier[]);
System.Reflection.MethodInfo GetMethod(System.String,System.Type[]);
System.Reflection.MethodInfo GetMethod(System.String);
System.String get_ScopeName();
System.String get_Name();
System.Reflection.Assembly get_Assembly();
System.ModuleHandle get_ModuleHandle();
System.Security.Cryptography.X509Certificates.X509Certificate GetSignerCertificate();
}
class ObfuscateAssemblyAttribute : System.Attribute{
this (System.Boolean);
System.Boolean get_AssemblyIsPrivate();
System.Boolean get_StripAfterObfuscation();
System.Void set_StripAfterObfuscation(System.Boolean);
}
class ObfuscationAttribute : System.Attribute{
this ();
System.Boolean get_StripAfterObfuscation();
System.Void set_StripAfterObfuscation(System.Boolean);
System.Boolean get_Exclude();
System.Void set_Exclude(System.Boolean);
System.Boolean get_ApplyToMembers();
System.Void set_ApplyToMembers(System.Boolean);
System.String get_Feature();
System.Void set_Feature(System.String);
}
class ExceptionHandlingClauseOptions : System.Enum{
Int32 value__;
}
class ExceptionHandlingClause : System.__object{
System.Reflection.ExceptionHandlingClauseOptions get_Flags();
System.Int32 get_TryOffset();
System.Int32 get_TryLength();
System.Int32 get_HandlerOffset();
System.Int32 get_HandlerLength();
System.Int32 get_FilterOffset();
System.Type get_CatchType();
System.String ToString();
}
class MethodBody : System.__object{
System.Int32 get_LocalSignatureMetadataToken();
System.Int32 get_MaxStackSize();
System.Boolean get_InitLocals();
System.Byte[] GetILAsByteArray();
}
class LocalVariableInfo : System.__object{
System.String ToString();
System.Type get_LocalType();
System.Boolean get_IsPinned();
System.Int32 get_LocalIndex();
}
class ParameterAttributes : System.Enum{
Int32 value__;
}
class ParameterInfo : System.__object{
System.Type get_ParameterType();
System.String get_Name();
System.Boolean get_HasDefaultValue();
System.__object get_DefaultValue();
System.__object get_RawDefaultValue();
System.Int32 get_Position();
System.Reflection.ParameterAttributes get_Attributes();
System.Reflection.MemberInfo get_Member();
System.Boolean get_IsIn();
System.Boolean get_IsOut();
System.Boolean get_IsLcid();
System.Boolean get_IsRetval();
System.Boolean get_IsOptional();
System.Int32 get_MetadataToken();
System.Type[] GetRequiredCustomModifiers();
System.Type[] GetOptionalCustomModifiers();
System.String ToString();
System.__object[] GetCustomAttributes(System.Boolean);
System.__object[] GetCustomAttributes(System.Type,System.Boolean);
System.Boolean IsDefined(System.Type,System.Boolean);
System.__object GetRealObject(System.Runtime.Serialization.StreamingContext);
}
class ParameterModifier : System.ValueType{
this (System.Int32);
System.Boolean get_Item(System.Int32);
System.Void set_Item(System.Int32,System.Boolean);
}
class Pointer : System.__object{
}
class PropertyAttributes : System.Enum{
Int32 value__;
}
class PropertyInfo : System.Reflection.MemberInfo{
static System.Boolean op_Equality(System.Reflection.PropertyInfo,System.Reflection.PropertyInfo);
static System.Boolean op_Inequality(System.Reflection.PropertyInfo,System.Reflection.PropertyInfo);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.Reflection.MemberTypes get_MemberType();
System.__object GetConstantValue();
System.__object GetRawConstantValue();
System.Type get_PropertyType();
System.Void SetValue(System.__object,System.__object,System.Reflection.BindingFlags,System.Reflection.Binder,System.__object[],System.Globalization.CultureInfo);
System.Reflection.MethodInfo[] GetAccessors(System.Boolean);
System.Reflection.MethodInfo GetGetMethod(System.Boolean);
System.Reflection.MethodInfo GetSetMethod(System.Boolean);
System.Reflection.ParameterInfo[] GetIndexParameters();
System.Reflection.PropertyAttributes get_Attributes();
System.Boolean get_CanRead();
System.Boolean get_CanWrite();
System.__object GetValue(System.__object);
System.__object GetValue(System.__object,System.__object[]);
System.__object GetValue(System.__object,System.Reflection.BindingFlags,System.Reflection.Binder,System.__object[],System.Globalization.CultureInfo);
System.Void SetValue(System.__object,System.__object);
System.Void SetValue(System.__object,System.__object,System.__object[]);
System.Type[] GetRequiredCustomModifiers();
System.Type[] GetOptionalCustomModifiers();
System.Reflection.MethodInfo[] GetAccessors();
System.Reflection.MethodInfo get_GetMethod();
System.Reflection.MethodInfo get_SetMethod();
System.Reflection.MethodInfo GetGetMethod();
System.Reflection.MethodInfo GetSetMethod();
System.Boolean get_IsSpecialName();
}
class ReflectionContext : System.__object{
System.Reflection.Assembly MapAssembly(System.Reflection.Assembly);
}
class ResourceAttributes : System.Enum{
Int32 value__;
}
class StrongNameKeyPair : System.__object{
this (System.IO.FileStream);
this (System.Byte[]);
this (System.String);
System.Byte[] get_PublicKey();
}
class TypeAttributes : System.Enum{
Int32 value__;
}
class TypeFilter : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.Boolean Invoke(System.Type,System.__object);
System.IAsyncResult BeginInvoke(System.Type,System.__object,System.AsyncCallback,System.__object);
System.Boolean EndInvoke(System.IAsyncResult);
}
}
