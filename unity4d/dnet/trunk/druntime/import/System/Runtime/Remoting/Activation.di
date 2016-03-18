module System.Runtime.Remoting.Activation;
import System;
import System.Collections;
import System.Runtime.Remoting.Contexts;
public:
pragma(assembly,"mscorlib"){
interface IActivator{
System.Runtime.Remoting.Activation.IActivator get_NextActivator();
System.Void set_NextActivator(System.Runtime.Remoting.Activation.IActivator);
System.Runtime.Remoting.Activation.IConstructionReturnMessage Activate(System.Runtime.Remoting.Activation.IConstructionCallMessage);
System.Runtime.Remoting.Activation.ActivatorLevel get_Level();
}
class ActivatorLevel : System.Enum{
Int32 value__;
}
interface IConstructionCallMessage{
System.Runtime.Remoting.Activation.IActivator get_Activator();
System.Void set_Activator(System.Runtime.Remoting.Activation.IActivator);
System.__object[] get_CallSiteActivationAttributes();
System.String get_ActivationTypeName();
System.Type get_ActivationType();
System.Collections.IList get_ContextProperties();
}
interface IConstructionReturnMessage{
}
class UrlAttribute : System.Runtime.Remoting.Contexts.ContextAttribute{
this (System.String);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.Boolean IsContextOK(System.Runtime.Remoting.Contexts.Context,System.Runtime.Remoting.Activation.IConstructionCallMessage);
System.Void GetPropertiesForNewContext(System.Runtime.Remoting.Activation.IConstructionCallMessage);
System.String get_UrlValue();
}
}
