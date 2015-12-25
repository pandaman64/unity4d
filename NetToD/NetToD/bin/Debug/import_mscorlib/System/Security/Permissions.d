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
Void SetPathList(System.Security.Permissions.EnvironmentPermissionAccess,System.String);
Void AddPathList(System.Security.Permissions.EnvironmentPermissionAccess,System.String);
String GetPathList(System.Security.Permissions.EnvironmentPermissionAccess);
Boolean IsUnrestricted();
Boolean IsSubsetOf(System.Security.IPermission);
IPermission Intersect(System.Security.IPermission);
IPermission Union(System.Security.IPermission);
IPermission Copy();
SecurityElement ToXml();
Void FromXml(System.Security.SecurityElement);
}
class FileDialogPermissionAccess : System.Enum{
}
class FileDialogPermission : System.Security.CodeAccessPermission{
this (System.Security.Permissions.PermissionState);
this (System.Security.Permissions.FileDialogPermissionAccess);
Void FromXml(System.Security.SecurityElement);
FileDialogPermissionAccess get_Access();
Void set_Access(System.Security.Permissions.FileDialogPermissionAccess);
IPermission Copy();
IPermission Intersect(System.Security.IPermission);
Boolean IsSubsetOf(System.Security.IPermission);
Boolean IsUnrestricted();
SecurityElement ToXml();
IPermission Union(System.Security.IPermission);
}
class FileIOPermissionAccess : System.Enum{
}
class FileIOPermission : System.Security.CodeAccessPermission{
this (System.Security.Permissions.PermissionState);
this (System.Security.Permissions.FileIOPermissionAccess,System.String);
this (System.Security.Permissions.FileIOPermissionAccess,System.String[]);
this (System.Security.Permissions.FileIOPermissionAccess,System.Security.AccessControl.AccessControlActions,System.String);
this (System.Security.Permissions.FileIOPermissionAccess,System.Security.AccessControl.AccessControlActions,System.String[]);
Void SetPathList(System.Security.Permissions.FileIOPermissionAccess,System.String);
Void SetPathList(System.Security.Permissions.FileIOPermissionAccess,System.String[]);
Void AddPathList(System.Security.Permissions.FileIOPermissionAccess,System.String);
Void AddPathList(System.Security.Permissions.FileIOPermissionAccess,System.String[]);
String[] GetPathList(System.Security.Permissions.FileIOPermissionAccess);
FileIOPermissionAccess get_AllLocalFiles();
Void set_AllLocalFiles(System.Security.Permissions.FileIOPermissionAccess);
FileIOPermissionAccess get_AllFiles();
Void set_AllFiles(System.Security.Permissions.FileIOPermissionAccess);
Boolean IsUnrestricted();
Boolean IsSubsetOf(System.Security.IPermission);
IPermission Intersect(System.Security.IPermission);
IPermission Union(System.Security.IPermission);
IPermission Copy();
SecurityElement ToXml();
Void FromXml(System.Security.SecurityElement);
Boolean Equals(System.Object);
Int32 GetHashCode();
}
class HostProtectionResource : System.Enum{
}
class HostProtectionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute{
this ();
this (System.Security.Permissions.SecurityAction);
HostProtectionResource get_Resources();
Void set_Resources(System.Security.Permissions.HostProtectionResource);
Boolean get_Synchronization();
Void set_Synchronization(System.Boolean);
Boolean get_SharedState();
Void set_SharedState(System.Boolean);
Boolean get_ExternalProcessMgmt();
Void set_ExternalProcessMgmt(System.Boolean);
Boolean get_SelfAffectingProcessMgmt();
Void set_SelfAffectingProcessMgmt(System.Boolean);
Boolean get_ExternalThreading();
Void set_ExternalThreading(System.Boolean);
Boolean get_SelfAffectingThreading();
Void set_SelfAffectingThreading(System.Boolean);
Boolean get_SecurityInfrastructure();
Void set_SecurityInfrastructure(System.Boolean);
Boolean get_UI();
Void set_UI(System.Boolean);
Boolean get_MayLeakOnAbort();
Void set_MayLeakOnAbort(System.Boolean);
IPermission CreatePermission();
}
class IsolatedStorageContainment : System.Enum{
}
class IsolatedStoragePermission : System.Security.CodeAccessPermission{
Void FromXml(System.Security.SecurityElement);
Void set_UserQuota(System.Int64);
Int64 get_UserQuota();
Void set_UsageAllowed(System.Security.Permissions.IsolatedStorageContainment);
IsolatedStorageContainment get_UsageAllowed();
Boolean IsUnrestricted();
SecurityElement ToXml();
}
class IsolatedStorageFilePermission : System.Security.Permissions.IsolatedStoragePermission{
this (System.Security.Permissions.PermissionState);
SecurityElement ToXml();
IPermission Union(System.Security.IPermission);
Boolean IsSubsetOf(System.Security.IPermission);
IPermission Intersect(System.Security.IPermission);
IPermission Copy();
}
class PermissionState : System.Enum{
}
class SecurityAction : System.Enum{
}
class SecurityAttribute : System.Attribute{
SecurityAction get_Action();
Void set_Action(System.Security.Permissions.SecurityAction);
Boolean get_Unrestricted();
Void set_Unrestricted(System.Boolean);
IPermission CreatePermission();
}
class CodeAccessSecurityAttribute : System.Security.Permissions.SecurityAttribute{
}
class EnvironmentPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute{
this (System.Security.Permissions.SecurityAction);
String get_Read();
Void set_Read(System.String);
String get_Write();
Void set_Write(System.String);
String get_All();
Void set_All(System.String);
IPermission CreatePermission();
}
class FileDialogPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute{
this (System.Security.Permissions.SecurityAction);
Boolean get_Open();
Void set_Open(System.Boolean);
Boolean get_Save();
Void set_Save(System.Boolean);
IPermission CreatePermission();
}
class FileIOPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute{
this (System.Security.Permissions.SecurityAction);
String get_Read();
Void set_Read(System.String);
String get_Write();
Void set_Write(System.String);
String get_Append();
Void set_Append(System.String);
String get_PathDiscovery();
Void set_PathDiscovery(System.String);
String get_ViewAccessControl();
Void set_ViewAccessControl(System.String);
String get_ChangeAccessControl();
Void set_ChangeAccessControl(System.String);
Void set_All(System.String);
String get_All();
String get_ViewAndModify();
Void set_ViewAndModify(System.String);
FileIOPermissionAccess get_AllFiles();
Void set_AllFiles(System.Security.Permissions.FileIOPermissionAccess);
FileIOPermissionAccess get_AllLocalFiles();
Void set_AllLocalFiles(System.Security.Permissions.FileIOPermissionAccess);
IPermission CreatePermission();
}
class KeyContainerPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute{
this (System.Security.Permissions.SecurityAction);
String get_KeyStore();
Void set_KeyStore(System.String);
String get_ProviderName();
Void set_ProviderName(System.String);
Int32 get_ProviderType();
Void set_ProviderType(System.Int32);
String get_KeyContainerName();
Void set_KeyContainerName(System.String);
Int32 get_KeySpec();
Void set_KeySpec(System.Int32);
KeyContainerPermissionFlags get_Flags();
Void set_Flags(System.Security.Permissions.KeyContainerPermissionFlags);
IPermission CreatePermission();
}
class PrincipalPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute{
this (System.Security.Permissions.SecurityAction);
String get_Name();
Void set_Name(System.String);
String get_Role();
Void set_Role(System.String);
Boolean get_Authenticated();
Void set_Authenticated(System.Boolean);
IPermission CreatePermission();
}
class ReflectionPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute{
this (System.Security.Permissions.SecurityAction);
ReflectionPermissionFlag get_Flags();
Void set_Flags(System.Security.Permissions.ReflectionPermissionFlag);
Boolean get_TypeInformation();
Void set_TypeInformation(System.Boolean);
Boolean get_MemberAccess();
Void set_MemberAccess(System.Boolean);
Boolean get_ReflectionEmit();
Void set_ReflectionEmit(System.Boolean);
Boolean get_RestrictedMemberAccess();
Void set_RestrictedMemberAccess(System.Boolean);
IPermission CreatePermission();
}
class RegistryPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute{
this (System.Security.Permissions.SecurityAction);
String get_Read();
Void set_Read(System.String);
String get_Write();
Void set_Write(System.String);
String get_Create();
Void set_Create(System.String);
String get_ViewAccessControl();
Void set_ViewAccessControl(System.String);
String get_ChangeAccessControl();
Void set_ChangeAccessControl(System.String);
String get_ViewAndModify();
Void set_ViewAndModify(System.String);
String get_All();
Void set_All(System.String);
IPermission CreatePermission();
}
class SecurityPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute{
this (System.Security.Permissions.SecurityAction);
SecurityPermissionFlag get_Flags();
Void set_Flags(System.Security.Permissions.SecurityPermissionFlag);
Boolean get_Assertion();
Void set_Assertion(System.Boolean);
Boolean get_UnmanagedCode();
Void set_UnmanagedCode(System.Boolean);
Boolean get_SkipVerification();
Void set_SkipVerification(System.Boolean);
Boolean get_Execution();
Void set_Execution(System.Boolean);
Boolean get_ControlThread();
Void set_ControlThread(System.Boolean);
Boolean get_ControlEvidence();
Void set_ControlEvidence(System.Boolean);
Boolean get_ControlPolicy();
Void set_ControlPolicy(System.Boolean);
Boolean get_SerializationFormatter();
Void set_SerializationFormatter(System.Boolean);
Boolean get_ControlDomainPolicy();
Void set_ControlDomainPolicy(System.Boolean);
Boolean get_ControlPrincipal();
Void set_ControlPrincipal(System.Boolean);
Boolean get_ControlAppDomain();
Void set_ControlAppDomain(System.Boolean);
Boolean get_RemotingConfiguration();
Void set_RemotingConfiguration(System.Boolean);
Boolean get_Infrastructure();
Void set_Infrastructure(System.Boolean);
Boolean get_BindingRedirects();
Void set_BindingRedirects(System.Boolean);
IPermission CreatePermission();
}
class UIPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute{
this (System.Security.Permissions.SecurityAction);
UIPermissionWindow get_Window();
Void set_Window(System.Security.Permissions.UIPermissionWindow);
UIPermissionClipboard get_Clipboard();
Void set_Clipboard(System.Security.Permissions.UIPermissionClipboard);
IPermission CreatePermission();
}
class ZoneIdentityPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute{
this (System.Security.Permissions.SecurityAction);
SecurityZone get_Zone();
Void set_Zone(System.Security.SecurityZone);
IPermission CreatePermission();
}
class StrongNameIdentityPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute{
this (System.Security.Permissions.SecurityAction);
String get_Name();
Void set_Name(System.String);
String get_Version();
Void set_Version(System.String);
String get_PublicKey();
Void set_PublicKey(System.String);
IPermission CreatePermission();
}
class SiteIdentityPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute{
this (System.Security.Permissions.SecurityAction);
String get_Site();
Void set_Site(System.String);
IPermission CreatePermission();
}
class UrlIdentityPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute{
this (System.Security.Permissions.SecurityAction);
String get_Url();
Void set_Url(System.String);
IPermission CreatePermission();
}
class PublisherIdentityPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute{
this (System.Security.Permissions.SecurityAction);
String get_X509Certificate();
Void set_X509Certificate(System.String);
String get_CertFile();
Void set_CertFile(System.String);
String get_SignedFile();
Void set_SignedFile(System.String);
IPermission CreatePermission();
}
class IsolatedStoragePermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute{
Void set_UserQuota(System.Int64);
Int64 get_UserQuota();
Void set_UsageAllowed(System.Security.Permissions.IsolatedStorageContainment);
IsolatedStorageContainment get_UsageAllowed();
}
class IsolatedStorageFilePermissionAttribute : System.Security.Permissions.IsolatedStoragePermissionAttribute{
this (System.Security.Permissions.SecurityAction);
IPermission CreatePermission();
}
class PermissionSetAttribute : System.Security.Permissions.CodeAccessSecurityAttribute{
this (System.Security.Permissions.SecurityAction);
String get_File();
Void set_File(System.String);
Boolean get_UnicodeEncoded();
Void set_UnicodeEncoded(System.Boolean);
String get_Name();
Void set_Name(System.String);
String get_XML();
Void set_XML(System.String);
String get_Hex();
Void set_Hex(System.String);
IPermission CreatePermission();
PermissionSet CreatePermissionSet();
}
class ReflectionPermissionFlag : System.Enum{
}
class ReflectionPermission : System.Security.CodeAccessPermission{
this (System.Security.Permissions.PermissionState);
this (System.Security.Permissions.ReflectionPermissionFlag);
Void set_Flags(System.Security.Permissions.ReflectionPermissionFlag);
ReflectionPermissionFlag get_Flags();
Boolean IsUnrestricted();
IPermission Union(System.Security.IPermission);
Boolean IsSubsetOf(System.Security.IPermission);
IPermission Intersect(System.Security.IPermission);
IPermission Copy();
SecurityElement ToXml();
Void FromXml(System.Security.SecurityElement);
}
class PrincipalPermission : System.Object{
this (System.Security.Permissions.PermissionState);
this (System.String,System.String);
this (System.String,System.String,System.Boolean);
Boolean IsUnrestricted();
Boolean IsSubsetOf(System.Security.IPermission);
IPermission Intersect(System.Security.IPermission);
IPermission Union(System.Security.IPermission);
Boolean Equals(System.Object);
Int32 GetHashCode();
IPermission Copy();
Void Demand();
SecurityElement ToXml();
Void FromXml(System.Security.SecurityElement);
String ToString();
}
class SecurityPermissionFlag : System.Enum{
}
class SecurityPermission : System.Security.CodeAccessPermission{
this (System.Security.Permissions.PermissionState);
this (System.Security.Permissions.SecurityPermissionFlag);
Void set_Flags(System.Security.Permissions.SecurityPermissionFlag);
SecurityPermissionFlag get_Flags();
Boolean IsSubsetOf(System.Security.IPermission);
IPermission Union(System.Security.IPermission);
IPermission Intersect(System.Security.IPermission);
IPermission Copy();
Boolean IsUnrestricted();
SecurityElement ToXml();
Void FromXml(System.Security.SecurityElement);
}
class SiteIdentityPermission : System.Security.CodeAccessPermission{
this (System.Security.Permissions.PermissionState);
this (System.String);
Void set_Site(System.String);
String get_Site();
IPermission Copy();
Boolean IsSubsetOf(System.Security.IPermission);
IPermission Intersect(System.Security.IPermission);
IPermission Union(System.Security.IPermission);
Void FromXml(System.Security.SecurityElement);
SecurityElement ToXml();
}
class StrongNameIdentityPermission : System.Security.CodeAccessPermission{
this (System.Security.Permissions.PermissionState);
this (System.Security.Permissions.StrongNamePublicKeyBlob,System.String,System.Version);
String get_Name();
Void set_PublicKey(System.Security.Permissions.StrongNamePublicKeyBlob);
StrongNamePublicKeyBlob get_PublicKey();
Void set_Name(System.String);
Void set_Version(System.Version);
Version get_Version();
IPermission Copy();
Boolean IsSubsetOf(System.Security.IPermission);
IPermission Intersect(System.Security.IPermission);
IPermission Union(System.Security.IPermission);
Void FromXml(System.Security.SecurityElement);
SecurityElement ToXml();
}
class StrongNamePublicKeyBlob : System.Object{
this (System.Byte[]);
Boolean Equals(System.Object);
Int32 GetHashCode();
String ToString();
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
Void set_Window(System.Security.Permissions.UIPermissionWindow);
UIPermissionWindow get_Window();
Void set_Clipboard(System.Security.Permissions.UIPermissionClipboard);
UIPermissionClipboard get_Clipboard();
Boolean IsUnrestricted();
Boolean IsSubsetOf(System.Security.IPermission);
IPermission Intersect(System.Security.IPermission);
IPermission Union(System.Security.IPermission);
IPermission Copy();
SecurityElement ToXml();
Void FromXml(System.Security.SecurityElement);
}
class UrlIdentityPermission : System.Security.CodeAccessPermission{
this (System.Security.Permissions.PermissionState);
this (System.String);
Void set_Url(System.String);
String get_Url();
IPermission Copy();
Boolean IsSubsetOf(System.Security.IPermission);
IPermission Intersect(System.Security.IPermission);
IPermission Union(System.Security.IPermission);
Void FromXml(System.Security.SecurityElement);
SecurityElement ToXml();
}
class ZoneIdentityPermission : System.Security.CodeAccessPermission{
this (System.Security.Permissions.PermissionState);
this (System.Security.SecurityZone);
Void set_SecurityZone(System.Security.SecurityZone);
SecurityZone get_SecurityZone();
IPermission Copy();
Boolean IsSubsetOf(System.Security.IPermission);
IPermission Intersect(System.Security.IPermission);
IPermission Union(System.Security.IPermission);
SecurityElement ToXml();
Void FromXml(System.Security.SecurityElement);
}
class GacIdentityPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute{
this (System.Security.Permissions.SecurityAction);
IPermission CreatePermission();
}
class GacIdentityPermission : System.Security.CodeAccessPermission{
this (System.Security.Permissions.PermissionState);
this ();
IPermission Copy();
Boolean IsSubsetOf(System.Security.IPermission);
IPermission Intersect(System.Security.IPermission);
IPermission Union(System.Security.IPermission);
SecurityElement ToXml();
Void FromXml(System.Security.SecurityElement);
}
interface IUnrestrictedPermission{
Boolean IsUnrestricted();
}
class KeyContainerPermissionFlags : System.Enum{
}
class KeyContainerPermissionAccessEntry : System.Object{
this (System.String,System.Security.Permissions.KeyContainerPermissionFlags);
this (System.Security.Cryptography.CspParameters,System.Security.Permissions.KeyContainerPermissionFlags);
this (System.String,System.String,System.Int32,System.String,System.Int32,System.Security.Permissions.KeyContainerPermissionFlags);
String get_KeyStore();
Void set_KeyStore(System.String);
String get_ProviderName();
Void set_ProviderName(System.String);
Int32 get_ProviderType();
Void set_ProviderType(System.Int32);
String get_KeyContainerName();
Void set_KeyContainerName(System.String);
Int32 get_KeySpec();
Void set_KeySpec(System.Int32);
KeyContainerPermissionFlags get_Flags();
Void set_Flags(System.Security.Permissions.KeyContainerPermissionFlags);
Boolean Equals(System.Object);
Int32 GetHashCode();
}
class KeyContainerPermissionAccessEntryCollection : System.Object{
KeyContainerPermissionAccessEntry get_Item(System.Int32);
Int32 get_Count();
Int32 Add(System.Security.Permissions.KeyContainerPermissionAccessEntry);
Void Clear();
Int32 IndexOf(System.Security.Permissions.KeyContainerPermissionAccessEntry);
Void Remove(System.Security.Permissions.KeyContainerPermissionAccessEntry);
KeyContainerPermissionAccessEntryEnumerator GetEnumerator();
Void CopyTo(System.Security.Permissions.KeyContainerPermissionAccessEntry[],System.Int32);
Boolean get_IsSynchronized();
Object get_SyncRoot();
}
class KeyContainerPermissionAccessEntryEnumerator : System.Object{
KeyContainerPermissionAccessEntry get_Current();
Boolean MoveNext();
Void Reset();
}
class KeyContainerPermission : System.Security.CodeAccessPermission{
this (System.Security.Permissions.PermissionState);
this (System.Security.Permissions.KeyContainerPermissionFlags);
this (System.Security.Permissions.KeyContainerPermissionFlags,System.Security.Permissions.KeyContainerPermissionAccessEntry[]);
KeyContainerPermissionFlags get_Flags();
KeyContainerPermissionAccessEntryCollection get_AccessEntries();
Boolean IsUnrestricted();
Boolean IsSubsetOf(System.Security.IPermission);
IPermission Intersect(System.Security.IPermission);
IPermission Union(System.Security.IPermission);
IPermission Copy();
SecurityElement ToXml();
Void FromXml(System.Security.SecurityElement);
}
class PublisherIdentityPermission : System.Security.CodeAccessPermission{
this (System.Security.Permissions.PermissionState);
this (System.Security.Cryptography.X509Certificates.X509Certificate);
Void set_Certificate(System.Security.Cryptography.X509Certificates.X509Certificate);
X509Certificate get_Certificate();
IPermission Copy();
Boolean IsSubsetOf(System.Security.IPermission);
IPermission Intersect(System.Security.IPermission);
IPermission Union(System.Security.IPermission);
Void FromXml(System.Security.SecurityElement);
SecurityElement ToXml();
}
class RegistryPermissionAccess : System.Enum{
}
class RegistryPermission : System.Security.CodeAccessPermission{
this (System.Security.Permissions.PermissionState);
this (System.Security.Permissions.RegistryPermissionAccess,System.String);
this (System.Security.Permissions.RegistryPermissionAccess,System.Security.AccessControl.AccessControlActions,System.String);
Void SetPathList(System.Security.Permissions.RegistryPermissionAccess,System.String);
Void AddPathList(System.Security.Permissions.RegistryPermissionAccess,System.String);
Void AddPathList(System.Security.Permissions.RegistryPermissionAccess,System.Security.AccessControl.AccessControlActions,System.String);
String GetPathList(System.Security.Permissions.RegistryPermissionAccess);
Boolean IsUnrestricted();
Boolean IsSubsetOf(System.Security.IPermission);
IPermission Intersect(System.Security.IPermission);
IPermission Union(System.Security.IPermission);
IPermission Copy();
SecurityElement ToXml();
Void FromXml(System.Security.SecurityElement);
}
}
