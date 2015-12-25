module System.Runtime.Remoting.Metadata;
import System;
public:
pragma(assembly,"mscorlib"){
class SoapOption : System.Enum{
}
class XmlFieldOrderOption : System.Enum{
}
class SoapTypeAttribute : System.Runtime.Remoting.Metadata.SoapAttribute{
this ();
SoapOption get_SoapOptions();
Void set_SoapOptions(System.Runtime.Remoting.Metadata.SoapOption);
String get_XmlElementName();
Void set_XmlElementName(System.String);
String get_XmlNamespace();
Void set_XmlNamespace(System.String);
String get_XmlTypeName();
Void set_XmlTypeName(System.String);
String get_XmlTypeNamespace();
Void set_XmlTypeNamespace(System.String);
XmlFieldOrderOption get_XmlFieldOrder();
Void set_XmlFieldOrder(System.Runtime.Remoting.Metadata.XmlFieldOrderOption);
Boolean get_UseAttribute();
Void set_UseAttribute(System.Boolean);
}
class SoapMethodAttribute : System.Runtime.Remoting.Metadata.SoapAttribute{
this ();
String get_SoapAction();
Void set_SoapAction(System.String);
Boolean get_UseAttribute();
Void set_UseAttribute(System.Boolean);
String get_XmlNamespace();
Void set_XmlNamespace(System.String);
String get_ResponseXmlElementName();
Void set_ResponseXmlElementName(System.String);
String get_ResponseXmlNamespace();
Void set_ResponseXmlNamespace(System.String);
String get_ReturnXmlElementName();
Void set_ReturnXmlElementName(System.String);
}
class SoapFieldAttribute : System.Runtime.Remoting.Metadata.SoapAttribute{
this ();
Boolean IsInteropXmlElement();
String get_XmlElementName();
Void set_XmlElementName(System.String);
Int32 get_Order();
Void set_Order(System.Int32);
}
class SoapParameterAttribute : System.Runtime.Remoting.Metadata.SoapAttribute{
this ();
}
class SoapAttribute : System.Attribute{
this ();
String get_XmlNamespace();
Void set_XmlNamespace(System.String);
Boolean get_UseAttribute();
Void set_UseAttribute(System.Boolean);
Boolean get_Embedded();
Void set_Embedded(System.Boolean);
}
}
