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
System.Runtime.Remoting.Metadata.SoapOption get_SoapOptions();
System.Void set_SoapOptions(System.Runtime.Remoting.Metadata.SoapOption);
System.String get_XmlElementName();
System.Void set_XmlElementName(System.String);
System.String get_XmlNamespace();
System.Void set_XmlNamespace(System.String);
System.String get_XmlTypeName();
System.Void set_XmlTypeName(System.String);
System.String get_XmlTypeNamespace();
System.Void set_XmlTypeNamespace(System.String);
System.Runtime.Remoting.Metadata.XmlFieldOrderOption get_XmlFieldOrder();
System.Void set_XmlFieldOrder(System.Runtime.Remoting.Metadata.XmlFieldOrderOption);
System.Boolean get_UseAttribute();
System.Void set_UseAttribute(System.Boolean);
}
class SoapMethodAttribute : System.Runtime.Remoting.Metadata.SoapAttribute{
this ();
System.String get_SoapAction();
System.Void set_SoapAction(System.String);
System.Boolean get_UseAttribute();
System.Void set_UseAttribute(System.Boolean);
System.String get_XmlNamespace();
System.Void set_XmlNamespace(System.String);
System.String get_ResponseXmlElementName();
System.Void set_ResponseXmlElementName(System.String);
System.String get_ResponseXmlNamespace();
System.Void set_ResponseXmlNamespace(System.String);
System.String get_ReturnXmlElementName();
System.Void set_ReturnXmlElementName(System.String);
}
class SoapFieldAttribute : System.Runtime.Remoting.Metadata.SoapAttribute{
this ();
System.Boolean IsInteropXmlElement();
System.String get_XmlElementName();
System.Void set_XmlElementName(System.String);
System.Int32 get_Order();
System.Void set_Order(System.Int32);
}
class SoapParameterAttribute : System.Runtime.Remoting.Metadata.SoapAttribute{
this ();
}
class SoapAttribute : System.Attribute{
this ();
System.String get_XmlNamespace();
System.Void set_XmlNamespace(System.String);
System.Boolean get_UseAttribute();
System.Void set_UseAttribute(System.Boolean);
System.Boolean get_Embedded();
System.Void set_Embedded(System.Boolean);
}
}
