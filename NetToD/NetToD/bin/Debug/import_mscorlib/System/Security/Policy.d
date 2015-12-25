module System.Security.Policy;
import System.Security;
import System;
import System.Collections;
import System.Security.Permissions;
import System.Runtime.Serialization;
import System.Reflection;
import System.Security.Cryptography;
import System.Security.Cryptography.X509Certificates;
public:
pragma(assembly,"mscorlib"){
class AllMembershipCondition : System.Object{
this ();
SecurityElement ToXml(System.Security.Policy.PolicyLevel);
Void FromXml(System.Security.SecurityElement,System.Security.Policy.PolicyLevel);
Boolean Check(System.Security.Policy.Evidence);
IMembershipCondition Copy();
String ToString();
SecurityElement ToXml();
Void FromXml(System.Security.SecurityElement);
Boolean Equals(System.Object);
Int32 GetHashCode();
}
class ApplicationDirectory : System.Security.Policy.EvidenceBase{
this (System.String);
String get_Directory();
Boolean Equals(System.Object);
Int32 GetHashCode();
EvidenceBase Clone();
Object Copy();
String ToString();
}
class ApplicationDirectoryMembershipCondition : System.Object{
this ();
Boolean Check(System.Security.Policy.Evidence);
IMembershipCondition Copy();
SecurityElement ToXml();
Void FromXml(System.Security.SecurityElement);
SecurityElement ToXml(System.Security.Policy.PolicyLevel);
Void FromXml(System.Security.SecurityElement,System.Security.Policy.PolicyLevel);
Boolean Equals(System.Object);
Int32 GetHashCode();
String ToString();
}
class ApplicationSecurityInfo : System.Object{
this (System.ActivationContext);
ApplicationId get_ApplicationId();
Void set_ApplicationId(System.ApplicationId);
ApplicationId get_DeploymentId();
Void set_DeploymentId(System.ApplicationId);
PermissionSet get_DefaultRequestSet();
Void set_DefaultRequestSet(System.Security.PermissionSet);
Evidence get_ApplicationEvidence();
Void set_ApplicationEvidence(System.Security.Policy.Evidence);
}
class ApplicationSecurityManager : System.Object{
static Boolean DetermineApplicationTrust(System.ActivationContext,System.Security.Policy.TrustManagerContext);
static ApplicationTrustCollection get_UserApplicationTrusts();
static IApplicationTrustManager get_ApplicationTrustManager();
}
class ApplicationVersionMatch : System.Enum{
}
class ApplicationTrust : System.Security.Policy.EvidenceBase{
this (System.ApplicationIdentity);
this ();
SecurityElement ToXml();
Void FromXml(System.Security.SecurityElement);
ApplicationIdentity get_ApplicationIdentity();
Void set_ApplicationIdentity(System.ApplicationIdentity);
PolicyStatement get_DefaultGrantSet();
Void set_DefaultGrantSet(System.Security.Policy.PolicyStatement);
Boolean get_IsApplicationTrustedToRun();
Void set_IsApplicationTrustedToRun(System.Boolean);
Boolean get_Persist();
Void set_Persist(System.Boolean);
Object get_ExtraInfo();
Void set_ExtraInfo(System.Object);
EvidenceBase Clone();
}
class ApplicationTrustCollection : System.Object{
Int32 get_Count();
ApplicationTrust get_Item(System.Int32);
ApplicationTrust get_Item(System.String);
Int32 Add(System.Security.Policy.ApplicationTrust);
Void AddRange(System.Security.Policy.ApplicationTrust[]);
Void AddRange(System.Security.Policy.ApplicationTrustCollection);
ApplicationTrustCollection Find(System.ApplicationIdentity,System.Security.Policy.ApplicationVersionMatch);
Void Remove(System.ApplicationIdentity,System.Security.Policy.ApplicationVersionMatch);
Void Remove(System.Security.Policy.ApplicationTrust);
Void RemoveRange(System.Security.Policy.ApplicationTrust[]);
Void RemoveRange(System.Security.Policy.ApplicationTrustCollection);
Void Clear();
ApplicationTrustEnumerator GetEnumerator();
Void CopyTo(System.Security.Policy.ApplicationTrust[],System.Int32);
Boolean get_IsSynchronized();
Object get_SyncRoot();
}
class ApplicationTrustEnumerator : System.Object{
ApplicationTrust get_Current();
Boolean MoveNext();
Void Reset();
}
class CodeGroup : System.Object{
Void FromXml(System.Security.SecurityElement,System.Security.Policy.PolicyLevel);
Void AddChild(System.Security.Policy.CodeGroup);
Void RemoveChild(System.Security.Policy.CodeGroup);
IList get_Children();
Void set_Children(System.Collections.IList);
IMembershipCondition get_MembershipCondition();
Void set_MembershipCondition(System.Security.Policy.IMembershipCondition);
PolicyStatement get_PolicyStatement();
Void set_PolicyStatement(System.Security.Policy.PolicyStatement);
String get_Name();
Void set_Name(System.String);
String get_Description();
Void set_Description(System.String);
PolicyStatement Resolve(System.Security.Policy.Evidence);
CodeGroup ResolveMatchingCodeGroups(System.Security.Policy.Evidence);
CodeGroup Copy();
String get_PermissionSetName();
String get_AttributeString();
String get_MergeLogic();
SecurityElement ToXml();
Void FromXml(System.Security.SecurityElement);
SecurityElement ToXml(System.Security.Policy.PolicyLevel);
Boolean Equals(System.Object);
Boolean Equals(System.Security.Policy.CodeGroup,System.Boolean);
Int32 GetHashCode();
}
class Evidence : System.Object{
this ();
this (System.Security.Policy.Evidence);
this (System.Object[],System.Object[]);
this (System.Security.Policy.EvidenceBase[],System.Security.Policy.EvidenceBase[]);
Void AddHost(System.Object);
Void AddAssembly(System.Object);
Boolean get_Locked();
Void set_Locked(System.Boolean);
Void Merge(System.Security.Policy.Evidence);
Void CopyTo(System.Array,System.Int32);
IEnumerator GetHostEnumerator();
IEnumerator GetAssemblyEnumerator();
IEnumerator GetEnumerator();
Int32 get_Count();
Object get_SyncRoot();
Boolean get_IsSynchronized();
Boolean get_IsReadOnly();
Evidence Clone();
Void Clear();
Void RemoveType(System.Type);
}
class EvidenceBase : System.Object{
EvidenceBase Clone();
}
class FileCodeGroup : System.Security.Policy.CodeGroup{
this (System.Security.Policy.IMembershipCondition,System.Security.Permissions.FileIOPermissionAccess);
PolicyStatement Resolve(System.Security.Policy.Evidence);
CodeGroup ResolveMatchingCodeGroups(System.Security.Policy.Evidence);
CodeGroup Copy();
String get_MergeLogic();
String get_PermissionSetName();
String get_AttributeString();
Boolean Equals(System.Object);
Int32 GetHashCode();
}
class FirstMatchCodeGroup : System.Security.Policy.CodeGroup{
this (System.Security.Policy.IMembershipCondition,System.Security.Policy.PolicyStatement);
PolicyStatement Resolve(System.Security.Policy.Evidence);
CodeGroup ResolveMatchingCodeGroups(System.Security.Policy.Evidence);
CodeGroup Copy();
String get_MergeLogic();
}
interface IIdentityPermissionFactory{
IPermission CreateIdentityPermission(System.Security.Policy.Evidence);
}
interface IMembershipCondition{
Boolean Check(System.Security.Policy.Evidence);
IMembershipCondition Copy();
String ToString();
Boolean Equals(System.Object);
}
interface IApplicationTrustManager{
ApplicationTrust DetermineApplicationTrust(System.ActivationContext,System.Security.Policy.TrustManagerContext);
}
class TrustManagerUIContext : System.Enum{
}
class TrustManagerContext : System.Object{
this ();
this (System.Security.Policy.TrustManagerUIContext);
TrustManagerUIContext get_UIContext();
Void set_UIContext(System.Security.Policy.TrustManagerUIContext);
Boolean get_NoPrompt();
Void set_NoPrompt(System.Boolean);
Boolean get_IgnorePersistedDecision();
Void set_IgnorePersistedDecision(System.Boolean);
Boolean get_KeepAlive();
Void set_KeepAlive(System.Boolean);
Boolean get_Persist();
Void set_Persist(System.Boolean);
ApplicationIdentity get_PreviousApplicationIdentity();
Void set_PreviousApplicationIdentity(System.ApplicationIdentity);
}
class CodeConnectAccess : System.Object{
this (System.String,System.Int32);
static CodeConnectAccess CreateOriginSchemeAccess(System.Int32);
static CodeConnectAccess CreateAnySchemeAccess(System.Int32);
String get_Scheme();
Int32 get_Port();
Boolean Equals(System.Object);
Int32 GetHashCode();
}
class NetCodeGroup : System.Security.Policy.CodeGroup{
this (System.Security.Policy.IMembershipCondition);
Void ResetConnectAccess();
Void AddConnectAccess(System.String,System.Security.Policy.CodeConnectAccess);
DictionaryEntry[] GetConnectAccessRules();
PolicyStatement Resolve(System.Security.Policy.Evidence);
CodeGroup ResolveMatchingCodeGroups(System.Security.Policy.Evidence);
CodeGroup Copy();
String get_MergeLogic();
String get_PermissionSetName();
String get_AttributeString();
Boolean Equals(System.Object);
Int32 GetHashCode();
}
class PermissionRequestEvidence : System.Security.Policy.EvidenceBase{
this (System.Security.PermissionSet,System.Security.PermissionSet,System.Security.PermissionSet);
PermissionSet get_RequestedPermissions();
PermissionSet get_OptionalPermissions();
PermissionSet get_DeniedPermissions();
EvidenceBase Clone();
PermissionRequestEvidence Copy();
String ToString();
}
class PolicyException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class PolicyLevel : System.Object{
NamedPermissionSet GetNamedPermissionSet(System.String);
PolicyStatement Resolve(System.Security.Policy.Evidence);
Void FromXml(System.Security.SecurityElement);
static PolicyLevel CreateAppDomainLevel();
String get_Label();
PolicyLevelType get_Type();
String get_StoreLocation();
CodeGroup get_RootCodeGroup();
Void set_RootCodeGroup(System.Security.Policy.CodeGroup);
IList get_NamedPermissionSets();
CodeGroup ResolveMatchingCodeGroups(System.Security.Policy.Evidence);
Void AddFullTrustAssembly(System.Security.Policy.StrongName);
Void AddFullTrustAssembly(System.Security.Policy.StrongNameMembershipCondition);
Void RemoveFullTrustAssembly(System.Security.Policy.StrongName);
Void RemoveFullTrustAssembly(System.Security.Policy.StrongNameMembershipCondition);
IList get_FullTrustAssemblies();
Void AddNamedPermissionSet(System.Security.NamedPermissionSet);
NamedPermissionSet RemoveNamedPermissionSet(System.Security.NamedPermissionSet);
NamedPermissionSet RemoveNamedPermissionSet(System.String);
NamedPermissionSet ChangeNamedPermissionSet(System.String,System.Security.PermissionSet);
Void Recover();
Void Reset();
SecurityElement ToXml();
}
class PolicyStatementAttribute : System.Enum{
}
class PolicyStatement : System.Object{
this (System.Security.PermissionSet);
this (System.Security.PermissionSet,System.Security.Policy.PolicyStatementAttribute);
PermissionSet get_PermissionSet();
Void set_PermissionSet(System.Security.PermissionSet);
PolicyStatementAttribute get_Attributes();
Void set_Attributes(System.Security.Policy.PolicyStatementAttribute);
PolicyStatement Copy();
String get_AttributeString();
SecurityElement ToXml();
Void FromXml(System.Security.SecurityElement);
SecurityElement ToXml(System.Security.Policy.PolicyLevel);
Void FromXml(System.Security.SecurityElement,System.Security.Policy.PolicyLevel);
Boolean Equals(System.Object);
Int32 GetHashCode();
}
class Site : System.Security.Policy.EvidenceBase{
this (System.String);
static Site CreateFromUrl(System.String);
String get_Name();
IPermission CreateIdentityPermission(System.Security.Policy.Evidence);
Boolean Equals(System.Object);
Int32 GetHashCode();
EvidenceBase Clone();
Object Copy();
String ToString();
}
class SiteMembershipCondition : System.Object{
this (System.String);
Void set_Site(System.String);
String get_Site();
Boolean Check(System.Security.Policy.Evidence);
IMembershipCondition Copy();
SecurityElement ToXml();
Void FromXml(System.Security.SecurityElement);
SecurityElement ToXml(System.Security.Policy.PolicyLevel);
Void FromXml(System.Security.SecurityElement,System.Security.Policy.PolicyLevel);
Boolean Equals(System.Object);
Int32 GetHashCode();
String ToString();
}
class StrongName : System.Security.Policy.EvidenceBase{
this (System.Security.Permissions.StrongNamePublicKeyBlob,System.String,System.Version);
StrongNamePublicKeyBlob get_PublicKey();
String get_Name();
Version get_Version();
IPermission CreateIdentityPermission(System.Security.Policy.Evidence);
EvidenceBase Clone();
Object Copy();
String ToString();
Boolean Equals(System.Object);
Int32 GetHashCode();
}
class StrongNameMembershipCondition : System.Object{
this (System.Security.Permissions.StrongNamePublicKeyBlob,System.String,System.Version);
Void set_PublicKey(System.Security.Permissions.StrongNamePublicKeyBlob);
StrongNamePublicKeyBlob get_PublicKey();
Void set_Name(System.String);
String get_Name();
Void set_Version(System.Version);
Version get_Version();
Boolean Check(System.Security.Policy.Evidence);
IMembershipCondition Copy();
SecurityElement ToXml();
Void FromXml(System.Security.SecurityElement);
SecurityElement ToXml(System.Security.Policy.PolicyLevel);
Void FromXml(System.Security.SecurityElement,System.Security.Policy.PolicyLevel);
String ToString();
Boolean Equals(System.Object);
Int32 GetHashCode();
}
class UnionCodeGroup : System.Security.Policy.CodeGroup{
this (System.Security.Policy.IMembershipCondition,System.Security.Policy.PolicyStatement);
PolicyStatement Resolve(System.Security.Policy.Evidence);
CodeGroup ResolveMatchingCodeGroups(System.Security.Policy.Evidence);
CodeGroup Copy();
String get_MergeLogic();
}
class Url : System.Security.Policy.EvidenceBase{
this (System.String);
String get_Value();
IPermission CreateIdentityPermission(System.Security.Policy.Evidence);
Boolean Equals(System.Object);
Int32 GetHashCode();
EvidenceBase Clone();
Object Copy();
String ToString();
}
class UrlMembershipCondition : System.Object{
this (System.String);
Void FromXml(System.Security.SecurityElement,System.Security.Policy.PolicyLevel);
Void set_Url(System.String);
String get_Url();
Boolean Check(System.Security.Policy.Evidence);
IMembershipCondition Copy();
SecurityElement ToXml();
Void FromXml(System.Security.SecurityElement);
SecurityElement ToXml(System.Security.Policy.PolicyLevel);
Boolean Equals(System.Object);
Int32 GetHashCode();
String ToString();
}
class Zone : System.Security.Policy.EvidenceBase{
this (System.Security.SecurityZone);
static Zone CreateFromUrl(System.String);
IPermission CreateIdentityPermission(System.Security.Policy.Evidence);
SecurityZone get_SecurityZone();
Boolean Equals(System.Object);
Int32 GetHashCode();
EvidenceBase Clone();
Object Copy();
String ToString();
}
class ZoneMembershipCondition : System.Object{
this (System.Security.SecurityZone);
Void set_SecurityZone(System.Security.SecurityZone);
SecurityZone get_SecurityZone();
Boolean Check(System.Security.Policy.Evidence);
IMembershipCondition Copy();
SecurityElement ToXml();
Void FromXml(System.Security.SecurityElement);
SecurityElement ToXml(System.Security.Policy.PolicyLevel);
Void FromXml(System.Security.SecurityElement,System.Security.Policy.PolicyLevel);
Boolean Equals(System.Object);
Int32 GetHashCode();
String ToString();
}
class GacInstalled : System.Security.Policy.EvidenceBase{
this ();
IPermission CreateIdentityPermission(System.Security.Policy.Evidence);
Boolean Equals(System.Object);
Int32 GetHashCode();
EvidenceBase Clone();
Object Copy();
String ToString();
}
class GacMembershipCondition : System.Object{
this ();
Boolean Check(System.Security.Policy.Evidence);
IMembershipCondition Copy();
SecurityElement ToXml();
Void FromXml(System.Security.SecurityElement);
SecurityElement ToXml(System.Security.Policy.PolicyLevel);
Void FromXml(System.Security.SecurityElement,System.Security.Policy.PolicyLevel);
Boolean Equals(System.Object);
Int32 GetHashCode();
String ToString();
}
class Hash : System.Security.Policy.EvidenceBase{
this (System.Reflection.Assembly);
static Hash CreateSHA1(System.Byte[]);
static Hash CreateSHA256(System.Byte[]);
static Hash CreateMD5(System.Byte[]);
EvidenceBase Clone();
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
Byte[] get_SHA1();
Byte[] get_SHA256();
Byte[] get_MD5();
Byte[] GenerateHash(System.Security.Cryptography.HashAlgorithm);
String ToString();
}
class HashMembershipCondition : System.Object{
this (System.Security.Cryptography.HashAlgorithm,System.Byte[]);
Void set_HashAlgorithm(System.Security.Cryptography.HashAlgorithm);
HashAlgorithm get_HashAlgorithm();
Void set_HashValue(System.Byte[]);
Byte[] get_HashValue();
Boolean Check(System.Security.Policy.Evidence);
IMembershipCondition Copy();
SecurityElement ToXml();
Void FromXml(System.Security.SecurityElement);
SecurityElement ToXml(System.Security.Policy.PolicyLevel);
Void FromXml(System.Security.SecurityElement,System.Security.Policy.PolicyLevel);
Boolean Equals(System.Object);
Int32 GetHashCode();
String ToString();
}
class Publisher : System.Security.Policy.EvidenceBase{
this (System.Security.Cryptography.X509Certificates.X509Certificate);
IPermission CreateIdentityPermission(System.Security.Policy.Evidence);
Boolean Equals(System.Object);
Int32 GetHashCode();
X509Certificate get_Certificate();
EvidenceBase Clone();
Object Copy();
String ToString();
}
class PublisherMembershipCondition : System.Object{
this (System.Security.Cryptography.X509Certificates.X509Certificate);
Void set_Certificate(System.Security.Cryptography.X509Certificates.X509Certificate);
X509Certificate get_Certificate();
String ToString();
Boolean Check(System.Security.Policy.Evidence);
IMembershipCondition Copy();
SecurityElement ToXml();
Void FromXml(System.Security.SecurityElement);
SecurityElement ToXml(System.Security.Policy.PolicyLevel);
Void FromXml(System.Security.SecurityElement,System.Security.Policy.PolicyLevel);
Boolean Equals(System.Object);
Int32 GetHashCode();
}
}
