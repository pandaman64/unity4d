module System.Runtime.Hosting;
import System;
import System.Runtime.Remoting;
import System.Security.Policy;
public:
pragma(assembly,"mscorlib"){
class ApplicationActivator : System.Object{
this ();
ObjectHandle CreateInstance(System.ActivationContext);
ObjectHandle CreateInstance(System.ActivationContext,System.String[]);
}
class ActivationArguments : System.Security.Policy.EvidenceBase{
this (System.ApplicationIdentity);
this (System.ApplicationIdentity,System.String[]);
this (System.ActivationContext);
this (System.ActivationContext,System.String[]);
ApplicationIdentity get_ApplicationIdentity();
ActivationContext get_ActivationContext();
String[] get_ActivationData();
EvidenceBase Clone();
}
}
