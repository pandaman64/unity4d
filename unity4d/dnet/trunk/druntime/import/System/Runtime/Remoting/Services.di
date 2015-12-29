module System.Runtime.Remoting.Services;
import System;
import System.Runtime.Remoting.Activation;
import System.Runtime.Remoting.Proxies;
import System.Runtime.Remoting;
public:
pragma(assembly,"mscorlib"){
class EnterpriseServicesHelper : System.__object{
this ();
static System.__object WrapIUnknownWithComObject(System.IntPtr);
static System.Runtime.Remoting.Activation.IConstructionReturnMessage CreateConstructionReturnMessage(System.Runtime.Remoting.Activation.IConstructionCallMessage,System.MarshalByRefObject);
static System.Void SwitchWrappers(System.Runtime.Remoting.Proxies.RealProxy,System.Runtime.Remoting.Proxies.RealProxy);
}
interface ITrackingHandler{
System.Void MarshaledObject(System.__object,System.Runtime.Remoting.ObjRef);
System.Void UnmarshaledObject(System.__object,System.Runtime.Remoting.ObjRef);
System.Void DisconnectedObject(System.__object);
}
class TrackingServices : System.__object{
this ();
static System.Void RegisterTrackingHandler(System.Runtime.Remoting.Services.ITrackingHandler);
static System.Void UnregisterTrackingHandler(System.Runtime.Remoting.Services.ITrackingHandler);
static System.Runtime.Remoting.Services.ITrackingHandler[] get_RegisteredHandlers();
}
}
