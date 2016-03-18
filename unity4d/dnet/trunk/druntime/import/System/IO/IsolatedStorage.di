module System.IO.IsolatedStorage;
import System;
import System.Runtime.Remoting;
import System.IO;
import System.Security.AccessControl;
import System.Threading;
import Microsoft.Win32.SafeHandles;
import System.Threading.Tasks;
import System.Runtime.Serialization;
import System.Collections;
import System.Reflection;
import System.Security;
import System.Security.Policy;
public:
pragma(assembly,"mscorlib"){
class IsolatedStorageScope : System.Enum{
Int32 value__;
}
class IsolatedStorage : System.MarshalByRefObject{
System.UInt64 get_MaximumSize();
System.UInt64 get_CurrentSize();
System.Int64 get_UsedSize();
System.Int64 get_Quota();
System.Int64 get_AvailableFreeSpace();
System.__object get_DomainIdentity();
System.__object get_ApplicationIdentity();
System.__object get_AssemblyIdentity();
System.Boolean IncreaseQuotaTo(System.Int64);
System.IO.IsolatedStorage.IsolatedStorageScope get_Scope();
System.Void Remove();
}
class IsolatedStorageFileStream : System.IO.FileStream{
this (System.String,System.IO.FileMode);
this (System.String,System.IO.FileMode,System.IO.IsolatedStorage.IsolatedStorageFile);
this (System.String,System.IO.FileMode,System.IO.FileAccess);
this (System.String,System.IO.FileMode,System.IO.FileAccess,System.IO.IsolatedStorage.IsolatedStorageFile);
this (System.String,System.IO.FileMode,System.IO.FileAccess,System.IO.FileShare);
this (System.String,System.IO.FileMode,System.IO.FileAccess,System.IO.FileShare,System.IO.IsolatedStorage.IsolatedStorageFile);
this (System.String,System.IO.FileMode,System.IO.FileAccess,System.IO.FileShare,System.Int32);
this (System.String,System.IO.FileMode,System.IO.FileAccess,System.IO.FileShare,System.Int32,System.IO.IsolatedStorage.IsolatedStorageFile);
System.Boolean get_CanRead();
System.Boolean get_CanWrite();
System.Boolean get_CanSeek();
System.Boolean get_IsAsync();
System.Int64 get_Length();
System.Int64 get_Position();
System.Void set_Position(System.Int64);
System.Void Flush();
System.Void Flush(System.Boolean);
System.IntPtr get_Handle();
Microsoft.Win32.SafeHandles.SafeFileHandle get_SafeFileHandle();
System.Void SetLength(System.Int64);
System.Void Lock(System.Int64,System.Int64);
System.Void Unlock(System.Int64,System.Int64);
System.Int32 Read(System.Byte[],System.Int32,System.Int32);
System.Int32 ReadByte();
System.Int64 Seek(System.Int64,System.IO.SeekOrigin);
System.Void Write(System.Byte[],System.Int32,System.Int32);
System.Void WriteByte(System.Byte);
System.IAsyncResult BeginRead(System.Byte[],System.Int32,System.Int32,System.AsyncCallback,System.__object);
System.Int32 EndRead(System.IAsyncResult);
System.IAsyncResult BeginWrite(System.Byte[],System.Int32,System.Int32,System.AsyncCallback,System.__object);
System.Void EndWrite(System.IAsyncResult);
}
class IsolatedStorageSecurityOptions : System.Enum{
Int32 value__;
}
class IsolatedStorageSecurityState : System.Security.SecurityState{
System.IO.IsolatedStorage.IsolatedStorageSecurityOptions get_Options();
System.Int64 get_UsedSize();
System.Int64 get_Quota();
System.Void set_Quota(System.Int64);
System.Void EnsureState();
}
interface INormalizeForIsolatedStorage{
System.__object Normalize();
}
class IsolatedStorageFile : System.IO.IsolatedStorage.IsolatedStorage{
static System.IO.IsolatedStorage.IsolatedStorageFile GetUserStoreForDomain();
static System.IO.IsolatedStorage.IsolatedStorageFile GetUserStoreForAssembly();
static System.IO.IsolatedStorage.IsolatedStorageFile GetUserStoreForApplication();
static System.IO.IsolatedStorage.IsolatedStorageFile GetUserStoreForSite();
static System.IO.IsolatedStorage.IsolatedStorageFile GetMachineStoreForDomain();
static System.IO.IsolatedStorage.IsolatedStorageFile GetMachineStoreForAssembly();
static System.IO.IsolatedStorage.IsolatedStorageFile GetMachineStoreForApplication();
static System.IO.IsolatedStorage.IsolatedStorageFile GetStore(System.IO.IsolatedStorage.IsolatedStorageScope,System.Type,System.Type);
static System.IO.IsolatedStorage.IsolatedStorageFile GetStore(System.IO.IsolatedStorage.IsolatedStorageScope,System.__object,System.__object);
static System.IO.IsolatedStorage.IsolatedStorageFile GetStore(System.IO.IsolatedStorage.IsolatedStorageScope,System.Security.Policy.Evidence,System.Type,System.Security.Policy.Evidence,System.Type);
static System.IO.IsolatedStorage.IsolatedStorageFile GetStore(System.IO.IsolatedStorage.IsolatedStorageScope,System.Type);
static System.IO.IsolatedStorage.IsolatedStorageFile GetStore(System.IO.IsolatedStorage.IsolatedStorageScope,System.__object);
System.Int64 get_UsedSize();
System.UInt64 get_CurrentSize();
System.Int64 get_AvailableFreeSpace();
System.Int64 get_Quota();
static System.Boolean get_IsEnabled();
System.UInt64 get_MaximumSize();
System.Boolean IncreaseQuotaTo(System.Int64);
System.Void DeleteFile(System.String);
System.Boolean FileExists(System.String);
System.Boolean DirectoryExists(System.String);
System.Void CreateDirectory(System.String);
System.DateTimeOffset GetCreationTime(System.String);
System.DateTimeOffset GetLastAccessTime(System.String);
System.DateTimeOffset GetLastWriteTime(System.String);
System.Void CopyFile(System.String,System.String);
System.Void CopyFile(System.String,System.String,System.Boolean);
System.Void MoveFile(System.String,System.String);
System.Void MoveDirectory(System.String,System.String);
System.Void DeleteDirectory(System.String);
System.String[] GetFileNames();
System.String[] GetFileNames(System.String);
System.String[] GetDirectoryNames();
System.String[] GetDirectoryNames(System.String);
System.IO.IsolatedStorage.IsolatedStorageFileStream OpenFile(System.String,System.IO.FileMode);
System.IO.IsolatedStorage.IsolatedStorageFileStream OpenFile(System.String,System.IO.FileMode,System.IO.FileAccess);
System.IO.IsolatedStorage.IsolatedStorageFileStream OpenFile(System.String,System.IO.FileMode,System.IO.FileAccess,System.IO.FileShare);
System.IO.IsolatedStorage.IsolatedStorageFileStream CreateFile(System.String);
System.Void Remove();
System.Void Close();
System.Void Dispose();
static System.Void Remove(System.IO.IsolatedStorage.IsolatedStorageScope);
static System.Collections.IEnumerator GetEnumerator(System.IO.IsolatedStorage.IsolatedStorageScope);
}
}
