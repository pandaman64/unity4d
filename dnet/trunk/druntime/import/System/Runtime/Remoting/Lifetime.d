module System.Runtime.Remoting.Lifetime;
import System;
import System.Runtime.Remoting;
public:
pragma(assembly,"mscorlib"){
class ClientSponsor : MarshalByRefObject{
}
interface ILease{
}
interface ISponsor{
}
class LeaseState : Enum{
}
class LifetimeServices : Object{
}
}
