module System.Runtime.Serialization.Formatters;
import System;
import System.Runtime.Remoting.Messaging;
import System.Reflection;
import System.Runtime.Serialization;
public:
pragma(assembly,"mscorlib"){
class FormatterTypeStyle : System.Enum{
Int32 value__;
}
class FormatterAssemblyStyle : System.Enum{
Int32 value__;
}
class TypeFilterLevel : System.Enum{
Int32 value__;
}
interface ISoapMessage{
System.String[] get_ParamNames();
System.Void set_ParamNames(System.String[]);
System.__object[] get_ParamValues();
System.Void set_ParamValues(System.__object[]);
System.Type[] get_ParamTypes();
System.Void set_ParamTypes(System.Type[]);
System.String get_MethodName();
System.Void set_MethodName(System.String);
System.String get_XmlNameSpace();
System.Void set_XmlNameSpace(System.String);
System.Runtime.Remoting.Messaging.Header[] get_Headers();
System.Void set_Headers(System.Runtime.Remoting.Messaging.Header[]);
}
interface IFieldInfo{
System.String[] get_FieldNames();
System.Void set_FieldNames(System.String[]);
System.Type[] get_FieldTypes();
System.Void set_FieldTypes(System.Type[]);
}
class InternalRM : System.__object{
this ();
static System.Void InfoSoap(System.__object[]);
static System.Boolean SoapCheckEnabled();
}
class InternalST : System.__object{
static System.Void InfoSoap(System.__object[]);
static System.Boolean SoapCheckEnabled();
static System.Void Soap(System.__object[]);
static System.Void SoapAssert(System.Boolean,System.String);
static System.Void SerializationSetValue(System.Reflection.FieldInfo,System.__object,System.__object);
static System.Reflection.Assembly LoadAssemblyFromString(System.String);
}
class SoapMessage : System.__object{
this ();
System.String[] get_ParamNames();
System.Void set_ParamNames(System.String[]);
System.__object[] get_ParamValues();
System.Void set_ParamValues(System.__object[]);
System.Type[] get_ParamTypes();
System.Void set_ParamTypes(System.Type[]);
System.String get_MethodName();
System.Void set_MethodName(System.String);
System.String get_XmlNameSpace();
System.Void set_XmlNameSpace(System.String);
System.Runtime.Remoting.Messaging.Header[] get_Headers();
System.Void set_Headers(System.Runtime.Remoting.Messaging.Header[]);
}
class SoapFault : System.__object{
this ();
this (System.String,System.String,System.String,System.Runtime.Serialization.Formatters.ServerFault);
System.Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
System.String get_FaultCode();
System.Void set_FaultCode(System.String);
System.String get_FaultString();
System.Void set_FaultString(System.String);
System.String get_FaultActor();
System.Void set_FaultActor(System.String);
System.__object get_Detail();
System.Void set_Detail(System.__object);
}
class ServerFault : System.__object{
this (System.String,System.String,System.String);
System.String get_ExceptionType();
System.Void set_ExceptionType(System.String);
System.String get_ExceptionMessage();
System.Void set_ExceptionMessage(System.String);
System.String get_StackTrace();
System.Void set_StackTrace(System.String);
}
}
