module System.Runtime.Remoting;
import System;
import System.Runtime.Remoting.Messaging;
import System.Runtime.Serialization;
import System.Runtime.Remoting.Contexts;
import System.Collections;
import System.Reflection;
import System.Runtime.Remoting.Proxies;
import System.Runtime.Remoting.Metadata;
public:
pragma(assembly,"mscorlib"){
interface IObjectHandle{
Object Unwrap();
}
class WellKnownObjectMode : System.Enum{
}
interface IRemotingTypeInfo{
String get_TypeName();
Void set_TypeName(System.String);
Boolean CanCastTo(System.Type,System.Object);
}
interface IChannelInfo{
Object[] get_ChannelData();
Void set_ChannelData(System.Object[]);
}
interface IEnvoyInfo{
IMessageSink get_EnvoySinks();
Void set_EnvoySinks(System.Runtime.Remoting.Messaging.IMessageSink);
}
class ObjRef : System.Object{
this (System.MarshalByRefObject,System.Type);
this ();
Object GetRealObject(System.Runtime.Serialization.StreamingContext);
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
String get_URI();
Void set_URI(System.String);
IRemotingTypeInfo get_TypeInfo();
Void set_TypeInfo(System.Runtime.Remoting.IRemotingTypeInfo);
IEnvoyInfo get_EnvoyInfo();
Void set_EnvoyInfo(System.Runtime.Remoting.IEnvoyInfo);
IChannelInfo get_ChannelInfo();
Void set_ChannelInfo(System.Runtime.Remoting.IChannelInfo);
Boolean IsFromThisProcess();
Boolean IsFromThisAppDomain();
}
class RemotingConfiguration : System.Object{
static Void RegisterWellKnownServiceType(System.Type,System.String,System.Runtime.Remoting.WellKnownObjectMode);
static Void RegisterWellKnownServiceType(System.Runtime.Remoting.WellKnownServiceTypeEntry);
static Void Configure(System.String);
static Void Configure(System.String,System.Boolean);
static String get_ApplicationName();
static Void set_ApplicationName(System.String);
static String get_ApplicationId();
static String get_ProcessId();
static CustomErrorsModes get_CustomErrorsMode();
static Void set_CustomErrorsMode(System.Runtime.Remoting.CustomErrorsModes);
static Boolean CustomErrorsEnabled(System.Boolean);
static Void RegisterActivatedServiceType(System.Type);
static Void RegisterActivatedServiceType(System.Runtime.Remoting.ActivatedServiceTypeEntry);
static Void RegisterActivatedClientType(System.Type,System.String);
static Void RegisterActivatedClientType(System.Runtime.Remoting.ActivatedClientTypeEntry);
static Void RegisterWellKnownClientType(System.Type,System.String);
static Void RegisterWellKnownClientType(System.Runtime.Remoting.WellKnownClientTypeEntry);
static ActivatedServiceTypeEntry[] GetRegisteredActivatedServiceTypes();
static WellKnownServiceTypeEntry[] GetRegisteredWellKnownServiceTypes();
static ActivatedClientTypeEntry[] GetRegisteredActivatedClientTypes();
static WellKnownClientTypeEntry[] GetRegisteredWellKnownClientTypes();
static ActivatedClientTypeEntry IsRemotelyActivatedClientType(System.Type);
static ActivatedClientTypeEntry IsRemotelyActivatedClientType(System.String,System.String);
static WellKnownClientTypeEntry IsWellKnownClientType(System.Type);
static WellKnownClientTypeEntry IsWellKnownClientType(System.String,System.String);
static Boolean IsActivationAllowed(System.Type);
}
class TypeEntry : System.Object{
String get_TypeName();
Void set_TypeName(System.String);
String get_AssemblyName();
Void set_AssemblyName(System.String);
}
class ActivatedClientTypeEntry : System.Runtime.Remoting.TypeEntry{
this (System.String,System.String,System.String);
this (System.Type,System.String);
String get_ApplicationUrl();
Type get_ObjectType();
IContextAttribute[] get_ContextAttributes();
Void set_ContextAttributes(System.Runtime.Remoting.Contexts.IContextAttribute[]);
String ToString();
}
class ActivatedServiceTypeEntry : System.Runtime.Remoting.TypeEntry{
this (System.String,System.String);
this (System.Type);
Type get_ObjectType();
IContextAttribute[] get_ContextAttributes();
Void set_ContextAttributes(System.Runtime.Remoting.Contexts.IContextAttribute[]);
String ToString();
}
class WellKnownClientTypeEntry : System.Runtime.Remoting.TypeEntry{
this (System.String,System.String,System.String);
this (System.Type,System.String);
String get_ObjectUrl();
Type get_ObjectType();
String get_ApplicationUrl();
Void set_ApplicationUrl(System.String);
String ToString();
}
class WellKnownServiceTypeEntry : System.Runtime.Remoting.TypeEntry{
this (System.String,System.String,System.String,System.Runtime.Remoting.WellKnownObjectMode);
this (System.Type,System.String,System.Runtime.Remoting.WellKnownObjectMode);
String get_ObjectUri();
WellKnownObjectMode get_Mode();
Type get_ObjectType();
IContextAttribute[] get_ContextAttributes();
Void set_ContextAttributes(System.Runtime.Remoting.Contexts.IContextAttribute[]);
String ToString();
}
class CustomErrorsModes : System.Enum{
}
class RemotingException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class ServerException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class RemotingTimeoutException : System.Runtime.Remoting.RemotingException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class RemotingServices : System.Object{
static Boolean IsTransparentProxy(System.Object);
static Boolean IsObjectOutOfContext(System.Object);
static Boolean IsObjectOutOfAppDomain(System.Object);
static RealProxy GetRealProxy(System.Object);
static String GetSessionIdForMethodMessage(System.Runtime.Remoting.Messaging.IMethodMessage);
static Object GetLifetimeService(System.MarshalByRefObject);
static String GetObjectUri(System.MarshalByRefObject);
static Void SetObjectUriForMarshal(System.MarshalByRefObject,System.String);
static ObjRef Marshal(System.MarshalByRefObject);
static ObjRef Marshal(System.MarshalByRefObject,System.String);
static ObjRef Marshal(System.MarshalByRefObject,System.String,System.Type);
static Void GetObjectData(System.Object,System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
static Object Unmarshal(System.Runtime.Remoting.ObjRef);
static Object Unmarshal(System.Runtime.Remoting.ObjRef,System.Boolean);
static Object Connect(System.Type,System.String);
static Object Connect(System.Type,System.String,System.Object);
static Boolean Disconnect(System.MarshalByRefObject);
static IMessageSink GetEnvoyChainForProxy(System.MarshalByRefObject);
static ObjRef GetObjRefForProxy(System.MarshalByRefObject);
static MethodBase GetMethodBaseFromMethodMessage(System.Runtime.Remoting.Messaging.IMethodMessage);
static Boolean IsMethodOverloaded(System.Runtime.Remoting.Messaging.IMethodMessage);
static Boolean IsOneWay(System.Reflection.MethodBase);
static Type GetServerTypeForUri(System.String);
static IMethodReturnMessage ExecuteMessage(System.MarshalByRefObject,System.Runtime.Remoting.Messaging.IMethodCallMessage);
static Void LogRemotingStage(System.Int32);
}
class InternalRemotingServices : System.Object{
this ();
static Void DebugOutChnl(System.String);
static Void RemotingTrace(System.Object[]);
static Void RemotingAssert(System.Boolean,System.String);
static Void SetServerIdentity(System.Runtime.Remoting.Messaging.MethodCall,System.Object);
static SoapAttribute GetCachedSoapAttribute(System.Object);
}
class SoapServices : System.Object{
static Void RegisterInteropXmlElement(System.String,System.String,System.Type);
static Void RegisterInteropXmlType(System.String,System.String,System.Type);
static Void PreLoad(System.Type);
static Void PreLoad(System.Reflection.Assembly);
static Type GetInteropTypeFromXmlElement(System.String,System.String);
static Type GetInteropTypeFromXmlType(System.String,System.String);
static String GetXmlNamespaceForMethodCall(System.Reflection.MethodBase);
static String GetXmlNamespaceForMethodResponse(System.Reflection.MethodBase);
static Void RegisterSoapActionForMethodBase(System.Reflection.MethodBase);
static Void RegisterSoapActionForMethodBase(System.Reflection.MethodBase,System.String);
static String GetSoapActionFromMethodBase(System.Reflection.MethodBase);
static Boolean IsSoapActionValidForMethodBase(System.String,System.Reflection.MethodBase);
static String get_XmlNsForClrType();
static String get_XmlNsForClrTypeWithAssembly();
static String get_XmlNsForClrTypeWithNs();
static String get_XmlNsForClrTypeWithNsAndAssembly();
static Boolean IsClrTypeNamespace(System.String);
static String CodeXmlNamespaceForClrTypeNamespace(System.String,System.String);
}
class ObjectHandle : System.MarshalByRefObject{
this (System.Object);
Object Unwrap();
Object InitializeLifetimeService();
}
}
