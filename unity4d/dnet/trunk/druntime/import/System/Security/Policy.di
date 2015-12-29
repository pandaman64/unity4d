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
class AllMembershipCondition : System.__object{
this ();
System.Security.SecurityElement ToXml(System.Security.Policy.PolicyLevel);
System.Void FromXml(System.Security.SecurityElement,System.Security.Policy.PolicyLevel);
System.Boolean Check(System.Security.Policy.Evidence);
System.Security.Policy.IMembershipCondition Copy();
System.String ToString();
System.Security.SecurityElement ToXml();
System.Void FromXml(System.Security.SecurityElement);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
}
class ApplicationDirectory : System.Security.Policy.EvidenceBase{
this (System.String);
System.String get_Directory();
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.Security.Policy.EvidenceBase Clone();
System.__object Copy();
System.String ToString();
}
class ApplicationDirectoryMembershipCondition : System.__object{
this ();
System.Boolean Check(System.Security.Policy.Evidence);
System.Security.Policy.IMembershipCondition Copy();
System.Security.SecurityElement ToXml();
System.Void FromXml(System.Security.SecurityElement);
System.Security.SecurityElement ToXml(System.Security.Policy.PolicyLevel);
System.Void FromXml(System.Security.SecurityElement,System.Security.Policy.PolicyLevel);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.String ToString();
}
class ApplicationSecurityInfo : System.__object{
this (System.ActivationContext);
System.ApplicationId get_ApplicationId();
System.Void set_ApplicationId(System.ApplicationId);
System.ApplicationId get_DeploymentId();
System.Void set_DeploymentId(System.ApplicationId);
System.Security.PermissionSet get_DefaultRequestSet();
System.Void set_DefaultRequestSet(System.Security.PermissionSet);
System.Security.Policy.Evidence get_ApplicationEvidence();
System.Void set_ApplicationEvidence(System.Security.Policy.Evidence);
}
class ApplicationSecurityManager : System.__object{
static System.Boolean DetermineApplicationTrust(System.ActivationContext,System.Security.Policy.TrustManagerContext);
static System.Security.Policy.ApplicationTrustCollection get_UserApplicationTrusts();
static System.Security.Policy.IApplicationTrustManager get_ApplicationTrustManager();
}
class ApplicationVersionMatch : System.Enum{
}
class ApplicationTrust : System.Security.Policy.EvidenceBase{
this (System.ApplicationIdentity);
this ();
System.Security.SecurityElement ToXml();
System.Void FromXml(System.Security.SecurityElement);
System.ApplicationIdentity get_ApplicationIdentity();
System.Void set_ApplicationIdentity(System.ApplicationIdentity);
System.Security.Policy.PolicyStatement get_DefaultGrantSet();
System.Void set_DefaultGrantSet(System.Security.Policy.PolicyStatement);
System.Boolean get_IsApplicationTrustedToRun();
System.Void set_IsApplicationTrustedToRun(System.Boolean);
System.Boolean get_Persist();
System.Void set_Persist(System.Boolean);
System.__object get_ExtraInfo();
System.Void set_ExtraInfo(System.__object);
System.Security.Policy.EvidenceBase Clone();
}
class ApplicationTrustCollection : System.__object{
System.Int32 get_Count();
System.Security.Policy.ApplicationTrust get_Item(System.Int32);
System.Security.Policy.ApplicationTrust get_Item(System.String);
System.Int32 Add(System.Security.Policy.ApplicationTrust);
System.Void AddRange(System.Security.Policy.ApplicationTrust[]);
System.Void AddRange(System.Security.Policy.ApplicationTrustCollection);
System.Security.Policy.ApplicationTrustCollection Find(System.ApplicationIdentity,System.Security.Policy.ApplicationVersionMatch);
System.Void Remove(System.ApplicationIdentity,System.Security.Policy.ApplicationVersionMatch);
System.Void Remove(System.Security.Policy.ApplicationTrust);
System.Void RemoveRange(System.Security.Policy.ApplicationTrust[]);
System.Void RemoveRange(System.Security.Policy.ApplicationTrustCollection);
System.Void Clear();
System.Security.Policy.ApplicationTrustEnumerator GetEnumerator();
System.Void CopyTo(System.Security.Policy.ApplicationTrust[],System.Int32);
System.Boolean get_IsSynchronized();
System.__object get_SyncRoot();
}
class ApplicationTrustEnumerator : System.__object{
System.Security.Policy.ApplicationTrust get_Current();
System.Boolean MoveNext();
System.Void Reset();
}
class CodeGroup : System.__object{
System.Void FromXml(System.Security.SecurityElement,System.Security.Policy.PolicyLevel);
System.Void AddChild(System.Security.Policy.CodeGroup);
System.Void RemoveChild(System.Security.Policy.CodeGroup);
System.Collections.IList get_Children();
System.Void set_Children(System.Collections.IList);
System.Security.Policy.IMembershipCondition get_MembershipCondition();
System.Void set_MembershipCondition(System.Security.Policy.IMembershipCondition);
System.Security.Policy.PolicyStatement get_PolicyStatement();
System.Void set_PolicyStatement(System.Security.Policy.PolicyStatement);
System.String get_Name();
System.Void set_Name(System.String);
System.String get_Description();
System.Void set_Description(System.String);
System.Security.Policy.PolicyStatement Resolve(System.Security.Policy.Evidence);
System.Security.Policy.CodeGroup ResolveMatchingCodeGroups(System.Security.Policy.Evidence);
System.Security.Policy.CodeGroup Copy();
System.String get_PermissionSetName();
System.String get_AttributeString();
System.String get_MergeLogic();
System.Security.SecurityElement ToXml();
System.Void FromXml(System.Security.SecurityElement);
System.Security.SecurityElement ToXml(System.Security.Policy.PolicyLevel);
System.Boolean Equals(System.__object);
System.Boolean Equals(System.Security.Policy.CodeGroup,System.Boolean);
System.Int32 GetHashCode();
}
class Evidence : System.__object{
this ();
this (System.Security.Policy.Evidence);
this (System.__object[],System.__object[]);
this (System.Security.Policy.EvidenceBase[],System.Security.Policy.EvidenceBase[]);
System.Void AddHost(System.__object);
System.Void AddAssembly(System.__object);
System.Boolean get_Locked();
System.Void set_Locked(System.Boolean);
System.Void Merge(System.Security.Policy.Evidence);
System.Void CopyTo(System.Array,System.Int32);
System.Collections.IEnumerator GetHostEnumerator();
System.Collections.IEnumerator GetAssemblyEnumerator();
System.Collections.IEnumerator GetEnumerator();
System.Int32 get_Count();
System.__object get_SyncRoot();
System.Boolean get_IsSynchronized();
System.Boolean get_IsReadOnly();
System.Security.Policy.Evidence Clone();
System.Void Clear();
System.Void RemoveType(System.Type);
}
class EvidenceBase : System.__object{
System.Security.Policy.EvidenceBase Clone();
}
class FileCodeGroup : System.Security.Policy.CodeGroup{
this (System.Security.Policy.IMembershipCondition,System.Security.Permissions.FileIOPermissionAccess);
System.Security.Policy.PolicyStatement Resolve(System.Security.Policy.Evidence);
System.Security.Policy.CodeGroup ResolveMatchingCodeGroups(System.Security.Policy.Evidence);
System.Security.Policy.CodeGroup Copy();
System.String get_MergeLogic();
System.String get_PermissionSetName();
System.String get_AttributeString();
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
}
class FirstMatchCodeGroup : System.Security.Policy.CodeGroup{
this (System.Security.Policy.IMembershipCondition,System.Security.Policy.PolicyStatement);
System.Security.Policy.PolicyStatement Resolve(System.Security.Policy.Evidence);
System.Security.Policy.CodeGroup ResolveMatchingCodeGroups(System.Security.Policy.Evidence);
System.Security.Policy.CodeGroup Copy();
System.String get_MergeLogic();
}
interface IIdentityPermissionFactory{
System.Security.IPermission CreateIdentityPermission(System.Security.Policy.Evidence);
}
interface IMembershipCondition{
System.Boolean Check(System.Security.Policy.Evidence);
System.Security.Policy.IMembershipCondition Copy();
System.String ToString();
System.Boolean Equals(System.__object);
}
interface IApplicationTrustManager{
System.Security.Policy.ApplicationTrust DetermineApplicationTrust(System.ActivationContext,System.Security.Policy.TrustManagerContext);
}
class TrustManagerUIContext : System.Enum{
}
class TrustManagerContext : System.__object{
this ();
this (System.Security.Policy.TrustManagerUIContext);
System.Security.Policy.TrustManagerUIContext get_UIContext();
System.Void set_UIContext(System.Security.Policy.TrustManagerUIContext);
System.Boolean get_NoPrompt();
System.Void set_NoPrompt(System.Boolean);
System.Boolean get_IgnorePersistedDecision();
System.Void set_IgnorePersistedDecision(System.Boolean);
System.Boolean get_KeepAlive();
System.Void set_KeepAlive(System.Boolean);
System.Boolean get_Persist();
System.Void set_Persist(System.Boolean);
System.ApplicationIdentity get_PreviousApplicationIdentity();
System.Void set_PreviousApplicationIdentity(System.ApplicationIdentity);
}
class CodeConnectAccess : System.__object{
this (System.String,System.Int32);
static System.Security.Policy.CodeConnectAccess CreateOriginSchemeAccess(System.Int32);
static System.Security.Policy.CodeConnectAccess CreateAnySchemeAccess(System.Int32);
System.String get_Scheme();
System.Int32 get_Port();
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
}
class NetCodeGroup : System.Security.Policy.CodeGroup{
this (System.Security.Policy.IMembershipCondition);
System.Void ResetConnectAccess();
System.Void AddConnectAccess(System.String,System.Security.Policy.CodeConnectAccess);
System.Collections.DictionaryEntry[] GetConnectAccessRules();
System.Security.Policy.PolicyStatement Resolve(System.Security.Policy.Evidence);
System.Security.Policy.CodeGroup ResolveMatchingCodeGroups(System.Security.Policy.Evidence);
System.Security.Policy.CodeGroup Copy();
System.String get_MergeLogic();
System.String get_PermissionSetName();
System.String get_AttributeString();
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
}
class PermissionRequestEvidence : System.Security.Policy.EvidenceBase{
this (System.Security.PermissionSet,System.Security.PermissionSet,System.Security.PermissionSet);
System.Security.PermissionSet get_RequestedPermissions();
System.Security.PermissionSet get_OptionalPermissions();
System.Security.PermissionSet get_DeniedPermissions();
System.Security.Policy.EvidenceBase Clone();
System.Security.Policy.PermissionRequestEvidence Copy();
System.String ToString();
}
class PolicyLevel : System.__object{
System.Security.NamedPermissionSet GetNamedPermissionSet(System.String);
System.Security.Policy.PolicyStatement Resolve(System.Security.Policy.Evidence);
System.Void FromXml(System.Security.SecurityElement);
static System.Security.Policy.PolicyLevel CreateAppDomainLevel();
System.String get_Label();
System.Security.PolicyLevelType get_Type();
System.String get_StoreLocation();
System.Security.Policy.CodeGroup get_RootCodeGroup();
System.Void set_RootCodeGroup(System.Security.Policy.CodeGroup);
System.Collections.IList get_NamedPermissionSets();
System.Security.Policy.CodeGroup ResolveMatchingCodeGroups(System.Security.Policy.Evidence);
System.Void AddFullTrustAssembly(System.Security.Policy.StrongName);
System.Void AddFullTrustAssembly(System.Security.Policy.StrongNameMembershipCondition);
System.Void RemoveFullTrustAssembly(System.Security.Policy.StrongName);
System.Void RemoveFullTrustAssembly(System.Security.Policy.StrongNameMembershipCondition);
System.Collections.IList get_FullTrustAssemblies();
System.Void AddNamedPermissionSet(System.Security.NamedPermissionSet);
System.Security.NamedPermissionSet RemoveNamedPermissionSet(System.Security.NamedPermissionSet);
System.Security.NamedPermissionSet RemoveNamedPermissionSet(System.String);
System.Security.NamedPermissionSet ChangeNamedPermissionSet(System.String,System.Security.PermissionSet);
System.Void Recover();
System.Void Reset();
System.Security.SecurityElement ToXml();
}
class PolicyStatementAttribute : System.Enum{
}
class PolicyStatement : System.__object{
this (System.Security.PermissionSet);
this (System.Security.PermissionSet,System.Security.Policy.PolicyStatementAttribute);
System.Security.PermissionSet get_PermissionSet();
System.Void set_PermissionSet(System.Security.PermissionSet);
System.Security.Policy.PolicyStatementAttribute get_Attributes();
System.Void set_Attributes(System.Security.Policy.PolicyStatementAttribute);
System.Security.Policy.PolicyStatement Copy();
System.String get_AttributeString();
System.Security.SecurityElement ToXml();
System.Void FromXml(System.Security.SecurityElement);
System.Security.SecurityElement ToXml(System.Security.Policy.PolicyLevel);
System.Void FromXml(System.Security.SecurityElement,System.Security.Policy.PolicyLevel);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
}
class Site : System.Security.Policy.EvidenceBase{
this (System.String);
static System.Security.Policy.Site CreateFromUrl(System.String);
System.String get_Name();
System.Security.IPermission CreateIdentityPermission(System.Security.Policy.Evidence);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.Security.Policy.EvidenceBase Clone();
System.__object Copy();
System.String ToString();
}
class SiteMembershipCondition : System.__object{
this (System.String);
System.Void set_Site(System.String);
System.String get_Site();
System.Boolean Check(System.Security.Policy.Evidence);
System.Security.Policy.IMembershipCondition Copy();
System.Security.SecurityElement ToXml();
System.Void FromXml(System.Security.SecurityElement);
System.Security.SecurityElement ToXml(System.Security.Policy.PolicyLevel);
System.Void FromXml(System.Security.SecurityElement,System.Security.Policy.PolicyLevel);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.String ToString();
}
class StrongName : System.Security.Policy.EvidenceBase{
this (System.Security.Permissions.StrongNamePublicKeyBlob,System.String,System.Version);
System.Security.Permissions.StrongNamePublicKeyBlob get_PublicKey();
System.String get_Name();
System.Version get_Version();
System.Security.IPermission CreateIdentityPermission(System.Security.Policy.Evidence);
System.Security.Policy.EvidenceBase Clone();
System.__object Copy();
System.String ToString();
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
}
class StrongNameMembershipCondition : System.__object{
this (System.Security.Permissions.StrongNamePublicKeyBlob,System.String,System.Version);
System.Void set_PublicKey(System.Security.Permissions.StrongNamePublicKeyBlob);
System.Security.Permissions.StrongNamePublicKeyBlob get_PublicKey();
System.Void set_Name(System.String);
System.String get_Name();
System.Void set_Version(System.Version);
System.Version get_Version();
System.Boolean Check(System.Security.Policy.Evidence);
System.Security.Policy.IMembershipCondition Copy();
System.Security.SecurityElement ToXml();
System.Void FromXml(System.Security.SecurityElement);
System.Security.SecurityElement ToXml(System.Security.Policy.PolicyLevel);
System.Void FromXml(System.Security.SecurityElement,System.Security.Policy.PolicyLevel);
System.String ToString();
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
}
class UnionCodeGroup : System.Security.Policy.CodeGroup{
this (System.Security.Policy.IMembershipCondition,System.Security.Policy.PolicyStatement);
System.Security.Policy.PolicyStatement Resolve(System.Security.Policy.Evidence);
System.Security.Policy.CodeGroup ResolveMatchingCodeGroups(System.Security.Policy.Evidence);
System.Security.Policy.CodeGroup Copy();
System.String get_MergeLogic();
}
class Url : System.Security.Policy.EvidenceBase{
this (System.String);
System.String get_Value();
System.Security.IPermission CreateIdentityPermission(System.Security.Policy.Evidence);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.Security.Policy.EvidenceBase Clone();
System.__object Copy();
System.String ToString();
}
class UrlMembershipCondition : System.__object{
this (System.String);
System.Void FromXml(System.Security.SecurityElement,System.Security.Policy.PolicyLevel);
System.Void set_Url(System.String);
System.String get_Url();
System.Boolean Check(System.Security.Policy.Evidence);
System.Security.Policy.IMembershipCondition Copy();
System.Security.SecurityElement ToXml();
System.Void FromXml(System.Security.SecurityElement);
System.Security.SecurityElement ToXml(System.Security.Policy.PolicyLevel);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.String ToString();
}
class Zone : System.Security.Policy.EvidenceBase{
this (System.Security.SecurityZone);
static System.Security.Policy.Zone CreateFromUrl(System.String);
System.Security.IPermission CreateIdentityPermission(System.Security.Policy.Evidence);
System.Security.SecurityZone get_SecurityZone();
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.Security.Policy.EvidenceBase Clone();
System.__object Copy();
System.String ToString();
}
class ZoneMembershipCondition : System.__object{
this (System.Security.SecurityZone);
System.Void set_SecurityZone(System.Security.SecurityZone);
System.Security.SecurityZone get_SecurityZone();
System.Boolean Check(System.Security.Policy.Evidence);
System.Security.Policy.IMembershipCondition Copy();
System.Security.SecurityElement ToXml();
System.Void FromXml(System.Security.SecurityElement);
System.Security.SecurityElement ToXml(System.Security.Policy.PolicyLevel);
System.Void FromXml(System.Security.SecurityElement,System.Security.Policy.PolicyLevel);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.String ToString();
}
class GacInstalled : System.Security.Policy.EvidenceBase{
this ();
System.Security.IPermission CreateIdentityPermission(System.Security.Policy.Evidence);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.Security.Policy.EvidenceBase Clone();
System.__object Copy();
System.String ToString();
}
class GacMembershipCondition : System.__object{
this ();
System.Boolean Check(System.Security.Policy.Evidence);
System.Security.Policy.IMembershipCondition Copy();
System.Security.SecurityElement ToXml();
System.Void FromXml(System.Security.SecurityElement);
System.Security.SecurityElement ToXml(System.Security.Policy.PolicyLevel);
System.Void FromXml(System.Security.SecurityElement,System.Security.Policy.PolicyLevel);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.String ToString();
}
class Hash : System.Security.Policy.EvidenceBase{
this (System.Reflection.Assembly);
static System.Security.Policy.Hash CreateSHA1(System.Byte[]);
static System.Security.Policy.Hash CreateSHA256(System.Byte[]);
static System.Security.Policy.Hash CreateMD5(System.Byte[]);
System.Security.Policy.EvidenceBase Clone();
System.Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
System.Byte[] get_SHA1();
System.Byte[] get_SHA256();
System.Byte[] get_MD5();
System.Byte[] GenerateHash(System.Security.Cryptography.HashAlgorithm);
System.String ToString();
}
class HashMembershipCondition : System.__object{
this (System.Security.Cryptography.HashAlgorithm,System.Byte[]);
System.Void set_HashAlgorithm(System.Security.Cryptography.HashAlgorithm);
System.Security.Cryptography.HashAlgorithm get_HashAlgorithm();
System.Void set_HashValue(System.Byte[]);
System.Byte[] get_HashValue();
System.Boolean Check(System.Security.Policy.Evidence);
System.Security.Policy.IMembershipCondition Copy();
System.Security.SecurityElement ToXml();
System.Void FromXml(System.Security.SecurityElement);
System.Security.SecurityElement ToXml(System.Security.Policy.PolicyLevel);
System.Void FromXml(System.Security.SecurityElement,System.Security.Policy.PolicyLevel);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.String ToString();
}
class Publisher : System.Security.Policy.EvidenceBase{
this (System.Security.Cryptography.X509Certificates.X509Certificate);
System.Security.IPermission CreateIdentityPermission(System.Security.Policy.Evidence);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.Security.Cryptography.X509Certificates.X509Certificate get_Certificate();
System.Security.Policy.EvidenceBase Clone();
System.__object Copy();
System.String ToString();
}
class PublisherMembershipCondition : System.__object{
this (System.Security.Cryptography.X509Certificates.X509Certificate);
System.Void set_Certificate(System.Security.Cryptography.X509Certificates.X509Certificate);
System.Security.Cryptography.X509Certificates.X509Certificate get_Certificate();
System.String ToString();
System.Boolean Check(System.Security.Policy.Evidence);
System.Security.Policy.IMembershipCondition Copy();
System.Security.SecurityElement ToXml();
System.Void FromXml(System.Security.SecurityElement);
System.Security.SecurityElement ToXml(System.Security.Policy.PolicyLevel);
System.Void FromXml(System.Security.SecurityElement,System.Security.Policy.PolicyLevel);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
}
}
