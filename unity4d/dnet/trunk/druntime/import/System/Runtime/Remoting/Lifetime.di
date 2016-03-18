module System.Runtime.Remoting.Lifetime;
import System;
import System.Runtime.Remoting;
public:
pragma(assembly,"mscorlib"){
class ClientSponsor : System.MarshalByRefObject{
this ();
this (System.TimeSpan);
System.TimeSpan get_RenewalTime();
System.Void set_RenewalTime(System.TimeSpan);
System.Boolean Register(System.MarshalByRefObject);
System.Void Unregister(System.MarshalByRefObject);
System.TimeSpan Renewal(System.Runtime.Remoting.Lifetime.ILease);
System.Void Close();
System.__object InitializeLifetimeService();
}
interface ILease{
System.Void Register(System.Runtime.Remoting.Lifetime.ISponsor,System.TimeSpan);
System.Void Register(System.Runtime.Remoting.Lifetime.ISponsor);
System.Void Unregister(System.Runtime.Remoting.Lifetime.ISponsor);
System.TimeSpan Renew(System.TimeSpan);
System.TimeSpan get_RenewOnCallTime();
System.Void set_RenewOnCallTime(System.TimeSpan);
System.TimeSpan get_SponsorshipTimeout();
System.Void set_SponsorshipTimeout(System.TimeSpan);
System.TimeSpan get_InitialLeaseTime();
System.Void set_InitialLeaseTime(System.TimeSpan);
System.TimeSpan get_CurrentLeaseTime();
System.Runtime.Remoting.Lifetime.LeaseState get_CurrentState();
}
interface ISponsor{
System.TimeSpan Renewal(System.Runtime.Remoting.Lifetime.ILease);
}
class LeaseState : System.Enum{
Int32 value__;
}
class LifetimeServices : System.__object{
this ();
static System.TimeSpan get_LeaseTime();
static System.Void set_LeaseTime(System.TimeSpan);
static System.TimeSpan get_RenewOnCallTime();
static System.Void set_RenewOnCallTime(System.TimeSpan);
static System.TimeSpan get_SponsorshipTimeout();
static System.Void set_SponsorshipTimeout(System.TimeSpan);
static System.TimeSpan get_LeaseManagerPollTime();
static System.Void set_LeaseManagerPollTime(System.TimeSpan);
}
}
