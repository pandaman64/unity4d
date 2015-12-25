module System.Runtime.Remoting.Services;
import System;
import System.Runtime.Remoting.Activation;
import System.Runtime.Remoting.Proxies;
import System.Runtime.Remoting;
public:
pragma(assembly,"mscorlib"){
class EnterpriseServicesHelper : System.Object{
this ();
static Object WrapIUnknownWithComObject(System.IntPtr);
static IConstructionReturnMessage CreateConstructionReturnMessage(System.Runtime.Remoting.Activation.IConstructionCallMessage,System.MarshalByRefObject);
static Void SwitchWrappers(System.Runtime.Remoting.Proxies.RealProxy,System.Runtime.Remoting.Proxies.RealProxy);
}
interface ITrackingHandler{
Void MarshaledObject(System.Object,System.Runtime.Remoting.ObjRef);
Void UnmarshaledObject(System.Object,System.Runtime.Remoting.ObjRef);
Void DisconnectedObject(System.Object);
}
class TrackingServices : System.Object{
this ();
static Void RegisterTrackingHandler(System.Runtime.Remoting.Services.ITrackingHandler);
static Void UnregisterTrackingHandler(System.Runtime.Remoting.Services.ITrackingHandler);
static ITrackingHandler[] get_RegisteredHandlers();
}
}
