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
class AmbiguousMatchException : SystemException{
}
class ModuleResolveEventHandler : MulticastDelegate{
}
class Assembly : Object{
}
class AssemblyCopyrightAttribute : Attribute{
}
class AssemblyTrademarkAttribute : Attribute{
}
class AssemblyProductAttribute : Attribute{
}
class AssemblyCompanyAttribute : Attribute{
}
class AssemblyDescriptionAttribute : Attribute{
}
class AssemblyTitleAttribute : Attribute{
}
class AssemblyConfigurationAttribute : Attribute{
}
class AssemblyDefaultAliasAttribute : Attribute{
}
class AssemblyInformationalVersionAttribute : Attribute{
}
class AssemblyFileVersionAttribute : Attribute{
}
class AssemblyCultureAttribute : Attribute{
}
class AssemblyVersionAttribute : Attribute{
}
class AssemblyKeyFileAttribute : Attribute{
}
class AssemblyDelaySignAttribute : Attribute{
}
class AssemblyAlgorithmIdAttribute : Attribute{
}
class AssemblyFlagsAttribute : Attribute{
}
class AssemblyMetadataAttribute : Attribute{
}
class AssemblySignatureKeyAttribute : Attribute{
}
class AssemblyKeyNameAttribute : Attribute{
}
class AssemblyName : Object{
}
class AssemblyNameProxy : MarshalByRefObject{
}
class AssemblyNameFlags : Enum{
}
class AssemblyContentType : Enum{
}
class ProcessorArchitecture : Enum{
}
class CustomAttributeExtensions : Object{
}
class CustomAttributeFormatException : FormatException{
}
class Binder : Object{
}
class BindingFlags : Enum{
}
class CallingConventions : Enum{
}
class ConstructorInfo : MethodBase{
}
class CustomAttributeData : Object{
}
class CustomAttributeNamedArgument : ValueType{
}
class CustomAttributeTypedArgument : ValueType{
}
class DefaultMemberAttribute : Attribute{
}
class EventAttributes : Enum{
}
class EventInfo : MemberInfo{
}
class FieldAttributes : Enum{
}
class FieldInfo : MemberInfo{
}
class GenericParameterAttributes : Enum{
}
interface ICustomAttributeProvider{
}
interface IReflectableType{
}
class IntrospectionExtensions : Object{
}
class RuntimeReflectionExtensions : Object{
}
class InterfaceMapping : ValueType{
}
class InvalidFilterCriteriaException : ApplicationException{
}
interface IReflect{
}
class ManifestResourceInfo : Object{
}
class ResourceLocation : Enum{
}
class MemberFilter : MulticastDelegate{
}
//Conflict with D.NET's
/*
class MemberInfo : Object{
}
*/
class MemberTypes : Enum{
}
class MethodAttributes : Enum{
}
class MethodBase : MemberInfo{
}
class MethodImplAttributes : Enum{
}
class MethodInfo : MethodBase{
}
class Missing : Object{
}
class PortableExecutableKinds : Enum{
}
class ImageFileMachine : Enum{
}
class Module : Object{
}
class ObfuscateAssemblyAttribute : Attribute{
}
class ObfuscationAttribute : Attribute{
}
class ExceptionHandlingClauseOptions : Enum{
}
class ExceptionHandlingClause : Object{
}
class MethodBody : Object{
}
class LocalVariableInfo : Object{
}
class ParameterAttributes : Enum{
}
class ParameterInfo : Object{
}
class ParameterModifier : ValueType{
}
class Pointer : Object{
}
class PropertyAttributes : Enum{
}
class PropertyInfo : MemberInfo{
}
class ReflectionContext : Object{
}
class ReflectionTypeLoadException : SystemException{
}
class ResourceAttributes : Enum{
}
class StrongNameKeyPair : Object{
}
class TargetException : ApplicationException{
}
class TargetInvocationException : ApplicationException{
}
class TargetParameterCountException : ApplicationException{
}
class TypeAttributes : Enum{
}
class TypeDelegator : TypeInfo{
}
class TypeFilter : MulticastDelegate{
}
//Conflict with D.NET's
/*
class TypeInfo : Type{
}
*/
}
