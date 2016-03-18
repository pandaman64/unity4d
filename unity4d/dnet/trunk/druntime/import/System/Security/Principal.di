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
System.Security.Claims.ClaimsIdentity Clone();
System.String get_Name();
System.String get_AuthenticationType();
System.Boolean get_IsAuthenticated();
}
class GenericPrincipal : System.Security.Claims.ClaimsPrincipal{
this (System.Security.Principal.IIdentity,System.String[]);
System.Security.Principal.IIdentity get_Identity();
System.Boolean IsInRole(System.String);
}
interface IIdentity{
System.String get_Name();
System.Boolean get_IsAuthenticated();
System.String get_AuthenticationType();
}
interface IPrincipal{
System.Security.Principal.IIdentity get_Identity();
System.Boolean IsInRole(System.String);
}
class PrincipalPolicy : System.Enum{
Int32 value__;
}
class TokenAccessLevels : System.Enum{
Int32 value__;
}
class TokenImpersonationLevel : System.Enum{
Int32 value__;
}
class WindowsAccountType : System.Enum{
Int32 value__;
}
class WindowsIdentity : System.Security.Claims.ClaimsIdentity{
this (System.IntPtr);
this (System.IntPtr,System.String);
this (System.IntPtr,System.String,System.Security.Principal.WindowsAccountType);
this (System.IntPtr,System.String,System.Security.Principal.WindowsAccountType,System.Boolean);
this (System.String);
this (System.String,System.String);
this (System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
static System.Security.Principal.WindowsIdentity GetCurrent();
static System.Security.Principal.WindowsIdentity GetCurrent(System.Boolean);
static System.Security.Principal.WindowsIdentity GetCurrent(System.Security.Principal.TokenAccessLevels);
static System.Security.Principal.WindowsIdentity GetAnonymous();
System.String get_AuthenticationType();
System.Security.Principal.TokenImpersonationLevel get_ImpersonationLevel();
System.Boolean get_IsAuthenticated();
System.Boolean get_IsGuest();
System.Boolean get_IsSystem();
System.Boolean get_IsAnonymous();
System.String get_Name();
System.Security.Principal.SecurityIdentifier get_Owner();
System.Security.Principal.SecurityIdentifier get_User();
System.Security.Principal.IdentityReferenceCollection get_Groups();
System.IntPtr get_Token();
static System.Void RunImpersonated(Microsoft.Win32.SafeHandles.SafeAccessTokenHandle,System.Action);
System.Security.Principal.WindowsImpersonationContext Impersonate();
static System.Security.Principal.WindowsImpersonationContext Impersonate(System.IntPtr);
System.Void Dispose();
Microsoft.Win32.SafeHandles.SafeAccessTokenHandle get_AccessToken();
System.Security.Claims.ClaimsIdentity Clone();
}
class WindowsImpersonationContext : System.__object{
System.Void Undo();
System.Void Dispose();
}
class WindowsBuiltInRole : System.Enum{
Int32 value__;
}
class WindowsPrincipal : System.Security.Claims.ClaimsPrincipal{
this (System.Security.Principal.WindowsIdentity);
System.Security.Principal.IIdentity get_Identity();
System.Boolean IsInRole(System.String);
System.Boolean IsInRole(System.Security.Principal.WindowsBuiltInRole);
System.Boolean IsInRole(System.Int32);
System.Boolean IsInRole(System.Security.Principal.SecurityIdentifier);
}
class IdentityReference : System.__object{
System.String get_Value();
System.Boolean IsValidTargetType(System.Type);
System.Security.Principal.IdentityReference Translate(System.Type);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.String ToString();
static System.Boolean op_Equality(System.Security.Principal.IdentityReference,System.Security.Principal.IdentityReference);
static System.Boolean op_Inequality(System.Security.Principal.IdentityReference,System.Security.Principal.IdentityReference);
}
class IdentityReferenceCollection : System.__object{
this ();
this (System.Int32);
System.Void CopyTo(System.Security.Principal.IdentityReference[],System.Int32);
System.Int32 get_Count();
System.Boolean get_IsReadOnly();
System.Void Add(System.Security.Principal.IdentityReference);
System.Boolean Remove(System.Security.Principal.IdentityReference);
System.Void Clear();
System.Boolean Contains(System.Security.Principal.IdentityReference);
System.Security.Principal.IdentityReference get_Item(System.Int32);
System.Void set_Item(System.Int32,System.Security.Principal.IdentityReference);
System.Security.Principal.IdentityReferenceCollection Translate(System.Type);
System.Security.Principal.IdentityReferenceCollection Translate(System.Type,System.Boolean);
}
class NTAccount : System.Security.Principal.IdentityReference{
this (System.String,System.String);
this (System.String);
System.String get_Value();
System.Boolean IsValidTargetType(System.Type);
System.Security.Principal.IdentityReference Translate(System.Type);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.String ToString();
static System.Boolean op_Equality(System.Security.Principal.NTAccount,System.Security.Principal.NTAccount);
static System.Boolean op_Inequality(System.Security.Principal.NTAccount,System.Security.Principal.NTAccount);
}
class WellKnownSidType : System.Enum{
Int32 value__;
}
class SecurityIdentifier : System.Security.Principal.IdentityReference{
this (System.String);
this (System.Byte[],System.Int32);
this (System.IntPtr);
this (System.Security.Principal.WellKnownSidType,System.Security.Principal.SecurityIdentifier);
System.Security.Principal.IdentityReference Translate(System.Type);
static System.Boolean op_Equality(System.Security.Principal.SecurityIdentifier,System.Security.Principal.SecurityIdentifier);
System.Int32 get_BinaryLength();
System.Security.Principal.SecurityIdentifier get_AccountDomainSid();
System.Boolean Equals(System.__object);
System.Boolean Equals(System.Security.Principal.SecurityIdentifier);
System.Int32 GetHashCode();
System.String ToString();
System.String get_Value();
System.Boolean IsValidTargetType(System.Type);
System.Boolean IsAccountSid();
static System.Boolean op_Inequality(System.Security.Principal.SecurityIdentifier,System.Security.Principal.SecurityIdentifier);
System.Int32 CompareTo(System.Security.Principal.SecurityIdentifier);
System.Boolean IsWellKnown(System.Security.Principal.WellKnownSidType);
System.Void GetBinaryForm(System.Byte[],System.Int32);
System.Boolean IsEqualDomainSid(System.Security.Principal.SecurityIdentifier);
}
}
