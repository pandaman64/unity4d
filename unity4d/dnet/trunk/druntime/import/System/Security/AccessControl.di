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
class GenericAce : System.__object{
static System.Security.AccessControl.GenericAce CreateFromBinaryForm(System.Byte[],System.Int32);
System.Security.AccessControl.AceType get_AceType();
System.Security.AccessControl.AceFlags get_AceFlags();
System.Void set_AceFlags(System.Security.AccessControl.AceFlags);
System.Boolean get_IsInherited();
System.Security.AccessControl.InheritanceFlags get_InheritanceFlags();
System.Security.AccessControl.PropagationFlags get_PropagationFlags();
System.Security.AccessControl.AuditFlags get_AuditFlags();
System.Int32 get_BinaryLength();
System.Void GetBinaryForm(System.Byte[],System.Int32);
System.Security.AccessControl.GenericAce Copy();
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
static System.Boolean op_Equality(System.Security.AccessControl.GenericAce,System.Security.AccessControl.GenericAce);
static System.Boolean op_Inequality(System.Security.AccessControl.GenericAce,System.Security.AccessControl.GenericAce);
}
class KnownAce : System.Security.AccessControl.GenericAce{
System.Int32 get_AccessMask();
System.Void set_AccessMask(System.Int32);
System.Security.Principal.SecurityIdentifier get_SecurityIdentifier();
System.Void set_SecurityIdentifier(System.Security.Principal.SecurityIdentifier);
}
class CustomAce : System.Security.AccessControl.GenericAce{
this (System.Security.AccessControl.AceType,System.Security.AccessControl.AceFlags,System.Byte[]);
System.Int32 get_OpaqueLength();
System.Int32 get_BinaryLength();
System.Byte[] GetOpaque();
System.Void SetOpaque(System.Byte[]);
System.Void GetBinaryForm(System.Byte[],System.Int32);
}
class CompoundAceType : System.Enum{
}
class CompoundAce : System.Security.AccessControl.KnownAce{
this (System.Security.AccessControl.AceFlags,System.Int32,System.Security.AccessControl.CompoundAceType,System.Security.Principal.SecurityIdentifier);
System.Security.AccessControl.CompoundAceType get_CompoundAceType();
System.Void set_CompoundAceType(System.Security.AccessControl.CompoundAceType);
System.Int32 get_BinaryLength();
System.Void GetBinaryForm(System.Byte[],System.Int32);
}
class AceQualifier : System.Enum{
}
class QualifiedAce : System.Security.AccessControl.KnownAce{
System.Security.AccessControl.AceQualifier get_AceQualifier();
System.Boolean get_IsCallback();
System.Int32 get_OpaqueLength();
System.Byte[] GetOpaque();
System.Void SetOpaque(System.Byte[]);
}
class CommonAce : System.Security.AccessControl.QualifiedAce{
this (System.Security.AccessControl.AceFlags,System.Security.AccessControl.AceQualifier,System.Int32,System.Security.Principal.SecurityIdentifier,System.Boolean,System.Byte[]);
System.Int32 get_BinaryLength();
static System.Int32 MaxOpaqueLength(System.Boolean);
System.Void GetBinaryForm(System.Byte[],System.Int32);
}
class ObjectAceFlags : System.Enum{
}
class ObjectAce : System.Security.AccessControl.QualifiedAce{
this (System.Security.AccessControl.AceFlags,System.Security.AccessControl.AceQualifier,System.Int32,System.Security.Principal.SecurityIdentifier,System.Security.AccessControl.ObjectAceFlags,System.Guid,System.Guid,System.Boolean,System.Byte[]);
System.Security.AccessControl.ObjectAceFlags get_ObjectAceFlags();
System.Void set_ObjectAceFlags(System.Security.AccessControl.ObjectAceFlags);
System.Guid get_ObjectAceType();
System.Void set_ObjectAceType(System.Guid);
System.Guid get_InheritedObjectAceType();
System.Void set_InheritedObjectAceType(System.Guid);
System.Int32 get_BinaryLength();
static System.Int32 MaxOpaqueLength(System.Boolean);
System.Void GetBinaryForm(System.Byte[],System.Int32);
}
class AceEnumerator : System.__object{
System.Security.AccessControl.GenericAce get_Current();
System.Boolean MoveNext();
System.Void Reset();
}
class GenericAcl : System.__object{
System.Byte get_Revision();
System.Int32 get_BinaryLength();
System.Security.AccessControl.GenericAce get_Item(System.Int32);
System.Void set_Item(System.Int32,System.Security.AccessControl.GenericAce);
System.Void GetBinaryForm(System.Byte[],System.Int32);
System.Void CopyTo(System.Security.AccessControl.GenericAce[],System.Int32);
System.Int32 get_Count();
System.Boolean get_IsSynchronized();
System.__object get_SyncRoot();
System.Security.AccessControl.AceEnumerator GetEnumerator();
}
class RawAcl : System.Security.AccessControl.GenericAcl{
this (System.Byte,System.Int32);
this (System.Byte[],System.Int32);
System.Byte get_Revision();
System.Int32 get_Count();
System.Int32 get_BinaryLength();
System.Void GetBinaryForm(System.Byte[],System.Int32);
System.Security.AccessControl.GenericAce get_Item(System.Int32);
System.Void set_Item(System.Int32,System.Security.AccessControl.GenericAce);
System.Void InsertAce(System.Int32,System.Security.AccessControl.GenericAce);
System.Void RemoveAce(System.Int32);
}
class CommonAcl : System.Security.AccessControl.GenericAcl{
System.Byte get_Revision();
System.Int32 get_Count();
System.Int32 get_BinaryLength();
System.Boolean get_IsCanonical();
System.Boolean get_IsContainer();
System.Boolean get_IsDS();
System.Void GetBinaryForm(System.Byte[],System.Int32);
System.Security.AccessControl.GenericAce get_Item(System.Int32);
System.Void set_Item(System.Int32,System.Security.AccessControl.GenericAce);
System.Void RemoveInheritedAces();
System.Void Purge(System.Security.Principal.SecurityIdentifier);
}
class SystemAcl : System.Security.AccessControl.CommonAcl{
this (System.Boolean,System.Boolean,System.Int32);
this (System.Boolean,System.Boolean,System.Byte,System.Int32);
this (System.Boolean,System.Boolean,System.Security.AccessControl.RawAcl);
System.Void AddAudit(System.Security.AccessControl.AuditFlags,System.Security.Principal.SecurityIdentifier,System.Int32,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags);
System.Void SetAudit(System.Security.AccessControl.AuditFlags,System.Security.Principal.SecurityIdentifier,System.Int32,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags);
System.Boolean RemoveAudit(System.Security.AccessControl.AuditFlags,System.Security.Principal.SecurityIdentifier,System.Int32,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags);
System.Void RemoveAuditSpecific(System.Security.AccessControl.AuditFlags,System.Security.Principal.SecurityIdentifier,System.Int32,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags);
System.Void AddAudit(System.Security.Principal.SecurityIdentifier,System.Security.AccessControl.ObjectAuditRule);
System.Void AddAudit(System.Security.AccessControl.AuditFlags,System.Security.Principal.SecurityIdentifier,System.Int32,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.ObjectAceFlags,System.Guid,System.Guid);
System.Void SetAudit(System.Security.Principal.SecurityIdentifier,System.Security.AccessControl.ObjectAuditRule);
System.Void SetAudit(System.Security.AccessControl.AuditFlags,System.Security.Principal.SecurityIdentifier,System.Int32,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.ObjectAceFlags,System.Guid,System.Guid);
System.Boolean RemoveAudit(System.Security.Principal.SecurityIdentifier,System.Security.AccessControl.ObjectAuditRule);
System.Boolean RemoveAudit(System.Security.AccessControl.AuditFlags,System.Security.Principal.SecurityIdentifier,System.Int32,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.ObjectAceFlags,System.Guid,System.Guid);
System.Void RemoveAuditSpecific(System.Security.Principal.SecurityIdentifier,System.Security.AccessControl.ObjectAuditRule);
System.Void RemoveAuditSpecific(System.Security.AccessControl.AuditFlags,System.Security.Principal.SecurityIdentifier,System.Int32,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.ObjectAceFlags,System.Guid,System.Guid);
}
class DiscretionaryAcl : System.Security.AccessControl.CommonAcl{
this (System.Boolean,System.Boolean,System.Int32);
this (System.Boolean,System.Boolean,System.Byte,System.Int32);
this (System.Boolean,System.Boolean,System.Security.AccessControl.RawAcl);
System.Void AddAccess(System.Security.AccessControl.AccessControlType,System.Security.Principal.SecurityIdentifier,System.Int32,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags);
System.Void SetAccess(System.Security.AccessControl.AccessControlType,System.Security.Principal.SecurityIdentifier,System.Int32,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags);
System.Boolean RemoveAccess(System.Security.AccessControl.AccessControlType,System.Security.Principal.SecurityIdentifier,System.Int32,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags);
System.Void RemoveAccessSpecific(System.Security.AccessControl.AccessControlType,System.Security.Principal.SecurityIdentifier,System.Int32,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags);
System.Void AddAccess(System.Security.AccessControl.AccessControlType,System.Security.Principal.SecurityIdentifier,System.Security.AccessControl.ObjectAccessRule);
System.Void AddAccess(System.Security.AccessControl.AccessControlType,System.Security.Principal.SecurityIdentifier,System.Int32,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.ObjectAceFlags,System.Guid,System.Guid);
System.Void SetAccess(System.Security.AccessControl.AccessControlType,System.Security.Principal.SecurityIdentifier,System.Security.AccessControl.ObjectAccessRule);
System.Void SetAccess(System.Security.AccessControl.AccessControlType,System.Security.Principal.SecurityIdentifier,System.Int32,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.ObjectAceFlags,System.Guid,System.Guid);
System.Boolean RemoveAccess(System.Security.AccessControl.AccessControlType,System.Security.Principal.SecurityIdentifier,System.Security.AccessControl.ObjectAccessRule);
System.Boolean RemoveAccess(System.Security.AccessControl.AccessControlType,System.Security.Principal.SecurityIdentifier,System.Int32,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.ObjectAceFlags,System.Guid,System.Guid);
System.Void RemoveAccessSpecific(System.Security.AccessControl.AccessControlType,System.Security.Principal.SecurityIdentifier,System.Security.AccessControl.ObjectAccessRule);
System.Void RemoveAccessSpecific(System.Security.AccessControl.AccessControlType,System.Security.Principal.SecurityIdentifier,System.Int32,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.ObjectAceFlags,System.Guid,System.Guid);
}
class CryptoKeyRights : System.Enum{
}
class CryptoKeyAccessRule : System.Security.AccessControl.AccessRule{
this (System.Security.Principal.IdentityReference,System.Security.AccessControl.CryptoKeyRights,System.Security.AccessControl.AccessControlType);
this (System.String,System.Security.AccessControl.CryptoKeyRights,System.Security.AccessControl.AccessControlType);
System.Security.AccessControl.CryptoKeyRights get_CryptoKeyRights();
}
class CryptoKeyAuditRule : System.Security.AccessControl.AuditRule{
this (System.Security.Principal.IdentityReference,System.Security.AccessControl.CryptoKeyRights,System.Security.AccessControl.AuditFlags);
this (System.String,System.Security.AccessControl.CryptoKeyRights,System.Security.AccessControl.AuditFlags);
System.Security.AccessControl.CryptoKeyRights get_CryptoKeyRights();
}
class CryptoKeySecurity : System.Security.AccessControl.NativeObjectSecurity{
this ();
this (System.Security.AccessControl.CommonSecurityDescriptor);
System.Security.AccessControl.AccessRule AccessRuleFactory(System.Security.Principal.IdentityReference,System.Int32,System.Boolean,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AccessControlType);
System.Security.AccessControl.AuditRule AuditRuleFactory(System.Security.Principal.IdentityReference,System.Int32,System.Boolean,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AuditFlags);
System.Void AddAccessRule(System.Security.AccessControl.CryptoKeyAccessRule);
System.Void SetAccessRule(System.Security.AccessControl.CryptoKeyAccessRule);
System.Void ResetAccessRule(System.Security.AccessControl.CryptoKeyAccessRule);
System.Boolean RemoveAccessRule(System.Security.AccessControl.CryptoKeyAccessRule);
System.Void RemoveAccessRuleAll(System.Security.AccessControl.CryptoKeyAccessRule);
System.Void RemoveAccessRuleSpecific(System.Security.AccessControl.CryptoKeyAccessRule);
System.Void AddAuditRule(System.Security.AccessControl.CryptoKeyAuditRule);
System.Void SetAuditRule(System.Security.AccessControl.CryptoKeyAuditRule);
System.Boolean RemoveAuditRule(System.Security.AccessControl.CryptoKeyAuditRule);
System.Void RemoveAuditRuleAll(System.Security.AccessControl.CryptoKeyAuditRule);
System.Void RemoveAuditRuleSpecific(System.Security.AccessControl.CryptoKeyAuditRule);
System.Type get_AccessRightType();
System.Type get_AccessRuleType();
System.Type get_AuditRuleType();
}
class EventWaitHandleRights : System.Enum{
}
class EventWaitHandleAccessRule : System.Security.AccessControl.AccessRule{
this (System.Security.Principal.IdentityReference,System.Security.AccessControl.EventWaitHandleRights,System.Security.AccessControl.AccessControlType);
this (System.String,System.Security.AccessControl.EventWaitHandleRights,System.Security.AccessControl.AccessControlType);
System.Security.AccessControl.EventWaitHandleRights get_EventWaitHandleRights();
}
class EventWaitHandleAuditRule : System.Security.AccessControl.AuditRule{
this (System.Security.Principal.IdentityReference,System.Security.AccessControl.EventWaitHandleRights,System.Security.AccessControl.AuditFlags);
System.Security.AccessControl.EventWaitHandleRights get_EventWaitHandleRights();
}
class EventWaitHandleSecurity : System.Security.AccessControl.NativeObjectSecurity{
this ();
System.Security.AccessControl.AccessRule AccessRuleFactory(System.Security.Principal.IdentityReference,System.Int32,System.Boolean,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AccessControlType);
System.Security.AccessControl.AuditRule AuditRuleFactory(System.Security.Principal.IdentityReference,System.Int32,System.Boolean,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AuditFlags);
System.Void AddAccessRule(System.Security.AccessControl.EventWaitHandleAccessRule);
System.Void SetAccessRule(System.Security.AccessControl.EventWaitHandleAccessRule);
System.Void ResetAccessRule(System.Security.AccessControl.EventWaitHandleAccessRule);
System.Boolean RemoveAccessRule(System.Security.AccessControl.EventWaitHandleAccessRule);
System.Void RemoveAccessRuleAll(System.Security.AccessControl.EventWaitHandleAccessRule);
System.Void RemoveAccessRuleSpecific(System.Security.AccessControl.EventWaitHandleAccessRule);
System.Void AddAuditRule(System.Security.AccessControl.EventWaitHandleAuditRule);
System.Void SetAuditRule(System.Security.AccessControl.EventWaitHandleAuditRule);
System.Boolean RemoveAuditRule(System.Security.AccessControl.EventWaitHandleAuditRule);
System.Void RemoveAuditRuleAll(System.Security.AccessControl.EventWaitHandleAuditRule);
System.Void RemoveAuditRuleSpecific(System.Security.AccessControl.EventWaitHandleAuditRule);
System.Type get_AccessRightType();
System.Type get_AccessRuleType();
System.Type get_AuditRuleType();
}
class FileSystemRights : System.Enum{
}
class FileSystemAccessRule : System.Security.AccessControl.AccessRule{
this (System.Security.Principal.IdentityReference,System.Security.AccessControl.FileSystemRights,System.Security.AccessControl.AccessControlType);
this (System.String,System.Security.AccessControl.FileSystemRights,System.Security.AccessControl.AccessControlType);
this (System.Security.Principal.IdentityReference,System.Security.AccessControl.FileSystemRights,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AccessControlType);
this (System.String,System.Security.AccessControl.FileSystemRights,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AccessControlType);
System.Security.AccessControl.FileSystemRights get_FileSystemRights();
}
class FileSystemAuditRule : System.Security.AccessControl.AuditRule{
this (System.Security.Principal.IdentityReference,System.Security.AccessControl.FileSystemRights,System.Security.AccessControl.AuditFlags);
this (System.Security.Principal.IdentityReference,System.Security.AccessControl.FileSystemRights,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AuditFlags);
this (System.String,System.Security.AccessControl.FileSystemRights,System.Security.AccessControl.AuditFlags);
this (System.String,System.Security.AccessControl.FileSystemRights,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AuditFlags);
System.Security.AccessControl.FileSystemRights get_FileSystemRights();
}
class FileSystemSecurity : System.Security.AccessControl.NativeObjectSecurity{
System.Security.AccessControl.AccessRule AccessRuleFactory(System.Security.Principal.IdentityReference,System.Int32,System.Boolean,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AccessControlType);
System.Security.AccessControl.AuditRule AuditRuleFactory(System.Security.Principal.IdentityReference,System.Int32,System.Boolean,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AuditFlags);
System.Void AddAccessRule(System.Security.AccessControl.FileSystemAccessRule);
System.Void SetAccessRule(System.Security.AccessControl.FileSystemAccessRule);
System.Void ResetAccessRule(System.Security.AccessControl.FileSystemAccessRule);
System.Boolean RemoveAccessRule(System.Security.AccessControl.FileSystemAccessRule);
System.Void RemoveAccessRuleAll(System.Security.AccessControl.FileSystemAccessRule);
System.Void RemoveAccessRuleSpecific(System.Security.AccessControl.FileSystemAccessRule);
System.Void AddAuditRule(System.Security.AccessControl.FileSystemAuditRule);
System.Void SetAuditRule(System.Security.AccessControl.FileSystemAuditRule);
System.Boolean RemoveAuditRule(System.Security.AccessControl.FileSystemAuditRule);
System.Void RemoveAuditRuleAll(System.Security.AccessControl.FileSystemAuditRule);
System.Void RemoveAuditRuleSpecific(System.Security.AccessControl.FileSystemAuditRule);
System.Type get_AccessRightType();
System.Type get_AccessRuleType();
System.Type get_AuditRuleType();
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
System.Security.AccessControl.MutexRights get_MutexRights();
}
class MutexAuditRule : System.Security.AccessControl.AuditRule{
this (System.Security.Principal.IdentityReference,System.Security.AccessControl.MutexRights,System.Security.AccessControl.AuditFlags);
System.Security.AccessControl.MutexRights get_MutexRights();
}
class MutexSecurity : System.Security.AccessControl.NativeObjectSecurity{
this ();
this (System.String,System.Security.AccessControl.AccessControlSections);
System.Security.AccessControl.AccessRule AccessRuleFactory(System.Security.Principal.IdentityReference,System.Int32,System.Boolean,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AccessControlType);
System.Security.AccessControl.AuditRule AuditRuleFactory(System.Security.Principal.IdentityReference,System.Int32,System.Boolean,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AuditFlags);
System.Void AddAccessRule(System.Security.AccessControl.MutexAccessRule);
System.Void SetAccessRule(System.Security.AccessControl.MutexAccessRule);
System.Void ResetAccessRule(System.Security.AccessControl.MutexAccessRule);
System.Boolean RemoveAccessRule(System.Security.AccessControl.MutexAccessRule);
System.Void RemoveAccessRuleAll(System.Security.AccessControl.MutexAccessRule);
System.Void RemoveAccessRuleSpecific(System.Security.AccessControl.MutexAccessRule);
System.Void AddAuditRule(System.Security.AccessControl.MutexAuditRule);
System.Void SetAuditRule(System.Security.AccessControl.MutexAuditRule);
System.Boolean RemoveAuditRule(System.Security.AccessControl.MutexAuditRule);
System.Void RemoveAuditRuleAll(System.Security.AccessControl.MutexAuditRule);
System.Void RemoveAuditRuleSpecific(System.Security.AccessControl.MutexAuditRule);
System.Type get_AccessRightType();
System.Type get_AccessRuleType();
System.Type get_AuditRuleType();
}
class NativeObjectSecurity : System.Security.AccessControl.CommonObjectSecurity{
}
class AccessControlModification : System.Enum{
}
class ObjectSecurity : System.__object{
System.Security.Principal.IdentityReference GetOwner(System.Type);
System.Void SetOwner(System.Security.Principal.IdentityReference);
System.Security.Principal.IdentityReference GetGroup(System.Type);
System.Void SetGroup(System.Security.Principal.IdentityReference);
System.Void PurgeAccessRules(System.Security.Principal.IdentityReference);
System.Void PurgeAuditRules(System.Security.Principal.IdentityReference);
System.Boolean get_AreAccessRulesProtected();
System.Void SetAccessRuleProtection(System.Boolean,System.Boolean);
System.Boolean get_AreAuditRulesProtected();
System.Void SetAuditRuleProtection(System.Boolean,System.Boolean);
System.Boolean get_AreAccessRulesCanonical();
System.Boolean get_AreAuditRulesCanonical();
static System.Boolean IsSddlConversionSupported();
System.String GetSecurityDescriptorSddlForm(System.Security.AccessControl.AccessControlSections);
System.Void SetSecurityDescriptorSddlForm(System.String);
System.Void SetSecurityDescriptorSddlForm(System.String,System.Security.AccessControl.AccessControlSections);
System.Byte[] GetSecurityDescriptorBinaryForm();
System.Void SetSecurityDescriptorBinaryForm(System.Byte[]);
System.Void SetSecurityDescriptorBinaryForm(System.Byte[],System.Security.AccessControl.AccessControlSections);
System.Type get_AccessRightType();
System.Type get_AccessRuleType();
System.Type get_AuditRuleType();
System.Security.AccessControl.AccessRule AccessRuleFactory(System.Security.Principal.IdentityReference,System.Int32,System.Boolean,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AccessControlType);
System.Security.AccessControl.AuditRule AuditRuleFactory(System.Security.Principal.IdentityReference,System.Int32,System.Boolean,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AuditFlags);
}
class CommonObjectSecurity : System.Security.AccessControl.ObjectSecurity{
System.Security.AccessControl.AuthorizationRuleCollection GetAccessRules(System.Boolean,System.Boolean,System.Type);
System.Security.AccessControl.AuthorizationRuleCollection GetAuditRules(System.Boolean,System.Boolean,System.Type);
}
class DirectoryObjectSecurity : System.Security.AccessControl.ObjectSecurity{
System.Security.AccessControl.AccessRule AccessRuleFactory(System.Security.Principal.IdentityReference,System.Int32,System.Boolean,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AccessControlType,System.Guid,System.Guid);
System.Security.AccessControl.AuditRule AuditRuleFactory(System.Security.Principal.IdentityReference,System.Int32,System.Boolean,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AuditFlags,System.Guid,System.Guid);
System.Security.AccessControl.AuthorizationRuleCollection GetAccessRules(System.Boolean,System.Boolean,System.Type);
System.Security.AccessControl.AuthorizationRuleCollection GetAuditRules(System.Boolean,System.Boolean,System.Type);
}
class RegistryRights : System.Enum{
}
class RegistryAccessRule : System.Security.AccessControl.AccessRule{
this (System.Security.Principal.IdentityReference,System.Security.AccessControl.RegistryRights,System.Security.AccessControl.AccessControlType);
this (System.String,System.Security.AccessControl.RegistryRights,System.Security.AccessControl.AccessControlType);
this (System.Security.Principal.IdentityReference,System.Security.AccessControl.RegistryRights,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AccessControlType);
this (System.String,System.Security.AccessControl.RegistryRights,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AccessControlType);
System.Security.AccessControl.RegistryRights get_RegistryRights();
}
class RegistryAuditRule : System.Security.AccessControl.AuditRule{
this (System.Security.Principal.IdentityReference,System.Security.AccessControl.RegistryRights,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AuditFlags);
this (System.String,System.Security.AccessControl.RegistryRights,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AuditFlags);
System.Security.AccessControl.RegistryRights get_RegistryRights();
}
class RegistrySecurity : System.Security.AccessControl.NativeObjectSecurity{
this ();
System.Security.AccessControl.AccessRule AccessRuleFactory(System.Security.Principal.IdentityReference,System.Int32,System.Boolean,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AccessControlType);
System.Security.AccessControl.AuditRule AuditRuleFactory(System.Security.Principal.IdentityReference,System.Int32,System.Boolean,System.Security.AccessControl.InheritanceFlags,System.Security.AccessControl.PropagationFlags,System.Security.AccessControl.AuditFlags);
System.Void AddAccessRule(System.Security.AccessControl.RegistryAccessRule);
System.Void SetAccessRule(System.Security.AccessControl.RegistryAccessRule);
System.Void ResetAccessRule(System.Security.AccessControl.RegistryAccessRule);
System.Boolean RemoveAccessRule(System.Security.AccessControl.RegistryAccessRule);
System.Void RemoveAccessRuleAll(System.Security.AccessControl.RegistryAccessRule);
System.Void RemoveAccessRuleSpecific(System.Security.AccessControl.RegistryAccessRule);
System.Void AddAuditRule(System.Security.AccessControl.RegistryAuditRule);
System.Void SetAuditRule(System.Security.AccessControl.RegistryAuditRule);
System.Boolean RemoveAuditRule(System.Security.AccessControl.RegistryAuditRule);
System.Void RemoveAuditRuleAll(System.Security.AccessControl.RegistryAuditRule);
System.Void RemoveAuditRuleSpecific(System.Security.AccessControl.RegistryAuditRule);
System.Type get_AccessRightType();
System.Type get_AccessRuleType();
System.Type get_AuditRuleType();
}
class AccessControlType : System.Enum{
}
class AuthorizationRule : System.__object{
System.Security.Principal.IdentityReference get_IdentityReference();
System.Boolean get_IsInherited();
System.Security.AccessControl.InheritanceFlags get_InheritanceFlags();
System.Security.AccessControl.PropagationFlags get_PropagationFlags();
}
class AccessRule : System.Security.AccessControl.AuthorizationRule{
System.Security.AccessControl.AccessControlType get_AccessControlType();
}
class ObjectAccessRule : System.Security.AccessControl.AccessRule{
System.Guid get_ObjectType();
System.Guid get_InheritedObjectType();
System.Security.AccessControl.ObjectAceFlags get_ObjectFlags();
}
class AuditRule : System.Security.AccessControl.AuthorizationRule{
System.Security.AccessControl.AuditFlags get_AuditFlags();
}
class ObjectAuditRule : System.Security.AccessControl.AuditRule{
System.Guid get_ObjectType();
System.Guid get_InheritedObjectType();
System.Security.AccessControl.ObjectAceFlags get_ObjectFlags();
}
class AuthorizationRuleCollection : System.Collections.ReadOnlyCollectionBase{
this ();
System.Void AddRule(System.Security.AccessControl.AuthorizationRule);
System.Void CopyTo(System.Security.AccessControl.AuthorizationRule[],System.Int32);
System.Security.AccessControl.AuthorizationRule get_Item(System.Int32);
}
class ControlFlags : System.Enum{
}
class GenericSecurityDescriptor : System.__object{
System.Int32 get_BinaryLength();
System.Void GetBinaryForm(System.Byte[],System.Int32);
static System.Boolean IsSddlConversionSupported();
static System.Byte get_Revision();
System.Security.AccessControl.ControlFlags get_ControlFlags();
System.Security.Principal.SecurityIdentifier get_Owner();
System.Void set_Owner(System.Security.Principal.SecurityIdentifier);
System.Security.Principal.SecurityIdentifier get_Group();
System.Void set_Group(System.Security.Principal.SecurityIdentifier);
System.String GetSddlForm(System.Security.AccessControl.AccessControlSections);
}
class RawSecurityDescriptor : System.Security.AccessControl.GenericSecurityDescriptor{
this (System.Security.AccessControl.ControlFlags,System.Security.Principal.SecurityIdentifier,System.Security.Principal.SecurityIdentifier,System.Security.AccessControl.RawAcl,System.Security.AccessControl.RawAcl);
this (System.String);
this (System.Byte[],System.Int32);
System.Security.AccessControl.ControlFlags get_ControlFlags();
System.Security.Principal.SecurityIdentifier get_Owner();
System.Void set_Owner(System.Security.Principal.SecurityIdentifier);
System.Security.Principal.SecurityIdentifier get_Group();
System.Void set_Group(System.Security.Principal.SecurityIdentifier);
System.Security.AccessControl.RawAcl get_SystemAcl();
System.Void set_SystemAcl(System.Security.AccessControl.RawAcl);
System.Security.AccessControl.RawAcl get_DiscretionaryAcl();
System.Void set_DiscretionaryAcl(System.Security.AccessControl.RawAcl);
System.Byte get_ResourceManagerControl();
System.Void set_ResourceManagerControl(System.Byte);
System.Void SetFlags(System.Security.AccessControl.ControlFlags);
}
class CommonSecurityDescriptor : System.Security.AccessControl.GenericSecurityDescriptor{
this (System.Boolean,System.Boolean,System.Security.AccessControl.ControlFlags,System.Security.Principal.SecurityIdentifier,System.Security.Principal.SecurityIdentifier,System.Security.AccessControl.SystemAcl,System.Security.AccessControl.DiscretionaryAcl);
this (System.Boolean,System.Boolean,System.Security.AccessControl.RawSecurityDescriptor);
this (System.Boolean,System.Boolean,System.String);
this (System.Boolean,System.Boolean,System.Byte[],System.Int32);
System.Boolean get_IsContainer();
System.Boolean get_IsDS();
System.Security.AccessControl.ControlFlags get_ControlFlags();
System.Security.Principal.SecurityIdentifier get_Owner();
System.Void set_Owner(System.Security.Principal.SecurityIdentifier);
System.Security.Principal.SecurityIdentifier get_Group();
System.Void set_Group(System.Security.Principal.SecurityIdentifier);
System.Security.AccessControl.SystemAcl get_SystemAcl();
System.Void set_SystemAcl(System.Security.AccessControl.SystemAcl);
System.Security.AccessControl.DiscretionaryAcl get_DiscretionaryAcl();
System.Void set_DiscretionaryAcl(System.Security.AccessControl.DiscretionaryAcl);
System.Boolean get_IsSystemAclCanonical();
System.Boolean get_IsDiscretionaryAclCanonical();
System.Void SetSystemAclProtection(System.Boolean,System.Boolean);
System.Void SetDiscretionaryAclProtection(System.Boolean,System.Boolean);
System.Void PurgeAccessControl(System.Security.Principal.SecurityIdentifier);
System.Void PurgeAudit(System.Security.Principal.SecurityIdentifier);
System.Void AddDiscretionaryAcl(System.Byte,System.Int32);
System.Void AddSystemAcl(System.Byte,System.Int32);
}
}
