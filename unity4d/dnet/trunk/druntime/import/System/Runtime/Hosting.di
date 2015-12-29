module System.Runtime.Hosting;
import System;
import System.Runtime.Remoting;
import System.Security.Policy;
public:
pragma(assembly,"mscorlib"){
class ApplicationActivator : System.__object{
this ();
System.Runtime.Remoting.ObjectHandle CreateInstance(System.ActivationContext);
System.Runtime.Remoting.ObjectHandle CreateInstance(System.ActivationContext,System.String[]);
}
class ActivationArguments : System.Security.Policy.EvidenceBase{
this (System.ApplicationIdentity);
this (System.ApplicationIdentity,System.String[]);
this (System.ActivationContext);
this (System.ActivationContext,System.String[]);
System.ApplicationIdentity get_ApplicationIdentity();
System.ActivationContext get_ActivationContext();
System.String[] get_ActivationData();
System.Security.Policy.EvidenceBase Clone();
}
}
