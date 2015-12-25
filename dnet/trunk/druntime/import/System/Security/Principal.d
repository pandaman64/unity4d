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
class GenericIdentity : ClaimsIdentity{
}
class GenericPrincipal : ClaimsPrincipal{
}
interface IIdentity{
}
interface IPrincipal{
}
class PrincipalPolicy : Enum{
}
class TokenAccessLevels : Enum{
}
class TokenImpersonationLevel : Enum{
}
class WindowsAccountType : Enum{
}
class WindowsIdentity : ClaimsIdentity{
}
class WindowsImpersonationContext : Object{
}
class WindowsBuiltInRole : Enum{
}
class WindowsPrincipal : ClaimsPrincipal{
}
class IdentityReference : Object{
}
class IdentityReferenceCollection : Object{
}
class NTAccount : IdentityReference{
}
class WellKnownSidType : Enum{
}
class SecurityIdentifier : IdentityReference{
}
class IdentityNotMappedException : SystemException{
}
}
