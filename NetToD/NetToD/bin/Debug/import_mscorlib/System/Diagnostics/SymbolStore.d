module System.Diagnostics.SymbolStore;
import System;
import System.Reflection;
public:
pragma(assembly,"mscorlib"){
interface ISymbolBinder{
ISymbolReader GetReader(System.Int32,System.String,System.String);
}
interface ISymbolBinder1{
ISymbolReader GetReader(System.IntPtr,System.String,System.String);
}
interface ISymbolDocument{
String get_URL();
Guid get_DocumentType();
Guid get_Language();
Guid get_LanguageVendor();
Guid get_CheckSumAlgorithmId();
Byte[] GetCheckSum();
Int32 FindClosestLine(System.Int32);
Boolean get_HasEmbeddedSource();
Int32 get_SourceLength();
Byte[] GetSourceRange(System.Int32,System.Int32,System.Int32,System.Int32);
}
interface ISymbolDocumentWriter{
Void SetSource(System.Byte[]);
Void SetCheckSum(System.Guid,System.Byte[]);
}
interface ISymbolMethod{
SymbolToken get_Token();
Int32 get_SequencePointCount();
Void GetSequencePoints(System.Int32[],System.Diagnostics.SymbolStore.ISymbolDocument[],System.Int32[],System.Int32[],System.Int32[],System.Int32[]);
ISymbolScope get_RootScope();
ISymbolScope GetScope(System.Int32);
Int32 GetOffset(System.Diagnostics.SymbolStore.ISymbolDocument,System.Int32,System.Int32);
Int32[] GetRanges(System.Diagnostics.SymbolStore.ISymbolDocument,System.Int32,System.Int32);
ISymbolVariable[] GetParameters();
ISymbolNamespace GetNamespace();
Boolean GetSourceStartEnd(System.Diagnostics.SymbolStore.ISymbolDocument[],System.Int32[],System.Int32[]);
}
interface ISymbolNamespace{
String get_Name();
ISymbolNamespace[] GetNamespaces();
ISymbolVariable[] GetVariables();
}
interface ISymbolReader{
ISymbolDocument GetDocument(System.String,System.Guid,System.Guid,System.Guid);
ISymbolDocument[] GetDocuments();
SymbolToken get_UserEntryPoint();
ISymbolMethod GetMethod(System.Diagnostics.SymbolStore.SymbolToken);
ISymbolMethod GetMethod(System.Diagnostics.SymbolStore.SymbolToken,System.Int32);
ISymbolVariable[] GetVariables(System.Diagnostics.SymbolStore.SymbolToken);
ISymbolVariable[] GetGlobalVariables();
ISymbolMethod GetMethodFromDocumentPosition(System.Diagnostics.SymbolStore.ISymbolDocument,System.Int32,System.Int32);
Byte[] GetSymAttribute(System.Diagnostics.SymbolStore.SymbolToken,System.String);
ISymbolNamespace[] GetNamespaces();
}
interface ISymbolScope{
ISymbolMethod get_Method();
ISymbolScope get_Parent();
ISymbolScope[] GetChildren();
Int32 get_StartOffset();
Int32 get_EndOffset();
ISymbolVariable[] GetLocals();
ISymbolNamespace[] GetNamespaces();
}
interface ISymbolVariable{
String get_Name();
Object get_Attributes();
Byte[] GetSignature();
SymAddressKind get_AddressKind();
Int32 get_AddressField1();
Int32 get_AddressField2();
Int32 get_AddressField3();
Int32 get_StartOffset();
Int32 get_EndOffset();
}
interface ISymbolWriter{
Void Initialize(System.IntPtr,System.String,System.Boolean);
ISymbolDocumentWriter DefineDocument(System.String,System.Guid,System.Guid,System.Guid);
Void SetUserEntryPoint(System.Diagnostics.SymbolStore.SymbolToken);
Void OpenMethod(System.Diagnostics.SymbolStore.SymbolToken);
Void CloseMethod();
Void DefineSequencePoints(System.Diagnostics.SymbolStore.ISymbolDocumentWriter,System.Int32[],System.Int32[],System.Int32[],System.Int32[],System.Int32[]);
Int32 OpenScope(System.Int32);
Void CloseScope(System.Int32);
Void SetScopeRange(System.Int32,System.Int32,System.Int32);
Void DefineLocalVariable(System.String,System.Reflection.FieldAttributes,System.Byte[],System.Diagnostics.SymbolStore.SymAddressKind,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32);
Void DefineParameter(System.String,System.Reflection.ParameterAttributes,System.Int32,System.Diagnostics.SymbolStore.SymAddressKind,System.Int32,System.Int32,System.Int32);
Void DefineField(System.Diagnostics.SymbolStore.SymbolToken,System.String,System.Reflection.FieldAttributes,System.Byte[],System.Diagnostics.SymbolStore.SymAddressKind,System.Int32,System.Int32,System.Int32);
Void DefineGlobalVariable(System.String,System.Reflection.FieldAttributes,System.Byte[],System.Diagnostics.SymbolStore.SymAddressKind,System.Int32,System.Int32,System.Int32);
Void Close();
Void SetSymAttribute(System.Diagnostics.SymbolStore.SymbolToken,System.String,System.Byte[]);
Void OpenNamespace(System.String);
Void CloseNamespace();
Void UsingNamespace(System.String);
Void SetMethodSourceRange(System.Diagnostics.SymbolStore.ISymbolDocumentWriter,System.Int32,System.Int32,System.Diagnostics.SymbolStore.ISymbolDocumentWriter,System.Int32,System.Int32);
Void SetUnderlyingWriter(System.IntPtr);
}
class SymAddressKind : System.Enum{
}
class SymDocumentType : System.Object{
this ();
}
class SymLanguageType : System.Object{
this ();
}
class SymLanguageVendor : System.Object{
this ();
}
class SymbolToken : System.ValueType{
this (System.Int32);
Int32 GetToken();
Int32 GetHashCode();
Boolean Equals(System.Object);
Boolean Equals(System.Diagnostics.SymbolStore.SymbolToken);
static Boolean op_Equality(System.Diagnostics.SymbolStore.SymbolToken,System.Diagnostics.SymbolStore.SymbolToken);
static Boolean op_Inequality(System.Diagnostics.SymbolStore.SymbolToken,System.Diagnostics.SymbolStore.SymbolToken);
}
}
