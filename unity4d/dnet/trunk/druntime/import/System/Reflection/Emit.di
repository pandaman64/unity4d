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
static System.Reflection.Emit.AssemblyBuilder DefineDynamicAssembly(System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess);
System.Reflection.Emit.ModuleBuilder DefineDynamicModule(System.String);
System.Reflection.Emit.ModuleBuilder DefineDynamicModule(System.String,System.Boolean);
System.Reflection.Emit.ModuleBuilder DefineDynamicModule(System.String,System.String);
System.Reflection.Emit.ModuleBuilder DefineDynamicModule(System.String,System.String,System.Boolean);
System.Resources.IResourceWriter DefineResource(System.String,System.String,System.String);
System.Resources.IResourceWriter DefineResource(System.String,System.String,System.String,System.Reflection.ResourceAttributes);
System.Void AddResourceFile(System.String,System.String);
System.Void AddResourceFile(System.String,System.String,System.Reflection.ResourceAttributes);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.__object[] GetCustomAttributes(System.Boolean);
System.__object[] GetCustomAttributes(System.Type,System.Boolean);
System.Boolean IsDefined(System.Type,System.Boolean);
System.String[] GetManifestResourceNames();
System.IO.FileStream GetFile(System.String);
System.IO.FileStream[] GetFiles(System.Boolean);
System.IO.Stream GetManifestResourceStream(System.Type,System.String);
System.IO.Stream GetManifestResourceStream(System.String);
System.Reflection.ManifestResourceInfo GetManifestResourceInfo(System.String);
System.String get_Location();
System.String get_ImageRuntimeVersion();
System.String get_CodeBase();
System.Reflection.MethodInfo get_EntryPoint();
System.Type[] GetExportedTypes();
System.Reflection.AssemblyName GetName(System.Boolean);
System.String get_FullName();
System.Type GetType(System.String,System.Boolean,System.Boolean);
System.Security.Policy.Evidence get_Evidence();
System.Security.PermissionSet get_PermissionSet();
System.Security.SecurityRuleSet get_SecurityRuleSet();
System.Reflection.Module get_ManifestModule();
System.Boolean get_ReflectionOnly();
System.Reflection.Module GetModule(System.String);
System.Reflection.AssemblyName[] GetReferencedAssemblies();
System.Boolean get_GlobalAssemblyCache();
System.Int64 get_HostContext();
System.Reflection.Module[] GetModules(System.Boolean);
System.Reflection.Module[] GetLoadedModules(System.Boolean);
System.Reflection.Assembly GetSatelliteAssembly(System.Globalization.CultureInfo);
System.Reflection.Assembly GetSatelliteAssembly(System.Globalization.CultureInfo,System.Version);
System.Boolean get_IsDynamic();
System.Void DefineVersionInfoResource(System.String,System.String,System.String,System.String,System.String);
System.Void DefineVersionInfoResource();
System.Void DefineUnmanagedResource(System.Byte[]);
System.Void DefineUnmanagedResource(System.String);
System.Reflection.Emit.ModuleBuilder GetDynamicModule(System.String);
System.Void SetEntryPoint(System.Reflection.MethodInfo);
System.Void SetEntryPoint(System.Reflection.MethodInfo,System.Reflection.Emit.PEFileKinds);
System.Void SetCustomAttribute(System.Reflection.ConstructorInfo,System.Byte[]);
System.Void SetCustomAttribute(System.Reflection.Emit.CustomAttributeBuilder);
System.Void Save(System.String);
System.Void Save(System.String,System.Reflection.PortableExecutableKinds,System.Reflection.ImageFileMachine);
}
class AssemblyBuilderAccess : System.Enum{
}
class ConstructorBuilder : System.Reflection.ConstructorInfo{
System.String ToString();
System.Reflection.Module get_Module();
System.Type get_ReflectedType();
System.Type get_DeclaringType();
System.String get_Name();
System.__object Invoke(System.__object,System.Reflection.BindingFlags,System.Reflection.Binder,System.__object[],System.Globalization.CultureInfo);
System.Reflection.ParameterInfo[] GetParameters();
System.Reflection.MethodAttributes get_Attributes();
System.Reflection.MethodImplAttributes GetMethodImplementationFlags();
System.RuntimeMethodHandle get_MethodHandle();
System.__object Invoke(System.Reflection.BindingFlags,System.Reflection.Binder,System.__object[],System.Globalization.CultureInfo);
System.__object[] GetCustomAttributes(System.Boolean);
System.__object[] GetCustomAttributes(System.Type,System.Boolean);
System.Boolean IsDefined(System.Type,System.Boolean);
System.Reflection.Emit.MethodToken GetToken();
System.Reflection.Emit.ParameterBuilder DefineParameter(System.Int32,System.Reflection.ParameterAttributes,System.String);
System.Void SetSymCustomAttribute(System.String,System.Byte[]);
System.Reflection.Emit.ILGenerator GetILGenerator();
System.Reflection.Emit.ILGenerator GetILGenerator(System.Int32);
System.Void AddDeclarativeSecurity(System.Security.Permissions.SecurityAction,System.Security.PermissionSet);
System.Reflection.CallingConventions get_CallingConvention();
System.Reflection.Module GetModule();
System.Type get_ReturnType();
System.String get_Signature();
System.Void SetCustomAttribute(System.Reflection.ConstructorInfo,System.Byte[]);
System.Void SetCustomAttribute(System.Reflection.Emit.CustomAttributeBuilder);
System.Void SetImplementationFlags(System.Reflection.MethodImplAttributes);
System.Boolean get_InitLocals();
System.Void set_InitLocals(System.Boolean);
}
class DynamicILInfo : System.__object{
System.Reflection.Emit.DynamicMethod get_DynamicMethod();
System.Void SetCode(System.Byte[],System.Int32);
System.Void SetExceptions(System.Byte[]);
System.Void SetLocalSignature(System.Byte[]);
System.Int32 GetTokenFor(System.RuntimeMethodHandle);
System.Int32 GetTokenFor(System.Reflection.Emit.DynamicMethod);
System.Int32 GetTokenFor(System.RuntimeMethodHandle,System.RuntimeTypeHandle);
System.Int32 GetTokenFor(System.RuntimeFieldHandle);
System.Int32 GetTokenFor(System.RuntimeFieldHandle,System.RuntimeTypeHandle);
System.Int32 GetTokenFor(System.RuntimeTypeHandle);
System.Int32 GetTokenFor(System.String);
System.Int32 GetTokenFor(System.Byte[]);
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
System.Delegate CreateDelegate(System.Type);
System.Delegate CreateDelegate(System.Type,System.__object);
System.String ToString();
System.String get_Name();
System.Type get_DeclaringType();
System.Type get_ReflectedType();
System.Reflection.Module get_Module();
System.RuntimeMethodHandle get_MethodHandle();
System.Reflection.MethodAttributes get_Attributes();
System.Reflection.CallingConventions get_CallingConvention();
System.Reflection.MethodInfo GetBaseDefinition();
System.Reflection.ParameterInfo[] GetParameters();
System.Reflection.MethodImplAttributes GetMethodImplementationFlags();
System.Boolean get_IsSecurityCritical();
System.Boolean get_IsSecuritySafeCritical();
System.Boolean get_IsSecurityTransparent();
System.__object Invoke(System.__object,System.Reflection.BindingFlags,System.Reflection.Binder,System.__object[],System.Globalization.CultureInfo);
System.__object[] GetCustomAttributes(System.Type,System.Boolean);
System.__object[] GetCustomAttributes(System.Boolean);
System.Boolean IsDefined(System.Type,System.Boolean);
System.Type get_ReturnType();
System.Reflection.ParameterInfo get_ReturnParameter();
System.Reflection.ICustomAttributeProvider get_ReturnTypeCustomAttributes();
System.Reflection.Emit.ParameterBuilder DefineParameter(System.Int32,System.Reflection.ParameterAttributes,System.String);
System.Reflection.Emit.DynamicILInfo GetDynamicILInfo();
System.Reflection.Emit.ILGenerator GetILGenerator();
System.Reflection.Emit.ILGenerator GetILGenerator(System.Int32);
System.Boolean get_InitLocals();
System.Void set_InitLocals(System.Boolean);
}
class EventBuilder : System.__object{
System.Reflection.Emit.EventToken GetEventToken();
System.Void SetAddOnMethod(System.Reflection.Emit.MethodBuilder);
System.Void SetRemoveOnMethod(System.Reflection.Emit.MethodBuilder);
System.Void SetRaiseMethod(System.Reflection.Emit.MethodBuilder);
System.Void AddOtherMethod(System.Reflection.Emit.MethodBuilder);
System.Void SetCustomAttribute(System.Reflection.ConstructorInfo,System.Byte[]);
System.Void SetCustomAttribute(System.Reflection.Emit.CustomAttributeBuilder);
}
class EventToken : System.ValueType{
System.Int32 get_Token();
System.Int32 GetHashCode();
System.Boolean Equals(System.__object);
System.Boolean Equals(System.Reflection.Emit.EventToken);
static System.Boolean op_Equality(System.Reflection.Emit.EventToken,System.Reflection.Emit.EventToken);
static System.Boolean op_Inequality(System.Reflection.Emit.EventToken,System.Reflection.Emit.EventToken);
}
class FieldBuilder : System.Reflection.FieldInfo{
System.Reflection.Module get_Module();
System.String get_Name();
System.Type get_DeclaringType();
System.Type get_ReflectedType();
System.Type get_FieldType();
System.__object GetValue(System.__object);
System.Void SetValue(System.__object,System.__object,System.Reflection.BindingFlags,System.Reflection.Binder,System.Globalization.CultureInfo);
System.RuntimeFieldHandle get_FieldHandle();
System.Reflection.FieldAttributes get_Attributes();
System.__object[] GetCustomAttributes(System.Boolean);
System.__object[] GetCustomAttributes(System.Type,System.Boolean);
System.Boolean IsDefined(System.Type,System.Boolean);
System.Reflection.Emit.FieldToken GetToken();
System.Void SetOffset(System.Int32);
System.Void SetMarshal(System.Reflection.Emit.UnmanagedMarshal);
System.Void SetConstant(System.__object);
System.Void SetCustomAttribute(System.Reflection.ConstructorInfo,System.Byte[]);
System.Void SetCustomAttribute(System.Reflection.Emit.CustomAttributeBuilder);
}
class FieldToken : System.ValueType{
System.Int32 get_Token();
System.Int32 GetHashCode();
System.Boolean Equals(System.__object);
System.Boolean Equals(System.Reflection.Emit.FieldToken);
static System.Boolean op_Equality(System.Reflection.Emit.FieldToken,System.Reflection.Emit.FieldToken);
static System.Boolean op_Inequality(System.Reflection.Emit.FieldToken,System.Reflection.Emit.FieldToken);
}
class ILGenerator : System.__object{
System.Void Emit(System.Reflection.Emit.OpCode);
System.Void Emit(System.Reflection.Emit.OpCode,System.Byte);
System.Void Emit(System.Reflection.Emit.OpCode,System.SByte);
System.Void Emit(System.Reflection.Emit.OpCode,System.Int16);
System.Void Emit(System.Reflection.Emit.OpCode,System.Int32);
System.Void Emit(System.Reflection.Emit.OpCode,System.Reflection.MethodInfo);
System.Void EmitCalli(System.Reflection.Emit.OpCode,System.Reflection.CallingConventions,System.Type,System.Type[],System.Type[]);
System.Void EmitCalli(System.Reflection.Emit.OpCode,System.Runtime.InteropServices.CallingConvention,System.Type,System.Type[]);
System.Void EmitCall(System.Reflection.Emit.OpCode,System.Reflection.MethodInfo,System.Type[]);
System.Void Emit(System.Reflection.Emit.OpCode,System.Reflection.Emit.SignatureHelper);
System.Void Emit(System.Reflection.Emit.OpCode,System.Reflection.ConstructorInfo);
System.Void Emit(System.Reflection.Emit.OpCode,System.Type);
System.Void Emit(System.Reflection.Emit.OpCode,System.Int64);
System.Void Emit(System.Reflection.Emit.OpCode,System.Single);
System.Void Emit(System.Reflection.Emit.OpCode,System.Double);
System.Void Emit(System.Reflection.Emit.OpCode,System.Reflection.Emit.Label);
System.Void Emit(System.Reflection.Emit.OpCode,System.Reflection.Emit.Label[]);
System.Void Emit(System.Reflection.Emit.OpCode,System.Reflection.FieldInfo);
System.Void Emit(System.Reflection.Emit.OpCode,System.String);
System.Void Emit(System.Reflection.Emit.OpCode,System.Reflection.Emit.LocalBuilder);
System.Reflection.Emit.Label BeginExceptionBlock();
System.Void EndExceptionBlock();
System.Void BeginExceptFilterBlock();
System.Void BeginCatchBlock(System.Type);
System.Void BeginFaultBlock();
System.Void BeginFinallyBlock();
System.Reflection.Emit.Label DefineLabel();
System.Void MarkLabel(System.Reflection.Emit.Label);
System.Void ThrowException(System.Type);
System.Void EmitWriteLine(System.String);
System.Void EmitWriteLine(System.Reflection.Emit.LocalBuilder);
System.Void EmitWriteLine(System.Reflection.FieldInfo);
System.Reflection.Emit.LocalBuilder DeclareLocal(System.Type);
System.Reflection.Emit.LocalBuilder DeclareLocal(System.Type,System.Boolean);
System.Void UsingNamespace(System.String);
System.Void MarkSequencePoint(System.Diagnostics.SymbolStore.ISymbolDocumentWriter,System.Int32,System.Int32,System.Int32,System.Int32);
System.Void BeginScope();
System.Void EndScope();
System.Int32 get_ILOffset();
}
class Label : System.ValueType{
System.Int32 GetHashCode();
System.Boolean Equals(System.__object);
System.Boolean Equals(System.Reflection.Emit.Label);
static System.Boolean op_Equality(System.Reflection.Emit.Label,System.Reflection.Emit.Label);
static System.Boolean op_Inequality(System.Reflection.Emit.Label,System.Reflection.Emit.Label);
}
class LocalBuilder : System.Reflection.LocalVariableInfo{
System.Boolean get_IsPinned();
System.Type get_LocalType();
System.Int32 get_LocalIndex();
System.Void SetLocalSymInfo(System.String);
System.Void SetLocalSymInfo(System.String,System.Int32,System.Int32);
}
class MethodBuilder : System.Reflection.MethodInfo{
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.String ToString();
System.String get_Name();
System.Reflection.Module get_Module();
System.Type get_DeclaringType();
System.Reflection.ICustomAttributeProvider get_ReturnTypeCustomAttributes();
System.Type get_ReflectedType();
System.__object Invoke(System.__object,System.Reflection.BindingFlags,System.Reflection.Binder,System.__object[],System.Globalization.CultureInfo);
System.Reflection.MethodImplAttributes GetMethodImplementationFlags();
System.Reflection.MethodAttributes get_Attributes();
System.Reflection.CallingConventions get_CallingConvention();
System.RuntimeMethodHandle get_MethodHandle();
System.Boolean get_IsSecurityCritical();
System.Boolean get_IsSecuritySafeCritical();
System.Boolean get_IsSecurityTransparent();
System.Reflection.MethodInfo GetBaseDefinition();
System.Type get_ReturnType();
System.Reflection.ParameterInfo[] GetParameters();
System.Reflection.ParameterInfo get_ReturnParameter();
System.__object[] GetCustomAttributes(System.Boolean);
System.__object[] GetCustomAttributes(System.Type,System.Boolean);
System.Boolean IsDefined(System.Type,System.Boolean);
System.Boolean get_IsGenericMethodDefinition();
System.Boolean get_ContainsGenericParameters();
System.Reflection.MethodInfo GetGenericMethodDefinition();
System.Boolean get_IsGenericMethod();
System.Type[] GetGenericArguments();
System.Reflection.MethodInfo MakeGenericMethod(System.Type[]);
System.Reflection.Emit.MethodToken GetToken();
System.Void SetParameters(System.Type[]);
System.Void SetReturnType(System.Type);
System.Void SetSignature(System.Type,System.Type[],System.Type[],System.Type[],System.Type[][],System.Type[][]);
System.Reflection.Emit.ParameterBuilder DefineParameter(System.Int32,System.Reflection.ParameterAttributes,System.String);
System.Void SetMarshal(System.Reflection.Emit.UnmanagedMarshal);
System.Void SetSymCustomAttribute(System.String,System.Byte[]);
System.Void AddDeclarativeSecurity(System.Security.Permissions.SecurityAction,System.Security.PermissionSet);
System.Void CreateMethodBody(System.Byte[],System.Int32);
System.Void SetImplementationFlags(System.Reflection.MethodImplAttributes);
System.Reflection.Emit.ILGenerator GetILGenerator();
System.Reflection.Emit.ILGenerator GetILGenerator(System.Int32);
System.Boolean get_InitLocals();
System.Void set_InitLocals(System.Boolean);
System.Reflection.Module GetModule();
System.String get_Signature();
System.Void SetCustomAttribute(System.Reflection.ConstructorInfo,System.Byte[]);
System.Void SetCustomAttribute(System.Reflection.Emit.CustomAttributeBuilder);
}
class ExceptionHandler : System.ValueType{
this (System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Reflection.ExceptionHandlingClauseOptions,System.Int32);
System.Int32 get_ExceptionTypeToken();
System.Int32 get_TryOffset();
System.Int32 get_TryLength();
System.Int32 get_FilterOffset();
System.Int32 get_HandlerOffset();
System.Int32 get_HandlerLength();
System.Reflection.ExceptionHandlingClauseOptions get_Kind();
System.Int32 GetHashCode();
System.Boolean Equals(System.__object);
System.Boolean Equals(System.Reflection.Emit.ExceptionHandler);
static System.Boolean op_Equality(System.Reflection.Emit.ExceptionHandler,System.Reflection.Emit.ExceptionHandler);
static System.Boolean op_Inequality(System.Reflection.Emit.ExceptionHandler,System.Reflection.Emit.ExceptionHandler);
}
class CustomAttributeBuilder : System.__object{
this (System.Reflection.ConstructorInfo,System.__object[]);
this (System.Reflection.ConstructorInfo,System.__object[],System.Reflection.PropertyInfo[],System.__object[]);
this (System.Reflection.ConstructorInfo,System.__object[],System.Reflection.FieldInfo[],System.__object[]);
this (System.Reflection.ConstructorInfo,System.__object[],System.Reflection.PropertyInfo[],System.__object[],System.Reflection.FieldInfo[],System.__object[]);
}
class MethodRental : System.__object{
static System.Void SwapMethodBody(System.Type,System.Int32,System.IntPtr,System.Int32,System.Int32);
}
class MethodToken : System.ValueType{
System.Int32 get_Token();
System.Int32 GetHashCode();
System.Boolean Equals(System.__object);
System.Boolean Equals(System.Reflection.Emit.MethodToken);
static System.Boolean op_Equality(System.Reflection.Emit.MethodToken,System.Reflection.Emit.MethodToken);
static System.Boolean op_Inequality(System.Reflection.Emit.MethodToken,System.Reflection.Emit.MethodToken);
}
class ModuleBuilder : System.Reflection.Module{
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.__object[] GetCustomAttributes(System.Boolean);
System.__object[] GetCustomAttributes(System.Type,System.Boolean);
System.Boolean IsDefined(System.Type,System.Boolean);
System.Type[] GetTypes();
System.Type GetType(System.String);
System.Type GetType(System.String,System.Boolean);
System.Type GetType(System.String,System.Boolean,System.Boolean);
System.String get_FullyQualifiedName();
System.Byte[] ResolveSignature(System.Int32);
System.Reflection.MethodBase ResolveMethod(System.Int32,System.Type[],System.Type[]);
System.Reflection.FieldInfo ResolveField(System.Int32,System.Type[],System.Type[]);
System.Type ResolveType(System.Int32,System.Type[],System.Type[]);
System.Reflection.MemberInfo ResolveMember(System.Int32,System.Type[],System.Type[]);
System.String ResolveString(System.Int32);
System.Int32 get_MDStreamVersion();
System.Guid get_ModuleVersionId();
System.Int32 get_MetadataToken();
System.Boolean IsResource();
System.Reflection.FieldInfo[] GetFields(System.Reflection.BindingFlags);
System.Reflection.FieldInfo GetField(System.String,System.Reflection.BindingFlags);
System.Reflection.MethodInfo[] GetMethods(System.Reflection.BindingFlags);
System.String get_ScopeName();
System.String get_Name();
System.Reflection.Assembly get_Assembly();
System.Security.Cryptography.X509Certificates.X509Certificate GetSignerCertificate();
System.Resources.IResourceWriter DefineResource(System.String,System.String);
System.Resources.IResourceWriter DefineResource(System.String,System.String,System.Reflection.ResourceAttributes);
System.Void DefineManifestResource(System.String,System.IO.Stream,System.Reflection.ResourceAttributes);
System.Void DefineUnmanagedResource(System.Byte[]);
System.Void DefineUnmanagedResource(System.String);
System.Reflection.Emit.MethodBuilder DefineGlobalMethod(System.String,System.Reflection.MethodAttributes,System.Type,System.Type[]);
System.Reflection.Emit.MethodBuilder DefineGlobalMethod(System.String,System.Reflection.MethodAttributes,System.Reflection.CallingConventions,System.Type,System.Type[]);
System.Reflection.Emit.MethodBuilder DefineGlobalMethod(System.String,System.Reflection.MethodAttributes,System.Reflection.CallingConventions,System.Type,System.Type[],System.Type[],System.Type[],System.Type[][],System.Type[][]);
System.Reflection.Emit.MethodBuilder DefinePInvokeMethod(System.String,System.String,System.Reflection.MethodAttributes,System.Reflection.CallingConventions,System.Type,System.Type[],System.Runtime.InteropServices.CallingConvention,System.Runtime.InteropServices.CharSet);
System.Reflection.Emit.MethodBuilder DefinePInvokeMethod(System.String,System.String,System.String,System.Reflection.MethodAttributes,System.Reflection.CallingConventions,System.Type,System.Type[],System.Runtime.InteropServices.CallingConvention,System.Runtime.InteropServices.CharSet);
System.Void CreateGlobalFunctions();
System.Reflection.Emit.FieldBuilder DefineInitializedData(System.String,System.Byte[],System.Reflection.FieldAttributes);
System.Reflection.Emit.FieldBuilder DefineUninitializedData(System.String,System.Int32,System.Reflection.FieldAttributes);
System.Reflection.Emit.TypeToken GetTypeToken(System.Type);
System.Reflection.Emit.TypeToken GetTypeToken(System.String);
System.Reflection.Emit.MethodToken GetMethodToken(System.Reflection.MethodInfo);
System.Reflection.Emit.MethodToken GetArrayMethodToken(System.Type,System.String,System.Reflection.CallingConventions,System.Type,System.Type[]);
System.Reflection.MethodInfo GetArrayMethod(System.Type,System.String,System.Reflection.CallingConventions,System.Type,System.Type[]);
System.Reflection.Emit.MethodToken GetConstructorToken(System.Reflection.ConstructorInfo);
System.Reflection.Emit.FieldToken GetFieldToken(System.Reflection.FieldInfo);
System.Reflection.Emit.StringToken GetStringConstant(System.String);
System.Reflection.Emit.SignatureToken GetSignatureToken(System.Reflection.Emit.SignatureHelper);
System.Reflection.Emit.SignatureToken GetSignatureToken(System.Byte[],System.Int32);
System.Void SetCustomAttribute(System.Reflection.ConstructorInfo,System.Byte[]);
System.Void SetCustomAttribute(System.Reflection.Emit.CustomAttributeBuilder);
System.Diagnostics.SymbolStore.ISymbolWriter GetSymWriter();
System.Diagnostics.SymbolStore.ISymbolDocumentWriter DefineDocument(System.String,System.Guid,System.Guid,System.Guid);
System.Void SetUserEntryPoint(System.Reflection.MethodInfo);
System.Void SetSymCustomAttribute(System.String,System.Byte[]);
System.Boolean IsTransient();
}
class PEFileKinds : System.Enum{
}
class OpCodes : System.__object{
static System.Boolean TakesSingleByteArgument(System.Reflection.Emit.OpCode);
}
class OpCode : System.ValueType{
System.Reflection.Emit.OperandType get_OperandType();
System.Reflection.Emit.FlowControl get_FlowControl();
System.Reflection.Emit.OpCodeType get_OpCodeType();
System.Reflection.Emit.StackBehaviour get_StackBehaviourPop();
System.Reflection.Emit.StackBehaviour get_StackBehaviourPush();
System.Int32 get_Size();
System.Int16 get_Value();
System.String get_Name();
System.Boolean Equals(System.__object);
System.Boolean Equals(System.Reflection.Emit.OpCode);
static System.Boolean op_Equality(System.Reflection.Emit.OpCode,System.Reflection.Emit.OpCode);
static System.Boolean op_Inequality(System.Reflection.Emit.OpCode,System.Reflection.Emit.OpCode);
System.Int32 GetHashCode();
System.String ToString();
}
class OpCodeType : System.Enum{
}
class StackBehaviour : System.Enum{
}
class OperandType : System.Enum{
}
class FlowControl : System.Enum{
}
class ParameterBuilder : System.__object{
System.Void SetMarshal(System.Reflection.Emit.UnmanagedMarshal);
System.Void SetConstant(System.__object);
System.Void SetCustomAttribute(System.Reflection.ConstructorInfo,System.Byte[]);
System.Void SetCustomAttribute(System.Reflection.Emit.CustomAttributeBuilder);
System.Reflection.Emit.ParameterToken GetToken();
System.String get_Name();
System.Int32 get_Position();
System.Int32 get_Attributes();
System.Boolean get_IsIn();
System.Boolean get_IsOut();
System.Boolean get_IsOptional();
}
class ParameterToken : System.ValueType{
System.Int32 get_Token();
System.Int32 GetHashCode();
System.Boolean Equals(System.__object);
System.Boolean Equals(System.Reflection.Emit.ParameterToken);
static System.Boolean op_Equality(System.Reflection.Emit.ParameterToken,System.Reflection.Emit.ParameterToken);
static System.Boolean op_Inequality(System.Reflection.Emit.ParameterToken,System.Reflection.Emit.ParameterToken);
}
class PropertyBuilder : System.Reflection.PropertyInfo{
System.Void SetConstant(System.__object);
System.Reflection.Emit.PropertyToken get_PropertyToken();
System.Reflection.Module get_Module();
System.Void SetGetMethod(System.Reflection.Emit.MethodBuilder);
System.Void SetSetMethod(System.Reflection.Emit.MethodBuilder);
System.Void AddOtherMethod(System.Reflection.Emit.MethodBuilder);
System.Void SetCustomAttribute(System.Reflection.ConstructorInfo,System.Byte[]);
System.Void SetCustomAttribute(System.Reflection.Emit.CustomAttributeBuilder);
System.__object GetValue(System.__object,System.__object[]);
System.__object GetValue(System.__object,System.Reflection.BindingFlags,System.Reflection.Binder,System.__object[],System.Globalization.CultureInfo);
System.Void SetValue(System.__object,System.__object,System.__object[]);
System.Void SetValue(System.__object,System.__object,System.Reflection.BindingFlags,System.Reflection.Binder,System.__object[],System.Globalization.CultureInfo);
System.Reflection.MethodInfo[] GetAccessors(System.Boolean);
System.Reflection.MethodInfo GetGetMethod(System.Boolean);
System.Reflection.MethodInfo GetSetMethod(System.Boolean);
System.Reflection.ParameterInfo[] GetIndexParameters();
System.Type get_PropertyType();
System.Reflection.PropertyAttributes get_Attributes();
System.Boolean get_CanRead();
System.Boolean get_CanWrite();
System.__object[] GetCustomAttributes(System.Boolean);
System.__object[] GetCustomAttributes(System.Type,System.Boolean);
System.Boolean IsDefined(System.Type,System.Boolean);
System.String get_Name();
System.Type get_DeclaringType();
System.Type get_ReflectedType();
}
class PropertyToken : System.ValueType{
System.Int32 get_Token();
System.Int32 GetHashCode();
System.Boolean Equals(System.__object);
System.Boolean Equals(System.Reflection.Emit.PropertyToken);
static System.Boolean op_Equality(System.Reflection.Emit.PropertyToken,System.Reflection.Emit.PropertyToken);
static System.Boolean op_Inequality(System.Reflection.Emit.PropertyToken,System.Reflection.Emit.PropertyToken);
}
class SignatureHelper : System.__object{
static System.Reflection.Emit.SignatureHelper GetMethodSigHelper(System.Reflection.Module,System.Type,System.Type[]);
static System.Reflection.Emit.SignatureHelper GetMethodSigHelper(System.Reflection.Module,System.Reflection.CallingConventions,System.Type);
static System.Reflection.Emit.SignatureHelper GetMethodSigHelper(System.Reflection.Module,System.Runtime.InteropServices.CallingConvention,System.Type);
static System.Reflection.Emit.SignatureHelper GetLocalVarSigHelper();
static System.Reflection.Emit.SignatureHelper GetMethodSigHelper(System.Reflection.CallingConventions,System.Type);
static System.Reflection.Emit.SignatureHelper GetMethodSigHelper(System.Runtime.InteropServices.CallingConvention,System.Type);
static System.Reflection.Emit.SignatureHelper GetLocalVarSigHelper(System.Reflection.Module);
static System.Reflection.Emit.SignatureHelper GetFieldSigHelper(System.Reflection.Module);
static System.Reflection.Emit.SignatureHelper GetPropertySigHelper(System.Reflection.Module,System.Type,System.Type[]);
static System.Reflection.Emit.SignatureHelper GetPropertySigHelper(System.Reflection.Module,System.Type,System.Type[],System.Type[],System.Type[],System.Type[][],System.Type[][]);
static System.Reflection.Emit.SignatureHelper GetPropertySigHelper(System.Reflection.Module,System.Reflection.CallingConventions,System.Type,System.Type[],System.Type[],System.Type[],System.Type[][],System.Type[][]);
System.Void AddArgument(System.Type);
System.Void AddArgument(System.Type,System.Boolean);
System.Void AddArguments(System.Type[],System.Type[][],System.Type[][]);
System.Void AddArgument(System.Type,System.Type[],System.Type[]);
System.Void AddSentinel();
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.Byte[] GetSignature();
System.String ToString();
}
class SignatureToken : System.ValueType{
System.Int32 get_Token();
System.Int32 GetHashCode();
System.Boolean Equals(System.__object);
System.Boolean Equals(System.Reflection.Emit.SignatureToken);
static System.Boolean op_Equality(System.Reflection.Emit.SignatureToken,System.Reflection.Emit.SignatureToken);
static System.Boolean op_Inequality(System.Reflection.Emit.SignatureToken,System.Reflection.Emit.SignatureToken);
}
class StringToken : System.ValueType{
System.Int32 get_Token();
System.Int32 GetHashCode();
System.Boolean Equals(System.__object);
System.Boolean Equals(System.Reflection.Emit.StringToken);
static System.Boolean op_Equality(System.Reflection.Emit.StringToken,System.Reflection.Emit.StringToken);
static System.Boolean op_Inequality(System.Reflection.Emit.StringToken,System.Reflection.Emit.StringToken);
}
class PackingSize : System.Enum{
}
class TypeToken : System.ValueType{
System.Int32 get_Token();
System.Int32 GetHashCode();
System.Boolean Equals(System.__object);
System.Boolean Equals(System.Reflection.Emit.TypeToken);
static System.Boolean op_Equality(System.Reflection.Emit.TypeToken,System.Reflection.Emit.TypeToken);
static System.Boolean op_Inequality(System.Reflection.Emit.TypeToken,System.Reflection.Emit.TypeToken);
}
class UnmanagedMarshal : System.__object{
static System.Reflection.Emit.UnmanagedMarshal DefineUnmanagedMarshal(System.Runtime.InteropServices.UnmanagedType);
static System.Reflection.Emit.UnmanagedMarshal DefineByValTStr(System.Int32);
static System.Reflection.Emit.UnmanagedMarshal DefineSafeArray(System.Runtime.InteropServices.UnmanagedType);
static System.Reflection.Emit.UnmanagedMarshal DefineByValArray(System.Int32);
static System.Reflection.Emit.UnmanagedMarshal DefineLPArray(System.Runtime.InteropServices.UnmanagedType);
System.Runtime.InteropServices.UnmanagedType get_GetUnmanagedType();
System.Guid get_IIDGuid();
System.Int32 get_ElementCount();
System.Runtime.InteropServices.UnmanagedType get_BaseType();
}
}
