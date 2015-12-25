module System.Security;
import System;
import System.Collections;
import System.Runtime.Serialization;
import System.Reflection;
import System.Security.Policy;
import System.Security.Permissions;
import System.Threading;
public:
pragma(assembly,"mscorlib"){
class SecurityElement : Object{
}
class XmlSyntaxException : SystemException{
}
class SuppressUnmanagedCodeSecurityAttribute : Attribute{
}
class UnverifiableCodeAttribute : Attribute{
}
class AllowPartiallyTrustedCallersAttribute : Attribute{
}
class PartialTrustVisibilityLevel : Enum{
}
class SecurityCriticalScope : Enum{
}
class SecurityCriticalAttribute : Attribute{
}
class SecurityTreatAsSafeAttribute : Attribute{
}
class SecuritySafeCriticalAttribute : Attribute{
}
class SecurityTransparentAttribute : Attribute{
}
class SecurityRuleSet : Enum{
}
class SecurityRulesAttribute : Attribute{
}
class CodeAccessPermission : Object{
}
interface IEvidenceFactory{
}
interface IPermission{
}
interface ISecurityEncodable{
}
interface ISecurityPolicyEncodable{
}
interface IStackWalk{
}
class HostSecurityManagerOptions : Enum{
}
class HostSecurityManager : Object{
}
class NamedPermissionSet : PermissionSet{
}
class PermissionSet : Object{
}
class ReadOnlyPermissionSet : PermissionSet{
}
class SecureString : Object{
}
class SecurityContextSource : Enum{
}
class SecurityContext : Object{
}
class SecurityException : SystemException{
}
class SecurityState : Object{
}
class HostProtectionException : SystemException{
}
class PolicyLevelType : Enum{
}
class SecurityManager : Object{
}
class SecurityZone : Enum{
}
class VerificationException : SystemException{
}
}
