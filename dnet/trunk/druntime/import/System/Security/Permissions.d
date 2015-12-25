module System.Security.Permissions;
import System;
import System.Security;
import System.Security.AccessControl;
import System.Security.Cryptography;
import System.Security.Cryptography.X509Certificates;
public:
pragma(assembly,"mscorlib"){
class EnvironmentPermissionAccess : Enum{
}
class EnvironmentPermission : CodeAccessPermission{
}
class FileDialogPermissionAccess : Enum{
}
class FileDialogPermission : CodeAccessPermission{
}
class FileIOPermissionAccess : Enum{
}
class FileIOPermission : CodeAccessPermission{
}
class HostProtectionResource : Enum{
}
class HostProtectionAttribute : CodeAccessSecurityAttribute{
}
class IsolatedStorageContainment : Enum{
}
class IsolatedStoragePermission : CodeAccessPermission{
}
class IsolatedStorageFilePermission : IsolatedStoragePermission{
}
class PermissionState : Enum{
}
class SecurityAction : Enum{
}
class SecurityAttribute : Attribute{
}
class CodeAccessSecurityAttribute : SecurityAttribute{
}
class EnvironmentPermissionAttribute : CodeAccessSecurityAttribute{
}
class FileDialogPermissionAttribute : CodeAccessSecurityAttribute{
}
class FileIOPermissionAttribute : CodeAccessSecurityAttribute{
}
class KeyContainerPermissionAttribute : CodeAccessSecurityAttribute{
}
class PrincipalPermissionAttribute : CodeAccessSecurityAttribute{
}
class ReflectionPermissionAttribute : CodeAccessSecurityAttribute{
}
class RegistryPermissionAttribute : CodeAccessSecurityAttribute{
}
class SecurityPermissionAttribute : CodeAccessSecurityAttribute{
}
class UIPermissionAttribute : CodeAccessSecurityAttribute{
}
class ZoneIdentityPermissionAttribute : CodeAccessSecurityAttribute{
}
class StrongNameIdentityPermissionAttribute : CodeAccessSecurityAttribute{
}
class SiteIdentityPermissionAttribute : CodeAccessSecurityAttribute{
}
class UrlIdentityPermissionAttribute : CodeAccessSecurityAttribute{
}
class PublisherIdentityPermissionAttribute : CodeAccessSecurityAttribute{
}
class IsolatedStoragePermissionAttribute : CodeAccessSecurityAttribute{
}
class IsolatedStorageFilePermissionAttribute : IsolatedStoragePermissionAttribute{
}
class PermissionSetAttribute : CodeAccessSecurityAttribute{
}
class ReflectionPermissionFlag : Enum{
}
class ReflectionPermission : CodeAccessPermission{
}
class PrincipalPermission : Object{
}
class SecurityPermissionFlag : Enum{
}
class SecurityPermission : CodeAccessPermission{
}
class SiteIdentityPermission : CodeAccessPermission{
}
class StrongNameIdentityPermission : CodeAccessPermission{
}
class StrongNamePublicKeyBlob : Object{
}
class UIPermissionWindow : Enum{
}
class UIPermissionClipboard : Enum{
}
class UIPermission : CodeAccessPermission{
}
class UrlIdentityPermission : CodeAccessPermission{
}
class ZoneIdentityPermission : CodeAccessPermission{
}
class GacIdentityPermissionAttribute : CodeAccessSecurityAttribute{
}
class GacIdentityPermission : CodeAccessPermission{
}
interface IUnrestrictedPermission{
}
class KeyContainerPermissionFlags : Enum{
}
class KeyContainerPermissionAccessEntry : Object{
}
class KeyContainerPermissionAccessEntryCollection : Object{
}
class KeyContainerPermissionAccessEntryEnumerator : Object{
}
class KeyContainerPermission : CodeAccessPermission{
}
class PublisherIdentityPermission : CodeAccessPermission{
}
class RegistryPermissionAccess : Enum{
}
class RegistryPermission : CodeAccessPermission{
}
}
