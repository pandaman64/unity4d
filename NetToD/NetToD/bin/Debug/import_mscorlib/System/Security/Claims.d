module System.Security.Claims;
import System.IO;
import System;
import System.Security.Principal;
public:
pragma(assembly,"mscorlib"){
class Claim : System.Object{
this (System.IO.BinaryReader);
this (System.IO.BinaryReader,System.Security.Claims.ClaimsIdentity);
this (System.String,System.String);
this (System.String,System.String,System.String);
this (System.String,System.String,System.String,System.String);
this (System.String,System.String,System.String,System.String,System.String);
this (System.String,System.String,System.String,System.String,System.String,System.Security.Claims.ClaimsIdentity);
String get_Issuer();
String get_OriginalIssuer();
ClaimsIdentity get_Subject();
String get_Type();
String get_Value();
String get_ValueType();
Claim Clone();
Claim Clone(System.Security.Claims.ClaimsIdentity);
Void WriteTo(System.IO.BinaryWriter);
String ToString();
}
class ClaimsIdentity : System.Object{
this ();
this (System.Security.Principal.IIdentity);
this (System.String);
this (System.String,System.String,System.String);
this (System.IO.BinaryReader);
String get_AuthenticationType();
Boolean get_IsAuthenticated();
ClaimsIdentity get_Actor();
Void set_Actor(System.Security.Claims.ClaimsIdentity);
Object get_BootstrapContext();
Void set_BootstrapContext(System.Object);
String get_Label();
Void set_Label(System.String);
String get_Name();
String get_NameClaimType();
String get_RoleClaimType();
ClaimsIdentity Clone();
Void AddClaim(System.Security.Claims.Claim);
Boolean TryRemoveClaim(System.Security.Claims.Claim);
Void RemoveClaim(System.Security.Claims.Claim);
Boolean HasClaim(System.String,System.String);
Claim FindFirst(System.String);
Void WriteTo(System.IO.BinaryWriter);
}
class ClaimsPrincipal : System.Object{
this ();
this (System.Security.Principal.IIdentity);
this (System.Security.Principal.IPrincipal);
this (System.IO.BinaryReader);
Void AddIdentity(System.Security.Claims.ClaimsIdentity);
ClaimsPrincipal Clone();
static ClaimsPrincipal get_Current();
Claim FindFirst(System.String);
Boolean HasClaim(System.String,System.String);
IIdentity get_Identity();
Boolean IsInRole(System.String);
Void WriteTo(System.IO.BinaryWriter);
}
class ClaimTypes : System.Object{
}
class ClaimValueTypes : System.Object{
}
}
