module System.Security.AccessControl;
import System;
import System.Security.Principal;
import System.Runtime.Serialization;
import System.Collections;
import System.Reflection;
public:
pragma(assembly,"mscorlib"){
class InheritanceFlags : Enum{
}
class PropagationFlags : Enum{
}
class AuditFlags : Enum{
}
class SecurityInfos : Enum{
}
class ResourceType : Enum{
}
class AccessControlSections : Enum{
}
class AccessControlActions : Enum{
}
class AceType : Enum{
}
class AceFlags : Enum{
}
class GenericAce : Object{
}
class KnownAce : GenericAce{
}
class CustomAce : GenericAce{
}
class CompoundAceType : Enum{
}
class CompoundAce : KnownAce{
}
class AceQualifier : Enum{
}
class QualifiedAce : KnownAce{
}
class CommonAce : QualifiedAce{
}
class ObjectAceFlags : Enum{
}
class ObjectAce : QualifiedAce{
}
class AceEnumerator : Object{
}
class GenericAcl : Object{
}
class RawAcl : GenericAcl{
}
class CommonAcl : GenericAcl{
}
class SystemAcl : CommonAcl{
}
class DiscretionaryAcl : CommonAcl{
}
class CryptoKeyRights : Enum{
}
class CryptoKeyAccessRule : AccessRule{
}
class CryptoKeyAuditRule : AuditRule{
}
class CryptoKeySecurity : NativeObjectSecurity{
}
class EventWaitHandleRights : Enum{
}
class EventWaitHandleAccessRule : AccessRule{
}
class EventWaitHandleAuditRule : AuditRule{
}
class EventWaitHandleSecurity : NativeObjectSecurity{
}
class FileSystemRights : Enum{
}
class FileSystemAccessRule : AccessRule{
}
class FileSystemAuditRule : AuditRule{
}
class FileSystemSecurity : NativeObjectSecurity{
}
class FileSecurity : FileSystemSecurity{
}
class DirectorySecurity : FileSystemSecurity{
}
class MutexRights : Enum{
}
class MutexAccessRule : AccessRule{
}
class MutexAuditRule : AuditRule{
}
class MutexSecurity : NativeObjectSecurity{
}
class NativeObjectSecurity : CommonObjectSecurity{
}
class AccessControlModification : Enum{
}
class ObjectSecurity : Object{
}
class CommonObjectSecurity : ObjectSecurity{
}
class DirectoryObjectSecurity : ObjectSecurity{
}
class PrivilegeNotHeldException : UnauthorizedAccessException{
}
class RegistryRights : Enum{
}
class RegistryAccessRule : AccessRule{
}
class RegistryAuditRule : AuditRule{
}
class RegistrySecurity : NativeObjectSecurity{
}
class AccessControlType : Enum{
}
class AuthorizationRule : Object{
}
class AccessRule : AuthorizationRule{
}
class ObjectAccessRule : AccessRule{
}
class AuditRule : AuthorizationRule{
}
class ObjectAuditRule : AuditRule{
}
class AuthorizationRuleCollection : ReadOnlyCollectionBase{
}
class ControlFlags : Enum{
}
class GenericSecurityDescriptor : Object{
}
class RawSecurityDescriptor : GenericSecurityDescriptor{
}
class CommonSecurityDescriptor : GenericSecurityDescriptor{
}
}
