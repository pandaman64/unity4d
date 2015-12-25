module System.Runtime.Remoting.Activation;
import System;
import System.Collections;
import System.Runtime.Remoting.Contexts;
public:
pragma(assembly,"mscorlib"){
interface IActivator{
IActivator get_NextActivator();
Void set_NextActivator(System.Runtime.Remoting.Activation.IActivator);
IConstructionReturnMessage Activate(System.Runtime.Remoting.Activation.IConstructionCallMessage);
ActivatorLevel get_Level();
}
class ActivatorLevel : System.Enum{
}
interface IConstructionCallMessage{
IActivator get_Activator();
Void set_Activator(System.Runtime.Remoting.Activation.IActivator);
Object[] get_CallSiteActivationAttributes();
String get_ActivationTypeName();
Type get_ActivationType();
IList get_ContextProperties();
}
interface IConstructionReturnMessage{
}
class UrlAttribute : System.Runtime.Remoting.Contexts.ContextAttribute{
this (System.String);
Boolean Equals(System.Object);
Int32 GetHashCode();
Boolean IsContextOK(System.Runtime.Remoting.Contexts.Context,System.Runtime.Remoting.Activation.IConstructionCallMessage);
Void GetPropertiesForNewContext(System.Runtime.Remoting.Activation.IConstructionCallMessage);
String get_UrlValue();
}
}
