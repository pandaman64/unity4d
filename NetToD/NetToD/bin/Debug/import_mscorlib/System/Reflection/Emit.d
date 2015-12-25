module System.Reflection.Emit;
import System.Reflection;
import System;
import System.Globalization;
import System.Runtime.Serialization;
import System.Resources;
import System.IO;
import System.Security.Policy;
import System.Security;
import System.Security.Permissions;
import System.Runtime.InteropServices;
import System.Diagnostics.SymbolStore;
import System.Security.Cryptography.X509Certificates;
public:
pragma(assembly,"mscorlib"){
class AssemblyBuilder : System.Reflection.Assembly{
static AssemblyBuilder DefineDynamicAssembly(System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess);
ModuleBuilder DefineDynamicModule(System.String);
ModuleBuilder DefineDynamicModule(System.String,System.Boolean);
ModuleBuilder DefineDynamicModule(System.String,System.String);
ModuleBuilder DefineDynamicModule(System.String,System.String,System.Boolean);
IResourceWriter DefineResource(System.String,System.String,System.String);
IResourceWriter DefineResource(System.String,System.String,System.String,System.Reflection.ResourceAttributes);
Void AddResourceFile(System.String,System.String);
Void AddResourceFile(System.String,System.String,System.Reflection.ResourceAttributes);
Boolean Equals(System.Object);
Int32 GetHashCode();
Object[] GetCustomAttributes(System.Boolean);
Object[] GetCustomAttributes(System.Type,System.Boolean);
Boolean IsDefined(System.Type,System.Boolean);
String[] GetManifestResourceNames();
FileStream GetFile(System.String);
FileStream[] GetFiles(System.Boolean);
Stream GetManifestResourceStream(System.Type,System.String);
Stream GetManifestResourceStream(System.String);
ManifestResourceInfo GetManifestResourceInfo(System.String);
String get_Location();
String get_ImageRuntimeVersion();
String get_CodeBase();
MethodInfo get_EntryPoint();
Type[] GetExportedTypes();
AssemblyName GetName(System.Boolean);
String get_FullName();
Type GetType(System.String,System.Boolean,System.Boolean);
Evidence get_Evidence();
PermissionSet get_PermissionSet();
SecurityRuleSet get_SecurityRuleSet();
Module get_ManifestModule();
Boolean get_ReflectionOnly();
Module GetModule(System.String);
AssemblyName[] GetReferencedAssemblies();
Boolean get_GlobalAssemblyCache();
Int64 get_HostContext();
Module[] GetModules(System.Boolean);
Module[] GetLoadedModules(System.Boolean);
Assembly GetSatelliteAssembly(System.Globalization.CultureInfo);
Assembly GetSatelliteAssembly(System.Globalization.CultureInfo,System.Version);
Boolean get_IsDynamic();
Void DefineVersionInfoResource(System.String,System.String,System.String,System.String,System.String);
Void DefineVersionInfoResource();
Void DefineUnmanagedResource(System.Byte[]);
Void DefineUnmanagedResource(System.String);
ModuleBuilder GetDynamicModule(System.String);
Void SetEntryPoint(System.Reflection.MethodInfo);
Void SetEntryPoint(System.Reflection.MethodInfo,System.Reflection.Emit.PEFileKinds);
Void SetCustomAttribute(System.Reflection.ConstructorInfo,System.Byte[]);
Void SetCustomAttribute(System.Reflection.Emit.CustomAttributeBuilder);
Void Save(System.String);
Void Save(System.String,System.Reflection.PortableExecutableKinds,System.Reflection.ImageFileMachine);
}
class AssemblyBuilderAccess : System.Enum{
}
class ConstructorBuilder : System.Reflection.ConstructorInfo{
String ToString();
Module get_Module();
Type get_ReflectedType();
Type get_DeclaringType();
String get_Name();
Object Invoke(System.Object,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object[],System.Globalization.CultureInfo);
ParameterInfo[] GetParameters();
MethodAttributes get_Attributes();
MethodImplAttributes GetMethodImplementationFlags();
RuntimeMethodHandle get_MethodHandle();
Object Invoke(System.Reflection.BindingFlags,System.Reflection.Binder,System.Object[],System.Globalization.CultureInfo);
Object[] GetCustomAttributes(System.Boolean);
Object[] GetCustomAttributes(System.Type,System.Boolean);
Boolean IsDefined(System.Type,System.Boolean);
MethodToken GetToken();
ParameterBuilder DefineParameter(System.Int32,System.Reflection.ParameterAttributes,System.String);
Void SetSymCustomAttribute(System.String,System.Byte[]);
ILGenerator GetILGenerator();
ILGenerator GetILGenerator(System.Int32);
Void AddDeclarativeSecurity(System.Security.Permissions.SecurityAction,System.Security.PermissionSet);
CallingConventions get_CallingConvention();
Module GetModule();
Type get_ReturnType();
String get_Signature();
Void SetCustomAttribute(System.Reflection.ConstructorInfo,System.Byte[]);
Void SetCustomAttribute(System.Reflection.Emit.CustomAttributeBuilder);
Void SetImplementationFlags(System.Reflection.MethodImplAttributes);
Boolean get_InitLocals();
Void set_InitLocals(System.Boolean);
}
class DynamicILInfo : System.Object{
DynamicMethod get_DynamicMethod();
Void SetCode(System.Byte[],System.Int32);
Void SetExceptions(System.Byte[]);
Void SetLocalSignature(System.Byte[]);
Int32 GetTokenFor(System.RuntimeMethodHandle);
Int32 GetTokenFor(System.Reflection.Emit.DynamicMethod);
Int32 GetTokenFor(System.RuntimeMethodHandle,System.RuntimeTypeHandle);
Int32 GetTokenFor(System.RuntimeFieldHandle);
Int32 GetTokenFor(System.RuntimeFieldHandle,System.RuntimeTypeHandle);
Int32 GetTokenFor(System.RuntimeTypeHandle);
Int32 GetTokenFor(System.String);
Int32 GetTokenFor(System.Byte[]);
}
class DynamicMethod : System.Reflection.MethodInfo{
this (System.String,System.Type,System.Type[]);
this (System.String,System.Type,System.Type[],System.Boolean);
this (System.String,System.Type,System.Type[],System.Reflection.Module);
this (System.String,System.Type,System.Type[],System.Reflection.Module,System.Boolean);
this (System.String,System.Reflection.MethodAttributes,System.Reflection.CallingConventions,System.Type,System.Type[],System.Reflection.Module,System.Boolean);
this (System.String,System.Type,System.Type[],System.Type);
this (System.String,System.Type,System.Type[],System.Type,System.Boolean);
this (System.String,System.Reflection.MethodAttributes,System.Reflection.CallingConventions,System.Type,System.Type[],System.Type,System.Boolean);
Delegate CreateDelegate(System.Type);
Delegate CreateDelegate(System.Type,System.Object);
String ToString();
String get_Name();
Type get_DeclaringType();
Type get_ReflectedType();
Module get_Module();
RuntimeMethodHandle get_MethodHandle();
MethodAttributes get_Attributes();
CallingConventions get_CallingConvention();
MethodInfo GetBaseDefinition();
ParameterInfo[] GetParameters();
MethodImplAttributes GetMethodImplementationFlags();
Boolean get_IsSecurityCritical();
Boolean get_IsSecuritySafeCritical();
Boolean get_IsSecurityTransparent();
Object Invoke(System.Object,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object[],System.Globalization.CultureInfo);
Object[] GetCustomAttributes(System.Type,System.Boolean);
Object[] GetCustomAttributes(System.Boolean);
Boolean IsDefined(System.Type,System.Boolean);
Type get_ReturnType();
ParameterInfo get_ReturnParameter();
ICustomAttributeProvider get_ReturnTypeCustomAttributes();
ParameterBuilder DefineParameter(System.Int32,System.Reflection.ParameterAttributes,System.String);
DynamicILInfo GetDynamicILInfo();
ILGenerator GetILGenerator();
ILGenerator GetILGenerator(System.Int32);
Boolean get_InitLocals();
Void set_InitLocals(System.Boolean);
}
class EventBuilder : System.Object{
EventToken GetEventToken();
Void SetAddOnMethod(System.Reflection.Emit.MethodBuilder);
Void SetRemoveOnMethod(System.Reflection.Emit.MethodBuilder);
Void SetRaiseMethod(System.Reflection.Emit.MethodBuilder);
Void AddOtherMethod(System.Reflection.Emit.MethodBuilder);
Void SetCustomAttribute(System.Reflection.ConstructorInfo,System.Byte[]);
Void SetCustomAttribute(System.Reflection.Emit.CustomAttributeBuilder);
}
class EventToken : System.ValueType{
Int32 get_Token();
Int32 GetHashCode();
Boolean Equals(System.Object);
Boolean Equals(System.Reflection.Emit.EventToken);
static Boolean op_Equality(System.Reflection.Emit.EventToken,System.Reflection.Emit.EventToken);
static Boolean op_Inequality(System.Reflection.Emit.EventToken,System.Reflection.Emit.EventToken);
}
class FieldBuilder : System.Reflection.FieldInfo{
Module get_Module();
String get_Name();
Type get_DeclaringType();
Type get_ReflectedType();
Type get_FieldType();
Object GetValue(System.Object);
Void SetValue(System.Object,System.Object,System.Reflection.BindingFlags,System.Reflection.Binder,System.Globalization.CultureInfo);
RuntimeFieldHandle get_FieldHandle();
FieldAttributes get_Attributes();
Object[] GetCustomAttributes(System.Boolean);
Object[] GetCustomAttributes(System.Type,System.Boolean);
Boolean IsDefined(System.Type,System.Boolean);
FieldToken GetToken();
Void SetOffset(System.Int32);
Void SetMarshal(System.Reflection.Emit.UnmanagedMarshal);
Void SetConstant(System.Object);
Void SetCustomAttribute(System.Reflection.ConstructorInfo,System.Byte[]);
Void SetCustomAttribute(System.Reflection.Emit.CustomAttributeBuilder);
}
class FieldToken : System.ValueType{
Int32 get_Token();
Int32 GetHashCode();
Boolean Equals(System.Object);
Boolean Equals(System.Reflection.Emit.FieldToken);
static Boolean op_Equality(System.Reflection.Emit.FieldToken,System.Reflection.Emit.FieldToken);
static Boolean op_Inequality(System.Reflection.Emit.FieldToken,System.Reflection.Emit.FieldToken);
}
class ILGenerator : System.Object{
Void Emit(System.Reflection.Emit.OpCode);
Void Emit(System.Reflection.Emit.OpCode,System.Byte);
Void Emit(System.Reflection.Emit.OpCode,System.SByte);
Void Emit(System.Reflection.Emit.OpCode,System.Int16);
Void Emit(System.Reflection.Emit.OpCode,System.Int32);
Void Emit(System.Reflection.Emit.OpCode,System.Reflection.MethodInfo);
Void EmitCalli(System.Reflection.Emit.OpCode,System.Reflection.CallingConventions,System.Type,System.Type[],System.Type[]);
Void EmitCalli(System.Reflection.Emit.OpCode,System.Runtime.InteropServices.CallingConvention,System.Type,System.Type[]);
Void EmitCall(System.Reflection.Emit.OpCode,System.Reflection.MethodInfo,System.Type[]);
Void Emit(System.Reflection.Emit.OpCode,System.Reflection.Emit.SignatureHelper);
Void Emit(System.Reflection.Emit.OpCode,System.Reflection.ConstructorInfo);
Void Emit(System.Reflection.Emit.OpCode,System.Type);
Void Emit(System.Reflection.Emit.OpCode,System.Int64);
Void Emit(System.Reflection.Emit.OpCode,System.Single);
Void Emit(System.Reflection.Emit.OpCode,System.Double);
Void Emit(System.Reflection.Emit.OpCode,System.Reflection.Emit.Label);
Void Emit(System.Reflection.Emit.OpCode,System.Reflection.Emit.Label[]);
Void Emit(System.Reflection.Emit.OpCode,System.Reflection.FieldInfo);
Void Emit(System.Reflection.Emit.OpCode,System.String);
Void Emit(System.Reflection.Emit.OpCode,System.Reflection.Emit.LocalBuilder);
Label BeginExceptionBlock();
Void EndExceptionBlock();
Void BeginExceptFilterBlock();
Void BeginCatchBlock(System.Type);
Void BeginFaultBlock();
Void BeginFinallyBlock();
Label DefineLabel();
Void MarkLabel(System.Reflection.Emit.Label);
Void ThrowException(System.Type);
Void EmitWriteLine(System.String);
Void EmitWriteLine(System.Reflection.Emit.LocalBuilder);
Void EmitWriteLine(System.Reflection.FieldInfo);
LocalBuilder DeclareLocal(System.Type);
LocalBuilder DeclareLocal(System.Type,System.Boolean);
Void UsingNamespace(System.String);
Void MarkSequencePoint(System.Diagnostics.SymbolStore.ISymbolDocumentWriter,System.Int32,System.Int32,System.Int32,System.Int32);
Void BeginScope();
Void EndScope();
Int32 get_ILOffset();
}
class Label : System.ValueType{
Int32 GetHashCode();
Boolean Equals(System.Object);
Boolean Equals(System.Reflection.Emit.Label);
static Boolean op_Equality(System.Reflection.Emit.Label,System.Reflection.Emit.Label);
static Boolean op_Inequality(System.Reflection.Emit.Label,System.Reflection.Emit.Label);
}
class LocalBuilder : System.Reflection.LocalVariableInfo{
Boolean get_IsPinned();
Type get_LocalType();
Int32 get_LocalIndex();
Void SetLocalSymInfo(System.String);
Void SetLocalSymInfo(System.String,System.Int32,System.Int32);
}
class MethodBuilder : System.Reflection.MethodInfo{
Boolean Equals(System.Object);
Int32 GetHashCode();
String ToString();
String get_Name();
Module get_Module();
Type get_DeclaringType();
ICustomAttributeProvider get_ReturnTypeCustomAttributes();
Type get_ReflectedType();
Object Invoke(System.Object,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object[],System.Globalization.CultureInfo);
MethodImplAttributes GetMethodImplementationFlags();
MethodAttributes get_Attributes();
CallingConventions get_CallingConvention();
RuntimeMethodHandle get_MethodHandle();
Boolean get_IsSecurityCritical();
Boolean get_IsSecuritySafeCritical();
Boolean get_IsSecurityTransparent();
MethodInfo GetBaseDefinition();
Type get_ReturnType();
ParameterInfo[] GetParameters();
ParameterInfo get_ReturnParameter();
Object[] GetCustomAttributes(System.Boolean);
Object[] GetCustomAttributes(System.Type,System.Boolean);
Boolean IsDefined(System.Type,System.Boolean);
Boolean get_IsGenericMethodDefinition();
Boolean get_ContainsGenericParameters();
MethodInfo GetGenericMethodDefinition();
Boolean get_IsGenericMethod();
Type[] GetGenericArguments();
MethodInfo MakeGenericMethod(System.Type[]);
GenericTypeParameterBuilder[] DefineGenericParameters(System.String[]);
MethodToken GetToken();
Void SetParameters(System.Type[]);
Void SetReturnType(System.Type);
Void SetSignature(System.Type,System.Type[],System.Type[],System.Type[],System.Type[][],System.Type[][]);
ParameterBuilder DefineParameter(System.Int32,System.Reflection.ParameterAttributes,System.String);
Void SetMarshal(System.Reflection.Emit.UnmanagedMarshal);
Void SetSymCustomAttribute(System.String,System.Byte[]);
Void AddDeclarativeSecurity(System.Security.Permissions.SecurityAction,System.Security.PermissionSet);
Void CreateMethodBody(System.Byte[],System.Int32);
Void SetImplementationFlags(System.Reflection.MethodImplAttributes);
ILGenerator GetILGenerator();
ILGenerator GetILGenerator(System.Int32);
Boolean get_InitLocals();
Void set_InitLocals(System.Boolean);
Module GetModule();
String get_Signature();
Void SetCustomAttribute(System.Reflection.ConstructorInfo,System.Byte[]);
Void SetCustomAttribute(System.Reflection.Emit.CustomAttributeBuilder);
}
class ExceptionHandler : System.ValueType{
this (System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Reflection.ExceptionHandlingClauseOptions,System.Int32);
Int32 get_ExceptionTypeToken();
Int32 get_TryOffset();
Int32 get_TryLength();
Int32 get_FilterOffset();
Int32 get_HandlerOffset();
Int32 get_HandlerLength();
ExceptionHandlingClauseOptions get_Kind();
Int32 GetHashCode();
Boolean Equals(System.Object);
Boolean Equals(System.Reflection.Emit.ExceptionHandler);
static Boolean op_Equality(System.Reflection.Emit.ExceptionHandler,System.Reflection.Emit.ExceptionHandler);
static Boolean op_Inequality(System.Reflection.Emit.ExceptionHandler,System.Reflection.Emit.ExceptionHandler);
}
class CustomAttributeBuilder : System.Object{
this (System.Reflection.ConstructorInfo,System.Object[]);
this (System.Reflection.ConstructorInfo,System.Object[],System.Reflection.PropertyInfo[],System.Object[]);
this (System.Reflection.ConstructorInfo,System.Object[],System.Reflection.FieldInfo[],System.Object[]);
this (System.Reflection.ConstructorInfo,System.Object[],System.Reflection.PropertyInfo[],System.Object[],System.Reflection.FieldInfo[],System.Object[]);
}
class MethodRental : System.Object{
static Void SwapMethodBody(System.Type,System.Int32,System.IntPtr,System.Int32,System.Int32);
}
class MethodToken : System.ValueType{
Int32 get_Token();
Int32 GetHashCode();
Boolean Equals(System.Object);
Boolean Equals(System.Reflection.Emit.MethodToken);
static Boolean op_Equality(System.Reflection.Emit.MethodToken,System.Reflection.Emit.MethodToken);
static Boolean op_Inequality(System.Reflection.Emit.MethodToken,System.Reflection.Emit.MethodToken);
}
class ModuleBuilder : System.Reflection.Module{
Boolean Equals(System.Object);
Int32 GetHashCode();
Object[] GetCustomAttributes(System.Boolean);
Object[] GetCustomAttributes(System.Type,System.Boolean);
Boolean IsDefined(System.Type,System.Boolean);
Type[] GetTypes();
Type GetType(System.String);
Type GetType(System.String,System.Boolean);
Type GetType(System.String,System.Boolean,System.Boolean);
String get_FullyQualifiedName();
Byte[] ResolveSignature(System.Int32);
MethodBase ResolveMethod(System.Int32,System.Type[],System.Type[]);
FieldInfo ResolveField(System.Int32,System.Type[],System.Type[]);
Type ResolveType(System.Int32,System.Type[],System.Type[]);
MemberInfo ResolveMember(System.Int32,System.Type[],System.Type[]);
String ResolveString(System.Int32);
Int32 get_MDStreamVersion();
Guid get_ModuleVersionId();
Int32 get_MetadataToken();
Boolean IsResource();
FieldInfo[] GetFields(System.Reflection.BindingFlags);
FieldInfo GetField(System.String,System.Reflection.BindingFlags);
MethodInfo[] GetMethods(System.Reflection.BindingFlags);
String get_ScopeName();
String get_Name();
Assembly get_Assembly();
X509Certificate GetSignerCertificate();
TypeBuilder DefineType(System.String);
TypeBuilder DefineType(System.String,System.Reflection.TypeAttributes);
TypeBuilder DefineType(System.String,System.Reflection.TypeAttributes,System.Type);
TypeBuilder DefineType(System.String,System.Reflection.TypeAttributes,System.Type,System.Int32);
TypeBuilder DefineType(System.String,System.Reflection.TypeAttributes,System.Type,System.Reflection.Emit.PackingSize,System.Int32);
TypeBuilder DefineType(System.String,System.Reflection.TypeAttributes,System.Type,System.Type[]);
TypeBuilder DefineType(System.String,System.Reflection.TypeAttributes,System.Type,System.Reflection.Emit.PackingSize);
EnumBuilder DefineEnum(System.String,System.Reflection.TypeAttributes,System.Type);
IResourceWriter DefineResource(System.String,System.String);
IResourceWriter DefineResource(System.String,System.String,System.Reflection.ResourceAttributes);
Void DefineManifestResource(System.String,System.IO.Stream,System.Reflection.ResourceAttributes);
Void DefineUnmanagedResource(System.Byte[]);
Void DefineUnmanagedResource(System.String);
MethodBuilder DefineGlobalMethod(System.String,System.Reflection.MethodAttributes,System.Type,System.Type[]);
MethodBuilder DefineGlobalMethod(System.String,System.Reflection.MethodAttributes,System.Reflection.CallingConventions,System.Type,System.Type[]);
MethodBuilder DefineGlobalMethod(System.String,System.Reflection.MethodAttributes,System.Reflection.CallingConventions,System.Type,System.Type[],System.Type[],System.Type[],System.Type[][],System.Type[][]);
MethodBuilder DefinePInvokeMethod(System.String,System.String,System.Reflection.MethodAttributes,System.Reflection.CallingConventions,System.Type,System.Type[],System.Runtime.InteropServices.CallingConvention,System.Runtime.InteropServices.CharSet);
MethodBuilder DefinePInvokeMethod(System.String,System.String,System.String,System.Reflection.MethodAttributes,System.Reflection.CallingConventions,System.Type,System.Type[],System.Runtime.InteropServices.CallingConvention,System.Runtime.InteropServices.CharSet);
Void CreateGlobalFunctions();
FieldBuilder DefineInitializedData(System.String,System.Byte[],System.Reflection.FieldAttributes);
FieldBuilder DefineUninitializedData(System.String,System.Int32,System.Reflection.FieldAttributes);
TypeToken GetTypeToken(System.Type);
TypeToken GetTypeToken(System.String);
MethodToken GetMethodToken(System.Reflection.MethodInfo);
MethodToken GetArrayMethodToken(System.Type,System.String,System.Reflection.CallingConventions,System.Type,System.Type[]);
MethodInfo GetArrayMethod(System.Type,System.String,System.Reflection.CallingConventions,System.Type,System.Type[]);
MethodToken GetConstructorToken(System.Reflection.ConstructorInfo);
FieldToken GetFieldToken(System.Reflection.FieldInfo);
StringToken GetStringConstant(System.String);
SignatureToken GetSignatureToken(System.Reflection.Emit.SignatureHelper);
SignatureToken GetSignatureToken(System.Byte[],System.Int32);
Void SetCustomAttribute(System.Reflection.ConstructorInfo,System.Byte[]);
Void SetCustomAttribute(System.Reflection.Emit.CustomAttributeBuilder);
ISymbolWriter GetSymWriter();
ISymbolDocumentWriter DefineDocument(System.String,System.Guid,System.Guid,System.Guid);
Void SetUserEntryPoint(System.Reflection.MethodInfo);
Void SetSymCustomAttribute(System.String,System.Byte[]);
Boolean IsTransient();
}
class PEFileKinds : System.Enum{
}
class OpCodes : System.Object{
static Boolean TakesSingleByteArgument(System.Reflection.Emit.OpCode);
}
class OpCode : System.ValueType{
OperandType get_OperandType();
FlowControl get_FlowControl();
OpCodeType get_OpCodeType();
StackBehaviour get_StackBehaviourPop();
StackBehaviour get_StackBehaviourPush();
Int32 get_Size();
Int16 get_Value();
String get_Name();
Boolean Equals(System.Object);
Boolean Equals(System.Reflection.Emit.OpCode);
static Boolean op_Equality(System.Reflection.Emit.OpCode,System.Reflection.Emit.OpCode);
static Boolean op_Inequality(System.Reflection.Emit.OpCode,System.Reflection.Emit.OpCode);
Int32 GetHashCode();
String ToString();
}
class OpCodeType : System.Enum{
}
class StackBehaviour : System.Enum{
}
class OperandType : System.Enum{
}
class FlowControl : System.Enum{
}
class ParameterBuilder : System.Object{
Void SetMarshal(System.Reflection.Emit.UnmanagedMarshal);
Void SetConstant(System.Object);
Void SetCustomAttribute(System.Reflection.ConstructorInfo,System.Byte[]);
Void SetCustomAttribute(System.Reflection.Emit.CustomAttributeBuilder);
ParameterToken GetToken();
String get_Name();
Int32 get_Position();
Int32 get_Attributes();
Boolean get_IsIn();
Boolean get_IsOut();
Boolean get_IsOptional();
}
class ParameterToken : System.ValueType{
Int32 get_Token();
Int32 GetHashCode();
Boolean Equals(System.Object);
Boolean Equals(System.Reflection.Emit.ParameterToken);
static Boolean op_Equality(System.Reflection.Emit.ParameterToken,System.Reflection.Emit.ParameterToken);
static Boolean op_Inequality(System.Reflection.Emit.ParameterToken,System.Reflection.Emit.ParameterToken);
}
class PropertyBuilder : System.Reflection.PropertyInfo{
Void SetConstant(System.Object);
PropertyToken get_PropertyToken();
Module get_Module();
Void SetGetMethod(System.Reflection.Emit.MethodBuilder);
Void SetSetMethod(System.Reflection.Emit.MethodBuilder);
Void AddOtherMethod(System.Reflection.Emit.MethodBuilder);
Void SetCustomAttribute(System.Reflection.ConstructorInfo,System.Byte[]);
Void SetCustomAttribute(System.Reflection.Emit.CustomAttributeBuilder);
Object GetValue(System.Object,System.Object[]);
Object GetValue(System.Object,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object[],System.Globalization.CultureInfo);
Void SetValue(System.Object,System.Object,System.Object[]);
Void SetValue(System.Object,System.Object,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object[],System.Globalization.CultureInfo);
MethodInfo[] GetAccessors(System.Boolean);
MethodInfo GetGetMethod(System.Boolean);
MethodInfo GetSetMethod(System.Boolean);
ParameterInfo[] GetIndexParameters();
Type get_PropertyType();
PropertyAttributes get_Attributes();
Boolean get_CanRead();
Boolean get_CanWrite();
Object[] GetCustomAttributes(System.Boolean);
Object[] GetCustomAttributes(System.Type,System.Boolean);
Boolean IsDefined(System.Type,System.Boolean);
String get_Name();
Type get_DeclaringType();
Type get_ReflectedType();
}
class PropertyToken : System.ValueType{
Int32 get_Token();
Int32 GetHashCode();
Boolean Equals(System.Object);
Boolean Equals(System.Reflection.Emit.PropertyToken);
static Boolean op_Equality(System.Reflection.Emit.PropertyToken,System.Reflection.Emit.PropertyToken);
static Boolean op_Inequality(System.Reflection.Emit.PropertyToken,System.Reflection.Emit.PropertyToken);
}
class SignatureHelper : System.Object{
static SignatureHelper GetMethodSigHelper(System.Reflection.Module,System.Type,System.Type[]);
static SignatureHelper GetMethodSigHelper(System.Reflection.Module,System.Reflection.CallingConventions,System.Type);
static SignatureHelper GetMethodSigHelper(System.Reflection.Module,System.Runtime.InteropServices.CallingConvention,System.Type);
static SignatureHelper GetLocalVarSigHelper();
static SignatureHelper GetMethodSigHelper(System.Reflection.CallingConventions,System.Type);
static SignatureHelper GetMethodSigHelper(System.Runtime.InteropServices.CallingConvention,System.Type);
static SignatureHelper GetLocalVarSigHelper(System.Reflection.Module);
static SignatureHelper GetFieldSigHelper(System.Reflection.Module);
static SignatureHelper GetPropertySigHelper(System.Reflection.Module,System.Type,System.Type[]);
static SignatureHelper GetPropertySigHelper(System.Reflection.Module,System.Type,System.Type[],System.Type[],System.Type[],System.Type[][],System.Type[][]);
static SignatureHelper GetPropertySigHelper(System.Reflection.Module,System.Reflection.CallingConventions,System.Type,System.Type[],System.Type[],System.Type[],System.Type[][],System.Type[][]);
Void AddArgument(System.Type);
Void AddArgument(System.Type,System.Boolean);
Void AddArguments(System.Type[],System.Type[][],System.Type[][]);
Void AddArgument(System.Type,System.Type[],System.Type[]);
Void AddSentinel();
Boolean Equals(System.Object);
Int32 GetHashCode();
Byte[] GetSignature();
String ToString();
}
class SignatureToken : System.ValueType{
Int32 get_Token();
Int32 GetHashCode();
Boolean Equals(System.Object);
Boolean Equals(System.Reflection.Emit.SignatureToken);
static Boolean op_Equality(System.Reflection.Emit.SignatureToken,System.Reflection.Emit.SignatureToken);
static Boolean op_Inequality(System.Reflection.Emit.SignatureToken,System.Reflection.Emit.SignatureToken);
}
class StringToken : System.ValueType{
Int32 get_Token();
Int32 GetHashCode();
Boolean Equals(System.Object);
Boolean Equals(System.Reflection.Emit.StringToken);
static Boolean op_Equality(System.Reflection.Emit.StringToken,System.Reflection.Emit.StringToken);
static Boolean op_Inequality(System.Reflection.Emit.StringToken,System.Reflection.Emit.StringToken);
}
class PackingSize : System.Enum{
}
class TypeBuilder : System.Reflection.TypeInfo{
Boolean IsAssignableFrom(System.Reflection.TypeInfo);
static MethodInfo GetMethod(System.Type,System.Reflection.MethodInfo);
static ConstructorInfo GetConstructor(System.Type,System.Reflection.ConstructorInfo);
static FieldInfo GetField(System.Type,System.Reflection.FieldInfo);
Boolean IsCreated();
String ToString();
Type get_DeclaringType();
Type get_ReflectedType();
String get_Name();
Module get_Module();
Guid get_GUID();
Object InvokeMember(System.String,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object,System.Object[],System.Reflection.ParameterModifier[],System.Globalization.CultureInfo,System.String[]);
Assembly get_Assembly();
RuntimeTypeHandle get_TypeHandle();
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
Type[] GetNestedTypes(System.Reflection.BindingFlags);
Type GetNestedType(System.String,System.Reflection.BindingFlags);
MemberInfo[] GetMember(System.String,System.Reflection.MemberTypes,System.Reflection.BindingFlags);
InterfaceMapping GetInterfaceMap(System.Type);
EventInfo[] GetEvents(System.Reflection.BindingFlags);
MemberInfo[] GetMembers(System.Reflection.BindingFlags);
Boolean IsAssignableFrom(System.Type);
Type GetElementType();
Boolean get_IsSecurityCritical();
Boolean get_IsSecuritySafeCritical();
Boolean get_IsSecurityTransparent();
Boolean IsSubclassOf(System.Type);
Type get_UnderlyingSystemType();
Type MakePointerType();
Type MakeByRefType();
Type MakeArrayType();
Type MakeArrayType(System.Int32);
Object[] GetCustomAttributes(System.Boolean);
Object[] GetCustomAttributes(System.Type,System.Boolean);
Boolean IsDefined(System.Type,System.Boolean);
GenericParameterAttributes get_GenericParameterAttributes();
GenericTypeParameterBuilder[] DefineGenericParameters(System.String[]);
Type MakeGenericType(System.Type[]);
Type[] GetGenericArguments();
Boolean get_IsGenericTypeDefinition();
Boolean get_IsGenericType();
Boolean get_IsGenericParameter();
Boolean get_IsConstructedGenericType();
Int32 get_GenericParameterPosition();
MethodBase get_DeclaringMethod();
Type GetGenericTypeDefinition();
Void DefineMethodOverride(System.Reflection.MethodInfo,System.Reflection.MethodInfo);
MethodBuilder DefineMethod(System.String,System.Reflection.MethodAttributes,System.Type,System.Type[]);
MethodBuilder DefineMethod(System.String,System.Reflection.MethodAttributes);
MethodBuilder DefineMethod(System.String,System.Reflection.MethodAttributes,System.Reflection.CallingConventions);
MethodBuilder DefineMethod(System.String,System.Reflection.MethodAttributes,System.Reflection.CallingConventions,System.Type,System.Type[]);
MethodBuilder DefineMethod(System.String,System.Reflection.MethodAttributes,System.Reflection.CallingConventions,System.Type,System.Type[],System.Type[],System.Type[],System.Type[][],System.Type[][]);
ConstructorBuilder DefineTypeInitializer();
ConstructorBuilder DefineDefaultConstructor(System.Reflection.MethodAttributes);
ConstructorBuilder DefineConstructor(System.Reflection.MethodAttributes,System.Reflection.CallingConventions,System.Type[]);
ConstructorBuilder DefineConstructor(System.Reflection.MethodAttributes,System.Reflection.CallingConventions,System.Type[],System.Type[][],System.Type[][]);
MethodBuilder DefinePInvokeMethod(System.String,System.String,System.Reflection.MethodAttributes,System.Reflection.CallingConventions,System.Type,System.Type[],System.Runtime.InteropServices.CallingConvention,System.Runtime.InteropServices.CharSet);
MethodBuilder DefinePInvokeMethod(System.String,System.String,System.String,System.Reflection.MethodAttributes,System.Reflection.CallingConventions,System.Type,System.Type[],System.Runtime.InteropServices.CallingConvention,System.Runtime.InteropServices.CharSet);
MethodBuilder DefinePInvokeMethod(System.String,System.String,System.String,System.Reflection.MethodAttributes,System.Reflection.CallingConventions,System.Type,System.Type[],System.Type[],System.Type[],System.Type[][],System.Type[][],System.Runtime.InteropServices.CallingConvention,System.Runtime.InteropServices.CharSet);
TypeBuilder DefineNestedType(System.String);
TypeBuilder DefineNestedType(System.String,System.Reflection.TypeAttributes,System.Type,System.Type[]);
TypeBuilder DefineNestedType(System.String,System.Reflection.TypeAttributes,System.Type);
TypeBuilder DefineNestedType(System.String,System.Reflection.TypeAttributes);
TypeBuilder DefineNestedType(System.String,System.Reflection.TypeAttributes,System.Type,System.Int32);
TypeBuilder DefineNestedType(System.String,System.Reflection.TypeAttributes,System.Type,System.Reflection.Emit.PackingSize);
TypeBuilder DefineNestedType(System.String,System.Reflection.TypeAttributes,System.Type,System.Reflection.Emit.PackingSize,System.Int32);
FieldBuilder DefineField(System.String,System.Type,System.Reflection.FieldAttributes);
FieldBuilder DefineField(System.String,System.Type,System.Type[],System.Type[],System.Reflection.FieldAttributes);
FieldBuilder DefineInitializedData(System.String,System.Byte[],System.Reflection.FieldAttributes);
FieldBuilder DefineUninitializedData(System.String,System.Int32,System.Reflection.FieldAttributes);
PropertyBuilder DefineProperty(System.String,System.Reflection.PropertyAttributes,System.Type,System.Type[]);
PropertyBuilder DefineProperty(System.String,System.Reflection.PropertyAttributes,System.Reflection.CallingConventions,System.Type,System.Type[]);
PropertyBuilder DefineProperty(System.String,System.Reflection.PropertyAttributes,System.Type,System.Type[],System.Type[],System.Type[],System.Type[][],System.Type[][]);
PropertyBuilder DefineProperty(System.String,System.Reflection.PropertyAttributes,System.Reflection.CallingConventions,System.Type,System.Type[],System.Type[],System.Type[],System.Type[][],System.Type[][]);
EventBuilder DefineEvent(System.String,System.Reflection.EventAttributes,System.Type);
TypeInfo CreateTypeInfo();
Type CreateType();
Int32 get_Size();
PackingSize get_PackingSize();
Void SetParent(System.Type);
Void AddInterfaceImplementation(System.Type);
Void AddDeclarativeSecurity(System.Security.Permissions.SecurityAction,System.Security.PermissionSet);
TypeToken get_TypeToken();
Void SetCustomAttribute(System.Reflection.ConstructorInfo,System.Byte[]);
Void SetCustomAttribute(System.Reflection.Emit.CustomAttributeBuilder);
}
class GenericTypeParameterBuilder : System.Reflection.TypeInfo{
Boolean IsAssignableFrom(System.Reflection.TypeInfo);
String ToString();
Boolean Equals(System.Object);
Int32 GetHashCode();
Type get_DeclaringType();
Type get_ReflectedType();
String get_Name();
Module get_Module();
Type MakePointerType();
Type MakeByRefType();
Type MakeArrayType();
Type MakeArrayType(System.Int32);
Guid get_GUID();
Object InvokeMember(System.String,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object,System.Object[],System.Reflection.ParameterModifier[],System.Globalization.CultureInfo,System.String[]);
Assembly get_Assembly();
RuntimeTypeHandle get_TypeHandle();
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
Type[] GetNestedTypes(System.Reflection.BindingFlags);
Type GetNestedType(System.String,System.Reflection.BindingFlags);
MemberInfo[] GetMember(System.String,System.Reflection.MemberTypes,System.Reflection.BindingFlags);
InterfaceMapping GetInterfaceMap(System.Type);
EventInfo[] GetEvents(System.Reflection.BindingFlags);
MemberInfo[] GetMembers(System.Reflection.BindingFlags);
Type GetElementType();
Type get_UnderlyingSystemType();
Type[] GetGenericArguments();
Boolean get_IsGenericTypeDefinition();
Boolean get_IsGenericType();
Boolean get_IsGenericParameter();
Boolean get_IsConstructedGenericType();
Int32 get_GenericParameterPosition();
Boolean get_ContainsGenericParameters();
GenericParameterAttributes get_GenericParameterAttributes();
MethodBase get_DeclaringMethod();
Type GetGenericTypeDefinition();
Type MakeGenericType(System.Type[]);
Boolean IsAssignableFrom(System.Type);
Boolean IsSubclassOf(System.Type);
Object[] GetCustomAttributes(System.Boolean);
Object[] GetCustomAttributes(System.Type,System.Boolean);
Boolean IsDefined(System.Type,System.Boolean);
Void SetCustomAttribute(System.Reflection.ConstructorInfo,System.Byte[]);
Void SetCustomAttribute(System.Reflection.Emit.CustomAttributeBuilder);
Void SetBaseTypeConstraint(System.Type);
Void SetInterfaceConstraints(System.Type[]);
Void SetGenericParameterAttributes(System.Reflection.GenericParameterAttributes);
}
class EnumBuilder : System.Reflection.TypeInfo{
Boolean IsAssignableFrom(System.Reflection.TypeInfo);
FieldBuilder DefineLiteral(System.String,System.Object);
TypeInfo CreateTypeInfo();
Type CreateType();
TypeToken get_TypeToken();
FieldBuilder get_UnderlyingField();
String get_Name();
Guid get_GUID();
Object InvokeMember(System.String,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object,System.Object[],System.Reflection.ParameterModifier[],System.Globalization.CultureInfo,System.String[]);
Module get_Module();
Assembly get_Assembly();
RuntimeTypeHandle get_TypeHandle();
String get_FullName();
String get_AssemblyQualifiedName();
String get_Namespace();
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
Type[] GetNestedTypes(System.Reflection.BindingFlags);
Type GetNestedType(System.String,System.Reflection.BindingFlags);
MemberInfo[] GetMember(System.String,System.Reflection.MemberTypes,System.Reflection.BindingFlags);
MemberInfo[] GetMembers(System.Reflection.BindingFlags);
InterfaceMapping GetInterfaceMap(System.Type);
EventInfo[] GetEvents(System.Reflection.BindingFlags);
Boolean get_IsConstructedGenericType();
Type GetElementType();
Type GetEnumUnderlyingType();
Type get_UnderlyingSystemType();
Object[] GetCustomAttributes(System.Boolean);
Object[] GetCustomAttributes(System.Type,System.Boolean);
Void SetCustomAttribute(System.Reflection.ConstructorInfo,System.Byte[]);
Void SetCustomAttribute(System.Reflection.Emit.CustomAttributeBuilder);
Type get_DeclaringType();
Type get_ReflectedType();
Boolean IsDefined(System.Type,System.Boolean);
Type MakePointerType();
Type MakeByRefType();
Type MakeArrayType();
Type MakeArrayType(System.Int32);
}
class TypeToken : System.ValueType{
Int32 get_Token();
Int32 GetHashCode();
Boolean Equals(System.Object);
Boolean Equals(System.Reflection.Emit.TypeToken);
static Boolean op_Equality(System.Reflection.Emit.TypeToken,System.Reflection.Emit.TypeToken);
static Boolean op_Inequality(System.Reflection.Emit.TypeToken,System.Reflection.Emit.TypeToken);
}
class UnmanagedMarshal : System.Object{
static UnmanagedMarshal DefineUnmanagedMarshal(System.Runtime.InteropServices.UnmanagedType);
static UnmanagedMarshal DefineByValTStr(System.Int32);
static UnmanagedMarshal DefineSafeArray(System.Runtime.InteropServices.UnmanagedType);
static UnmanagedMarshal DefineByValArray(System.Int32);
static UnmanagedMarshal DefineLPArray(System.Runtime.InteropServices.UnmanagedType);
UnmanagedType get_GetUnmanagedType();
Guid get_IIDGuid();
Int32 get_ElementCount();
UnmanagedType get_BaseType();
}
}
