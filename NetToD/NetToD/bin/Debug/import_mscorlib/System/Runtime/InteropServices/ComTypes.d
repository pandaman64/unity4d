module System.Runtime.InteropServices.ComTypes;
import System;
public:
pragma(assembly,"mscorlib"){
class BIND_OPTS : System.ValueType{
}
interface IBindCtx{
Void RegisterObjectBound(System.Object);
Void RevokeObjectBound(System.Object);
Void ReleaseBoundObjects();
Void RegisterObjectParam(System.String,System.Object);
Int32 RevokeObjectParam(System.String);
}
interface IConnectionPointContainer{
}
interface IConnectionPoint{
Void Unadvise(System.Int32);
}
interface IEnumMoniker{
Int32 Skip(System.Int32);
Void Reset();
}
class CONNECTDATA : System.ValueType{
}
interface IEnumConnections{
Int32 Skip(System.Int32);
Void Reset();
}
interface IEnumConnectionPoints{
Int32 Skip(System.Int32);
Void Reset();
}
interface IEnumString{
Int32 Skip(System.Int32);
Void Reset();
}
interface IEnumVARIANT{
Int32 Skip(System.Int32);
Int32 Reset();
IEnumVARIANT Clone();
}
class FILETIME : System.ValueType{
}
interface IMoniker{
Int32 IsDirty();
Void Load(System.Runtime.InteropServices.ComTypes.IStream);
Void Save(System.Runtime.InteropServices.ComTypes.IStream,System.Boolean);
Int32 IsEqual(System.Runtime.InteropServices.ComTypes.IMoniker);
Int32 IsRunning(System.Runtime.InteropServices.ComTypes.IBindCtx,System.Runtime.InteropServices.ComTypes.IMoniker,System.Runtime.InteropServices.ComTypes.IMoniker);
}
interface IPersistFile{
Int32 IsDirty();
Void Load(System.String,System.Int32);
Void Save(System.String,System.Boolean);
Void SaveCompleted(System.String);
}
interface IRunningObjectTable{
Int32 Register(System.Int32,System.Object,System.Runtime.InteropServices.ComTypes.IMoniker);
Void Revoke(System.Int32);
Int32 IsRunning(System.Runtime.InteropServices.ComTypes.IMoniker);
}
class STATSTG : System.ValueType{
}
interface IStream{
Void Write(System.Byte[],System.Int32,System.IntPtr);
Void Seek(System.Int64,System.Int32,System.IntPtr);
Void SetSize(System.Int64);
Void CopyTo(System.Runtime.InteropServices.ComTypes.IStream,System.Int64,System.IntPtr,System.IntPtr);
Void Commit(System.Int32);
Void Revert();
Void LockRegion(System.Int64,System.Int64,System.Int32);
Void UnlockRegion(System.Int64,System.Int64,System.Int32);
}
class DESCKIND : System.Enum{
}
class BINDPTR : System.ValueType{
}
interface ITypeComp{
}
class TYPEKIND : System.Enum{
}
class TYPEFLAGS : System.Enum{
}
class IMPLTYPEFLAGS : System.Enum{
}
class TYPEATTR : System.ValueType{
}
class FUNCDESC : System.ValueType{
}
class IDLFLAG : System.Enum{
}
class IDLDESC : System.ValueType{
}
class PARAMFLAG : System.Enum{
}
class PARAMDESC : System.ValueType{
}
class TYPEDESC : System.ValueType{
}
class ELEMDESC : System.ValueType{
static class DESCUNION : System.ValueType{
}
}
class VARKIND : System.Enum{
}
class VARDESC : System.ValueType{
static class DESCUNION : System.ValueType{
}
}
class DISPPARAMS : System.ValueType{
}
class EXCEPINFO : System.ValueType{
}
class FUNCKIND : System.Enum{
}
class INVOKEKIND : System.Enum{
}
class CALLCONV : System.Enum{
}
class FUNCFLAGS : System.Enum{
}
class VARFLAGS : System.Enum{
}
interface ITypeInfo{
Void GetDllEntry(System.Int32,System.Runtime.InteropServices.ComTypes.INVOKEKIND,System.IntPtr,System.IntPtr,System.IntPtr);
Void ReleaseTypeAttr(System.IntPtr);
Void ReleaseFuncDesc(System.IntPtr);
Void ReleaseVarDesc(System.IntPtr);
}
class SYSKIND : System.Enum{
}
class LIBFLAGS : System.Enum{
}
class TYPELIBATTR : System.ValueType{
}
interface ITypeLib{
Int32 GetTypeInfoCount();
Boolean IsName(System.String,System.Int32);
Void ReleaseTLibAttr(System.IntPtr);
}
interface ITypeLib2{
Int32 GetTypeInfoCount();
Boolean IsName(System.String,System.Int32);
Void ReleaseTLibAttr(System.IntPtr);
Void GetAllCustData(System.IntPtr);
}
interface ITypeInfo2{
Void GetDllEntry(System.Int32,System.Runtime.InteropServices.ComTypes.INVOKEKIND,System.IntPtr,System.IntPtr,System.IntPtr);
Void ReleaseTypeAttr(System.IntPtr);
Void ReleaseFuncDesc(System.IntPtr);
Void ReleaseVarDesc(System.IntPtr);
Void GetAllCustData(System.IntPtr);
Void GetAllFuncCustData(System.Int32,System.IntPtr);
Void GetAllParamCustData(System.Int32,System.Int32,System.IntPtr);
Void GetAllVarCustData(System.Int32,System.IntPtr);
Void GetAllImplTypeCustData(System.Int32,System.IntPtr);
}
}
