module System.Runtime.Serialization.Formatters;
import System;
import System.Runtime.Remoting.Messaging;
import System.Reflection;
import System.Runtime.Serialization;
public:
pragma(assembly,"mscorlib"){
class FormatterTypeStyle : Enum{
}
class FormatterAssemblyStyle : Enum{
}
class TypeFilterLevel : Enum{
}
interface ISoapMessage{
}
interface IFieldInfo{
}
class InternalRM : Object{
}
class InternalST : Object{
}
class SoapMessage : Object{
}
class SoapFault : Object{
}
class ServerFault : Object{
}
}
