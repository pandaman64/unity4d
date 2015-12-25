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
import System.Security.Policy;
public:
pragma(assembly,"mscorlib"){
class IsolatedStorageScope : Enum{
}
class IsolatedStorage : MarshalByRefObject{
}
class IsolatedStorageFileStream : FileStream{
}
class IsolatedStorageException : Exception{
}
class IsolatedStorageSecurityOptions : Enum{
}
class IsolatedStorageSecurityState : SecurityState{
}
interface INormalizeForIsolatedStorage{
}
class IsolatedStorageFile : IsolatedStorage{
}
}
