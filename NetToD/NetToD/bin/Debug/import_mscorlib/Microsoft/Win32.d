module Microsoft.Win32;
import System;
import System.Security.AccessControl;
import Microsoft.Win32.SafeHandles;
import System.Runtime.Remoting;
public:
pragma(assembly,"mscorlib"){
class Registry : System.Object{
static Object GetValue(System.String,System.String,System.Object);
static Void SetValue(System.String,System.String,System.Object);
static Void SetValue(System.String,System.String,System.Object,Microsoft.Win32.RegistryValueKind);
}
class RegistryHive : System.Enum{
}
class RegistryKey : System.MarshalByRefObject{
Void Close();
Void Flush();
Void Dispose();
RegistryKey CreateSubKey(System.String);
RegistryKey CreateSubKey(System.String,Microsoft.Win32.RegistryKeyPermissionCheck);
RegistryKey CreateSubKey(System.String,Microsoft.Win32.RegistryKeyPermissionCheck,Microsoft.Win32.RegistryOptions);
RegistryKey CreateSubKey(System.String,System.Boolean);
RegistryKey CreateSubKey(System.String,System.Boolean,Microsoft.Win32.RegistryOptions);
RegistryKey CreateSubKey(System.String,Microsoft.Win32.RegistryKeyPermissionCheck,System.Security.AccessControl.RegistrySecurity);
RegistryKey CreateSubKey(System.String,Microsoft.Win32.RegistryKeyPermissionCheck,Microsoft.Win32.RegistryOptions,System.Security.AccessControl.RegistrySecurity);
Void DeleteSubKey(System.String);
Void DeleteSubKey(System.String,System.Boolean);
Void DeleteSubKeyTree(System.String);
Void DeleteSubKeyTree(System.String,System.Boolean);
Void DeleteValue(System.String);
Void DeleteValue(System.String,System.Boolean);
static RegistryKey OpenBaseKey(Microsoft.Win32.RegistryHive,Microsoft.Win32.RegistryView);
static RegistryKey OpenRemoteBaseKey(Microsoft.Win32.RegistryHive,System.String);
static RegistryKey OpenRemoteBaseKey(Microsoft.Win32.RegistryHive,System.String,Microsoft.Win32.RegistryView);
RegistryKey OpenSubKey(System.String,System.Boolean);
RegistryKey OpenSubKey(System.String,Microsoft.Win32.RegistryKeyPermissionCheck);
RegistryKey OpenSubKey(System.String,System.Security.AccessControl.RegistryRights);
RegistryKey OpenSubKey(System.String,Microsoft.Win32.RegistryKeyPermissionCheck,System.Security.AccessControl.RegistryRights);
RegistryKey OpenSubKey(System.String);
Int32 get_SubKeyCount();
RegistryView get_View();
SafeRegistryHandle get_Handle();
static RegistryKey FromHandle(Microsoft.Win32.SafeHandles.SafeRegistryHandle);
static RegistryKey FromHandle(Microsoft.Win32.SafeHandles.SafeRegistryHandle,Microsoft.Win32.RegistryView);
String[] GetSubKeyNames();
Int32 get_ValueCount();
String[] GetValueNames();
Object GetValue(System.String);
Object GetValue(System.String,System.Object);
Object GetValue(System.String,System.Object,Microsoft.Win32.RegistryValueOptions);
RegistryValueKind GetValueKind(System.String);
String get_Name();
Void SetValue(System.String,System.Object);
Void SetValue(System.String,System.Object,Microsoft.Win32.RegistryValueKind);
String ToString();
RegistrySecurity GetAccessControl();
RegistrySecurity GetAccessControl(System.Security.AccessControl.AccessControlSections);
Void SetAccessControl(System.Security.AccessControl.RegistrySecurity);
}
class RegistryValueOptions : System.Enum{
}
class RegistryKeyPermissionCheck : System.Enum{
}
class RegistryOptions : System.Enum{
}
class RegistryValueKind : System.Enum{
}
class RegistryView : System.Enum{
}
}
