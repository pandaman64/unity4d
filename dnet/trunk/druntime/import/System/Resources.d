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
}
interface IResourceWriter{
}
class MissingManifestResourceException : SystemException{
}
class MissingSatelliteAssemblyException : SystemException{
}
class NeutralResourcesLanguageAttribute : Attribute{
}
class ResourceManager : Object{
}
class ResourceReader : Object{
}
class ResourceSet : Object{
}
class ResourceWriter : Object{
}
class SatelliteContractVersionAttribute : Attribute{
}
class UltimateResourceFallbackLocation : Enum{
}
}
