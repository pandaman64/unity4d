module System.Runtime.InteropServices.ComTypes;
import System;
public:
pragma(assembly,"mscorlib"){
class BIND_OPTS : System.ValueType{
Int32 cbStruct;
Int32 grfFlags;
Int32 grfMode;
Int32 dwTickCountDeadline;
}
interface IBindCtx{
System.Void RegisterObjectBound(System.__object);
System.Void RevokeObjectBound(System.__object);
System.Void ReleaseBoundObjects();
System.Void RegisterObjectParam(System.String,System.__object);
System.Int32 RevokeObjectParam(System.String);
}
interface IConnectionPointContainer{
}
interface IConnectionPoint{
System.Void Unadvise(System.Int32);
}
interface IEnumMoniker{
System.Int32 Skip(System.Int32);
System.Void Reset();
}
class CONNECTDATA : System.ValueType{
__object pUnk;
Int32 dwCookie;
}
interface IEnumConnections{
System.Int32 Skip(System.Int32);
System.Void Reset();
}
interface IEnumConnectionPoints{
System.Int32 Skip(System.Int32);
System.Void Reset();
}
interface IEnumString{
System.Int32 Skip(System.Int32);
System.Void Reset();
}
interface IEnumVARIANT{
System.Int32 Skip(System.Int32);
System.Int32 Reset();
System.Runtime.InteropServices.ComTypes.IEnumVARIANT Clone();
}
class FILETIME : System.ValueType{
Int32 dwLowDateTime;
Int32 dwHighDateTime;
}
interface IMoniker{
System.Int32 IsDirty();
System.Void Load(System.Runtime.InteropServices.ComTypes.IStream);
System.Void Save(System.Runtime.InteropServices.ComTypes.IStream,System.Boolean);
System.Int32 IsEqual(System.Runtime.InteropServices.ComTypes.IMoniker);
System.Int32 IsRunning(System.Runtime.InteropServices.ComTypes.IBindCtx,System.Runtime.InteropServices.ComTypes.IMoniker,System.Runtime.InteropServices.ComTypes.IMoniker);
}
interface IPersistFile{
System.Int32 IsDirty();
System.Void Load(System.String,System.Int32);
System.Void Save(System.String,System.Boolean);
System.Void SaveCompleted(System.String);
}
interface IRunningObjectTable{
System.Int32 Register(System.Int32,System.__object,System.Runtime.InteropServices.ComTypes.IMoniker);
System.Void Revoke(System.Int32);
System.Int32 IsRunning(System.Runtime.InteropServices.ComTypes.IMoniker);
}
class STATSTG : System.ValueType{
String pwcsName;
Int32 type;
Int64 cbSize;
FILETIME mtime;
FILETIME ctime;
FILETIME atime;
Int32 grfMode;
Int32 grfLocksSupported;
Guid clsid;
Int32 grfStateBits;
Int32 reserved;
}
interface IStream{
System.Void Write(System.Byte[],System.Int32,System.IntPtr);
System.Void Seek(System.Int64,System.Int32,System.IntPtr);
System.Void SetSize(System.Int64);
System.Void CopyTo(System.Runtime.InteropServices.ComTypes.IStream,System.Int64,System.IntPtr,System.IntPtr);
System.Void Commit(System.Int32);
System.Void Revert();
System.Void LockRegion(System.Int64,System.Int64,System.Int32);
System.Void UnlockRegion(System.Int64,System.Int64,System.Int32);
}
class DESCKIND : System.Enum{
Int32 value__;
}
class BINDPTR : System.ValueType{
IntPtr lpfuncdesc;
IntPtr lpvardesc;
IntPtr lptcomp;
}
interface ITypeComp{
}
class TYPEKIND : System.Enum{
Int32 value__;
}
class TYPEFLAGS : System.Enum{
Int16 value__;
}
class IMPLTYPEFLAGS : System.Enum{
Int32 value__;
}
class TYPEATTR : System.ValueType{
Guid guid;
Int32 lcid;
Int32 dwReserved;
Int32 memidConstructor;
Int32 memidDestructor;
IntPtr lpstrSchema;
Int32 cbSizeInstance;
TYPEKIND typekind;
Int16 cFuncs;
Int16 cVars;
Int16 cImplTypes;
Int16 cbSizeVft;
Int16 cbAlignment;
TYPEFLAGS wTypeFlags;
Int16 wMajorVerNum;
Int16 wMinorVerNum;
TYPEDESC tdescAlias;
IDLDESC idldescType;
}
class FUNCDESC : System.ValueType{
Int32 memid;
IntPtr lprgscode;
IntPtr lprgelemdescParam;
FUNCKIND funckind;
INVOKEKIND invkind;
CALLCONV callconv;
Int16 cParams;
Int16 cParamsOpt;
Int16 oVft;
Int16 cScodes;
ELEMDESC elemdescFunc;
Int16 wFuncFlags;
}
class IDLFLAG : System.Enum{
Int16 value__;
}
class IDLDESC : System.ValueType{
IntPtr dwReserved;
IDLFLAG wIDLFlags;
}
class PARAMFLAG : System.Enum{
Int16 value__;
}
class PARAMDESC : System.ValueType{
IntPtr lpVarValue;
PARAMFLAG wParamFlags;
}
class TYPEDESC : System.ValueType{
IntPtr lpValue;
Int16 vt;
}
class ELEMDESC : System.ValueType{
static class DESCUNION : System.ValueType{
IDLDESC idldesc;
PARAMDESC paramdesc;
}
TYPEDESC tdesc;
DESCUNION desc;
}
class VARKIND : System.Enum{
Int32 value__;
}
class VARDESC : System.ValueType{
static class DESCUNION : System.ValueType{
Int32 oInst;
IntPtr lpvarValue;
}
Int32 memid;
String lpstrSchema;
DESCUNION desc;
ELEMDESC elemdescVar;
Int16 wVarFlags;
VARKIND varkind;
}
class DISPPARAMS : System.ValueType{
IntPtr rgvarg;
IntPtr rgdispidNamedArgs;
Int32 cArgs;
Int32 cNamedArgs;
}
class EXCEPINFO : System.ValueType{
Int16 wCode;
Int16 wReserved;
String bstrSource;
String bstrDescription;
String bstrHelpFile;
Int32 dwHelpContext;
IntPtr pvReserved;
IntPtr pfnDeferredFillIn;
Int32 scode;
}
class FUNCKIND : System.Enum{
Int32 value__;
}
class INVOKEKIND : System.Enum{
Int32 value__;
}
class CALLCONV : System.Enum{
Int32 value__;
}
class FUNCFLAGS : System.Enum{
Int16 value__;
}
class VARFLAGS : System.Enum{
Int16 value__;
}
interface ITypeInfo{
System.Void GetDllEntry(System.Int32,System.Runtime.InteropServices.ComTypes.INVOKEKIND,System.IntPtr,System.IntPtr,System.IntPtr);
System.Void ReleaseTypeAttr(System.IntPtr);
System.Void ReleaseFuncDesc(System.IntPtr);
System.Void ReleaseVarDesc(System.IntPtr);
}
class SYSKIND : System.Enum{
Int32 value__;
}
class LIBFLAGS : System.Enum{
Int16 value__;
}
class TYPELIBATTR : System.ValueType{
Guid guid;
Int32 lcid;
SYSKIND syskind;
Int16 wMajorVerNum;
Int16 wMinorVerNum;
LIBFLAGS wLibFlags;
}
interface ITypeLib{
System.Int32 GetTypeInfoCount();
System.Boolean IsName(System.String,System.Int32);
System.Void ReleaseTLibAttr(System.IntPtr);
}
interface ITypeLib2{
System.Int32 GetTypeInfoCount();
System.Boolean IsName(System.String,System.Int32);
System.Void ReleaseTLibAttr(System.IntPtr);
System.Void GetAllCustData(System.IntPtr);
}
interface ITypeInfo2{
System.Void GetDllEntry(System.Int32,System.Runtime.InteropServices.ComTypes.INVOKEKIND,System.IntPtr,System.IntPtr,System.IntPtr);
System.Void ReleaseTypeAttr(System.IntPtr);
System.Void ReleaseFuncDesc(System.IntPtr);
System.Void ReleaseVarDesc(System.IntPtr);
System.Void GetAllCustData(System.IntPtr);
System.Void GetAllFuncCustData(System.Int32,System.IntPtr);
System.Void GetAllParamCustData(System.Int32,System.Int32,System.IntPtr);
System.Void GetAllVarCustData(System.Int32,System.IntPtr);
System.Void GetAllImplTypeCustData(System.Int32,System.IntPtr);
}
}
