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
}
class WellKnownObjectMode : Enum{
}
interface IRemotingTypeInfo{
}
interface IChannelInfo{
}
interface IEnvoyInfo{
}
class ObjRef : Object{
}
class RemotingConfiguration : Object{
}
class TypeEntry : Object{
}
class ActivatedClientTypeEntry : TypeEntry{
}
class ActivatedServiceTypeEntry : TypeEntry{
}
class WellKnownClientTypeEntry : TypeEntry{
}
class WellKnownServiceTypeEntry : TypeEntry{
}
class CustomErrorsModes : Enum{
}
class RemotingException : SystemException{
}
class ServerException : SystemException{
}
class RemotingTimeoutException : RemotingException{
}
class RemotingServices : Object{
}
class InternalRemotingServices : Object{
}
class SoapServices : Object{
}
class ObjectHandle : MarshalByRefObject{
}
}
