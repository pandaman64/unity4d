module System.Runtime.Serialization.Formatters;
import System;
import System.Runtime.Remoting.Messaging;
import System.Reflection;
import System.Runtime.Serialization;
public:
pragma(assembly,"mscorlib"){
class FormatterTypeStyle : System.Enum{
}
class FormatterAssemblyStyle : System.Enum{
}
class TypeFilterLevel : System.Enum{
}
interface ISoapMessage{
String[] get_ParamNames();
Void set_ParamNames(System.String[]);
Object[] get_ParamValues();
Void set_ParamValues(System.Object[]);
Type[] get_ParamTypes();
Void set_ParamTypes(System.Type[]);
String get_MethodName();
Void set_MethodName(System.String);
String get_XmlNameSpace();
Void set_XmlNameSpace(System.String);
Header[] get_Headers();
Void set_Headers(System.Runtime.Remoting.Messaging.Header[]);
}
interface IFieldInfo{
String[] get_FieldNames();
Void set_FieldNames(System.String[]);
Type[] get_FieldTypes();
Void set_FieldTypes(System.Type[]);
}
class InternalRM : System.Object{
this ();
static Void InfoSoap(System.Object[]);
static Boolean SoapCheckEnabled();
}
class InternalST : System.Object{
static Void InfoSoap(System.Object[]);
static Boolean SoapCheckEnabled();
static Void Soap(System.Object[]);
static Void SoapAssert(System.Boolean,System.String);
static Void SerializationSetValue(System.Reflection.FieldInfo,System.Object,System.Object);
static Assembly LoadAssemblyFromString(System.String);
}
class SoapMessage : System.Object{
this ();
String[] get_ParamNames();
Void set_ParamNames(System.String[]);
Object[] get_ParamValues();
Void set_ParamValues(System.Object[]);
Type[] get_ParamTypes();
Void set_ParamTypes(System.Type[]);
String get_MethodName();
Void set_MethodName(System.String);
String get_XmlNameSpace();
Void set_XmlNameSpace(System.String);
Header[] get_Headers();
Void set_Headers(System.Runtime.Remoting.Messaging.Header[]);
}
class SoapFault : System.Object{
this ();
this (System.String,System.String,System.String,System.Runtime.Serialization.Formatters.ServerFault);
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
String get_FaultCode();
Void set_FaultCode(System.String);
String get_FaultString();
Void set_FaultString(System.String);
String get_FaultActor();
Void set_FaultActor(System.String);
Object get_Detail();
Void set_Detail(System.Object);
}
class ServerFault : System.Object{
this (System.String,System.String,System.String);
String get_ExceptionType();
Void set_ExceptionType(System.String);
String get_ExceptionMessage();
Void set_ExceptionMessage(System.String);
String get_StackTrace();
Void set_StackTrace(System.String);
}
}
