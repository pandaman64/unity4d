module System.Security.Permissions;
import System;
import System.Security;
import System.Security.AccessControl;
import System.Security.Cryptography;
import System.Security.Cryptography.X509Certificates;
public:
pragma(assembly,"mscorlib"){
class EnvironmentPermissionAccess : System.Enum{
}
class EnvironmentPermission : System.Security.CodeAccessPermission{
this (System.Security.Permissions.PermissionState);
this (System.Security.Permissions.EnvironmentPermissionAccess,System.String);
System.Void SetPathList(System.Security.Permissions.EnvironmentPermissionAccess,System.String);
System.Void AddPathList(System.Security.Permissions.EnvironmentPermissionAccess,System.String);
System.String GetPathList(System.Security.Permissions.EnvironmentPermissionAccess);
System.Boolean IsUnrestricted();
System.Boolean IsSubsetOf(System.Security.IPermission);
System.Security.IPermission Intersect(System.Security.IPermission);
System.Security.IPermission Union(System.Security.IPermission);
System.Security.IPermission Copy();
System.Security.SecurityElement ToXml();
System.Void FromXml(System.Security.SecurityElement);
}
class FileDialogPermissionAccess : System.Enum{
}
class FileDialogPermission : System.Security.CodeAccessPermission{
this (System.Security.Permissions.PermissionState);
this (System.Security.Permissions.FileDialogPermissionAccess);
System.Void FromXml(System.Security.SecurityElement);
System.Security.Permissions.FileDialogPermissionAccess get_Access();
System.Void set_Access(System.Security.Permissions.FileDialogPermissionAccess);
System.Security.IPermission Copy();
System.Security.IPermission Intersect(System.Security.IPermission);
System.Boolean IsSubsetOf(System.Security.IPermission);
System.Boolean IsUnrestricted();
System.Security.SecurityElement ToXml();
System.Security.IPermission Union(System.Security.IPermission);
}
class FileIOPermissionAccess : System.Enum{
}
class FileIOPermission : System.Security.CodeAccessPermission{
this (System.Security.Permissions.PermissionState);
this (System.Security.Permissions.FileIOPermissionAccess,System.String);
this (System.Security.Permissions.FileIOPermissionAccess,System.String[]);
this (System.Security.Permissions.FileIOPermissionAccess,System.Security.AccessControl.AccessControlActions,System.String);
this (System.Security.Permissions.FileIOPermissionAccess,System.Security.AccessControl.AccessControlActions,System.String[]);
System.Void SetPathList(System.Security.Permissions.FileIOPermissionAccess,System.String);
System.Void SetPathList(System.Security.Permissions.FileIOPermissionAccess,System.String[]);
System.Void AddPathList(System.Security.Permissions.FileIOPermissionAccess,System.String);
System.Void AddPathList(System.Security.Permissions.FileIOPermissionAccess,System.String[]);
System.String[] GetPathList(System.Security.Permissions.FileIOPermissionAccess);
System.Security.Permissions.FileIOPermissionAccess get_AllLocalFiles();
System.Void set_AllLocalFiles(System.Security.Permissions.FileIOPermissionAccess);
System.Security.Permissions.FileIOPermissionAccess get_AllFiles();
System.Void set_AllFiles(System.Security.Permissions.FileIOPermissionAccess);
System.Boolean IsUnrestricted();
System.Boolean IsSubsetOf(System.Security.IPermission);
System.Security.IPermission Intersect(System.Security.IPermission);
System.Security.IPermission Union(System.Security.IPermission);
System.Security.IPermission Copy();
System.Security.SecurityElement ToXml();
System.Void FromXml(System.Security.SecurityElement);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
}
class HostProtectionResource : System.Enum{
}
class HostProtectionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute{
this ();
this (System.Security.Permissions.SecurityAction);
System.Security.Permissions.HostProtectionResource get_Resources();
System.Void set_Resources(System.Security.Permissions.HostProtectionResource);
System.Boolean get_Synchronization();
System.Void set_Synchronization(System.Boolean);
System.Boolean get_SharedState();
System.Void set_SharedState(System.Boolean);
System.Boolean get_ExternalProcessMgmt();
System.Void set_ExternalProcessMgmt(System.Boolean);
System.Boolean get_SelfAffectingProcessMgmt();
System.Void set_SelfAffectingProcessMgmt(System.Boolean);
System.Boolean get_ExternalThreading();
System.Void set_ExternalThreading(System.Boolean);
System.Boolean get_SelfAffectingThreading();
System.Void set_SelfAffectingThreading(System.Boolean);
System.Boolean get_SecurityInfrastructure();
System.Void set_SecurityInfrastructure(System.Boolean);
System.Boolean get_UI();
System.Void set_UI(System.Boolean);
System.Boolean get_MayLeakOnAbort();
System.Void set_MayLeakOnAbort(System.Boolean);
System.Security.IPermission CreatePermission();
}
class IsolatedStorageContainment : System.Enum{
}
class IsolatedStoragePermission : System.Security.CodeAccessPermission{
System.Void FromXml(System.Security.SecurityElement);
System.Void set_UserQuota(System.Int64);
System.Int64 get_UserQuota();
System.Void set_UsageAllowed(System.Security.Permissions.IsolatedStorageContainment);
System.Security.Permissions.IsolatedStorageContainment get_UsageAllowed();
System.Boolean IsUnrestricted();
System.Security.SecurityElement ToXml();
}
class IsolatedStorageFilePermission : System.Security.Permissions.IsolatedStoragePermission{
this (System.Security.Permissions.PermissionState);
System.Security.SecurityElement ToXml();
System.Security.IPermission Union(System.Security.IPermission);
System.Boolean IsSubsetOf(System.Security.IPermission);
System.Security.IPermission Intersect(System.Security.IPermission);
System.Security.IPermission Copy();
}
class PermissionState : System.Enum{
}
class SecurityAction : System.Enum{
}
class SecurityAttribute : System.Attribute{
System.Security.Permissions.SecurityAction get_Action();
System.Void set_Action(System.Security.Permissions.SecurityAction);
System.Boolean get_Unrestricted();
System.Void set_Unrestricted(System.Boolean);
System.Security.IPermission CreatePermission();
}
class CodeAccessSecurityAttribute : System.Security.Permissions.SecurityAttribute{
}
class EnvironmentPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute{
this (System.Security.Permissions.SecurityAction);
System.String get_Read();
System.Void set_Read(System.String);
System.String get_Write();
System.Void set_Write(System.String);
System.String get_All();
System.Void set_All(System.String);
System.Security.IPermission CreatePermission();
}
class FileDialogPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute{
this (System.Security.Permissions.SecurityAction);
System.Boolean get_Open();
System.Void set_Open(System.Boolean);
System.Boolean get_Save();
System.Void set_Save(System.Boolean);
System.Security.IPermission CreatePermission();
}
class FileIOPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute{
this (System.Security.Permissions.SecurityAction);
System.String get_Read();
System.Void set_Read(System.String);
System.String get_Write();
System.Void set_Write(System.String);
System.String get_Append();
System.Void set_Append(System.String);
System.String get_PathDiscovery();
System.Void set_PathDiscovery(System.String);
System.String get_ViewAccessControl();
System.Void set_ViewAccessControl(System.String);
System.String get_ChangeAccessControl();
System.Void set_ChangeAccessControl(System.String);
System.Void set_All(System.String);
System.String get_All();
System.String get_ViewAndModify();
System.Void set_ViewAndModify(System.String);
System.Security.Permissions.FileIOPermissionAccess get_AllFiles();
System.Void set_AllFiles(System.Security.Permissions.FileIOPermissionAccess);
System.Security.Permissions.FileIOPermissionAccess get_AllLocalFiles();
System.Void set_AllLocalFiles(System.Security.Permissions.FileIOPermissionAccess);
System.Security.IPermission CreatePermission();
}
class KeyContainerPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute{
this (System.Security.Permissions.SecurityAction);
System.String get_KeyStore();
System.Void set_KeyStore(System.String);
System.String get_ProviderName();
System.Void set_ProviderName(System.String);
System.Int32 get_ProviderType();
System.Void set_ProviderType(System.Int32);
System.String get_KeyContainerName();
System.Void set_KeyContainerName(System.String);
System.Int32 get_KeySpec();
System.Void set_KeySpec(System.Int32);
System.Security.Permissions.KeyContainerPermissionFlags get_Flags();
System.Void set_Flags(System.Security.Permissions.KeyContainerPermissionFlags);
System.Security.IPermission CreatePermission();
}
class PrincipalPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute{
this (System.Security.Permissions.SecurityAction);
System.String get_Name();
System.Void set_Name(System.String);
System.String get_Role();
System.Void set_Role(System.String);
System.Boolean get_Authenticated();
System.Void set_Authenticated(System.Boolean);
System.Security.IPermission CreatePermission();
}
class ReflectionPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute{
this (System.Security.Permissions.SecurityAction);
System.Security.Permissions.ReflectionPermissionFlag get_Flags();
System.Void set_Flags(System.Security.Permissions.ReflectionPermissionFlag);
System.Boolean get_TypeInformation();
System.Void set_TypeInformation(System.Boolean);
System.Boolean get_MemberAccess();
System.Void set_MemberAccess(System.Boolean);
System.Boolean get_ReflectionEmit();
System.Void set_ReflectionEmit(System.Boolean);
System.Boolean get_RestrictedMemberAccess();
System.Void set_RestrictedMemberAccess(System.Boolean);
System.Security.IPermission CreatePermission();
}
class RegistryPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute{
this (System.Security.Permissions.SecurityAction);
System.String get_Read();
System.Void set_Read(System.String);
System.String get_Write();
System.Void set_Write(System.String);
System.String get_Create();
System.Void set_Create(System.String);
System.String get_ViewAccessControl();
System.Void set_ViewAccessControl(System.String);
System.String get_ChangeAccessControl();
System.Void set_ChangeAccessControl(System.String);
System.String get_ViewAndModify();
System.Void set_ViewAndModify(System.String);
System.String get_All();
System.Void set_All(System.String);
System.Security.IPermission CreatePermission();
}
class SecurityPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute{
this (System.Security.Permissions.SecurityAction);
System.Security.Permissions.SecurityPermissionFlag get_Flags();
System.Void set_Flags(System.Security.Permissions.SecurityPermissionFlag);
System.Boolean get_Assertion();
System.Void set_Assertion(System.Boolean);
System.Boolean get_UnmanagedCode();
System.Void set_UnmanagedCode(System.Boolean);
System.Boolean get_SkipVerification();
System.Void set_SkipVerification(System.Boolean);
System.Boolean get_Execution();
System.Void set_Execution(System.Boolean);
System.Boolean get_ControlThread();
System.Void set_ControlThread(System.Boolean);
System.Boolean get_ControlEvidence();
System.Void set_ControlEvidence(System.Boolean);
System.Boolean get_ControlPolicy();
System.Void set_ControlPolicy(System.Boolean);
System.Boolean get_SerializationFormatter();
System.Void set_SerializationFormatter(System.Boolean);
System.Boolean get_ControlDomainPolicy();
System.Void set_ControlDomainPolicy(System.Boolean);
System.Boolean get_ControlPrincipal();
System.Void set_ControlPrincipal(System.Boolean);
System.Boolean get_ControlAppDomain();
System.Void set_ControlAppDomain(System.Boolean);
System.Boolean get_RemotingConfiguration();
System.Void set_RemotingConfiguration(System.Boolean);
System.Boolean get_Infrastructure();
System.Void set_Infrastructure(System.Boolean);
System.Boolean get_BindingRedirects();
System.Void set_BindingRedirects(System.Boolean);
System.Security.IPermission CreatePermission();
}
class UIPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute{
this (System.Security.Permissions.SecurityAction);
System.Security.Permissions.UIPermissionWindow get_Window();
System.Void set_Window(System.Security.Permissions.UIPermissionWindow);
System.Security.Permissions.UIPermissionClipboard get_Clipboard();
System.Void set_Clipboard(System.Security.Permissions.UIPermissionClipboard);
System.Security.IPermission CreatePermission();
}
class ZoneIdentityPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute{
this (System.Security.Permissions.SecurityAction);
System.Security.SecurityZone get_Zone();
System.Void set_Zone(System.Security.SecurityZone);
System.Security.IPermission CreatePermission();
}
class StrongNameIdentityPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute{
this (System.Security.Permissions.SecurityAction);
System.String get_Name();
System.Void set_Name(System.String);
System.String get_Version();
System.Void set_Version(System.String);
System.String get_PublicKey();
System.Void set_PublicKey(System.String);
System.Security.IPermission CreatePermission();
}
class SiteIdentityPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute{
this (System.Security.Permissions.SecurityAction);
System.String get_Site();
System.Void set_Site(System.String);
System.Security.IPermission CreatePermission();
}
class UrlIdentityPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute{
this (System.Security.Permissions.SecurityAction);
System.String get_Url();
System.Void set_Url(System.String);
System.Security.IPermission CreatePermission();
}
class PublisherIdentityPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute{
this (System.Security.Permissions.SecurityAction);
System.String get_X509Certificate();
System.Void set_X509Certificate(System.String);
System.String get_CertFile();
System.Void set_CertFile(System.String);
System.String get_SignedFile();
System.Void set_SignedFile(System.String);
System.Security.IPermission CreatePermission();
}
class IsolatedStoragePermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute{
System.Void set_UserQuota(System.Int64);
System.Int64 get_UserQuota();
System.Void set_UsageAllowed(System.Security.Permissions.IsolatedStorageContainment);
System.Security.Permissions.IsolatedStorageContainment get_UsageAllowed();
}
class IsolatedStorageFilePermissionAttribute : System.Security.Permissions.IsolatedStoragePermissionAttribute{
this (System.Security.Permissions.SecurityAction);
System.Security.IPermission CreatePermission();
}
class PermissionSetAttribute : System.Security.Permissions.CodeAccessSecurityAttribute{
this (System.Security.Permissions.SecurityAction);
System.String get_File();
System.Void set_File(System.String);
System.Boolean get_UnicodeEncoded();
System.Void set_UnicodeEncoded(System.Boolean);
System.String get_Name();
System.Void set_Name(System.String);
System.String get_XML();
System.Void set_XML(System.String);
System.String get_Hex();
System.Void set_Hex(System.String);
System.Security.IPermission CreatePermission();
System.Security.PermissionSet CreatePermissionSet();
}
class ReflectionPermissionFlag : System.Enum{
}
class ReflectionPermission : System.Security.CodeAccessPermission{
this (System.Security.Permissions.PermissionState);
this (System.Security.Permissions.ReflectionPermissionFlag);
System.Void set_Flags(System.Security.Permissions.ReflectionPermissionFlag);
System.Security.Permissions.ReflectionPermissionFlag get_Flags();
System.Boolean IsUnrestricted();
System.Security.IPermission Union(System.Security.IPermission);
System.Boolean IsSubsetOf(System.Security.IPermission);
System.Security.IPermission Intersect(System.Security.IPermission);
System.Security.IPermission Copy();
System.Security.SecurityElement ToXml();
System.Void FromXml(System.Security.SecurityElement);
}
class PrincipalPermission : System.__object{
this (System.Security.Permissions.PermissionState);
this (System.String,System.String);
this (System.String,System.String,System.Boolean);
System.Boolean IsUnrestricted();
System.Boolean IsSubsetOf(System.Security.IPermission);
System.Security.IPermission Intersect(System.Security.IPermission);
System.Security.IPermission Union(System.Security.IPermission);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.Security.IPermission Copy();
System.Void Demand();
System.Security.SecurityElement ToXml();
System.Void FromXml(System.Security.SecurityElement);
System.String ToString();
}
class SecurityPermissionFlag : System.Enum{
}
class SecurityPermission : System.Security.CodeAccessPermission{
this (System.Security.Permissions.PermissionState);
this (System.Security.Permissions.SecurityPermissionFlag);
System.Void set_Flags(System.Security.Permissions.SecurityPermissionFlag);
System.Security.Permissions.SecurityPermissionFlag get_Flags();
System.Boolean IsSubsetOf(System.Security.IPermission);
System.Security.IPermission Union(System.Security.IPermission);
System.Security.IPermission Intersect(System.Security.IPermission);
System.Security.IPermission Copy();
System.Boolean IsUnrestricted();
System.Security.SecurityElement ToXml();
System.Void FromXml(System.Security.SecurityElement);
}
class SiteIdentityPermission : System.Security.CodeAccessPermission{
this (System.Security.Permissions.PermissionState);
this (System.String);
System.Void set_Site(System.String);
System.String get_Site();
System.Security.IPermission Copy();
System.Boolean IsSubsetOf(System.Security.IPermission);
System.Security.IPermission Intersect(System.Security.IPermission);
System.Security.IPermission Union(System.Security.IPermission);
System.Void FromXml(System.Security.SecurityElement);
System.Security.SecurityElement ToXml();
}
class StrongNameIdentityPermission : System.Security.CodeAccessPermission{
this (System.Security.Permissions.PermissionState);
this (System.Security.Permissions.StrongNamePublicKeyBlob,System.String,System.Version);
System.String get_Name();
System.Void set_PublicKey(System.Security.Permissions.StrongNamePublicKeyBlob);
System.Security.Permissions.StrongNamePublicKeyBlob get_PublicKey();
System.Void set_Name(System.String);
System.Void set_Version(System.Version);
System.Version get_Version();
System.Security.IPermission Copy();
System.Boolean IsSubsetOf(System.Security.IPermission);
System.Security.IPermission Intersect(System.Security.IPermission);
System.Security.IPermission Union(System.Security.IPermission);
System.Void FromXml(System.Security.SecurityElement);
System.Security.SecurityElement ToXml();
}
class StrongNamePublicKeyBlob : System.__object{
this (System.Byte[]);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.String ToString();
}
class UIPermissionWindow : System.Enum{
}
class UIPermissionClipboard : System.Enum{
}
class UIPermission : System.Security.CodeAccessPermission{
this (System.Security.Permissions.PermissionState);
this (System.Security.Permissions.UIPermissionWindow,System.Security.Permissions.UIPermissionClipboard);
this (System.Security.Permissions.UIPermissionWindow);
this (System.Security.Permissions.UIPermissionClipboard);
System.Void set_Window(System.Security.Permissions.UIPermissionWindow);
System.Security.Permissions.UIPermissionWindow get_Window();
System.Void set_Clipboard(System.Security.Permissions.UIPermissionClipboard);
System.Security.Permissions.UIPermissionClipboard get_Clipboard();
System.Boolean IsUnrestricted();
System.Boolean IsSubsetOf(System.Security.IPermission);
System.Security.IPermission Intersect(System.Security.IPermission);
System.Security.IPermission Union(System.Security.IPermission);
System.Security.IPermission Copy();
System.Security.SecurityElement ToXml();
System.Void FromXml(System.Security.SecurityElement);
}
class UrlIdentityPermission : System.Security.CodeAccessPermission{
this (System.Security.Permissions.PermissionState);
this (System.String);
System.Void set_Url(System.String);
System.String get_Url();
System.Security.IPermission Copy();
System.Boolean IsSubsetOf(System.Security.IPermission);
System.Security.IPermission Intersect(System.Security.IPermission);
System.Security.IPermission Union(System.Security.IPermission);
System.Void FromXml(System.Security.SecurityElement);
System.Security.SecurityElement ToXml();
}
class ZoneIdentityPermission : System.Security.CodeAccessPermission{
this (System.Security.Permissions.PermissionState);
this (System.Security.SecurityZone);
System.Void set_SecurityZone(System.Security.SecurityZone);
System.Security.SecurityZone get_SecurityZone();
System.Security.IPermission Copy();
System.Boolean IsSubsetOf(System.Security.IPermission);
System.Security.IPermission Intersect(System.Security.IPermission);
System.Security.IPermission Union(System.Security.IPermission);
System.Security.SecurityElement ToXml();
System.Void FromXml(System.Security.SecurityElement);
}
class GacIdentityPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute{
this (System.Security.Permissions.SecurityAction);
System.Security.IPermission CreatePermission();
}
class GacIdentityPermission : System.Security.CodeAccessPermission{
this (System.Security.Permissions.PermissionState);
this ();
System.Security.IPermission Copy();
System.Boolean IsSubsetOf(System.Security.IPermission);
System.Security.IPermission Intersect(System.Security.IPermission);
System.Security.IPermission Union(System.Security.IPermission);
System.Security.SecurityElement ToXml();
System.Void FromXml(System.Security.SecurityElement);
}
interface IUnrestrictedPermission{
System.Boolean IsUnrestricted();
}
class KeyContainerPermissionFlags : System.Enum{
}
class KeyContainerPermissionAccessEntry : System.__object{
this (System.String,System.Security.Permissions.KeyContainerPermissionFlags);
this (System.Security.Cryptography.CspParameters,System.Security.Permissions.KeyContainerPermissionFlags);
this (System.String,System.String,System.Int32,System.String,System.Int32,System.Security.Permissions.KeyContainerPermissionFlags);
System.String get_KeyStore();
System.Void set_KeyStore(System.String);
System.String get_ProviderName();
System.Void set_ProviderName(System.String);
System.Int32 get_ProviderType();
System.Void set_ProviderType(System.Int32);
System.String get_KeyContainerName();
System.Void set_KeyContainerName(System.String);
System.Int32 get_KeySpec();
System.Void set_KeySpec(System.Int32);
System.Security.Permissions.KeyContainerPermissionFlags get_Flags();
System.Void set_Flags(System.Security.Permissions.KeyContainerPermissionFlags);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
}
class KeyContainerPermissionAccessEntryCollection : System.__object{
System.Security.Permissions.KeyContainerPermissionAccessEntry get_Item(System.Int32);
System.Int32 get_Count();
System.Int32 Add(System.Security.Permissions.KeyContainerPermissionAccessEntry);
System.Void Clear();
System.Int32 IndexOf(System.Security.Permissions.KeyContainerPermissionAccessEntry);
System.Void Remove(System.Security.Permissions.KeyContainerPermissionAccessEntry);
System.Security.Permissions.KeyContainerPermissionAccessEntryEnumerator GetEnumerator();
System.Void CopyTo(System.Security.Permissions.KeyContainerPermissionAccessEntry[],System.Int32);
System.Boolean get_IsSynchronized();
System.__object get_SyncRoot();
}
class KeyContainerPermissionAccessEntryEnumerator : System.__object{
System.Security.Permissions.KeyContainerPermissionAccessEntry get_Current();
System.Boolean MoveNext();
System.Void Reset();
}
class KeyContainerPermission : System.Security.CodeAccessPermission{
this (System.Security.Permissions.PermissionState);
this (System.Security.Permissions.KeyContainerPermissionFlags);
this (System.Security.Permissions.KeyContainerPermissionFlags,System.Security.Permissions.KeyContainerPermissionAccessEntry[]);
System.Security.Permissions.KeyContainerPermissionFlags get_Flags();
System.Security.Permissions.KeyContainerPermissionAccessEntryCollection get_AccessEntries();
System.Boolean IsUnrestricted();
System.Boolean IsSubsetOf(System.Security.IPermission);
System.Security.IPermission Intersect(System.Security.IPermission);
System.Security.IPermission Union(System.Security.IPermission);
System.Security.IPermission Copy();
System.Security.SecurityElement ToXml();
System.Void FromXml(System.Security.SecurityElement);
}
class PublisherIdentityPermission : System.Security.CodeAccessPermission{
this (System.Security.Permissions.PermissionState);
this (System.Security.Cryptography.X509Certificates.X509Certificate);
System.Void set_Certificate(System.Security.Cryptography.X509Certificates.X509Certificate);
System.Security.Cryptography.X509Certificates.X509Certificate get_Certificate();
System.Security.IPermission Copy();
System.Boolean IsSubsetOf(System.Security.IPermission);
System.Security.IPermission Intersect(System.Security.IPermission);
System.Security.IPermission Union(System.Security.IPermission);
System.Void FromXml(System.Security.SecurityElement);
System.Security.SecurityElement ToXml();
}
class RegistryPermissionAccess : System.Enum{
}
class RegistryPermission : System.Security.CodeAccessPermission{
this (System.Security.Permissions.PermissionState);
this (System.Security.Permissions.RegistryPermissionAccess,System.String);
this (System.Security.Permissions.RegistryPermissionAccess,System.Security.AccessControl.AccessControlActions,System.String);
System.Void SetPathList(System.Security.Permissions.RegistryPermissionAccess,System.String);
System.Void AddPathList(System.Security.Permissions.RegistryPermissionAccess,System.String);
System.Void AddPathList(System.Security.Permissions.RegistryPermissionAccess,System.Security.AccessControl.AccessControlActions,System.String);
System.String GetPathList(System.Security.Permissions.RegistryPermissionAccess);
System.Boolean IsUnrestricted();
System.Boolean IsSubsetOf(System.Security.IPermission);
System.Security.IPermission Intersect(System.Security.IPermission);
System.Security.IPermission Union(System.Security.IPermission);
System.Security.IPermission Copy();
System.Security.SecurityElement ToXml();
System.Void FromXml(System.Security.SecurityElement);
}
}
