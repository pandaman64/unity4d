module System.Runtime.InteropServices.ComTypes;
import System;
public:
pragma(assembly,"mscorlib"){
class BIND_OPTS : System.ValueType{
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
System.Void GetDllEntry(System.Int32,System.Runtime.InteropServices.ComTypes.INVOKEKIND,System.IntPtr,System.IntPtr,System.IntPtr);
System.Void ReleaseTypeAttr(System.IntPtr);
System.Void ReleaseFuncDesc(System.IntPtr);
System.Void ReleaseVarDesc(System.IntPtr);
}
class SYSKIND : System.Enum{
}
class LIBFLAGS : System.Enum{
}
class TYPELIBATTR : System.ValueType{
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
