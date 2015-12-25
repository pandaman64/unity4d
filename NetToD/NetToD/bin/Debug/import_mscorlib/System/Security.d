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
class SecurityElement : System.Object{
this (System.String);
this (System.String,System.String);
Void AddAttribute(System.String,System.String);
String Attribute(System.String);
static SecurityElement FromString(System.String);
String get_Tag();
Void set_Tag(System.String);
Hashtable get_Attributes();
Void set_Attributes(System.Collections.Hashtable);
String get_Text();
Void set_Text(System.String);
ArrayList get_Children();
Void set_Children(System.Collections.ArrayList);
Void AddChild(System.Security.SecurityElement);
Boolean Equal(System.Security.SecurityElement);
SecurityElement Copy();
static Boolean IsValidTag(System.String);
static Boolean IsValidText(System.String);
static Boolean IsValidAttributeName(System.String);
static Boolean IsValidAttributeValue(System.String);
static String Escape(System.String);
String ToString();
SecurityElement SearchForChildByTag(System.String);
String SearchForTextOfTag(System.String);
}
class XmlSyntaxException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
this (System.Int32);
this (System.Int32,System.String);
}
class SuppressUnmanagedCodeSecurityAttribute : System.Attribute{
this ();
}
class UnverifiableCodeAttribute : System.Attribute{
this ();
}
class AllowPartiallyTrustedCallersAttribute : System.Attribute{
this ();
PartialTrustVisibilityLevel get_PartialTrustVisibilityLevel();
Void set_PartialTrustVisibilityLevel(System.Security.PartialTrustVisibilityLevel);
}
class PartialTrustVisibilityLevel : System.Enum{
}
class SecurityCriticalScope : System.Enum{
}
class SecurityCriticalAttribute : System.Attribute{
this ();
this (System.Security.SecurityCriticalScope);
SecurityCriticalScope get_Scope();
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
Boolean get_SkipVerificationInFullTrust();
Void set_SkipVerificationInFullTrust(System.Boolean);
SecurityRuleSet get_RuleSet();
}
class CodeAccessPermission : System.Object{
static Void RevertAssert();
static Void RevertDeny();
static Void RevertPermitOnly();
static Void RevertAll();
Void Demand();
Void Assert();
Void Deny();
Void PermitOnly();
IPermission Union(System.Security.IPermission);
SecurityElement ToXml();
Void FromXml(System.Security.SecurityElement);
String ToString();
IPermission Copy();
IPermission Intersect(System.Security.IPermission);
Boolean IsSubsetOf(System.Security.IPermission);
Boolean Equals(System.Object);
Int32 GetHashCode();
}
interface IEvidenceFactory{
Evidence get_Evidence();
}
interface IPermission{
IPermission Copy();
IPermission Intersect(System.Security.IPermission);
IPermission Union(System.Security.IPermission);
Boolean IsSubsetOf(System.Security.IPermission);
Void Demand();
}
interface ISecurityEncodable{
SecurityElement ToXml();
Void FromXml(System.Security.SecurityElement);
}
interface ISecurityPolicyEncodable{
SecurityElement ToXml(System.Security.Policy.PolicyLevel);
Void FromXml(System.Security.SecurityElement,System.Security.Policy.PolicyLevel);
}
interface IStackWalk{
Void Assert();
Void Demand();
Void Deny();
Void PermitOnly();
}
class HostSecurityManagerOptions : System.Enum{
}
class HostSecurityManager : System.Object{
this ();
HostSecurityManagerOptions get_Flags();
PolicyLevel get_DomainPolicy();
Evidence ProvideAppDomainEvidence(System.Security.Policy.Evidence);
Evidence ProvideAssemblyEvidence(System.Reflection.Assembly,System.Security.Policy.Evidence);
ApplicationTrust DetermineApplicationTrust(System.Security.Policy.Evidence,System.Security.Policy.Evidence,System.Security.Policy.TrustManagerContext);
PermissionSet ResolvePolicy(System.Security.Policy.Evidence);
Type[] GetHostSuppliedAppDomainEvidenceTypes();
Type[] GetHostSuppliedAssemblyEvidenceTypes(System.Reflection.Assembly);
EvidenceBase GenerateAppDomainEvidence(System.Type);
EvidenceBase GenerateAssemblyEvidence(System.Type,System.Reflection.Assembly);
}
class NamedPermissionSet : System.Security.PermissionSet{
this (System.Security.NamedPermissionSet);
this (System.String);
this (System.String,System.Security.Permissions.PermissionState);
this (System.String,System.Security.PermissionSet);
SecurityElement ToXml();
String get_Name();
Void set_Name(System.String);
String get_Description();
Void set_Description(System.String);
PermissionSet Copy();
NamedPermissionSet Copy(System.String);
Void FromXml(System.Security.SecurityElement);
Boolean Equals(System.Object);
Int32 GetHashCode();
}
class PermissionSet : System.Object{
this (System.Security.Permissions.PermissionState);
this (System.Security.PermissionSet);
Void CopyTo(System.Array,System.Int32);
Object get_SyncRoot();
Boolean get_IsSynchronized();
Boolean get_IsReadOnly();
Boolean IsEmpty();
Int32 get_Count();
IPermission GetPermission(System.Type);
IPermission SetPermission(System.Security.IPermission);
IPermission AddPermission(System.Security.IPermission);
IPermission RemovePermission(System.Type);
Boolean IsUnrestricted();
Boolean IsSubsetOf(System.Security.PermissionSet);
PermissionSet Intersect(System.Security.PermissionSet);
PermissionSet Union(System.Security.PermissionSet);
Boolean Equals(System.Object);
Int32 GetHashCode();
Void Demand();
Void Assert();
Void Deny();
Void PermitOnly();
PermissionSet Copy();
IEnumerator GetEnumerator();
String ToString();
Void FromXml(System.Security.SecurityElement);
SecurityElement ToXml();
static Byte[] ConvertPermissionSet(System.String,System.Byte[],System.String);
Boolean ContainsNonCodeAccessPermissions();
static Void RevertAssert();
}
class ReadOnlyPermissionSet : System.Security.PermissionSet{
this (System.Security.SecurityElement);
Boolean get_IsReadOnly();
PermissionSet Copy();
SecurityElement ToXml();
Void FromXml(System.Security.SecurityElement);
}
class SecureString : System.Object{
this ();
Int32 get_Length();
Void AppendChar(System.Char);
Void Clear();
SecureString Copy();
Void Dispose();
Void InsertAt(System.Int32,System.Char);
Boolean IsReadOnly();
Void MakeReadOnly();
Void RemoveAt(System.Int32);
Void SetAt(System.Int32,System.Char);
}
class SecurityContextSource : System.Enum{
}
class SecurityContext : System.Object{
static Void Run(System.Security.SecurityContext,System.Threading.ContextCallback,System.Object);
SecurityContext CreateCopy();
static SecurityContext Capture();
Void Dispose();
static AsyncFlowControl SuppressFlow();
static AsyncFlowControl SuppressFlowWindowsIdentity();
static Void RestoreFlow();
static Boolean IsFlowSuppressed();
static Boolean IsWindowsIdentityFlowSuppressed();
}
class SecurityException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Type);
this (System.String,System.Type,System.String);
this (System.String,System.Exception);
this (System.String,System.Reflection.AssemblyName,System.Security.PermissionSet,System.Security.PermissionSet,System.Reflection.MethodInfo,System.Security.Permissions.SecurityAction,System.Object,System.Security.IPermission,System.Security.Policy.Evidence);
this (System.String,System.Object,System.Object,System.Reflection.MethodInfo,System.Object,System.Security.IPermission);
SecurityAction get_Action();
Void set_Action(System.Security.Permissions.SecurityAction);
Type get_PermissionType();
Void set_PermissionType(System.Type);
IPermission get_FirstPermissionThatFailed();
Void set_FirstPermissionThatFailed(System.Security.IPermission);
String get_PermissionState();
Void set_PermissionState(System.String);
Object get_Demanded();
Void set_Demanded(System.Object);
String get_GrantedSet();
Void set_GrantedSet(System.String);
String get_RefusedSet();
Void set_RefusedSet(System.String);
Object get_DenySetInstance();
Void set_DenySetInstance(System.Object);
Object get_PermitOnlySetInstance();
Void set_PermitOnlySetInstance(System.Object);
AssemblyName get_FailedAssemblyInfo();
Void set_FailedAssemblyInfo(System.Reflection.AssemblyName);
MethodInfo get_Method();
Void set_Method(System.Reflection.MethodInfo);
SecurityZone get_Zone();
Void set_Zone(System.Security.SecurityZone);
String get_Url();
Void set_Url(System.String);
String ToString();
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
}
class SecurityState : System.Object{
Boolean IsStateAvailable();
Void EnsureState();
}
class HostProtectionException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
this (System.String,System.Security.Permissions.HostProtectionResource,System.Security.Permissions.HostProtectionResource);
HostProtectionResource get_ProtectedResources();
HostProtectionResource get_DemandedResources();
String ToString();
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
}
class PolicyLevelType : System.Enum{
}
class SecurityManager : System.Object{
static PermissionSet GetStandardSandbox(System.Security.Policy.Evidence);
static PolicyLevel LoadPolicyLevelFromString(System.String,System.Security.PolicyLevelType);
static Boolean IsGranted(System.Security.IPermission);
static PolicyLevel LoadPolicyLevelFromFile(System.String,System.Security.PolicyLevelType);
static Void SavePolicyLevel(System.Security.Policy.PolicyLevel);
static PermissionSet ResolvePolicy(System.Security.Policy.Evidence);
static PermissionSet ResolvePolicy(System.Security.Policy.Evidence[]);
static Boolean CurrentThreadRequiresSecurityContextCapture();
static PermissionSet ResolveSystemPolicy(System.Security.Policy.Evidence);
static IEnumerator ResolvePolicyGroups(System.Security.Policy.Evidence);
static IEnumerator PolicyHierarchy();
static Void SavePolicy();
static Boolean get_CheckExecutionRights();
static Void set_CheckExecutionRights(System.Boolean);
static Boolean get_SecurityEnabled();
static Void set_SecurityEnabled(System.Boolean);
}
class SecurityZone : System.Enum{
}
class VerificationException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
}
}
