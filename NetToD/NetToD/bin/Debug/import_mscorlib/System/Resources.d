module System.Resources;
import System;
import System.Collections;
import System.Runtime.Serialization;
import System.Reflection;
import System.Globalization;
import System.IO;
public:
pragma(assembly,"mscorlib"){
interface IResourceReader{
Void Close();
IDictionaryEnumerator GetEnumerator();
}
interface IResourceWriter{
Void AddResource(System.String,System.String);
Void AddResource(System.String,System.Object);
Void AddResource(System.String,System.Byte[]);
Void Close();
Void Generate();
}
class MissingManifestResourceException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class MissingSatelliteAssemblyException : System.SystemException{
this ();
this (System.String);
this (System.String,System.String);
this (System.String,System.Exception);
String get_CultureName();
}
class NeutralResourcesLanguageAttribute : System.Attribute{
this (System.String);
this (System.String,System.Resources.UltimateResourceFallbackLocation);
String get_CultureName();
UltimateResourceFallbackLocation get_Location();
}
class ResourceManager : System.Object{
this (System.String,System.Reflection.Assembly);
this (System.String,System.Reflection.Assembly,System.Type);
this (System.Type);
String get_BaseName();
Boolean get_IgnoreCase();
Void set_IgnoreCase(System.Boolean);
Type get_ResourceSetType();
Void ReleaseAllResources();
static ResourceManager CreateFileBasedResourceManager(System.String,System.String,System.Type);
ResourceSet GetResourceSet(System.Globalization.CultureInfo,System.Boolean,System.Boolean);
String GetString(System.String);
String GetString(System.String,System.Globalization.CultureInfo);
Object GetObject(System.String);
Object GetObject(System.String,System.Globalization.CultureInfo);
UnmanagedMemoryStream GetStream(System.String);
UnmanagedMemoryStream GetStream(System.String,System.Globalization.CultureInfo);
}
class ResourceReader : System.Object{
this (System.String);
this (System.IO.Stream);
Void Close();
Void Dispose();
IDictionaryEnumerator GetEnumerator();
}
class ResourceSet : System.Object{
this (System.String);
this (System.IO.Stream);
this (System.Resources.IResourceReader);
Void Close();
Void Dispose();
Type GetDefaultReader();
Type GetDefaultWriter();
IDictionaryEnumerator GetEnumerator();
String GetString(System.String);
String GetString(System.String,System.Boolean);
Object GetObject(System.String);
Object GetObject(System.String,System.Boolean);
}
class ResourceWriter : System.Object{
this (System.String);
this (System.IO.Stream);
Void AddResource(System.String,System.String);
Void AddResource(System.String,System.Object);
Void AddResource(System.String,System.IO.Stream);
Void AddResource(System.String,System.IO.Stream,System.Boolean);
Void AddResource(System.String,System.Byte[]);
Void AddResourceData(System.String,System.String,System.Byte[]);
Void Close();
Void Dispose();
Void Generate();
}
class SatelliteContractVersionAttribute : System.Attribute{
this (System.String);
String get_Version();
}
class UltimateResourceFallbackLocation : System.Enum{
}
}
