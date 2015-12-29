module System.Diagnostics.SymbolStore;
import System;
import System.Reflection;
public:
pragma(assembly,"mscorlib"){
interface ISymbolBinder{
System.Diagnostics.SymbolStore.ISymbolReader GetReader(System.Int32,System.String,System.String);
}
interface ISymbolBinder1{
System.Diagnostics.SymbolStore.ISymbolReader GetReader(System.IntPtr,System.String,System.String);
}
interface ISymbolDocument{
System.String get_URL();
System.Guid get_DocumentType();
System.Guid get_Language();
System.Guid get_LanguageVendor();
System.Guid get_CheckSumAlgorithmId();
System.Byte[] GetCheckSum();
System.Int32 FindClosestLine(System.Int32);
System.Boolean get_HasEmbeddedSource();
System.Int32 get_SourceLength();
System.Byte[] GetSourceRange(System.Int32,System.Int32,System.Int32,System.Int32);
}
interface ISymbolDocumentWriter{
System.Void SetSource(System.Byte[]);
System.Void SetCheckSum(System.Guid,System.Byte[]);
}
interface ISymbolMethod{
System.Diagnostics.SymbolStore.SymbolToken get_Token();
System.Int32 get_SequencePointCount();
System.Void GetSequencePoints(System.Int32[],System.Diagnostics.SymbolStore.ISymbolDocument[],System.Int32[],System.Int32[],System.Int32[],System.Int32[]);
System.Diagnostics.SymbolStore.ISymbolScope get_RootScope();
System.Diagnostics.SymbolStore.ISymbolScope GetScope(System.Int32);
System.Int32 GetOffset(System.Diagnostics.SymbolStore.ISymbolDocument,System.Int32,System.Int32);
System.Int32[] GetRanges(System.Diagnostics.SymbolStore.ISymbolDocument,System.Int32,System.Int32);
System.Diagnostics.SymbolStore.ISymbolVariable[] GetParameters();
System.Diagnostics.SymbolStore.ISymbolNamespace GetNamespace();
System.Boolean GetSourceStartEnd(System.Diagnostics.SymbolStore.ISymbolDocument[],System.Int32[],System.Int32[]);
}
interface ISymbolNamespace{
System.String get_Name();
System.Diagnostics.SymbolStore.ISymbolNamespace[] GetNamespaces();
System.Diagnostics.SymbolStore.ISymbolVariable[] GetVariables();
}
interface ISymbolReader{
System.Diagnostics.SymbolStore.ISymbolDocument GetDocument(System.String,System.Guid,System.Guid,System.Guid);
System.Diagnostics.SymbolStore.ISymbolDocument[] GetDocuments();
System.Diagnostics.SymbolStore.SymbolToken get_UserEntryPoint();
System.Diagnostics.SymbolStore.ISymbolMethod GetMethod(System.Diagnostics.SymbolStore.SymbolToken);
System.Diagnostics.SymbolStore.ISymbolMethod GetMethod(System.Diagnostics.SymbolStore.SymbolToken,System.Int32);
System.Diagnostics.SymbolStore.ISymbolVariable[] GetVariables(System.Diagnostics.SymbolStore.SymbolToken);
System.Diagnostics.SymbolStore.ISymbolVariable[] GetGlobalVariables();
System.Diagnostics.SymbolStore.ISymbolMethod GetMethodFromDocumentPosition(System.Diagnostics.SymbolStore.ISymbolDocument,System.Int32,System.Int32);
System.Byte[] GetSymAttribute(System.Diagnostics.SymbolStore.SymbolToken,System.String);
System.Diagnostics.SymbolStore.ISymbolNamespace[] GetNamespaces();
}
interface ISymbolScope{
System.Diagnostics.SymbolStore.ISymbolMethod get_Method();
System.Diagnostics.SymbolStore.ISymbolScope get_Parent();
System.Diagnostics.SymbolStore.ISymbolScope[] GetChildren();
System.Int32 get_StartOffset();
System.Int32 get_EndOffset();
System.Diagnostics.SymbolStore.ISymbolVariable[] GetLocals();
System.Diagnostics.SymbolStore.ISymbolNamespace[] GetNamespaces();
}
interface ISymbolVariable{
System.String get_Name();
System.__object get_Attributes();
System.Byte[] GetSignature();
System.Diagnostics.SymbolStore.SymAddressKind get_AddressKind();
System.Int32 get_AddressField1();
System.Int32 get_AddressField2();
System.Int32 get_AddressField3();
System.Int32 get_StartOffset();
System.Int32 get_EndOffset();
}
interface ISymbolWriter{
System.Void Initialize(System.IntPtr,System.String,System.Boolean);
System.Diagnostics.SymbolStore.ISymbolDocumentWriter DefineDocument(System.String,System.Guid,System.Guid,System.Guid);
System.Void SetUserEntryPoint(System.Diagnostics.SymbolStore.SymbolToken);
System.Void OpenMethod(System.Diagnostics.SymbolStore.SymbolToken);
System.Void CloseMethod();
System.Void DefineSequencePoints(System.Diagnostics.SymbolStore.ISymbolDocumentWriter,System.Int32[],System.Int32[],System.Int32[],System.Int32[],System.Int32[]);
System.Int32 OpenScope(System.Int32);
System.Void CloseScope(System.Int32);
System.Void SetScopeRange(System.Int32,System.Int32,System.Int32);
System.Void DefineLocalVariable(System.String,System.Reflection.FieldAttributes,System.Byte[],System.Diagnostics.SymbolStore.SymAddressKind,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32);
System.Void DefineParameter(System.String,System.Reflection.ParameterAttributes,System.Int32,System.Diagnostics.SymbolStore.SymAddressKind,System.Int32,System.Int32,System.Int32);
System.Void DefineField(System.Diagnostics.SymbolStore.SymbolToken,System.String,System.Reflection.FieldAttributes,System.Byte[],System.Diagnostics.SymbolStore.SymAddressKind,System.Int32,System.Int32,System.Int32);
System.Void DefineGlobalVariable(System.String,System.Reflection.FieldAttributes,System.Byte[],System.Diagnostics.SymbolStore.SymAddressKind,System.Int32,System.Int32,System.Int32);
System.Void Close();
System.Void SetSymAttribute(System.Diagnostics.SymbolStore.SymbolToken,System.String,System.Byte[]);
System.Void OpenNamespace(System.String);
System.Void CloseNamespace();
System.Void UsingNamespace(System.String);
System.Void SetMethodSourceRange(System.Diagnostics.SymbolStore.ISymbolDocumentWriter,System.Int32,System.Int32,System.Diagnostics.SymbolStore.ISymbolDocumentWriter,System.Int32,System.Int32);
System.Void SetUnderlyingWriter(System.IntPtr);
}
class SymAddressKind : System.Enum{
}
class SymDocumentType : System.__object{
this ();
}
class SymLanguageType : System.__object{
this ();
}
class SymLanguageVendor : System.__object{
this ();
}
class SymbolToken : System.ValueType{
this (System.Int32);
System.Int32 GetToken();
System.Int32 GetHashCode();
System.Boolean Equals(System.__object);
System.Boolean Equals(System.Diagnostics.SymbolStore.SymbolToken);
static System.Boolean op_Equality(System.Diagnostics.SymbolStore.SymbolToken,System.Diagnostics.SymbolStore.SymbolToken);
static System.Boolean op_Inequality(System.Diagnostics.SymbolStore.SymbolToken,System.Diagnostics.SymbolStore.SymbolToken);
}
}
