module System.Security.Principal;
import System;
import System.Security.Claims;
import System.IO;
import System.Runtime.Serialization;
import Microsoft.Win32.SafeHandles;
import System.Collections;
import System.Reflection;
public:
pragma(assembly,"mscorlib"){
class GenericIdentity : System.Security.Claims.ClaimsIdentity{
this (System.String,System.String);
this (System.String);
ClaimsIdentity Clone();
String get_Name();
String get_AuthenticationType();
Boolean get_IsAuthenticated();
}
class GenericPrincipal : System.Security.Claims.ClaimsPrincipal{
this (System.Security.Principal.IIdentity,System.String[]);
IIdentity get_Identity();
Boolean IsInRole(System.String);
}
interface IIdentity{
String get_Name();
Boolean get_IsAuthenticated();
String get_AuthenticationType();
}
interface IPrincipal{
IIdentity get_Identity();
Boolean IsInRole(System.String);
}
class PrincipalPolicy : System.Enum{
}
class TokenAccessLevels : System.Enum{
}
class TokenImpersonationLevel : System.Enum{
}
class WindowsAccountType : System.Enum{
}
class WindowsIdentity : System.Security.Claims.ClaimsIdentity{
this (System.IntPtr);
this (System.IntPtr,System.String);
this (System.IntPtr,System.String,System.Security.Principal.WindowsAccountType);
this (System.IntPtr,System.String,System.Security.Principal.WindowsAccountType,System.Boolean);
this (System.String);
this (System.String,System.String);
this (System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
static WindowsIdentity GetCurrent();
static WindowsIdentity GetCurrent(System.Boolean);
static WindowsIdentity GetCurrent(System.Security.Principal.TokenAccessLevels);
static WindowsIdentity GetAnonymous();
String get_AuthenticationType();
TokenImpersonationLevel get_ImpersonationLevel();
Boolean get_IsAuthenticated();
Boolean get_IsGuest();
Boolean get_IsSystem();
Boolean get_IsAnonymous();
String get_Name();
SecurityIdentifier get_Owner();
SecurityIdentifier get_User();
IdentityReferenceCollection get_Groups();
IntPtr get_Token();
static Void RunImpersonated(Microsoft.Win32.SafeHandles.SafeAccessTokenHandle,System.Action);
WindowsImpersonationContext Impersonate();
static WindowsImpersonationContext Impersonate(System.IntPtr);
Void Dispose();
SafeAccessTokenHandle get_AccessToken();
ClaimsIdentity Clone();
}
class WindowsImpersonationContext : System.Object{
Void Undo();
Void Dispose();
}
class WindowsBuiltInRole : System.Enum{
}
class WindowsPrincipal : System.Security.Claims.ClaimsPrincipal{
this (System.Security.Principal.WindowsIdentity);
IIdentity get_Identity();
Boolean IsInRole(System.String);
Boolean IsInRole(System.Security.Principal.WindowsBuiltInRole);
Boolean IsInRole(System.Int32);
Boolean IsInRole(System.Security.Principal.SecurityIdentifier);
}
class IdentityReference : System.Object{
String get_Value();
Boolean IsValidTargetType(System.Type);
IdentityReference Translate(System.Type);
Boolean Equals(System.Object);
Int32 GetHashCode();
String ToString();
static Boolean op_Equality(System.Security.Principal.IdentityReference,System.Security.Principal.IdentityReference);
static Boolean op_Inequality(System.Security.Principal.IdentityReference,System.Security.Principal.IdentityReference);
}
class IdentityReferenceCollection : System.Object{
this ();
this (System.Int32);
Void CopyTo(System.Security.Principal.IdentityReference[],System.Int32);
Int32 get_Count();
Boolean get_IsReadOnly();
Void Add(System.Security.Principal.IdentityReference);
Boolean Remove(System.Security.Principal.IdentityReference);
Void Clear();
Boolean Contains(System.Security.Principal.IdentityReference);
IdentityReference get_Item(System.Int32);
Void set_Item(System.Int32,System.Security.Principal.IdentityReference);
IdentityReferenceCollection Translate(System.Type);
IdentityReferenceCollection Translate(System.Type,System.Boolean);
}
class NTAccount : System.Security.Principal.IdentityReference{
this (System.String,System.String);
this (System.String);
String get_Value();
Boolean IsValidTargetType(System.Type);
IdentityReference Translate(System.Type);
Boolean Equals(System.Object);
Int32 GetHashCode();
String ToString();
static Boolean op_Equality(System.Security.Principal.NTAccount,System.Security.Principal.NTAccount);
static Boolean op_Inequality(System.Security.Principal.NTAccount,System.Security.Principal.NTAccount);
}
class WellKnownSidType : System.Enum{
}
class SecurityIdentifier : System.Security.Principal.IdentityReference{
this (System.String);
this (System.Byte[],System.Int32);
this (System.IntPtr);
this (System.Security.Principal.WellKnownSidType,System.Security.Principal.SecurityIdentifier);
IdentityReference Translate(System.Type);
static Boolean op_Equality(System.Security.Principal.SecurityIdentifier,System.Security.Principal.SecurityIdentifier);
Int32 get_BinaryLength();
SecurityIdentifier get_AccountDomainSid();
Boolean Equals(System.Object);
Boolean Equals(System.Security.Principal.SecurityIdentifier);
Int32 GetHashCode();
String ToString();
String get_Value();
Boolean IsValidTargetType(System.Type);
Boolean IsAccountSid();
static Boolean op_Inequality(System.Security.Principal.SecurityIdentifier,System.Security.Principal.SecurityIdentifier);
Int32 CompareTo(System.Security.Principal.SecurityIdentifier);
Boolean IsWellKnown(System.Security.Principal.WellKnownSidType);
Void GetBinaryForm(System.Byte[],System.Int32);
Boolean IsEqualDomainSid(System.Security.Principal.SecurityIdentifier);
}
class IdentityNotMappedException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
IdentityReferenceCollection get_UnmappedIdentities();
}
}
