module System.Security.Claims;
import System.IO;
import System;
import System.Security.Principal;
public:
pragma(assembly,"mscorlib"){
class Claim : System.__object{
this (System.IO.BinaryReader);
this (System.IO.BinaryReader,System.Security.Claims.ClaimsIdentity);
this (System.String,System.String);
this (System.String,System.String,System.String);
this (System.String,System.String,System.String,System.String);
this (System.String,System.String,System.String,System.String,System.String);
this (System.String,System.String,System.String,System.String,System.String,System.Security.Claims.ClaimsIdentity);
System.String get_Issuer();
System.String get_OriginalIssuer();
System.Security.Claims.ClaimsIdentity get_Subject();
System.String get_Type();
System.String get_Value();
System.String get_ValueType();
System.Security.Claims.Claim Clone();
System.Security.Claims.Claim Clone(System.Security.Claims.ClaimsIdentity);
System.Void WriteTo(System.IO.BinaryWriter);
System.String ToString();
}
class ClaimsIdentity : System.__object{
this ();
this (System.Security.Principal.IIdentity);
this (System.String);
this (System.String,System.String,System.String);
this (System.IO.BinaryReader);
System.String get_AuthenticationType();
System.Boolean get_IsAuthenticated();
System.Security.Claims.ClaimsIdentity get_Actor();
System.Void set_Actor(System.Security.Claims.ClaimsIdentity);
System.__object get_BootstrapContext();
System.Void set_BootstrapContext(System.__object);
System.String get_Label();
System.Void set_Label(System.String);
System.String get_Name();
System.String get_NameClaimType();
System.String get_RoleClaimType();
System.Security.Claims.ClaimsIdentity Clone();
System.Void AddClaim(System.Security.Claims.Claim);
System.Boolean TryRemoveClaim(System.Security.Claims.Claim);
System.Void RemoveClaim(System.Security.Claims.Claim);
System.Boolean HasClaim(System.String,System.String);
System.Security.Claims.Claim FindFirst(System.String);
System.Void WriteTo(System.IO.BinaryWriter);
}
class ClaimsPrincipal : System.__object{
this ();
this (System.Security.Principal.IIdentity);
this (System.Security.Principal.IPrincipal);
this (System.IO.BinaryReader);
System.Void AddIdentity(System.Security.Claims.ClaimsIdentity);
System.Security.Claims.ClaimsPrincipal Clone();
static System.Security.Claims.ClaimsPrincipal get_Current();
System.Security.Claims.Claim FindFirst(System.String);
System.Boolean HasClaim(System.String,System.String);
System.Security.Principal.IIdentity get_Identity();
System.Boolean IsInRole(System.String);
System.Void WriteTo(System.IO.BinaryWriter);
}
class ClaimTypes : System.__object{
}
class ClaimValueTypes : System.__object{
}
}
