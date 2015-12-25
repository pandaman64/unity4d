module System.Security.AccessControl;
import System;
import System.Security.Principal;
import System.Runtime.Serialization;
import System.Collections;
import System.Reflection;
public:
pragma(assembly,"mscorlib"){
class InheritanceFlags : System.Enum{
}
class PropagationFlags : System.Enum{
}
class AuditFlags : System.Enum{
}
class SecurityInfos : System.Enum{
}
class ResourceType : System.Enum{
}
class AccessControlSections : System.Enum{
}
class AccessControlActions : System.Enum{
}
class AceType : System.Enum{
}
class AceFlags : System.Enum{
}
class GenericAce : System.Object{
static GenericAce CreateFromBinaryForm(System.Byte[],System.Int32);
AceType get_AceType();
AceFlags get_AceFlags();
Void set_AceFlags(System.Security.AccessControl.AceFlags);
Boolean get_IsInherited();
InheritanceFlags get_InheritanceFlags();
PropagationFlags get_PropagationFlags();
AuditFlags get_AuditFlags();
Int32 get_BinaryLength();
Void GetBinaryForm(System.Byte[],System.Int32);
GenericAce Copy();
Boolean Equals(System.Object);
Int32 GetHashCode();
static Boolean op_Equality(System.Security.AccessControl.GenericAce,System.Security.AccessControl.GenericAce);
static Boolean op_Inequality(System.Security.AccessControl.GenericAce,System.Security.AccessControl.GenericAce);
}
class KnownAce : System.Security.AccessControl.GenericAce{
Int32 get_AccessMask();
Void set_AccessMask(System.Int32);
SecurityIdentifier get_SecurityIdentifier();
Void set_SecurityIdentifier(System.Security.Principal.SecurityIdentifier);
}
class CustomAce : System.Security.AccessControl.GenericAce{
this (System.Security.AccessControl.AceType,System.Security.AccessControl.AceFlags,System.Byte[]);
Int32 get_OpaqueLength();
Int32 get_BinaryLength();
Byte[] GetOpaque();
Void SetOpaque(System.Byte[]);
Void GetBinaryForm(System.Byte[],System.Int32);
}
class CompoundAceType : System.Enum{
}
class CompoundAce : System.Security.AccessControl.KnownAce{
this (System.Security.AccessControl.AceFlags,System.Int32,System.Security.AccessControl.CompoundAceType,System.Security.Principal.SecurityIdentifier);
CompoundAceType get_CompoundAceType();
Void set_CompoundAceType(System.Security.AccessControl.CompoundAceType);
Int32 get_BinaryLength();
Void GetBinaryForm(System.Byte[],System.Int32);
}
class AceQualifier : System.Enum{
}
class QualifiedAce : System.Security.AccessControl.KnownAce{
AceQualifier get_AceQualifier();
Boolean get_IsCallback();
Int32 get_OpaqueLength();
Byte[] GetOpaque();
Void SetOpaque(System.Byte[]);
}
class CommonAce : System.Security.AccessControl.QualifiedAce{
this (System.Security.AccessControl.AceFlags,System.Security.AccessControl.AceQualifier,System.Int32,System.Security.Principal.SecurityIdentifier,System.Boolean,System.Byte[]);
Int32 get_BinaryLength();
static Int32 MaxOpaqueLength(System.Boolean);
Void GetBinaryForm(System.Byte[],System.Int32);
}
class ObjectAceFlags : System.Enum{
}
class ObjectAce : System.Security.AccessControl.QualifiedAce{
this (System.Security.AccessControl.AceFlags,System.Security.AccessControl.AceQualifier,System.Int32,System.Security.Principal.SecurityIdentifier,System.Security.AccessControl.ObjectAceFlags,System.Guid,System.Guid,System.Boolean,System.Byte[]);
ObjectAceFlags get_ObjectAceFlags();
Void set_ObjectAceFlags(System.Security.AccessControl.ObjectAceFlags);
Guid get_ObjectAceType();
Void set_ObjectAceType(System.Guid);
Guid get_InheritedObjectAceType();
Void set_InheritedObjectAceType(System.Guid);
Int32 get_BinaryLength();
static Int32 MaxOpaqueLength(System.Boolean);
Void GetBinaryForm(System.Byte[],System.Int32);
}
class AceEnumerator : System.Object{
GenericAce get_Current();
Boolean MoveNext();
Void Reset();
}
class GenericAcl : System.Object{
Byte get_Revision();
Int32 get_BinaryLength();
GenericAce get_Item(System.Int32);
Void set_Item(System.Int32,System.Security.AccessControl.GenericAce);
Void GetBinaryForm(System.Byte[],System.Int32);
Void CopyTo(System.Security.AccessControl.GenericAce[],System.Int32);
Int32 get_Count();
Boolean get_IsSynchronized();
Object get_SyncRoot();
AceEnumerator GetEnumerator();
}
class RawAcl : System.Security.AccessControl.GenericAcl{
this (System.Byte,System.Int32);
this (System.Byte[],System.Int32);
Byte get_Revision();
Int32 get_Count();
Int32 get_BinaryLength();
Void GetBinaryForm(System.Byte[],System.Int32);
GenericAce get_Item(System.Int32);
Void set_Item(System.Int32,System.Security.AccessControl.GenericAce);
Void InsertAce(System.Int32,System.Security.AccessControl.GenericAce);
Void RemoveAce(System.Int32);
}
class CommonAcl : System.Security.AccessControl.GenericAcl{
Byte get_Revision();
Int32 get_Count();
Int32 get_BinaryLength();
Boolean get_IsCanonical();
Boolean get_IsContainer();
Boolean get_IsDS();
Void GetBinaryForm(System.Byte[],System.Int32);
GenericAce get_Item(System.Int32);
Void set_Item(System.Int32,System.Security.AccessControl.GenericAce);
Void RemoveInheritedAces();
Void Purge(System.Security.Principal.SecurityIdentifier);
}
class SystemAcl : System.Security.AccessControl.CommonAcl{
this (System.Boolean,System.Boolean,System.Int32);
this (System.Boolean,System.Boolean,System.Byte,System.Int32);
this (System.Boolean,System.Boolean,System.Security.AccessControl.RawAcl);
Void AddAudit(System.Security.AccessControl.AuditFlags,System.Security.Principal.SecurityIdentifier,System.Int32,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags);
Void SetAudit(System.Security.AccessControl.AuditFlags,System.Security.Principal.SecurityIdentifier,System.Int32,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags);
Boolean RemoveAudit(System.Security.AccessControl.AuditFlags,System.Security.Principal.SecurityIdentifier,System.Int32,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags);
Void RemoveAuditSpecific(System.Security.AccessControl.AuditFlags,System.Security.Principal.SecurityIdentifier,System.Int32,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags);
Void AddAudit(System.Security.Principal.SecurityIdentifier,System.Security.AccessControl.ObjectAuditRule);
Void AddAudit(System.Security.AccessControl.AuditFlags,System.Security.Principal.SecurityIdentifier,System.Int32,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.ObjectAceFlags,System.Guid,System.Guid);
Void SetAudit(System.Security.Principal.SecurityIdentifier,System.Security.AccessControl.ObjectAuditRule);
Void SetAudit(System.Security.AccessControl.AuditFlags,System.Security.Principal.SecurityIdentifier,System.Int32,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.ObjectAceFlags,System.Guid,System.Guid);
Boolean RemoveAudit(System.Security.Principal.SecurityIdentifier,System.Security.AccessControl.ObjectAuditRule);
Boolean RemoveAudit(System.Security.AccessControl.AuditFlags,System.Security.Principal.SecurityIdentifier,System.Int32,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.ObjectAceFlags,System.Guid,System.Guid);
Void RemoveAuditSpecific(System.Security.Principal.SecurityIdentifier,System.Security.AccessControl.ObjectAuditRule);
Void RemoveAuditSpecific(System.Security.AccessControl.AuditFlags,System.Security.Principal.SecurityIdentifier,System.Int32,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.ObjectAceFlags,System.Guid,System.Guid);
}
class DiscretionaryAcl : System.Security.AccessControl.CommonAcl{
this (System.Boolean,System.Boolean,System.Int32);
this (System.Boolean,System.Boolean,System.Byte,System.Int32);
this (System.Boolean,System.Boolean,System.Security.AccessControl.RawAcl);
Void AddAccess(System.Security.AccessControl.AccessControlType,System.Security.Principal.SecurityIdentifier,System.Int32,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags);
Void SetAccess(System.Security.AccessControl.AccessControlType,System.Security.Principal.SecurityIdentifier,System.Int32,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags);
Boolean RemoveAccess(System.Security.AccessControl.AccessControlType,System.Security.Principal.SecurityIdentifier,System.Int32,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags);
Void RemoveAccessSpecific(System.Security.AccessControl.AccessControlType,System.Security.Principal.SecurityIdentifier,System.Int32,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags);
Void AddAccess(System.Security.AccessControl.AccessControlType,System.Security.Principal.SecurityIdentifier,System.Security.AccessControl.ObjectAccessRule);
Void AddAccess(System.Security.AccessControl.AccessControlType,System.Security.Principal.SecurityIdentifier,System.Int32,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.ObjectAceFlags,System.Guid,System.Guid);
Void SetAccess(System.Security.AccessControl.AccessControlType,System.Security.Principal.SecurityIdentifier,System.Security.AccessControl.ObjectAccessRule);
Void SetAccess(System.Security.AccessControl.AccessControlType,System.Security.Principal.SecurityIdentifier,System.Int32,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.ObjectAceFlags,System.Guid,System.Guid);
Boolean RemoveAccess(System.Security.AccessControl.AccessControlType,System.Security.Principal.SecurityIdentifier,System.Security.AccessControl.ObjectAccessRule);
Boolean RemoveAccess(System.Security.AccessControl.AccessControlType,System.Security.Principal.SecurityIdentifier,System.Int32,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.ObjectAceFlags,System.Guid,System.Guid);
Void RemoveAccessSpecific(System.Security.AccessControl.AccessControlType,System.Security.Principal.SecurityIdentifier,System.Security.AccessControl.ObjectAccessRule);
Void RemoveAccessSpecific(System.Security.AccessControl.AccessControlType,System.Security.Principal.SecurityIdentifier,System.Int32,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.ObjectAceFlags,System.Guid,System.Guid);
}
class CryptoKeyRights : System.Enum{
}
class CryptoKeyAccessRule : System.Security.AccessControl.AccessRule{
this (System.Security.Principal.IdentityReference,System.Security.AccessControl.CryptoKeyRights,System.Security.AccessControl.AccessControlType);
this (System.String,System.Security.AccessControl.CryptoKeyRights,System.Security.AccessControl.AccessControlType);
CryptoKeyRights get_CryptoKeyRights();
}
class CryptoKeyAuditRule : System.Security.AccessControl.AuditRule{
this (System.Security.Principal.IdentityReference,System.Security.AccessControl.CryptoKeyRights,System.Security.AccessControl.AuditFlags);
this (System.String,System.Security.AccessControl.CryptoKeyRights,System.Security.AccessControl.AuditFlags);
CryptoKeyRights get_CryptoKeyRights();
}
class CryptoKeySecurity : System.Security.AccessControl.NativeObjectSecurity{
this ();
this (System.Security.AccessControl.CommonSecurityDescriptor);
AccessRule AccessRuleFactory(System.Security.Principal.IdentityReference,System.Int32,System.Boolean,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AccessControlType);
AuditRule AuditRuleFactory(System.Security.Principal.IdentityReference,System.Int32,System.Boolean,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AuditFlags);
Void AddAccessRule(System.Security.AccessControl.CryptoKeyAccessRule);
Void SetAccessRule(System.Security.AccessControl.CryptoKeyAccessRule);
Void ResetAccessRule(System.Security.AccessControl.CryptoKeyAccessRule);
Boolean RemoveAccessRule(System.Security.AccessControl.CryptoKeyAccessRule);
Void RemoveAccessRuleAll(System.Security.AccessControl.CryptoKeyAccessRule);
Void RemoveAccessRuleSpecific(System.Security.AccessControl.CryptoKeyAccessRule);
Void AddAuditRule(System.Security.AccessControl.CryptoKeyAuditRule);
Void SetAuditRule(System.Security.AccessControl.CryptoKeyAuditRule);
Boolean RemoveAuditRule(System.Security.AccessControl.CryptoKeyAuditRule);
Void RemoveAuditRuleAll(System.Security.AccessControl.CryptoKeyAuditRule);
Void RemoveAuditRuleSpecific(System.Security.AccessControl.CryptoKeyAuditRule);
Type get_AccessRightType();
Type get_AccessRuleType();
Type get_AuditRuleType();
}
class EventWaitHandleRights : System.Enum{
}
class EventWaitHandleAccessRule : System.Security.AccessControl.AccessRule{
this (System.Security.Principal.IdentityReference,System.Security.AccessControl.EventWaitHandleRights,System.Security.AccessControl.AccessControlType);
this (System.String,System.Security.AccessControl.EventWaitHandleRights,System.Security.AccessControl.AccessControlType);
EventWaitHandleRights get_EventWaitHandleRights();
}
class EventWaitHandleAuditRule : System.Security.AccessControl.AuditRule{
this (System.Security.Principal.IdentityReference,System.Security.AccessControl.EventWaitHandleRights,System.Security.AccessControl.AuditFlags);
EventWaitHandleRights get_EventWaitHandleRights();
}
class EventWaitHandleSecurity : System.Security.AccessControl.NativeObjectSecurity{
this ();
AccessRule AccessRuleFactory(System.Security.Principal.IdentityReference,System.Int32,System.Boolean,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AccessControlType);
AuditRule AuditRuleFactory(System.Security.Principal.IdentityReference,System.Int32,System.Boolean,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AuditFlags);
Void AddAccessRule(System.Security.AccessControl.EventWaitHandleAccessRule);
Void SetAccessRule(System.Security.AccessControl.EventWaitHandleAccessRule);
Void ResetAccessRule(System.Security.AccessControl.EventWaitHandleAccessRule);
Boolean RemoveAccessRule(System.Security.AccessControl.EventWaitHandleAccessRule);
Void RemoveAccessRuleAll(System.Security.AccessControl.EventWaitHandleAccessRule);
Void RemoveAccessRuleSpecific(System.Security.AccessControl.EventWaitHandleAccessRule);
Void AddAuditRule(System.Security.AccessControl.EventWaitHandleAuditRule);
Void SetAuditRule(System.Security.AccessControl.EventWaitHandleAuditRule);
Boolean RemoveAuditRule(System.Security.AccessControl.EventWaitHandleAuditRule);
Void RemoveAuditRuleAll(System.Security.AccessControl.EventWaitHandleAuditRule);
Void RemoveAuditRuleSpecific(System.Security.AccessControl.EventWaitHandleAuditRule);
Type get_AccessRightType();
Type get_AccessRuleType();
Type get_AuditRuleType();
}
class FileSystemRights : System.Enum{
}
class FileSystemAccessRule : System.Security.AccessControl.AccessRule{
this (System.Security.Principal.IdentityReference,System.Security.AccessControl.FileSystemRights,System.Security.AccessControl.AccessControlType);
this (System.String,System.Security.AccessControl.FileSystemRights,System.Security.AccessControl.AccessControlType);
this (System.Security.Principal.IdentityReference,System.Security.AccessControl.FileSystemRights,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AccessControlType);
this (System.String,System.Security.AccessControl.FileSystemRights,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AccessControlType);
FileSystemRights get_FileSystemRights();
}
class FileSystemAuditRule : System.Security.AccessControl.AuditRule{
this (System.Security.Principal.IdentityReference,System.Security.AccessControl.FileSystemRights,System.Security.AccessControl.AuditFlags);
this (System.Security.Principal.IdentityReference,System.Security.AccessControl.FileSystemRights,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AuditFlags);
this (System.String,System.Security.AccessControl.FileSystemRights,System.Security.AccessControl.AuditFlags);
this (System.String,System.Security.AccessControl.FileSystemRights,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AuditFlags);
FileSystemRights get_FileSystemRights();
}
class FileSystemSecurity : System.Security.AccessControl.NativeObjectSecurity{
AccessRule AccessRuleFactory(System.Security.Principal.IdentityReference,System.Int32,System.Boolean,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AccessControlType);
AuditRule AuditRuleFactory(System.Security.Principal.IdentityReference,System.Int32,System.Boolean,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AuditFlags);
Void AddAccessRule(System.Security.AccessControl.FileSystemAccessRule);
Void SetAccessRule(System.Security.AccessControl.FileSystemAccessRule);
Void ResetAccessRule(System.Security.AccessControl.FileSystemAccessRule);
Boolean RemoveAccessRule(System.Security.AccessControl.FileSystemAccessRule);
Void RemoveAccessRuleAll(System.Security.AccessControl.FileSystemAccessRule);
Void RemoveAccessRuleSpecific(System.Security.AccessControl.FileSystemAccessRule);
Void AddAuditRule(System.Security.AccessControl.FileSystemAuditRule);
Void SetAuditRule(System.Security.AccessControl.FileSystemAuditRule);
Boolean RemoveAuditRule(System.Security.AccessControl.FileSystemAuditRule);
Void RemoveAuditRuleAll(System.Security.AccessControl.FileSystemAuditRule);
Void RemoveAuditRuleSpecific(System.Security.AccessControl.FileSystemAuditRule);
Type get_AccessRightType();
Type get_AccessRuleType();
Type get_AuditRuleType();
}
class FileSecurity : System.Security.AccessControl.FileSystemSecurity{
this ();
this (System.String,System.Security.AccessControl.AccessControlSections);
}
class DirectorySecurity : System.Security.AccessControl.FileSystemSecurity{
this ();
this (System.String,System.Security.AccessControl.AccessControlSections);
}
class MutexRights : System.Enum{
}
class MutexAccessRule : System.Security.AccessControl.AccessRule{
this (System.Security.Principal.IdentityReference,System.Security.AccessControl.MutexRights,System.Security.AccessControl.AccessControlType);
this (System.String,System.Security.AccessControl.MutexRights,System.Security.AccessControl.AccessControlType);
MutexRights get_MutexRights();
}
class MutexAuditRule : System.Security.AccessControl.AuditRule{
this (System.Security.Principal.IdentityReference,System.Security.AccessControl.MutexRights,System.Security.AccessControl.AuditFlags);
MutexRights get_MutexRights();
}
class MutexSecurity : System.Security.AccessControl.NativeObjectSecurity{
this ();
this (System.String,System.Security.AccessControl.AccessControlSections);
AccessRule AccessRuleFactory(System.Security.Principal.IdentityReference,System.Int32,System.Boolean,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AccessControlType);
AuditRule AuditRuleFactory(System.Security.Principal.IdentityReference,System.Int32,System.Boolean,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AuditFlags);
Void AddAccessRule(System.Security.AccessControl.MutexAccessRule);
Void SetAccessRule(System.Security.AccessControl.MutexAccessRule);
Void ResetAccessRule(System.Security.AccessControl.MutexAccessRule);
Boolean RemoveAccessRule(System.Security.AccessControl.MutexAccessRule);
Void RemoveAccessRuleAll(System.Security.AccessControl.MutexAccessRule);
Void RemoveAccessRuleSpecific(System.Security.AccessControl.MutexAccessRule);
Void AddAuditRule(System.Security.AccessControl.MutexAuditRule);
Void SetAuditRule(System.Security.AccessControl.MutexAuditRule);
Boolean RemoveAuditRule(System.Security.AccessControl.MutexAuditRule);
Void RemoveAuditRuleAll(System.Security.AccessControl.MutexAuditRule);
Void RemoveAuditRuleSpecific(System.Security.AccessControl.MutexAuditRule);
Type get_AccessRightType();
Type get_AccessRuleType();
Type get_AuditRuleType();
}
class NativeObjectSecurity : System.Security.AccessControl.CommonObjectSecurity{
}
class AccessControlModification : System.Enum{
}
class ObjectSecurity : System.Object{
IdentityReference GetOwner(System.Type);
Void SetOwner(System.Security.Principal.IdentityReference);
IdentityReference GetGroup(System.Type);
Void SetGroup(System.Security.Principal.IdentityReference);
Void PurgeAccessRules(System.Security.Principal.IdentityReference);
Void PurgeAuditRules(System.Security.Principal.IdentityReference);
Boolean get_AreAccessRulesProtected();
Void SetAccessRuleProtection(System.Boolean,System.Boolean);
Boolean get_AreAuditRulesProtected();
Void SetAuditRuleProtection(System.Boolean,System.Boolean);
Boolean get_AreAccessRulesCanonical();
Boolean get_AreAuditRulesCanonical();
static Boolean IsSddlConversionSupported();
String GetSecurityDescriptorSddlForm(System.Security.AccessControl.AccessControlSections);
Void SetSecurityDescriptorSddlForm(System.String);
Void SetSecurityDescriptorSddlForm(System.String,System.Security.AccessControl.AccessControlSections);
Byte[] GetSecurityDescriptorBinaryForm();
Void SetSecurityDescriptorBinaryForm(System.Byte[]);
Void SetSecurityDescriptorBinaryForm(System.Byte[],System.Security.AccessControl.AccessControlSections);
Type get_AccessRightType();
Type get_AccessRuleType();
Type get_AuditRuleType();
AccessRule AccessRuleFactory(System.Security.Principal.IdentityReference,System.Int32,System.Boolean,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AccessControlType);
AuditRule AuditRuleFactory(System.Security.Principal.IdentityReference,System.Int32,System.Boolean,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AuditFlags);
}
class CommonObjectSecurity : System.Security.AccessControl.ObjectSecurity{
AuthorizationRuleCollection GetAccessRules(System.Boolean,System.Boolean,System.Type);
AuthorizationRuleCollection GetAuditRules(System.Boolean,System.Boolean,System.Type);
}
class DirectoryObjectSecurity : System.Security.AccessControl.ObjectSecurity{
AccessRule AccessRuleFactory(System.Security.Principal.IdentityReference,System.Int32,System.Boolean,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AccessControlType,System.Guid,System.Guid);
AuditRule AuditRuleFactory(System.Security.Principal.IdentityReference,System.Int32,System.Boolean,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AuditFlags,System.Guid,System.Guid);
AuthorizationRuleCollection GetAccessRules(System.Boolean,System.Boolean,System.Type);
AuthorizationRuleCollection GetAuditRules(System.Boolean,System.Boolean,System.Type);
}
class PrivilegeNotHeldException : System.UnauthorizedAccessException{
this ();
this (System.String);
this (System.String,System.Exception);
String get_PrivilegeName();
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
}
class RegistryRights : System.Enum{
}
class RegistryAccessRule : System.Security.AccessControl.AccessRule{
this (System.Security.Principal.IdentityReference,System.Security.AccessControl.RegistryRights,System.Security.AccessControl.AccessControlType);
this (System.String,System.Security.AccessControl.RegistryRights,System.Security.AccessControl.AccessControlType);
this (System.Security.Principal.IdentityReference,System.Security.AccessControl.RegistryRights,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AccessControlType);
this (System.String,System.Security.AccessControl.RegistryRights,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AccessControlType);
RegistryRights get_RegistryRights();
}
class RegistryAuditRule : System.Security.AccessControl.AuditRule{
this (System.Security.Principal.IdentityReference,System.Security.AccessControl.RegistryRights,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AuditFlags);
this (System.String,System.Security.AccessControl.RegistryRights,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AuditFlags);
RegistryRights get_RegistryRights();
}
class RegistrySecurity : System.Security.AccessControl.NativeObjectSecurity{
this ();
AccessRule AccessRuleFactory(System.Security.Principal.IdentityReference,System.Int32,System.Boolean,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AccessControlType);
AuditRule AuditRuleFactory(System.Security.Principal.IdentityReference,System.Int32,System.Boolean,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AuditFlags);
Void AddAccessRule(System.Security.AccessControl.RegistryAccessRule);
Void SetAccessRule(System.Security.AccessControl.RegistryAccessRule);
Void ResetAccessRule(System.Security.AccessControl.RegistryAccessRule);
Boolean RemoveAccessRule(System.Security.AccessControl.RegistryAccessRule);
Void RemoveAccessRuleAll(System.Security.AccessControl.RegistryAccessRule);
Void RemoveAccessRuleSpecific(System.Security.AccessControl.RegistryAccessRule);
Void AddAuditRule(System.Security.AccessControl.RegistryAuditRule);
Void SetAuditRule(System.Security.AccessControl.RegistryAuditRule);
Boolean RemoveAuditRule(System.Security.AccessControl.RegistryAuditRule);
Void RemoveAuditRuleAll(System.Security.AccessControl.RegistryAuditRule);
Void RemoveAuditRuleSpecific(System.Security.AccessControl.RegistryAuditRule);
Type get_AccessRightType();
Type get_AccessRuleType();
Type get_AuditRuleType();
}
class AccessControlType : System.Enum{
}
class AuthorizationRule : System.Object{
IdentityReference get_IdentityReference();
Boolean get_IsInherited();
InheritanceFlags get_InheritanceFlags();
PropagationFlags get_PropagationFlags();
}
class AccessRule : System.Security.AccessControl.AuthorizationRule{
AccessControlType get_AccessControlType();
}
class ObjectAccessRule : System.Security.AccessControl.AccessRule{
Guid get_ObjectType();
Guid get_InheritedObjectType();
ObjectAceFlags get_ObjectFlags();
}
class AuditRule : System.Security.AccessControl.AuthorizationRule{
AuditFlags get_AuditFlags();
}
class ObjectAuditRule : System.Security.AccessControl.AuditRule{
Guid get_ObjectType();
Guid get_InheritedObjectType();
ObjectAceFlags get_ObjectFlags();
}
class AuthorizationRuleCollection : System.Collections.ReadOnlyCollectionBase{
this ();
Void AddRule(System.Security.AccessControl.AuthorizationRule);
Void CopyTo(System.Security.AccessControl.AuthorizationRule[],System.Int32);
AuthorizationRule get_Item(System.Int32);
}
class ControlFlags : System.Enum{
}
class GenericSecurityDescriptor : System.Object{
Int32 get_BinaryLength();
Void GetBinaryForm(System.Byte[],System.Int32);
static Boolean IsSddlConversionSupported();
static Byte get_Revision();
ControlFlags get_ControlFlags();
SecurityIdentifier get_Owner();
Void set_Owner(System.Security.Principal.SecurityIdentifier);
SecurityIdentifier get_Group();
Void set_Group(System.Security.Principal.SecurityIdentifier);
String GetSddlForm(System.Security.AccessControl.AccessControlSections);
}
class RawSecurityDescriptor : System.Security.AccessControl.GenericSecurityDescriptor{
this (System.Security.AccessControl.ControlFlags,System.Security.Principal.SecurityIdentifier,System.Security.Principal.SecurityIdentifier,System.Security.AccessControl.RawAcl,System.Security.AccessControl.RawAcl);
this (System.String);
this (System.Byte[],System.Int32);
ControlFlags get_ControlFlags();
SecurityIdentifier get_Owner();
Void set_Owner(System.Security.Principal.SecurityIdentifier);
SecurityIdentifier get_Group();
Void set_Group(System.Security.Principal.SecurityIdentifier);
RawAcl get_SystemAcl();
Void set_SystemAcl(System.Security.AccessControl.RawAcl);
RawAcl get_DiscretionaryAcl();
Void set_DiscretionaryAcl(System.Security.AccessControl.RawAcl);
Byte get_ResourceManagerControl();
Void set_ResourceManagerControl(System.Byte);
Void SetFlags(System.Security.AccessControl.ControlFlags);
}
class CommonSecurityDescriptor : System.Security.AccessControl.GenericSecurityDescriptor{
this (System.Boolean,System.Boolean,System.Security.AccessControl.ControlFlags,System.Security.Principal.SecurityIdentifier,System.Security.Principal.SecurityIdentifier,System.Security.AccessControl.SystemAcl,System.Security.AccessControl.DiscretionaryAcl);
this (System.Boolean,System.Boolean,System.Security.AccessControl.RawSecurityDescriptor);
this (System.Boolean,System.Boolean,System.String);
this (System.Boolean,System.Boolean,System.Byte[],System.Int32);
Boolean get_IsContainer();
Boolean get_IsDS();
ControlFlags get_ControlFlags();
SecurityIdentifier get_Owner();
Void set_Owner(System.Security.Principal.SecurityIdentifier);
SecurityIdentifier get_Group();
Void set_Group(System.Security.Principal.SecurityIdentifier);
SystemAcl get_SystemAcl();
Void set_SystemAcl(System.Security.AccessControl.SystemAcl);
DiscretionaryAcl get_DiscretionaryAcl();
Void set_DiscretionaryAcl(System.Security.AccessControl.DiscretionaryAcl);
Boolean get_IsSystemAclCanonical();
Boolean get_IsDiscretionaryAclCanonical();
Void SetSystemAclProtection(System.Boolean,System.Boolean);
Void SetDiscretionaryAclProtection(System.Boolean,System.Boolean);
Void PurgeAccessControl(System.Security.Principal.SecurityIdentifier);
Void PurgeAudit(System.Security.Principal.SecurityIdentifier);
Void AddDiscretionaryAcl(System.Byte,System.Int32);
Void AddSystemAcl(System.Byte,System.Int32);
}
}
