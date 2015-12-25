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
class BinaryReader : System.Object{
this (System.IO.Stream);
this (System.IO.Stream,System.Text.Encoding);
this (System.IO.Stream,System.Text.Encoding,System.Boolean);
Stream get_BaseStream();
Void Close();
Void Dispose();
Int32 PeekChar();
Int32 Read();
Boolean ReadBoolean();
Byte ReadByte();
SByte ReadSByte();
Char ReadChar();
Int16 ReadInt16();
UInt16 ReadUInt16();
Int32 ReadInt32();
UInt32 ReadUInt32();
Int64 ReadInt64();
UInt64 ReadUInt64();
Single ReadSingle();
Double ReadDouble();
Decimal ReadDecimal();
String ReadString();
Int32 Read(System.Char[],System.Int32,System.Int32);
Char[] ReadChars(System.Int32);
Int32 Read(System.Byte[],System.Int32,System.Int32);
Byte[] ReadBytes(System.Int32);
}
class BinaryWriter : System.Object{
this (System.IO.Stream);
this (System.IO.Stream,System.Text.Encoding);
this (System.IO.Stream,System.Text.Encoding,System.Boolean);
Void Close();
Void Dispose();
Stream get_BaseStream();
Void Flush();
Int64 Seek(System.Int32,System.IO.SeekOrigin);
Void Write(System.Boolean);
Void Write(System.Byte);
Void Write(System.SByte);
Void Write(System.Byte[]);
Void Write(System.Byte[],System.Int32,System.Int32);
Void Write(System.Char);
Void Write(System.Char[]);
Void Write(System.Char[],System.Int32,System.Int32);
Void Write(System.Double);
Void Write(System.Decimal);
Void Write(System.Int16);
Void Write(System.UInt16);
Void Write(System.Int32);
Void Write(System.UInt32);
Void Write(System.Int64);
Void Write(System.UInt64);
Void Write(System.Single);
Void Write(System.String);
}
class BufferedStream : System.IO.Stream{
this (System.IO.Stream);
this (System.IO.Stream,System.Int32);
Boolean get_CanRead();
Boolean get_CanWrite();
Boolean get_CanSeek();
Int64 get_Length();
Int64 get_Position();
Void set_Position(System.Int64);
Void Flush();
Task FlushAsync(System.Threading.CancellationToken);
IAsyncResult BeginRead(System.Byte[],System.Int32,System.Int32,System.AsyncCallback,System.Object);
Int32 EndRead(System.IAsyncResult);
Int32 ReadByte();
Void Write(System.Byte[],System.Int32,System.Int32);
IAsyncResult BeginWrite(System.Byte[],System.Int32,System.Int32,System.AsyncCallback,System.Object);
Void EndWrite(System.IAsyncResult);
Task WriteAsync(System.Byte[],System.Int32,System.Int32,System.Threading.CancellationToken);
Void WriteByte(System.Byte);
Int64 Seek(System.Int64,System.IO.SeekOrigin);
Void SetLength(System.Int64);
}
class Directory : System.Object{
static DirectoryInfo GetParent(System.String);
static DirectoryInfo CreateDirectory(System.String);
static DirectoryInfo CreateDirectory(System.String,System.Security.AccessControl.DirectorySecurity);
static Boolean Exists(System.String);
static Void SetCreationTime(System.String,System.DateTime);
static Void SetCreationTimeUtc(System.String,System.DateTime);
static DateTime GetCreationTime(System.String);
static DateTime GetCreationTimeUtc(System.String);
static Void SetLastWriteTime(System.String,System.DateTime);
static Void SetLastWriteTimeUtc(System.String,System.DateTime);
static DateTime GetLastWriteTime(System.String);
static DateTime GetLastWriteTimeUtc(System.String);
static Void SetLastAccessTime(System.String,System.DateTime);
static Void SetLastAccessTimeUtc(System.String,System.DateTime);
static DateTime GetLastAccessTime(System.String);
static DateTime GetLastAccessTimeUtc(System.String);
static DirectorySecurity GetAccessControl(System.String);
static DirectorySecurity GetAccessControl(System.String,System.Security.AccessControl.AccessControlSections);
static Void SetAccessControl(System.String,System.Security.AccessControl.DirectorySecurity);
static String[] GetFiles(System.String);
static String[] GetFiles(System.String,System.String);
static String[] GetFiles(System.String,System.String,System.IO.SearchOption);
static String[] GetDirectories(System.String);
static String[] GetDirectories(System.String,System.String);
static String[] GetDirectories(System.String,System.String,System.IO.SearchOption);
static String[] GetFileSystemEntries(System.String);
static String[] GetFileSystemEntries(System.String,System.String);
static String[] GetFileSystemEntries(System.String,System.String,System.IO.SearchOption);
static String[] GetLogicalDrives();
static String GetDirectoryRoot(System.String);
static String GetCurrentDirectory();
static Void SetCurrentDirectory(System.String);
static Void Move(System.String,System.String);
static Void Delete(System.String);
static Void Delete(System.String,System.Boolean);
}
class DirectoryInfo : System.IO.FileSystemInfo{
this (System.String);
String get_Name();
DirectoryInfo get_Parent();
DirectoryInfo CreateSubdirectory(System.String);
DirectoryInfo CreateSubdirectory(System.String,System.Security.AccessControl.DirectorySecurity);
Void Create();
Void Create(System.Security.AccessControl.DirectorySecurity);
Boolean get_Exists();
DirectorySecurity GetAccessControl();
DirectorySecurity GetAccessControl(System.Security.AccessControl.AccessControlSections);
Void SetAccessControl(System.Security.AccessControl.DirectorySecurity);
FileInfo[] GetFiles(System.String);
FileInfo[] GetFiles(System.String,System.IO.SearchOption);
FileInfo[] GetFiles();
DirectoryInfo[] GetDirectories();
FileSystemInfo[] GetFileSystemInfos(System.String);
FileSystemInfo[] GetFileSystemInfos(System.String,System.IO.SearchOption);
FileSystemInfo[] GetFileSystemInfos();
DirectoryInfo[] GetDirectories(System.String);
DirectoryInfo[] GetDirectories(System.String,System.IO.SearchOption);
DirectoryInfo get_Root();
Void MoveTo(System.String);
Void Delete();
Void Delete(System.Boolean);
String ToString();
}
class SearchOption : System.Enum{
}
class DirectoryNotFoundException : System.IO.IOException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class DriveType : System.Enum{
}
class DriveInfo : System.Object{
this (System.String);
String get_Name();
DriveType get_DriveType();
String get_DriveFormat();
Boolean get_IsReady();
Int64 get_AvailableFreeSpace();
Int64 get_TotalFreeSpace();
Int64 get_TotalSize();
static DriveInfo[] GetDrives();
DirectoryInfo get_RootDirectory();
String get_VolumeLabel();
Void set_VolumeLabel(System.String);
String ToString();
}
class DriveNotFoundException : System.IO.IOException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class EndOfStreamException : System.IO.IOException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class File : System.Object{
static StreamReader OpenText(System.String);
static StreamWriter CreateText(System.String);
static StreamWriter AppendText(System.String);
static Void Copy(System.String,System.String);
static Void Copy(System.String,System.String,System.Boolean);
static FileStream Create(System.String);
static FileStream Create(System.String,System.Int32);
static FileStream Create(System.String,System.Int32,System.IO.FileOptions);
static FileStream Create(System.String,System.Int32,System.IO.FileOptions,System.Security.AccessControl.FileSecurity);
static Void Delete(System.String);
static Void Decrypt(System.String);
static Void Encrypt(System.String);
static Boolean Exists(System.String);
static FileStream Open(System.String,System.IO.FileMode);
static FileStream Open(System.String,System.IO.FileMode,System.IO.FileAccess);
static FileStream Open(System.String,System.IO.FileMode,System.IO.FileAccess,System.IO.FileShare);
static Void SetCreationTime(System.String,System.DateTime);
static Void SetCreationTimeUtc(System.String,System.DateTime);
static DateTime GetCreationTime(System.String);
static DateTime GetCreationTimeUtc(System.String);
static Void SetLastAccessTime(System.String,System.DateTime);
static Void SetLastAccessTimeUtc(System.String,System.DateTime);
static DateTime GetLastAccessTime(System.String);
static DateTime GetLastAccessTimeUtc(System.String);
static Void SetLastWriteTime(System.String,System.DateTime);
static Void SetLastWriteTimeUtc(System.String,System.DateTime);
static DateTime GetLastWriteTime(System.String);
static DateTime GetLastWriteTimeUtc(System.String);
static FileAttributes GetAttributes(System.String);
static Void SetAttributes(System.String,System.IO.FileAttributes);
static FileSecurity GetAccessControl(System.String);
static FileSecurity GetAccessControl(System.String,System.Security.AccessControl.AccessControlSections);
static Void SetAccessControl(System.String,System.Security.AccessControl.FileSecurity);
static FileStream OpenRead(System.String);
static FileStream OpenWrite(System.String);
static String ReadAllText(System.String);
static String ReadAllText(System.String,System.Text.Encoding);
static Void WriteAllText(System.String,System.String);
static Void WriteAllText(System.String,System.String,System.Text.Encoding);
static Byte[] ReadAllBytes(System.String);
static Void WriteAllBytes(System.String,System.Byte[]);
static String[] ReadAllLines(System.String);
static String[] ReadAllLines(System.String,System.Text.Encoding);
static Void WriteAllLines(System.String,System.String[]);
static Void WriteAllLines(System.String,System.String[],System.Text.Encoding);
static Void AppendAllText(System.String,System.String);
static Void AppendAllText(System.String,System.String,System.Text.Encoding);
static Void Move(System.String,System.String);
static Void Replace(System.String,System.String,System.String);
static Void Replace(System.String,System.String,System.String,System.Boolean);
}
class FileAccess : System.Enum{
}
class FileInfo : System.IO.FileSystemInfo{
this (System.String);
String get_Name();
Int64 get_Length();
String get_DirectoryName();
DirectoryInfo get_Directory();
Boolean get_IsReadOnly();
Void set_IsReadOnly(System.Boolean);
FileSecurity GetAccessControl();
FileSecurity GetAccessControl(System.Security.AccessControl.AccessControlSections);
Void SetAccessControl(System.Security.AccessControl.FileSecurity);
StreamReader OpenText();
StreamWriter CreateText();
StreamWriter AppendText();
FileInfo CopyTo(System.String);
FileInfo CopyTo(System.String,System.Boolean);
FileStream Create();
Void Delete();
Void Decrypt();
Void Encrypt();
Boolean get_Exists();
FileStream Open(System.IO.FileMode);
FileStream Open(System.IO.FileMode,System.IO.FileAccess);
FileStream Open(System.IO.FileMode,System.IO.FileAccess,System.IO.FileShare);
FileStream OpenRead();
FileStream OpenWrite();
Void MoveTo(System.String);
FileInfo Replace(System.String,System.String);
FileInfo Replace(System.String,System.String,System.Boolean);
String ToString();
}
class FileLoadException : System.IO.IOException{
this ();
this (System.String);
this (System.String,System.Exception);
this (System.String,System.String);
this (System.String,System.String,System.Exception);
String get_Message();
String get_FileName();
String ToString();
String get_FusionLog();
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
}
class FileMode : System.Enum{
}
class FileNotFoundException : System.IO.IOException{
this ();
this (System.String);
this (System.String,System.Exception);
this (System.String,System.String);
this (System.String,System.String,System.Exception);
String get_Message();
String get_FileName();
String ToString();
String get_FusionLog();
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
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
Boolean get_CanRead();
Boolean get_CanWrite();
Boolean get_CanSeek();
Boolean get_IsAsync();
Int64 get_Length();
String get_Name();
Int64 get_Position();
Void set_Position(System.Int64);
FileSecurity GetAccessControl();
Void SetAccessControl(System.Security.AccessControl.FileSecurity);
Void Flush();
Void Flush(System.Boolean);
IntPtr get_Handle();
SafeFileHandle get_SafeFileHandle();
Void SetLength(System.Int64);
Int64 Seek(System.Int64,System.IO.SeekOrigin);
Void Write(System.Byte[],System.Int32,System.Int32);
IAsyncResult BeginRead(System.Byte[],System.Int32,System.Int32,System.AsyncCallback,System.Object);
Int32 EndRead(System.IAsyncResult);
Int32 ReadByte();
IAsyncResult BeginWrite(System.Byte[],System.Int32,System.Int32,System.AsyncCallback,System.Object);
Void EndWrite(System.IAsyncResult);
Void WriteByte(System.Byte);
Void Lock(System.Int64,System.Int64);
Void Unlock(System.Int64,System.Int64);
Task WriteAsync(System.Byte[],System.Int32,System.Int32,System.Threading.CancellationToken);
Task FlushAsync(System.Threading.CancellationToken);
}
class FileSystemInfo : System.MarshalByRefObject{
String get_FullName();
String get_Extension();
String get_Name();
Boolean get_Exists();
Void Delete();
DateTime get_CreationTime();
Void set_CreationTime(System.DateTime);
DateTime get_CreationTimeUtc();
Void set_CreationTimeUtc(System.DateTime);
DateTime get_LastAccessTime();
Void set_LastAccessTime(System.DateTime);
DateTime get_LastAccessTimeUtc();
Void set_LastAccessTimeUtc(System.DateTime);
DateTime get_LastWriteTime();
Void set_LastWriteTime(System.DateTime);
DateTime get_LastWriteTimeUtc();
Void set_LastWriteTimeUtc(System.DateTime);
Void Refresh();
FileAttributes get_Attributes();
Void set_Attributes(System.IO.FileAttributes);
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
}
class FileAttributes : System.Enum{
}
class IOException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Int32);
this (System.String,System.Exception);
}
class MemoryStream : System.IO.Stream{
this ();
this (System.Int32);
this (System.Byte[]);
this (System.Byte[],System.Boolean);
this (System.Byte[],System.Int32,System.Int32);
this (System.Byte[],System.Int32,System.Int32,System.Boolean);
this (System.Byte[],System.Int32,System.Int32,System.Boolean,System.Boolean);
Boolean get_CanRead();
Boolean get_CanSeek();
Boolean get_CanWrite();
Void Flush();
Task FlushAsync(System.Threading.CancellationToken);
Byte[] GetBuffer();
Int32 get_Capacity();
Void set_Capacity(System.Int32);
Int64 get_Length();
Int64 get_Position();
Void set_Position(System.Int64);
Int32 ReadByte();
Task CopyToAsync(System.IO.Stream,System.Int32,System.Threading.CancellationToken);
Int64 Seek(System.Int64,System.IO.SeekOrigin);
Void SetLength(System.Int64);
Byte[] ToArray();
Void Write(System.Byte[],System.Int32,System.Int32);
Task WriteAsync(System.Byte[],System.Int32,System.Int32,System.Threading.CancellationToken);
Void WriteByte(System.Byte);
Void WriteTo(System.IO.Stream);
}
class Path : System.Object{
static String ChangeExtension(System.String,System.String);
static String GetDirectoryName(System.String);
static Char[] GetInvalidPathChars();
static Char[] GetInvalidFileNameChars();
static String GetExtension(System.String);
static String GetFullPath(System.String);
static String GetFileName(System.String);
static String GetFileNameWithoutExtension(System.String);
static String GetPathRoot(System.String);
static String GetTempPath();
static String GetRandomFileName();
static String GetTempFileName();
static Boolean HasExtension(System.String);
static Boolean IsPathRooted(System.String);
static String Combine(System.String,System.String);
static String Combine(System.String,System.String,System.String);
static String Combine(System.String,System.String,System.String,System.String);
static String Combine(System.String[]);
}
class PathTooLongException : System.IO.IOException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class SeekOrigin : System.Enum{
}
class Stream : System.MarshalByRefObject{
Boolean get_CanRead();
Boolean get_CanSeek();
Boolean get_CanTimeout();
Boolean get_CanWrite();
Int64 get_Length();
Int64 get_Position();
Void set_Position(System.Int64);
Int32 get_ReadTimeout();
Void set_ReadTimeout(System.Int32);
Int32 get_WriteTimeout();
Void set_WriteTimeout(System.Int32);
Task CopyToAsync(System.IO.Stream);
Task CopyToAsync(System.IO.Stream,System.Int32);
Task CopyToAsync(System.IO.Stream,System.Int32,System.Threading.CancellationToken);
Void CopyTo(System.IO.Stream);
Void CopyTo(System.IO.Stream,System.Int32);
Void Close();
Void Dispose();
Void Flush();
Task FlushAsync();
Task FlushAsync(System.Threading.CancellationToken);
IAsyncResult BeginRead(System.Byte[],System.Int32,System.Int32,System.AsyncCallback,System.Object);
Int32 EndRead(System.IAsyncResult);
IAsyncResult BeginWrite(System.Byte[],System.Int32,System.Int32,System.AsyncCallback,System.Object);
Void EndWrite(System.IAsyncResult);
Task WriteAsync(System.Byte[],System.Int32,System.Int32);
Task WriteAsync(System.Byte[],System.Int32,System.Int32,System.Threading.CancellationToken);
Int64 Seek(System.Int64,System.IO.SeekOrigin);
Void SetLength(System.Int64);
Int32 ReadByte();
Void Write(System.Byte[],System.Int32,System.Int32);
Void WriteByte(System.Byte);
static Stream Synchronized(System.IO.Stream);
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
Void Close();
Encoding get_CurrentEncoding();
Stream get_BaseStream();
Void DiscardBufferedData();
Boolean get_EndOfStream();
Int32 Peek();
Int32 Read();
String ReadToEnd();
String ReadLine();
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
Void Close();
Void Flush();
Boolean get_AutoFlush();
Void set_AutoFlush(System.Boolean);
Stream get_BaseStream();
Encoding get_Encoding();
Void Write(System.Char);
Void Write(System.Char[]);
Void Write(System.Char[],System.Int32,System.Int32);
Void Write(System.String);
Task WriteAsync(System.Char);
Task WriteAsync(System.String);
Task WriteAsync(System.Char[],System.Int32,System.Int32);
Task WriteLineAsync();
Task WriteLineAsync(System.Char);
Task WriteLineAsync(System.String);
Task WriteLineAsync(System.Char[],System.Int32,System.Int32);
Task FlushAsync();
}
class StringReader : System.IO.TextReader{
this (System.String);
Void Close();
Int32 Peek();
Int32 Read();
String ReadToEnd();
String ReadLine();
}
class StringWriter : System.IO.TextWriter{
this ();
this (System.IFormatProvider);
this (System.Text.StringBuilder);
this (System.Text.StringBuilder,System.IFormatProvider);
Void Close();
Encoding get_Encoding();
StringBuilder GetStringBuilder();
Void Write(System.Char);
Void Write(System.Char[],System.Int32,System.Int32);
Void Write(System.String);
Task WriteAsync(System.Char);
Task WriteAsync(System.String);
Task WriteAsync(System.Char[],System.Int32,System.Int32);
Task WriteLineAsync(System.Char);
Task WriteLineAsync(System.String);
Task WriteLineAsync(System.Char[],System.Int32,System.Int32);
Task FlushAsync();
String ToString();
}
class TextReader : System.MarshalByRefObject{
Void Close();
Void Dispose();
Int32 Peek();
Int32 Read();
String ReadToEnd();
String ReadLine();
static TextReader Synchronized(System.IO.TextReader);
}
class TextWriter : System.MarshalByRefObject{
IFormatProvider get_FormatProvider();
Void Close();
Void Dispose();
Void Flush();
Encoding get_Encoding();
String get_NewLine();
Void set_NewLine(System.String);
static TextWriter Synchronized(System.IO.TextWriter);
Void Write(System.Char);
Void Write(System.Char[]);
Void Write(System.Char[],System.Int32,System.Int32);
Void Write(System.Boolean);
Void Write(System.Int32);
Void Write(System.UInt32);
Void Write(System.Int64);
Void Write(System.UInt64);
Void Write(System.Single);
Void Write(System.Double);
Void Write(System.Decimal);
Void Write(System.String);
Void Write(System.Object);
Void Write(System.String,System.Object);
Void Write(System.String,System.Object,System.Object);
Void Write(System.String,System.Object,System.Object,System.Object);
Void Write(System.String,System.Object[]);
Void WriteLine();
Void WriteLine(System.Char);
Void WriteLine(System.Char[]);
Void WriteLine(System.Char[],System.Int32,System.Int32);
Void WriteLine(System.Boolean);
Void WriteLine(System.Int32);
Void WriteLine(System.UInt32);
Void WriteLine(System.Int64);
Void WriteLine(System.UInt64);
Void WriteLine(System.Single);
Void WriteLine(System.Double);
Void WriteLine(System.Decimal);
Void WriteLine(System.String);
Void WriteLine(System.Object);
Void WriteLine(System.String,System.Object);
Void WriteLine(System.String,System.Object,System.Object);
Void WriteLine(System.String,System.Object,System.Object,System.Object);
Void WriteLine(System.String,System.Object[]);
Task WriteAsync(System.Char);
Task WriteAsync(System.String);
Task WriteAsync(System.Char[]);
Task WriteAsync(System.Char[],System.Int32,System.Int32);
Task WriteLineAsync(System.Char);
Task WriteLineAsync(System.String);
Task WriteLineAsync(System.Char[]);
Task WriteLineAsync(System.Char[],System.Int32,System.Int32);
Task WriteLineAsync();
Task FlushAsync();
}
class UnmanagedMemoryAccessor : System.Object{
this (System.Runtime.InteropServices.SafeBuffer,System.Int64,System.Int64);
this (System.Runtime.InteropServices.SafeBuffer,System.Int64,System.Int64,System.IO.FileAccess);
Int64 get_Capacity();
Boolean get_CanRead();
Boolean get_CanWrite();
Void Dispose();
Boolean ReadBoolean(System.Int64);
Byte ReadByte(System.Int64);
Char ReadChar(System.Int64);
Int16 ReadInt16(System.Int64);
Int32 ReadInt32(System.Int64);
Int64 ReadInt64(System.Int64);
Decimal ReadDecimal(System.Int64);
Single ReadSingle(System.Int64);
Double ReadDouble(System.Int64);
SByte ReadSByte(System.Int64);
UInt16 ReadUInt16(System.Int64);
UInt32 ReadUInt32(System.Int64);
UInt64 ReadUInt64(System.Int64);
Void Write(System.Int64,System.Boolean);
Void Write(System.Int64,System.Byte);
Void Write(System.Int64,System.Char);
Void Write(System.Int64,System.Int16);
Void Write(System.Int64,System.Int32);
Void Write(System.Int64,System.Int64);
Void Write(System.Int64,System.Decimal);
Void Write(System.Int64,System.Single);
Void Write(System.Int64,System.Double);
Void Write(System.Int64,System.SByte);
Void Write(System.Int64,System.UInt16);
Void Write(System.Int64,System.UInt32);
Void Write(System.Int64,System.UInt64);
}
class UnmanagedMemoryStream : System.IO.Stream{
this (System.Runtime.InteropServices.SafeBuffer,System.Int64,System.Int64);
this (System.Runtime.InteropServices.SafeBuffer,System.Int64,System.Int64,System.IO.FileAccess);
Boolean get_CanRead();
Boolean get_CanSeek();
Boolean get_CanWrite();
Void Flush();
Task FlushAsync(System.Threading.CancellationToken);
Int64 get_Length();
Int64 get_Capacity();
Int64 get_Position();
Void set_Position(System.Int64);
Int32 ReadByte();
Int64 Seek(System.Int64,System.IO.SeekOrigin);
Void SetLength(System.Int64);
Void Write(System.Byte[],System.Int32,System.Int32);
Task WriteAsync(System.Byte[],System.Int32,System.Int32,System.Threading.CancellationToken);
Void WriteByte(System.Byte);
}
}
