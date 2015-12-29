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
System.Void Close();
System.Collections.IDictionaryEnumerator GetEnumerator();
}
interface IResourceWriter{
System.Void AddResource(System.String,System.String);
System.Void AddResource(System.String,System.__object);
System.Void AddResource(System.String,System.Byte[]);
System.Void Close();
System.Void Generate();
}
class NeutralResourcesLanguageAttribute : System.Attribute{
this (System.String);
this (System.String,System.Resources.UltimateResourceFallbackLocation);
System.String get_CultureName();
System.Resources.UltimateResourceFallbackLocation get_Location();
}
class ResourceManager : System.__object{
this (System.String,System.Reflection.Assembly);
this (System.String,System.Reflection.Assembly,System.Type);
this (System.Type);
System.String get_BaseName();
System.Boolean get_IgnoreCase();
System.Void set_IgnoreCase(System.Boolean);
System.Type get_ResourceSetType();
System.Void ReleaseAllResources();
static System.Resources.ResourceManager CreateFileBasedResourceManager(System.String,System.String,System.Type);
System.Resources.ResourceSet GetResourceSet(System.Globalization.CultureInfo,System.Boolean,System.Boolean);
System.String GetString(System.String);
System.String GetString(System.String,System.Globalization.CultureInfo);
System.__object GetObject(System.String);
System.__object GetObject(System.String,System.Globalization.CultureInfo);
System.IO.UnmanagedMemoryStream GetStream(System.String);
System.IO.UnmanagedMemoryStream GetStream(System.String,System.Globalization.CultureInfo);
}
class ResourceReader : System.__object{
this (System.String);
this (System.IO.Stream);
System.Void Close();
System.Void Dispose();
System.Collections.IDictionaryEnumerator GetEnumerator();
}
class ResourceSet : System.__object{
this (System.String);
this (System.IO.Stream);
this (System.Resources.IResourceReader);
System.Void Close();
System.Void Dispose();
System.Type GetDefaultReader();
System.Type GetDefaultWriter();
System.Collections.IDictionaryEnumerator GetEnumerator();
System.String GetString(System.String);
System.String GetString(System.String,System.Boolean);
System.__object GetObject(System.String);
System.__object GetObject(System.String,System.Boolean);
}
class ResourceWriter : System.__object{
this (System.String);
this (System.IO.Stream);
System.Void AddResource(System.String,System.String);
System.Void AddResource(System.String,System.__object);
System.Void AddResource(System.String,System.IO.Stream);
System.Void AddResource(System.String,System.IO.Stream,System.Boolean);
System.Void AddResource(System.String,System.Byte[]);
System.Void AddResourceData(System.String,System.String,System.Byte[]);
System.Void Close();
System.Void Dispose();
System.Void Generate();
}
class SatelliteContractVersionAttribute : System.Attribute{
this (System.String);
System.String get_Version();
}
class UltimateResourceFallbackLocation : System.Enum{
}
}
