module System.Runtime.Remoting.Proxies;
import System;
import System.Runtime.Remoting;
import System.Runtime.Remoting.Contexts;
import System.Runtime.Remoting.Activation;
import System.Runtime.Remoting.Messaging;
import System.Runtime.Serialization;
public:
pragma(assembly,"mscorlib"){
class ProxyAttribute : Attribute{
}
class RealProxy : Object{
}
}
