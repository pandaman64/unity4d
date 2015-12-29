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
System.__object Unwrap();
}
class WellKnownObjectMode : System.Enum{
}
interface IRemotingTypeInfo{
System.String get_TypeName();
System.Void set_TypeName(System.String);
System.Boolean CanCastTo(System.Type,System.__object);
}
interface IChannelInfo{
System.__object[] get_ChannelData();
System.Void set_ChannelData(System.__object[]);
}
interface IEnvoyInfo{
System.Runtime.Remoting.Messaging.IMessageSink get_EnvoySinks();
System.Void set_EnvoySinks(System.Runtime.Remoting.Messaging.IMessageSink);
}
class ObjRef : System.__object{
this (System.MarshalByRefObject,System.Type);
this ();
System.__object GetRealObject(System.Runtime.Serialization.StreamingContext);
System.Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
System.String get_URI();
System.Void set_URI(System.String);
System.Runtime.Remoting.IRemotingTypeInfo get_TypeInfo();
System.Void set_TypeInfo(System.Runtime.Remoting.IRemotingTypeInfo);
System.Runtime.Remoting.IEnvoyInfo get_EnvoyInfo();
System.Void set_EnvoyInfo(System.Runtime.Remoting.IEnvoyInfo);
System.Runtime.Remoting.IChannelInfo get_ChannelInfo();
System.Void set_ChannelInfo(System.Runtime.Remoting.IChannelInfo);
System.Boolean IsFromThisProcess();
System.Boolean IsFromThisAppDomain();
}
class RemotingConfiguration : System.__object{
static System.Void RegisterWellKnownServiceType(System.Type,System.String,System.Runtime.Remoting.WellKnownObjectMode);
static System.Void RegisterWellKnownServiceType(System.Runtime.Remoting.WellKnownServiceTypeEntry);
static System.Void Configure(System.String);
static System.Void Configure(System.String,System.Boolean);
static System.String get_ApplicationName();
static System.Void set_ApplicationName(System.String);
static System.String get_ApplicationId();
static System.String get_ProcessId();
static System.Runtime.Remoting.CustomErrorsModes get_CustomErrorsMode();
static System.Void set_CustomErrorsMode(System.Runtime.Remoting.CustomErrorsModes);
static System.Boolean CustomErrorsEnabled(System.Boolean);
static System.Void RegisterActivatedServiceType(System.Type);
static System.Void RegisterActivatedServiceType(System.Runtime.Remoting.ActivatedServiceTypeEntry);
static System.Void RegisterActivatedClientType(System.Type,System.String);
static System.Void RegisterActivatedClientType(System.Runtime.Remoting.ActivatedClientTypeEntry);
static System.Void RegisterWellKnownClientType(System.Type,System.String);
static System.Void RegisterWellKnownClientType(System.Runtime.Remoting.WellKnownClientTypeEntry);
static System.Runtime.Remoting.ActivatedServiceTypeEntry[] GetRegisteredActivatedServiceTypes();
static System.Runtime.Remoting.WellKnownServiceTypeEntry[] GetRegisteredWellKnownServiceTypes();
static System.Runtime.Remoting.ActivatedClientTypeEntry[] GetRegisteredActivatedClientTypes();
static System.Runtime.Remoting.WellKnownClientTypeEntry[] GetRegisteredWellKnownClientTypes();
static System.Runtime.Remoting.ActivatedClientTypeEntry IsRemotelyActivatedClientType(System.Type);
static System.Runtime.Remoting.ActivatedClientTypeEntry IsRemotelyActivatedClientType(System.String,System.String);
static System.Runtime.Remoting.WellKnownClientTypeEntry IsWellKnownClientType(System.Type);
static System.Runtime.Remoting.WellKnownClientTypeEntry IsWellKnownClientType(System.String,System.String);
static System.Boolean IsActivationAllowed(System.Type);
}
class TypeEntry : System.__object{
System.String get_TypeName();
System.Void set_TypeName(System.String);
System.String get_AssemblyName();
System.Void set_AssemblyName(System.String);
}
class ActivatedClientTypeEntry : System.Runtime.Remoting.TypeEntry{
this (System.String,System.String,System.String);
this (System.Type,System.String);
System.String get_ApplicationUrl();
System.Type get_ObjectType();
System.Runtime.Remoting.Contexts.IContextAttribute[] get_ContextAttributes();
System.Void set_ContextAttributes(System.Runtime.Remoting.Contexts.IContextAttribute[]);
System.String ToString();
}
class ActivatedServiceTypeEntry : System.Runtime.Remoting.TypeEntry{
this (System.String,System.String);
this (System.Type);
System.Type get_ObjectType();
System.Runtime.Remoting.Contexts.IContextAttribute[] get_ContextAttributes();
System.Void set_ContextAttributes(System.Runtime.Remoting.Contexts.IContextAttribute[]);
System.String ToString();
}
class WellKnownClientTypeEntry : System.Runtime.Remoting.TypeEntry{
this (System.String,System.String,System.String);
this (System.Type,System.String);
System.String get_ObjectUrl();
System.Type get_ObjectType();
System.String get_ApplicationUrl();
System.Void set_ApplicationUrl(System.String);
System.String ToString();
}
class WellKnownServiceTypeEntry : System.Runtime.Remoting.TypeEntry{
this (System.String,System.String,System.String,System.Runtime.Remoting.WellKnownObjectMode);
this (System.Type,System.String,System.Runtime.Remoting.WellKnownObjectMode);
System.String get_ObjectUri();
System.Runtime.Remoting.WellKnownObjectMode get_Mode();
System.Type get_ObjectType();
System.Runtime.Remoting.Contexts.IContextAttribute[] get_ContextAttributes();
System.Void set_ContextAttributes(System.Runtime.Remoting.Contexts.IContextAttribute[]);
System.String ToString();
}
class CustomErrorsModes : System.Enum{
}
class RemotingServices : System.__object{
static System.Boolean IsTransparentProxy(System.__object);
static System.Boolean IsObjectOutOfContext(System.__object);
static System.Boolean IsObjectOutOfAppDomain(System.__object);
static System.Runtime.Remoting.Proxies.RealProxy GetRealProxy(System.__object);
static System.String GetSessionIdForMethodMessage(System.Runtime.Remoting.Messaging.IMethodMessage);
static System.__object GetLifetimeService(System.MarshalByRefObject);
static System.String GetObjectUri(System.MarshalByRefObject);
static System.Void SetObjectUriForMarshal(System.MarshalByRefObject,System.String);
static System.Runtime.Remoting.ObjRef Marshal(System.MarshalByRefObject);
static System.Runtime.Remoting.ObjRef Marshal(System.MarshalByRefObject,System.String);
static System.Runtime.Remoting.ObjRef Marshal(System.MarshalByRefObject,System.String,System.Type);
static System.Void GetObjectData(System.__object,System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
static System.__object Unmarshal(System.Runtime.Remoting.ObjRef);
static System.__object Unmarshal(System.Runtime.Remoting.ObjRef,System.Boolean);
static System.__object Connect(System.Type,System.String);
static System.__object Connect(System.Type,System.String,System.__object);
static System.Boolean Disconnect(System.MarshalByRefObject);
static System.Runtime.Remoting.Messaging.IMessageSink GetEnvoyChainForProxy(System.MarshalByRefObject);
static System.Runtime.Remoting.ObjRef GetObjRefForProxy(System.MarshalByRefObject);
static System.Reflection.MethodBase GetMethodBaseFromMethodMessage(System.Runtime.Remoting.Messaging.IMethodMessage);
static System.Boolean IsMethodOverloaded(System.Runtime.Remoting.Messaging.IMethodMessage);
static System.Boolean IsOneWay(System.Reflection.MethodBase);
static System.Type GetServerTypeForUri(System.String);
static System.Runtime.Remoting.Messaging.IMethodReturnMessage ExecuteMessage(System.MarshalByRefObject,System.Runtime.Remoting.Messaging.IMethodCallMessage);
static System.Void LogRemotingStage(System.Int32);
}
class InternalRemotingServices : System.__object{
this ();
static System.Void DebugOutChnl(System.String);
static System.Void RemotingTrace(System.__object[]);
static System.Void RemotingAssert(System.Boolean,System.String);
static System.Void SetServerIdentity(System.Runtime.Remoting.Messaging.MethodCall,System.__object);
static System.Runtime.Remoting.Metadata.SoapAttribute GetCachedSoapAttribute(System.__object);
}
class SoapServices : System.__object{
static System.Void RegisterInteropXmlElement(System.String,System.String,System.Type);
static System.Void RegisterInteropXmlType(System.String,System.String,System.Type);
static System.Void PreLoad(System.Type);
static System.Void PreLoad(System.Reflection.Assembly);
static System.Type GetInteropTypeFromXmlElement(System.String,System.String);
static System.Type GetInteropTypeFromXmlType(System.String,System.String);
static System.String GetXmlNamespaceForMethodCall(System.Reflection.MethodBase);
static System.String GetXmlNamespaceForMethodResponse(System.Reflection.MethodBase);
static System.Void RegisterSoapActionForMethodBase(System.Reflection.MethodBase);
static System.Void RegisterSoapActionForMethodBase(System.Reflection.MethodBase,System.String);
static System.String GetSoapActionFromMethodBase(System.Reflection.MethodBase);
static System.Boolean IsSoapActionValidForMethodBase(System.String,System.Reflection.MethodBase);
static System.String get_XmlNsForClrType();
static System.String get_XmlNsForClrTypeWithAssembly();
static System.String get_XmlNsForClrTypeWithNs();
static System.String get_XmlNsForClrTypeWithNsAndAssembly();
static System.Boolean IsClrTypeNamespace(System.String);
static System.String CodeXmlNamespaceForClrTypeNamespace(System.String,System.String);
}
class ObjectHandle : System.MarshalByRefObject{
this (System.__object);
System.__object Unwrap();
System.__object InitializeLifetimeService();
}
}
