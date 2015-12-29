module System.IO;
import System.Text;
import System;
import System.Threading;
import System.Threading.Tasks;
import System.Runtime.Remoting;
import System.Security.AccessControl;
import System.Runtime.Serialization;
import System.Collections;
import System.Reflection;
import Microsoft.Win32.SafeHandles;
import System.Runtime.InteropServices;
public:
pragma(assembly,"mscorlib"){
class BinaryReader : System.__object{
this (System.IO.Stream);
this (System.IO.Stream,System.Text.Encoding);
this (System.IO.Stream,System.Text.Encoding,System.Boolean);
System.IO.Stream get_BaseStream();
System.Void Close();
System.Void Dispose();
System.Int32 PeekChar();
System.Int32 Read();
System.Boolean ReadBoolean();
System.Byte ReadByte();
System.SByte ReadSByte();
System.Char ReadChar();
System.Int16 ReadInt16();
System.UInt16 ReadUInt16();
System.Int32 ReadInt32();
System.UInt32 ReadUInt32();
System.Int64 ReadInt64();
System.UInt64 ReadUInt64();
System.Single ReadSingle();
System.Double ReadDouble();
System.Decimal ReadDecimal();
System.String ReadString();
System.Int32 Read(System.Char[],System.Int32,System.Int32);
System.Char[] ReadChars(System.Int32);
System.Int32 Read(System.Byte[],System.Int32,System.Int32);
System.Byte[] ReadBytes(System.Int32);
}
class BinaryWriter : System.__object{
this (System.IO.Stream);
this (System.IO.Stream,System.Text.Encoding);
this (System.IO.Stream,System.Text.Encoding,System.Boolean);
System.Void Close();
System.Void Dispose();
System.IO.Stream get_BaseStream();
System.Void Flush();
System.Int64 Seek(System.Int32,System.IO.SeekOrigin);
System.Void Write(System.Boolean);
System.Void Write(System.Byte);
System.Void Write(System.SByte);
System.Void Write(System.Byte[]);
System.Void Write(System.Byte[],System.Int32,System.Int32);
System.Void Write(System.Char);
System.Void Write(System.Char[]);
System.Void Write(System.Char[],System.Int32,System.Int32);
System.Void Write(System.Double);
System.Void Write(System.Decimal);
System.Void Write(System.Int16);
System.Void Write(System.UInt16);
System.Void Write(System.Int32);
System.Void Write(System.UInt32);
System.Void Write(System.Int64);
System.Void Write(System.UInt64);
System.Void Write(System.Single);
System.Void Write(System.String);
}
class BufferedStream : System.IO.Stream{
this (System.IO.Stream);
this (System.IO.Stream,System.Int32);
System.Boolean get_CanRead();
System.Boolean get_CanWrite();
System.Boolean get_CanSeek();
System.Int64 get_Length();
System.Int64 get_Position();
System.Void set_Position(System.Int64);
System.Void Flush();
System.Threading.Tasks.Task FlushAsync(System.Threading.CancellationToken);
System.IAsyncResult BeginRead(System.Byte[],System.Int32,System.Int32,System.AsyncCallback,System.__object);
System.Int32 EndRead(System.IAsyncResult);
System.Int32 ReadByte();
System.Void Write(System.Byte[],System.Int32,System.Int32);
System.IAsyncResult BeginWrite(System.Byte[],System.Int32,System.Int32,System.AsyncCallback,System.__object);
System.Void EndWrite(System.IAsyncResult);
System.Threading.Tasks.Task WriteAsync(System.Byte[],System.Int32,System.Int32,System.Threading.CancellationToken);
System.Void WriteByte(System.Byte);
System.Int64 Seek(System.Int64,System.IO.SeekOrigin);
System.Void SetLength(System.Int64);
}
class Directory : System.__object{
static System.IO.DirectoryInfo GetParent(System.String);
static System.IO.DirectoryInfo CreateDirectory(System.String);
static System.IO.DirectoryInfo CreateDirectory(System.String,System.Security.AccessControl.DirectorySecurity);
static System.Boolean Exists(System.String);
static System.Void SetCreationTime(System.String,System.DateTime);
static System.Void SetCreationTimeUtc(System.String,System.DateTime);
static System.DateTime GetCreationTime(System.String);
static System.DateTime GetCreationTimeUtc(System.String);
static System.Void SetLastWriteTime(System.String,System.DateTime);
static System.Void SetLastWriteTimeUtc(System.String,System.DateTime);
static System.DateTime GetLastWriteTime(System.String);
static System.DateTime GetLastWriteTimeUtc(System.String);
static System.Void SetLastAccessTime(System.String,System.DateTime);
static System.Void SetLastAccessTimeUtc(System.String,System.DateTime);
static System.DateTime GetLastAccessTime(System.String);
static System.DateTime GetLastAccessTimeUtc(System.String);
static System.Security.AccessControl.DirectorySecurity GetAccessControl(System.String);
static System.Security.AccessControl.DirectorySecurity GetAccessControl(System.String,System.Security.AccessControl.AccessControlSections);
static System.Void SetAccessControl(System.String,System.Security.AccessControl.DirectorySecurity);
static System.String[] GetFiles(System.String);
static System.String[] GetFiles(System.String,System.String);
static System.String[] GetFiles(System.String,System.String,System.IO.SearchOption);
static System.String[] GetDirectories(System.String);
static System.String[] GetDirectories(System.String,System.String);
static System.String[] GetDirectories(System.String,System.String,System.IO.SearchOption);
static System.String[] GetFileSystemEntries(System.String);
static System.String[] GetFileSystemEntries(System.String,System.String);
static System.String[] GetFileSystemEntries(System.String,System.String,System.IO.SearchOption);
static System.String[] GetLogicalDrives();
static System.String GetDirectoryRoot(System.String);
static System.String GetCurrentDirectory();
static System.Void SetCurrentDirectory(System.String);
static System.Void Move(System.String,System.String);
static System.Void Delete(System.String);
static System.Void Delete(System.String,System.Boolean);
}
class DirectoryInfo : System.IO.FileSystemInfo{
this (System.String);
System.String get_Name();
System.IO.DirectoryInfo get_Parent();
System.IO.DirectoryInfo CreateSubdirectory(System.String);
System.IO.DirectoryInfo CreateSubdirectory(System.String,System.Security.AccessControl.DirectorySecurity);
System.Void Create();
System.Void Create(System.Security.AccessControl.DirectorySecurity);
System.Boolean get_Exists();
System.Security.AccessControl.DirectorySecurity GetAccessControl();
System.Security.AccessControl.DirectorySecurity GetAccessControl(System.Security.AccessControl.AccessControlSections);
System.Void SetAccessControl(System.Security.AccessControl.DirectorySecurity);
System.IO.FileInfo[] GetFiles(System.String);
System.IO.FileInfo[] GetFiles(System.String,System.IO.SearchOption);
System.IO.FileInfo[] GetFiles();
System.IO.DirectoryInfo[] GetDirectories();
System.IO.FileSystemInfo[] GetFileSystemInfos(System.String);
System.IO.FileSystemInfo[] GetFileSystemInfos(System.String,System.IO.SearchOption);
System.IO.FileSystemInfo[] GetFileSystemInfos();
System.IO.DirectoryInfo[] GetDirectories(System.String);
System.IO.DirectoryInfo[] GetDirectories(System.String,System.IO.SearchOption);
System.IO.DirectoryInfo get_Root();
System.Void MoveTo(System.String);
System.Void Delete();
System.Void Delete(System.Boolean);
System.String ToString();
}
class SearchOption : System.Enum{
}
class DriveType : System.Enum{
}
class DriveInfo : System.__object{
this (System.String);
System.String get_Name();
System.IO.DriveType get_DriveType();
System.String get_DriveFormat();
System.Boolean get_IsReady();
System.Int64 get_AvailableFreeSpace();
System.Int64 get_TotalFreeSpace();
System.Int64 get_TotalSize();
static System.IO.DriveInfo[] GetDrives();
System.IO.DirectoryInfo get_RootDirectory();
System.String get_VolumeLabel();
System.Void set_VolumeLabel(System.String);
System.String ToString();
}
class File : System.__object{
static System.IO.StreamReader OpenText(System.String);
static System.IO.StreamWriter CreateText(System.String);
static System.IO.StreamWriter AppendText(System.String);
static System.Void Copy(System.String,System.String);
static System.Void Copy(System.String,System.String,System.Boolean);
static System.IO.FileStream Create(System.String);
static System.IO.FileStream Create(System.String,System.Int32);
static System.IO.FileStream Create(System.String,System.Int32,System.IO.FileOptions);
static System.IO.FileStream Create(System.String,System.Int32,System.IO.FileOptions,System.Security.AccessControl.FileSecurity);
static System.Void Delete(System.String);
static System.Void Decrypt(System.String);
static System.Void Encrypt(System.String);
static System.Boolean Exists(System.String);
static System.IO.FileStream Open(System.String,System.IO.FileMode);
static System.IO.FileStream Open(System.String,System.IO.FileMode,System.IO.FileAccess);
static System.IO.FileStream Open(System.String,System.IO.FileMode,System.IO.FileAccess,System.IO.FileShare);
static System.Void SetCreationTime(System.String,System.DateTime);
static System.Void SetCreationTimeUtc(System.String,System.DateTime);
static System.DateTime GetCreationTime(System.String);
static System.DateTime GetCreationTimeUtc(System.String);
static System.Void SetLastAccessTime(System.String,System.DateTime);
static System.Void SetLastAccessTimeUtc(System.String,System.DateTime);
static System.DateTime GetLastAccessTime(System.String);
static System.DateTime GetLastAccessTimeUtc(System.String);
static System.Void SetLastWriteTime(System.String,System.DateTime);
static System.Void SetLastWriteTimeUtc(System.String,System.DateTime);
static System.DateTime GetLastWriteTime(System.String);
static System.DateTime GetLastWriteTimeUtc(System.String);
static System.IO.FileAttributes GetAttributes(System.String);
static System.Void SetAttributes(System.String,System.IO.FileAttributes);
static System.Security.AccessControl.FileSecurity GetAccessControl(System.String);
static System.Security.AccessControl.FileSecurity GetAccessControl(System.String,System.Security.AccessControl.AccessControlSections);
static System.Void SetAccessControl(System.String,System.Security.AccessControl.FileSecurity);
static System.IO.FileStream OpenRead(System.String);
static System.IO.FileStream OpenWrite(System.String);
static System.String ReadAllText(System.String);
static System.String ReadAllText(System.String,System.Text.Encoding);
static System.Void WriteAllText(System.String,System.String);
static System.Void WriteAllText(System.String,System.String,System.Text.Encoding);
static System.Byte[] ReadAllBytes(System.String);
static System.Void WriteAllBytes(System.String,System.Byte[]);
static System.String[] ReadAllLines(System.String);
static System.String[] ReadAllLines(System.String,System.Text.Encoding);
static System.Void WriteAllLines(System.String,System.String[]);
static System.Void WriteAllLines(System.String,System.String[],System.Text.Encoding);
static System.Void AppendAllText(System.String,System.String);
static System.Void AppendAllText(System.String,System.String,System.Text.Encoding);
static System.Void Move(System.String,System.String);
static System.Void Replace(System.String,System.String,System.String);
static System.Void Replace(System.String,System.String,System.String,System.Boolean);
}
class FileAccess : System.Enum{
}
class FileInfo : System.IO.FileSystemInfo{
this (System.String);
System.String get_Name();
System.Int64 get_Length();
System.String get_DirectoryName();
System.IO.DirectoryInfo get_Directory();
System.Boolean get_IsReadOnly();
System.Void set_IsReadOnly(System.Boolean);
System.Security.AccessControl.FileSecurity GetAccessControl();
System.Security.AccessControl.FileSecurity GetAccessControl(System.Security.AccessControl.AccessControlSections);
System.Void SetAccessControl(System.Security.AccessControl.FileSecurity);
System.IO.StreamReader OpenText();
System.IO.StreamWriter CreateText();
System.IO.StreamWriter AppendText();
System.IO.FileInfo CopyTo(System.String);
System.IO.FileInfo CopyTo(System.String,System.Boolean);
System.IO.FileStream Create();
System.Void Delete();
System.Void Decrypt();
System.Void Encrypt();
System.Boolean get_Exists();
System.IO.FileStream Open(System.IO.FileMode);
System.IO.FileStream Open(System.IO.FileMode,System.IO.FileAccess);
System.IO.FileStream Open(System.IO.FileMode,System.IO.FileAccess,System.IO.FileShare);
System.IO.FileStream OpenRead();
System.IO.FileStream OpenWrite();
System.Void MoveTo(System.String);
System.IO.FileInfo Replace(System.String,System.String);
System.IO.FileInfo Replace(System.String,System.String,System.Boolean);
System.String ToString();
}
class FileMode : System.Enum{
}
class FileOptions : System.Enum{
}
class FileShare : System.Enum{
}
class FileStream : System.IO.Stream{
this (System.String,System.IO.FileMode);
this (System.String,System.IO.FileMode,System.IO.FileAccess);
this (System.String,System.IO.FileMode,System.IO.FileAccess,System.IO.FileShare);
this (System.String,System.IO.FileMode,System.IO.FileAccess,System.IO.FileShare,System.Int32);
this (System.String,System.IO.FileMode,System.IO.FileAccess,System.IO.FileShare,System.Int32,System.IO.FileOptions);
this (System.String,System.IO.FileMode,System.IO.FileAccess,System.IO.FileShare,System.Int32,System.Boolean);
this (System.String,System.IO.FileMode,System.Security.AccessControl.FileSystemRights,System.IO.FileShare,System.Int32,System.IO.FileOptions,System.Security.AccessControl.FileSecurity);
this (System.String,System.IO.FileMode,System.Security.AccessControl.FileSystemRights,System.IO.FileShare,System.Int32,System.IO.FileOptions);
this (System.IntPtr,System.IO.FileAccess);
this (System.IntPtr,System.IO.FileAccess,System.Boolean);
this (System.IntPtr,System.IO.FileAccess,System.Boolean,System.Int32);
this (System.IntPtr,System.IO.FileAccess,System.Boolean,System.Int32,System.Boolean);
this (Microsoft.Win32.SafeHandles.SafeFileHandle,System.IO.FileAccess);
this (Microsoft.Win32.SafeHandles.SafeFileHandle,System.IO.FileAccess,System.Int32);
this (Microsoft.Win32.SafeHandles.SafeFileHandle,System.IO.FileAccess,System.Int32,System.Boolean);
System.Boolean get_CanRead();
System.Boolean get_CanWrite();
System.Boolean get_CanSeek();
System.Boolean get_IsAsync();
System.Int64 get_Length();
System.String get_Name();
System.Int64 get_Position();
System.Void set_Position(System.Int64);
System.Security.AccessControl.FileSecurity GetAccessControl();
System.Void SetAccessControl(System.Security.AccessControl.FileSecurity);
System.Void Flush();
System.Void Flush(System.Boolean);
System.IntPtr get_Handle();
Microsoft.Win32.SafeHandles.SafeFileHandle get_SafeFileHandle();
System.Void SetLength(System.Int64);
System.Int64 Seek(System.Int64,System.IO.SeekOrigin);
System.Void Write(System.Byte[],System.Int32,System.Int32);
System.IAsyncResult BeginRead(System.Byte[],System.Int32,System.Int32,System.AsyncCallback,System.__object);
System.Int32 EndRead(System.IAsyncResult);
System.Int32 ReadByte();
System.IAsyncResult BeginWrite(System.Byte[],System.Int32,System.Int32,System.AsyncCallback,System.__object);
System.Void EndWrite(System.IAsyncResult);
System.Void WriteByte(System.Byte);
System.Void Lock(System.Int64,System.Int64);
System.Void Unlock(System.Int64,System.Int64);
System.Threading.Tasks.Task WriteAsync(System.Byte[],System.Int32,System.Int32,System.Threading.CancellationToken);
System.Threading.Tasks.Task FlushAsync(System.Threading.CancellationToken);
}
class FileSystemInfo : System.MarshalByRefObject{
System.String get_FullName();
System.String get_Extension();
System.String get_Name();
System.Boolean get_Exists();
System.Void Delete();
System.DateTime get_CreationTime();
System.Void set_CreationTime(System.DateTime);
System.DateTime get_CreationTimeUtc();
System.Void set_CreationTimeUtc(System.DateTime);
System.DateTime get_LastAccessTime();
System.Void set_LastAccessTime(System.DateTime);
System.DateTime get_LastAccessTimeUtc();
System.Void set_LastAccessTimeUtc(System.DateTime);
System.DateTime get_LastWriteTime();
System.Void set_LastWriteTime(System.DateTime);
System.DateTime get_LastWriteTimeUtc();
System.Void set_LastWriteTimeUtc(System.DateTime);
System.Void Refresh();
System.IO.FileAttributes get_Attributes();
System.Void set_Attributes(System.IO.FileAttributes);
System.Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
}
class FileAttributes : System.Enum{
}
class MemoryStream : System.IO.Stream{
this ();
this (System.Int32);
this (System.Byte[]);
this (System.Byte[],System.Boolean);
this (System.Byte[],System.Int32,System.Int32);
this (System.Byte[],System.Int32,System.Int32,System.Boolean);
this (System.Byte[],System.Int32,System.Int32,System.Boolean,System.Boolean);
System.Boolean get_CanRead();
System.Boolean get_CanSeek();
System.Boolean get_CanWrite();
System.Void Flush();
System.Threading.Tasks.Task FlushAsync(System.Threading.CancellationToken);
System.Byte[] GetBuffer();
System.Int32 get_Capacity();
System.Void set_Capacity(System.Int32);
System.Int64 get_Length();
System.Int64 get_Position();
System.Void set_Position(System.Int64);
System.Int32 ReadByte();
System.Threading.Tasks.Task CopyToAsync(System.IO.Stream,System.Int32,System.Threading.CancellationToken);
System.Int64 Seek(System.Int64,System.IO.SeekOrigin);
System.Void SetLength(System.Int64);
System.Byte[] ToArray();
System.Void Write(System.Byte[],System.Int32,System.Int32);
System.Threading.Tasks.Task WriteAsync(System.Byte[],System.Int32,System.Int32,System.Threading.CancellationToken);
System.Void WriteByte(System.Byte);
System.Void WriteTo(System.IO.Stream);
}
class Path : System.__object{
static System.String ChangeExtension(System.String,System.String);
static System.String GetDirectoryName(System.String);
static System.Char[] GetInvalidPathChars();
static System.Char[] GetInvalidFileNameChars();
static System.String GetExtension(System.String);
static System.String GetFullPath(System.String);
static System.String GetFileName(System.String);
static System.String GetFileNameWithoutExtension(System.String);
static System.String GetPathRoot(System.String);
static System.String GetTempPath();
static System.String GetRandomFileName();
static System.String GetTempFileName();
static System.Boolean HasExtension(System.String);
static System.Boolean IsPathRooted(System.String);
static System.String Combine(System.String,System.String);
static System.String Combine(System.String,System.String,System.String);
static System.String Combine(System.String,System.String,System.String,System.String);
static System.String Combine(System.String[]);
}
class SeekOrigin : System.Enum{
}
class Stream : System.MarshalByRefObject{
System.Boolean get_CanRead();
System.Boolean get_CanSeek();
System.Boolean get_CanTimeout();
System.Boolean get_CanWrite();
System.Int64 get_Length();
System.Int64 get_Position();
System.Void set_Position(System.Int64);
System.Int32 get_ReadTimeout();
System.Void set_ReadTimeout(System.Int32);
System.Int32 get_WriteTimeout();
System.Void set_WriteTimeout(System.Int32);
System.Threading.Tasks.Task CopyToAsync(System.IO.Stream);
System.Threading.Tasks.Task CopyToAsync(System.IO.Stream,System.Int32);
System.Threading.Tasks.Task CopyToAsync(System.IO.Stream,System.Int32,System.Threading.CancellationToken);
System.Void CopyTo(System.IO.Stream);
System.Void CopyTo(System.IO.Stream,System.Int32);
System.Void Close();
System.Void Dispose();
System.Void Flush();
System.Threading.Tasks.Task FlushAsync();
System.Threading.Tasks.Task FlushAsync(System.Threading.CancellationToken);
System.IAsyncResult BeginRead(System.Byte[],System.Int32,System.Int32,System.AsyncCallback,System.__object);
System.Int32 EndRead(System.IAsyncResult);
System.IAsyncResult BeginWrite(System.Byte[],System.Int32,System.Int32,System.AsyncCallback,System.__object);
System.Void EndWrite(System.IAsyncResult);
System.Threading.Tasks.Task WriteAsync(System.Byte[],System.Int32,System.Int32);
System.Threading.Tasks.Task WriteAsync(System.Byte[],System.Int32,System.Int32,System.Threading.CancellationToken);
System.Int64 Seek(System.Int64,System.IO.SeekOrigin);
System.Void SetLength(System.Int64);
System.Int32 ReadByte();
System.Void Write(System.Byte[],System.Int32,System.Int32);
System.Void WriteByte(System.Byte);
static System.IO.Stream Synchronized(System.IO.Stream);
}
class StreamReader : System.IO.TextReader{
this (System.IO.Stream);
this (System.IO.Stream,System.Boolean);
this (System.IO.Stream,System.Text.Encoding);
this (System.IO.Stream,System.Text.Encoding,System.Boolean);
this (System.IO.Stream,System.Text.Encoding,System.Boolean,System.Int32);
this (System.IO.Stream,System.Text.Encoding,System.Boolean,System.Int32,System.Boolean);
this (System.String);
this (System.String,System.Boolean);
this (System.String,System.Text.Encoding);
this (System.String,System.Text.Encoding,System.Boolean);
this (System.String,System.Text.Encoding,System.Boolean,System.Int32);
System.Void Close();
System.Text.Encoding get_CurrentEncoding();
System.IO.Stream get_BaseStream();
System.Void DiscardBufferedData();
System.Boolean get_EndOfStream();
System.Int32 Peek();
System.Int32 Read();
System.String ReadToEnd();
System.String ReadLine();
}
class StreamWriter : System.IO.TextWriter{
this (System.IO.Stream);
this (System.IO.Stream,System.Text.Encoding);
this (System.IO.Stream,System.Text.Encoding,System.Int32);
this (System.IO.Stream,System.Text.Encoding,System.Int32,System.Boolean);
this (System.String);
this (System.String,System.Boolean);
this (System.String,System.Boolean,System.Text.Encoding);
this (System.String,System.Boolean,System.Text.Encoding,System.Int32);
System.Void Close();
System.Void Flush();
System.Boolean get_AutoFlush();
System.Void set_AutoFlush(System.Boolean);
System.IO.Stream get_BaseStream();
System.Text.Encoding get_Encoding();
System.Void Write(System.Char);
System.Void Write(System.Char[]);
System.Void Write(System.Char[],System.Int32,System.Int32);
System.Void Write(System.String);
System.Threading.Tasks.Task WriteAsync(System.Char);
System.Threading.Tasks.Task WriteAsync(System.String);
System.Threading.Tasks.Task WriteAsync(System.Char[],System.Int32,System.Int32);
System.Threading.Tasks.Task WriteLineAsync();
System.Threading.Tasks.Task WriteLineAsync(System.Char);
System.Threading.Tasks.Task WriteLineAsync(System.String);
System.Threading.Tasks.Task WriteLineAsync(System.Char[],System.Int32,System.Int32);
System.Threading.Tasks.Task FlushAsync();
}
class StringReader : System.IO.TextReader{
this (System.String);
System.Void Close();
System.Int32 Peek();
System.Int32 Read();
System.String ReadToEnd();
System.String ReadLine();
}
class StringWriter : System.IO.TextWriter{
this ();
this (System.IFormatProvider);
this (System.Text.StringBuilder);
this (System.Text.StringBuilder,System.IFormatProvider);
System.Void Close();
System.Text.Encoding get_Encoding();
System.Text.StringBuilder GetStringBuilder();
System.Void Write(System.Char);
System.Void Write(System.Char[],System.Int32,System.Int32);
System.Void Write(System.String);
System.Threading.Tasks.Task WriteAsync(System.Char);
System.Threading.Tasks.Task WriteAsync(System.String);
System.Threading.Tasks.Task WriteAsync(System.Char[],System.Int32,System.Int32);
System.Threading.Tasks.Task WriteLineAsync(System.Char);
System.Threading.Tasks.Task WriteLineAsync(System.String);
System.Threading.Tasks.Task WriteLineAsync(System.Char[],System.Int32,System.Int32);
System.Threading.Tasks.Task FlushAsync();
System.String ToString();
}
class TextReader : System.MarshalByRefObject{
System.Void Close();
System.Void Dispose();
System.Int32 Peek();
System.Int32 Read();
System.String ReadToEnd();
System.String ReadLine();
static System.IO.TextReader Synchronized(System.IO.TextReader);
}
class TextWriter : System.MarshalByRefObject{
System.IFormatProvider get_FormatProvider();
System.Void Close();
System.Void Dispose();
System.Void Flush();
System.Text.Encoding get_Encoding();
System.String get_NewLine();
System.Void set_NewLine(System.String);
static System.IO.TextWriter Synchronized(System.IO.TextWriter);
System.Void Write(System.Char);
System.Void Write(System.Char[]);
System.Void Write(System.Char[],System.Int32,System.Int32);
System.Void Write(System.Boolean);
System.Void Write(System.Int32);
System.Void Write(System.UInt32);
System.Void Write(System.Int64);
System.Void Write(System.UInt64);
System.Void Write(System.Single);
System.Void Write(System.Double);
System.Void Write(System.Decimal);
System.Void Write(System.String);
System.Void Write(System.__object);
System.Void Write(System.String,System.__object);
System.Void Write(System.String,System.__object,System.__object);
System.Void Write(System.String,System.__object,System.__object,System.__object);
System.Void Write(System.String,System.__object[]);
System.Void WriteLine();
System.Void WriteLine(System.Char);
System.Void WriteLine(System.Char[]);
System.Void WriteLine(System.Char[],System.Int32,System.Int32);
System.Void WriteLine(System.Boolean);
System.Void WriteLine(System.Int32);
System.Void WriteLine(System.UInt32);
System.Void WriteLine(System.Int64);
System.Void WriteLine(System.UInt64);
System.Void WriteLine(System.Single);
System.Void WriteLine(System.Double);
System.Void WriteLine(System.Decimal);
System.Void WriteLine(System.String);
System.Void WriteLine(System.__object);
System.Void WriteLine(System.String,System.__object);
System.Void WriteLine(System.String,System.__object,System.__object);
System.Void WriteLine(System.String,System.__object,System.__object,System.__object);
System.Void WriteLine(System.String,System.__object[]);
System.Threading.Tasks.Task WriteAsync(System.Char);
System.Threading.Tasks.Task WriteAsync(System.String);
System.Threading.Tasks.Task WriteAsync(System.Char[]);
System.Threading.Tasks.Task WriteAsync(System.Char[],System.Int32,System.Int32);
System.Threading.Tasks.Task WriteLineAsync(System.Char);
System.Threading.Tasks.Task WriteLineAsync(System.String);
System.Threading.Tasks.Task WriteLineAsync(System.Char[]);
System.Threading.Tasks.Task WriteLineAsync(System.Char[],System.Int32,System.Int32);
System.Threading.Tasks.Task WriteLineAsync();
System.Threading.Tasks.Task FlushAsync();
}
class UnmanagedMemoryAccessor : System.__object{
this (System.Runtime.InteropServices.SafeBuffer,System.Int64,System.Int64);
this (System.Runtime.InteropServices.SafeBuffer,System.Int64,System.Int64,System.IO.FileAccess);
System.Int64 get_Capacity();
System.Boolean get_CanRead();
System.Boolean get_CanWrite();
System.Void Dispose();
System.Boolean ReadBoolean(System.Int64);
System.Byte ReadByte(System.Int64);
System.Char ReadChar(System.Int64);
System.Int16 ReadInt16(System.Int64);
System.Int32 ReadInt32(System.Int64);
System.Int64 ReadInt64(System.Int64);
System.Decimal ReadDecimal(System.Int64);
System.Single ReadSingle(System.Int64);
System.Double ReadDouble(System.Int64);
System.SByte ReadSByte(System.Int64);
System.UInt16 ReadUInt16(System.Int64);
System.UInt32 ReadUInt32(System.Int64);
System.UInt64 ReadUInt64(System.Int64);
System.Void Write(System.Int64,System.Boolean);
System.Void Write(System.Int64,System.Byte);
System.Void Write(System.Int64,System.Char);
System.Void Write(System.Int64,System.Int16);
System.Void Write(System.Int64,System.Int32);
System.Void Write(System.Int64,System.Int64);
System.Void Write(System.Int64,System.Decimal);
System.Void Write(System.Int64,System.Single);
System.Void Write(System.Int64,System.Double);
System.Void Write(System.Int64,System.SByte);
System.Void Write(System.Int64,System.UInt16);
System.Void Write(System.Int64,System.UInt32);
System.Void Write(System.Int64,System.UInt64);
}
class UnmanagedMemoryStream : System.IO.Stream{
this (System.Runtime.InteropServices.SafeBuffer,System.Int64,System.Int64);
this (System.Runtime.InteropServices.SafeBuffer,System.Int64,System.Int64,System.IO.FileAccess);
System.Boolean get_CanRead();
System.Boolean get_CanSeek();
System.Boolean get_CanWrite();
System.Void Flush();
System.Threading.Tasks.Task FlushAsync(System.Threading.CancellationToken);
System.Int64 get_Length();
System.Int64 get_Capacity();
System.Int64 get_Position();
System.Void set_Position(System.Int64);
System.Int32 ReadByte();
System.Int64 Seek(System.Int64,System.IO.SeekOrigin);
System.Void SetLength(System.Int64);
System.Void Write(System.Byte[],System.Int32,System.Int32);
System.Threading.Tasks.Task WriteAsync(System.Byte[],System.Int32,System.Int32,System.Threading.CancellationToken);
System.Void WriteByte(System.Byte);
}
}
