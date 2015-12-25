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
class AllMembershipCondition : Object{
}
class ApplicationDirectory : EvidenceBase{
}
class ApplicationDirectoryMembershipCondition : Object{
}
class ApplicationSecurityInfo : Object{
}
class ApplicationSecurityManager : Object{
}
class ApplicationVersionMatch : Enum{
}
class ApplicationTrust : EvidenceBase{
}
class ApplicationTrustCollection : Object{
}
class ApplicationTrustEnumerator : Object{
}
class CodeGroup : Object{
}
class Evidence : Object{
}
class EvidenceBase : Object{
}
class FileCodeGroup : CodeGroup{
}
class FirstMatchCodeGroup : CodeGroup{
}
interface IIdentityPermissionFactory{
}
interface IMembershipCondition{
}
interface IApplicationTrustManager{
}
class TrustManagerUIContext : Enum{
}
class TrustManagerContext : Object{
}
class CodeConnectAccess : Object{
}
class NetCodeGroup : CodeGroup{
}
class PermissionRequestEvidence : EvidenceBase{
}
class PolicyException : SystemException{
}
class PolicyLevel : Object{
}
class PolicyStatementAttribute : Enum{
}
class PolicyStatement : Object{
}
class Site : EvidenceBase{
}
class SiteMembershipCondition : Object{
}
class StrongName : EvidenceBase{
}
class StrongNameMembershipCondition : Object{
}
class UnionCodeGroup : CodeGroup{
}
class Url : EvidenceBase{
}
class UrlMembershipCondition : Object{
}
class Zone : EvidenceBase{
}
class ZoneMembershipCondition : Object{
}
class GacInstalled : EvidenceBase{
}
class GacMembershipCondition : Object{
}
class Hash : EvidenceBase{
}
class HashMembershipCondition : Object{
}
class Publisher : EvidenceBase{
}
class PublisherMembershipCondition : Object{
}
}
