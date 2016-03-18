module Microsoft.Win32;
import System;
import System.Security.AccessControl;
import Microsoft.Win32.SafeHandles;
import System.Runtime.Remoting;
public:
pragma(assembly,"mscorlib"){
class Registry : System.__object{
static System.__object GetValue(System.String,System.String,System.__object);
static System.Void SetValue(System.String,System.String,System.__object);
static System.Void SetValue(System.String,System.String,System.__object,Microsoft.Win32.RegistryValueKind);
}
class RegistryHive : System.Enum{
Int32 value__;
}
class RegistryKey : System.MarshalByRefObject{
System.Void Close();
System.Void Flush();
System.Void Dispose();
Microsoft.Win32.RegistryKey CreateSubKey(System.String);
Microsoft.Win32.RegistryKey CreateSubKey(System.String,Microsoft.Win32.RegistryKeyPermissionCheck);
Microsoft.Win32.RegistryKey CreateSubKey(System.String,Microsoft.Win32.RegistryKeyPermissionCheck,Microsoft.Win32.RegistryOptions);
Microsoft.Win32.RegistryKey CreateSubKey(System.String,System.Boolean);
Microsoft.Win32.RegistryKey CreateSubKey(System.String,System.Boolean,Microsoft.Win32.RegistryOptions);
Microsoft.Win32.RegistryKey CreateSubKey(System.String,Microsoft.Win32.RegistryKeyPermissionCheck,System.Security.AccessControl.RegistrySecurity);
Microsoft.Win32.RegistryKey CreateSubKey(System.String,Microsoft.Win32.RegistryKeyPermissionCheck,Microsoft.Win32.RegistryOptions,System.Security.AccessControl.RegistrySecurity);
System.Void DeleteSubKey(System.String);
System.Void DeleteSubKey(System.String,System.Boolean);
System.Void DeleteSubKeyTree(System.String);
System.Void DeleteSubKeyTree(System.String,System.Boolean);
System.Void DeleteValue(System.String);
System.Void DeleteValue(System.String,System.Boolean);
static Microsoft.Win32.RegistryKey OpenBaseKey(Microsoft.Win32.RegistryHive,Microsoft.Win32.RegistryView);
static Microsoft.Win32.RegistryKey OpenRemoteBaseKey(Microsoft.Win32.RegistryHive,System.String);
static Microsoft.Win32.RegistryKey OpenRemoteBaseKey(Microsoft.Win32.RegistryHive,System.String,Microsoft.Win32.RegistryView);
Microsoft.Win32.RegistryKey OpenSubKey(System.String,System.Boolean);
Microsoft.Win32.RegistryKey OpenSubKey(System.String,Microsoft.Win32.RegistryKeyPermissionCheck);
Microsoft.Win32.RegistryKey OpenSubKey(System.String,System.Security.AccessControl.RegistryRights);
Microsoft.Win32.RegistryKey OpenSubKey(System.String,Microsoft.Win32.RegistryKeyPermissionCheck,System.Security.AccessControl.RegistryRights);
Microsoft.Win32.RegistryKey OpenSubKey(System.String);
System.Int32 get_SubKeyCount();
Microsoft.Win32.RegistryView get_View();
Microsoft.Win32.SafeHandles.SafeRegistryHandle get_Handle();
static Microsoft.Win32.RegistryKey FromHandle(Microsoft.Win32.SafeHandles.SafeRegistryHandle);
static Microsoft.Win32.RegistryKey FromHandle(Microsoft.Win32.SafeHandles.SafeRegistryHandle,Microsoft.Win32.RegistryView);
System.String[] GetSubKeyNames();
System.Int32 get_ValueCount();
System.String[] GetValueNames();
System.__object GetValue(System.String);
System.__object GetValue(System.String,System.__object);
System.__object GetValue(System.String,System.__object,Microsoft.Win32.RegistryValueOptions);
Microsoft.Win32.RegistryValueKind GetValueKind(System.String);
System.String get_Name();
System.Void SetValue(System.String,System.__object);
System.Void SetValue(System.String,System.__object,Microsoft.Win32.RegistryValueKind);
System.String ToString();
System.Security.AccessControl.RegistrySecurity GetAccessControl();
System.Security.AccessControl.RegistrySecurity GetAccessControl(System.Security.AccessControl.AccessControlSections);
System.Void SetAccessControl(System.Security.AccessControl.RegistrySecurity);
}
class RegistryValueOptions : System.Enum{
Int32 value__;
}
class RegistryKeyPermissionCheck : System.Enum{
Int32 value__;
}
class RegistryOptions : System.Enum{
Int32 value__;
}
class RegistryValueKind : System.Enum{
Int32 value__;
}
class RegistryView : System.Enum{
Int32 value__;
}
}
