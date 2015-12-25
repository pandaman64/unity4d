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
}
class IsolatedStorage : System.MarshalByRefObject{
UInt64 get_MaximumSize();
UInt64 get_CurrentSize();
Int64 get_UsedSize();
Int64 get_Quota();
Int64 get_AvailableFreeSpace();
Object get_DomainIdentity();
Object get_ApplicationIdentity();
Object get_AssemblyIdentity();
Boolean IncreaseQuotaTo(System.Int64);
IsolatedStorageScope get_Scope();
Void Remove();
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
Boolean get_CanRead();
Boolean get_CanWrite();
Boolean get_CanSeek();
Boolean get_IsAsync();
Int64 get_Length();
Int64 get_Position();
Void set_Position(System.Int64);
Void Flush();
Void Flush(System.Boolean);
IntPtr get_Handle();
SafeFileHandle get_SafeFileHandle();
Void SetLength(System.Int64);
Void Lock(System.Int64,System.Int64);
Void Unlock(System.Int64,System.Int64);
Int32 Read(System.Byte[],System.Int32,System.Int32);
Int32 ReadByte();
Int64 Seek(System.Int64,System.IO.SeekOrigin);
Void Write(System.Byte[],System.Int32,System.Int32);
Void WriteByte(System.Byte);
IAsyncResult BeginRead(System.Byte[],System.Int32,System.Int32,System.AsyncCallback,System.Object);
Int32 EndRead(System.IAsyncResult);
IAsyncResult BeginWrite(System.Byte[],System.Int32,System.Int32,System.AsyncCallback,System.Object);
Void EndWrite(System.IAsyncResult);
}
class IsolatedStorageException : System.Exception{
this ();
this (System.String);
this (System.String,System.Exception);
}
class IsolatedStorageSecurityOptions : System.Enum{
}
class IsolatedStorageSecurityState : System.Security.SecurityState{
IsolatedStorageSecurityOptions get_Options();
Int64 get_UsedSize();
Int64 get_Quota();
Void set_Quota(System.Int64);
Void EnsureState();
}
interface INormalizeForIsolatedStorage{
Object Normalize();
}
class IsolatedStorageFile : System.IO.IsolatedStorage.IsolatedStorage{
static IsolatedStorageFile GetUserStoreForDomain();
static IsolatedStorageFile GetUserStoreForAssembly();
static IsolatedStorageFile GetUserStoreForApplication();
static IsolatedStorageFile GetUserStoreForSite();
static IsolatedStorageFile GetMachineStoreForDomain();
static IsolatedStorageFile GetMachineStoreForAssembly();
static IsolatedStorageFile GetMachineStoreForApplication();
static IsolatedStorageFile GetStore(System.IO.IsolatedStorage.IsolatedStorageScope,System.Type,System.Type);
static IsolatedStorageFile GetStore(System.IO.IsolatedStorage.IsolatedStorageScope,System.Object,System.Object);
static IsolatedStorageFile GetStore(System.IO.IsolatedStorage.IsolatedStorageScope,System.Security.Policy.Evidence,System.Type,System.Security.Policy.Evidence,System.Type);
static IsolatedStorageFile GetStore(System.IO.IsolatedStorage.IsolatedStorageScope,System.Type);
static IsolatedStorageFile GetStore(System.IO.IsolatedStorage.IsolatedStorageScope,System.Object);
Int64 get_UsedSize();
UInt64 get_CurrentSize();
Int64 get_AvailableFreeSpace();
Int64 get_Quota();
static Boolean get_IsEnabled();
UInt64 get_MaximumSize();
Boolean IncreaseQuotaTo(System.Int64);
Void DeleteFile(System.String);
Boolean FileExists(System.String);
Boolean DirectoryExists(System.String);
Void CreateDirectory(System.String);
DateTimeOffset GetCreationTime(System.String);
DateTimeOffset GetLastAccessTime(System.String);
DateTimeOffset GetLastWriteTime(System.String);
Void CopyFile(System.String,System.String);
Void CopyFile(System.String,System.String,System.Boolean);
Void MoveFile(System.String,System.String);
Void MoveDirectory(System.String,System.String);
Void DeleteDirectory(System.String);
String[] GetFileNames();
String[] GetFileNames(System.String);
String[] GetDirectoryNames();
String[] GetDirectoryNames(System.String);
IsolatedStorageFileStream OpenFile(System.String,System.IO.FileMode);
IsolatedStorageFileStream OpenFile(System.String,System.IO.FileMode,System.IO.FileAccess);
IsolatedStorageFileStream OpenFile(System.String,System.IO.FileMode,System.IO.FileAccess,System.IO.FileShare);
IsolatedStorageFileStream CreateFile(System.String);
Void Remove();
Void Close();
Void Dispose();
static Void Remove(System.IO.IsolatedStorage.IsolatedStorageScope);
static IEnumerator GetEnumerator(System.IO.IsolatedStorage.IsolatedStorageScope);
}
}
