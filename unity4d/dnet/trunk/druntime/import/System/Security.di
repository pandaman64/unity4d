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
class SecurityElement : System.__object{
this (System.String);
this (System.String,System.String);
System.Void AddAttribute(System.String,System.String);
System.String Attribute(System.String);
static System.Security.SecurityElement FromString(System.String);
System.String get_Tag();
System.Void set_Tag(System.String);
System.Collections.Hashtable get_Attributes();
System.Void set_Attributes(System.Collections.Hashtable);
System.String get_Text();
System.Void set_Text(System.String);
System.Collections.ArrayList get_Children();
System.Void set_Children(System.Collections.ArrayList);
System.Void AddChild(System.Security.SecurityElement);
System.Boolean Equal(System.Security.SecurityElement);
System.Security.SecurityElement Copy();
static System.Boolean IsValidTag(System.String);
static System.Boolean IsValidText(System.String);
static System.Boolean IsValidAttributeName(System.String);
static System.Boolean IsValidAttributeValue(System.String);
static System.String Escape(System.String);
System.String ToString();
System.Security.SecurityElement SearchForChildByTag(System.String);
System.String SearchForTextOfTag(System.String);
}
class SuppressUnmanagedCodeSecurityAttribute : System.Attribute{
this ();
}
class UnverifiableCodeAttribute : System.Attribute{
this ();
}
class AllowPartiallyTrustedCallersAttribute : System.Attribute{
this ();
System.Security.PartialTrustVisibilityLevel get_PartialTrustVisibilityLevel();
System.Void set_PartialTrustVisibilityLevel(System.Security.PartialTrustVisibilityLevel);
}
class PartialTrustVisibilityLevel : System.Enum{
}
class SecurityCriticalScope : System.Enum{
}
class SecurityCriticalAttribute : System.Attribute{
this ();
this (System.Security.SecurityCriticalScope);
System.Security.SecurityCriticalScope get_Scope();
}
class SecurityTreatAsSafeAttribute : System.Attribute{
this ();
}
class SecuritySafeCriticalAttribute : System.Attribute{
this ();
}
class SecurityTransparentAttribute : System.Attribute{
this ();
}
class SecurityRuleSet : System.Enum{
}
class SecurityRulesAttribute : System.Attribute{
this (System.Security.SecurityRuleSet);
System.Boolean get_SkipVerificationInFullTrust();
System.Void set_SkipVerificationInFullTrust(System.Boolean);
System.Security.SecurityRuleSet get_RuleSet();
}
class CodeAccessPermission : System.__object{
static System.Void RevertAssert();
static System.Void RevertDeny();
static System.Void RevertPermitOnly();
static System.Void RevertAll();
System.Void Demand();
System.Void Assert();
System.Void Deny();
System.Void PermitOnly();
System.Security.IPermission Union(System.Security.IPermission);
System.Security.SecurityElement ToXml();
System.Void FromXml(System.Security.SecurityElement);
System.String ToString();
System.Security.IPermission Copy();
System.Security.IPermission Intersect(System.Security.IPermission);
System.Boolean IsSubsetOf(System.Security.IPermission);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
}
interface IEvidenceFactory{
System.Security.Policy.Evidence get_Evidence();
}
interface IPermission{
System.Security.IPermission Copy();
System.Security.IPermission Intersect(System.Security.IPermission);
System.Security.IPermission Union(System.Security.IPermission);
System.Boolean IsSubsetOf(System.Security.IPermission);
System.Void Demand();
}
interface ISecurityEncodable{
System.Security.SecurityElement ToXml();
System.Void FromXml(System.Security.SecurityElement);
}
interface ISecurityPolicyEncodable{
System.Security.SecurityElement ToXml(System.Security.Policy.PolicyLevel);
System.Void FromXml(System.Security.SecurityElement,System.Security.Policy.PolicyLevel);
}
interface IStackWalk{
System.Void Assert();
System.Void Demand();
System.Void Deny();
System.Void PermitOnly();
}
class HostSecurityManagerOptions : System.Enum{
}
class HostSecurityManager : System.__object{
this ();
System.Security.HostSecurityManagerOptions get_Flags();
System.Security.Policy.PolicyLevel get_DomainPolicy();
System.Security.Policy.Evidence ProvideAppDomainEvidence(System.Security.Policy.Evidence);
System.Security.Policy.Evidence ProvideAssemblyEvidence(System.Reflection.Assembly,System.Security.Policy.Evidence);
System.Security.Policy.ApplicationTrust DetermineApplicationTrust(System.Security.Policy.Evidence,System.Security.Policy.Evidence,System.Security.Policy.TrustManagerContext);
System.Security.PermissionSet ResolvePolicy(System.Security.Policy.Evidence);
System.Type[] GetHostSuppliedAppDomainEvidenceTypes();
System.Type[] GetHostSuppliedAssemblyEvidenceTypes(System.Reflection.Assembly);
System.Security.Policy.EvidenceBase GenerateAppDomainEvidence(System.Type);
System.Security.Policy.EvidenceBase GenerateAssemblyEvidence(System.Type,System.Reflection.Assembly);
}
class NamedPermissionSet : System.Security.PermissionSet{
this (System.Security.NamedPermissionSet);
this (System.String);
this (System.String,System.Security.Permissions.PermissionState);
this (System.String,System.Security.PermissionSet);
System.Security.SecurityElement ToXml();
System.String get_Name();
System.Void set_Name(System.String);
System.String get_Description();
System.Void set_Description(System.String);
System.Security.PermissionSet Copy();
System.Security.NamedPermissionSet Copy(System.String);
System.Void FromXml(System.Security.SecurityElement);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
}
class PermissionSet : System.__object{
this (System.Security.Permissions.PermissionState);
this (System.Security.PermissionSet);
System.Void CopyTo(System.Array,System.Int32);
System.__object get_SyncRoot();
System.Boolean get_IsSynchronized();
System.Boolean get_IsReadOnly();
System.Boolean IsEmpty();
System.Int32 get_Count();
System.Security.IPermission GetPermission(System.Type);
System.Security.IPermission SetPermission(System.Security.IPermission);
System.Security.IPermission AddPermission(System.Security.IPermission);
System.Security.IPermission RemovePermission(System.Type);
System.Boolean IsUnrestricted();
System.Boolean IsSubsetOf(System.Security.PermissionSet);
System.Security.PermissionSet Intersect(System.Security.PermissionSet);
System.Security.PermissionSet Union(System.Security.PermissionSet);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.Void Demand();
System.Void Assert();
System.Void Deny();
System.Void PermitOnly();
System.Security.PermissionSet Copy();
System.Collections.IEnumerator GetEnumerator();
System.String ToString();
System.Void FromXml(System.Security.SecurityElement);
System.Security.SecurityElement ToXml();
static System.Byte[] ConvertPermissionSet(System.String,System.Byte[],System.String);
System.Boolean ContainsNonCodeAccessPermissions();
static System.Void RevertAssert();
}
class ReadOnlyPermissionSet : System.Security.PermissionSet{
this (System.Security.SecurityElement);
System.Boolean get_IsReadOnly();
System.Security.PermissionSet Copy();
System.Security.SecurityElement ToXml();
System.Void FromXml(System.Security.SecurityElement);
}
class SecureString : System.__object{
this ();
System.Int32 get_Length();
System.Void AppendChar(System.Char);
System.Void Clear();
System.Security.SecureString Copy();
System.Void Dispose();
System.Void InsertAt(System.Int32,System.Char);
System.Boolean IsReadOnly();
System.Void MakeReadOnly();
System.Void RemoveAt(System.Int32);
System.Void SetAt(System.Int32,System.Char);
}
class SecurityContextSource : System.Enum{
}
class SecurityContext : System.__object{
static System.Void Run(System.Security.SecurityContext,System.Threading.ContextCallback,System.__object);
System.Security.SecurityContext CreateCopy();
static System.Security.SecurityContext Capture();
System.Void Dispose();
static System.Threading.AsyncFlowControl SuppressFlow();
static System.Threading.AsyncFlowControl SuppressFlowWindowsIdentity();
static System.Void RestoreFlow();
static System.Boolean IsFlowSuppressed();
static System.Boolean IsWindowsIdentityFlowSuppressed();
}
class SecurityState : System.__object{
System.Boolean IsStateAvailable();
System.Void EnsureState();
}
class PolicyLevelType : System.Enum{
}
class SecurityManager : System.__object{
static System.Security.PermissionSet GetStandardSandbox(System.Security.Policy.Evidence);
static System.Security.Policy.PolicyLevel LoadPolicyLevelFromString(System.String,System.Security.PolicyLevelType);
static System.Boolean IsGranted(System.Security.IPermission);
static System.Security.Policy.PolicyLevel LoadPolicyLevelFromFile(System.String,System.Security.PolicyLevelType);
static System.Void SavePolicyLevel(System.Security.Policy.PolicyLevel);
static System.Security.PermissionSet ResolvePolicy(System.Security.Policy.Evidence);
static System.Security.PermissionSet ResolvePolicy(System.Security.Policy.Evidence[]);
static System.Boolean CurrentThreadRequiresSecurityContextCapture();
static System.Security.PermissionSet ResolveSystemPolicy(System.Security.Policy.Evidence);
static System.Collections.IEnumerator ResolvePolicyGroups(System.Security.Policy.Evidence);
static System.Collections.IEnumerator PolicyHierarchy();
static System.Void SavePolicy();
static System.Boolean get_CheckExecutionRights();
static System.Void set_CheckExecutionRights(System.Boolean);
static System.Boolean get_SecurityEnabled();
static System.Void set_SecurityEnabled(System.Boolean);
}
class SecurityZone : System.Enum{
}
}
