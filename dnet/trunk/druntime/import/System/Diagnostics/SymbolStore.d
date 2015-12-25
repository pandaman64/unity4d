module System.Diagnostics.SymbolStore;
import System;
import System.Reflection;
public:
pragma(assembly,"mscorlib"){
interface ISymbolBinder{
}
interface ISymbolBinder1{
}
interface ISymbolDocument{
}
interface ISymbolDocumentWriter{
}
interface ISymbolMethod{
}
interface ISymbolNamespace{
}
interface ISymbolReader{
}
interface ISymbolScope{
}
interface ISymbolVariable{
}
interface ISymbolWriter{
}
class SymAddressKind : Enum{
}
class SymDocumentType : Object{
}
class SymLanguageType : Object{
}
class SymLanguageVendor : Object{
}
class SymbolToken : ValueType{
}
}
