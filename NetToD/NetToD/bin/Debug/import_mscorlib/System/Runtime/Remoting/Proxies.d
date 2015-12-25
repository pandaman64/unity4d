module System.Runtime.Remoting.Proxies;
import System;
import System.Runtime.Remoting;
import System.Runtime.Remoting.Contexts;
import System.Runtime.Remoting.Activation;
import System.Runtime.Remoting.Messaging;
import System.Runtime.Serialization;
public:
pragma(assembly,"mscorlib"){
class ProxyAttribute : System.Attribute{
this ();
MarshalByRefObject CreateInstance(System.Type);
RealProxy CreateProxy(System.Runtime.Remoting.ObjRef,System.Type,System.Object,System.Runtime.Remoting.Contexts.Context);
Boolean IsContextOK(System.Runtime.Remoting.Contexts.Context,System.Runtime.Remoting.Activation.IConstructionCallMessage);
Void GetPropertiesForNewContext(System.Runtime.Remoting.Activation.IConstructionCallMessage);
}
class RealProxy : System.Object{
IConstructionReturnMessage InitializeServerObject(System.Runtime.Remoting.Activation.IConstructionCallMessage);
static Void SetStubData(System.Runtime.Remoting.Proxies.RealProxy,System.Object);
static Object GetStubData(System.Runtime.Remoting.Proxies.RealProxy);
Type GetProxiedType();
IMessage Invoke(System.Runtime.Remoting.Messaging.IMessage);
ObjRef CreateObjRef(System.Type);
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
IntPtr GetCOMIUnknown(System.Boolean);
Void SetCOMIUnknown(System.IntPtr);
Object GetTransparentProxy();
}
}
