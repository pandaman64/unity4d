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
System.MarshalByRefObject CreateInstance(System.Type);
System.Runtime.Remoting.Proxies.RealProxy CreateProxy(System.Runtime.Remoting.ObjRef,System.Type,System.__object,System.Runtime.Remoting.Contexts.Context);
System.Boolean IsContextOK(System.Runtime.Remoting.Contexts.Context,System.Runtime.Remoting.Activation.IConstructionCallMessage);
System.Void GetPropertiesForNewContext(System.Runtime.Remoting.Activation.IConstructionCallMessage);
}
class RealProxy : System.__object{
System.Runtime.Remoting.Activation.IConstructionReturnMessage InitializeServerObject(System.Runtime.Remoting.Activation.IConstructionCallMessage);
static System.Void SetStubData(System.Runtime.Remoting.Proxies.RealProxy,System.__object);
static System.__object GetStubData(System.Runtime.Remoting.Proxies.RealProxy);
System.Type GetProxiedType();
System.Runtime.Remoting.Messaging.IMessage Invoke(System.Runtime.Remoting.Messaging.IMessage);
System.Runtime.Remoting.ObjRef CreateObjRef(System.Type);
System.Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
System.IntPtr GetCOMIUnknown(System.Boolean);
System.Void SetCOMIUnknown(System.IntPtr);
System.__object GetTransparentProxy();
}
}
