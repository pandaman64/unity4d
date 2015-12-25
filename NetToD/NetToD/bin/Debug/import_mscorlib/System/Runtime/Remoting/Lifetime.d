module System.Runtime.Remoting.Lifetime;
import System;
import System.Runtime.Remoting;
public:
pragma(assembly,"mscorlib"){
class ClientSponsor : System.MarshalByRefObject{
this ();
this (System.TimeSpan);
TimeSpan get_RenewalTime();
Void set_RenewalTime(System.TimeSpan);
Boolean Register(System.MarshalByRefObject);
Void Unregister(System.MarshalByRefObject);
TimeSpan Renewal(System.Runtime.Remoting.Lifetime.ILease);
Void Close();
Object InitializeLifetimeService();
}
interface ILease{
Void Register(System.Runtime.Remoting.Lifetime.ISponsor,System.TimeSpan);
Void Register(System.Runtime.Remoting.Lifetime.ISponsor);
Void Unregister(System.Runtime.Remoting.Lifetime.ISponsor);
TimeSpan Renew(System.TimeSpan);
TimeSpan get_RenewOnCallTime();
Void set_RenewOnCallTime(System.TimeSpan);
TimeSpan get_SponsorshipTimeout();
Void set_SponsorshipTimeout(System.TimeSpan);
TimeSpan get_InitialLeaseTime();
Void set_InitialLeaseTime(System.TimeSpan);
TimeSpan get_CurrentLeaseTime();
LeaseState get_CurrentState();
}
interface ISponsor{
TimeSpan Renewal(System.Runtime.Remoting.Lifetime.ILease);
}
class LeaseState : System.Enum{
}
class LifetimeServices : System.Object{
this ();
static TimeSpan get_LeaseTime();
static Void set_LeaseTime(System.TimeSpan);
static TimeSpan get_RenewOnCallTime();
static Void set_RenewOnCallTime(System.TimeSpan);
static TimeSpan get_SponsorshipTimeout();
static Void set_SponsorshipTimeout(System.TimeSpan);
static TimeSpan get_LeaseManagerPollTime();
static Void set_LeaseManagerPollTime(System.TimeSpan);
}
}
