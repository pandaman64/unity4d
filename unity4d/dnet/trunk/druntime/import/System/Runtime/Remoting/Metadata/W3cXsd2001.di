module System.Runtime.Remoting.Metadata.W3cXsd2001;
import System;
public:
pragma(assembly,"mscorlib"){
interface ISoapXsd{
System.String GetXsdType();
}
class SoapDateTime : System.__object{
this ();
static System.String get_XsdType();
static System.String ToString(System.DateTime);
static System.DateTime Parse(System.String);
}
class SoapDuration : System.__object{
this ();
static System.String get_XsdType();
static System.String ToString(System.TimeSpan);
static System.TimeSpan Parse(System.String);
}
class SoapTime : System.__object{
this ();
this (System.DateTime);
static System.String get_XsdType();
System.String GetXsdType();
System.DateTime get_Value();
System.Void set_Value(System.DateTime);
System.String ToString();
static System.Runtime.Remoting.Metadata.W3cXsd2001.SoapTime Parse(System.String);
}
class SoapDate : System.__object{
this ();
this (System.DateTime);
this (System.DateTime,System.Int32);
static System.String get_XsdType();
System.String GetXsdType();
System.DateTime get_Value();
System.Void set_Value(System.DateTime);
System.Int32 get_Sign();
System.Void set_Sign(System.Int32);
System.String ToString();
static System.Runtime.Remoting.Metadata.W3cXsd2001.SoapDate Parse(System.String);
}
class SoapYearMonth : System.__object{
this ();
this (System.DateTime);
this (System.DateTime,System.Int32);
static System.String get_XsdType();
System.String GetXsdType();
System.DateTime get_Value();
System.Void set_Value(System.DateTime);
System.Int32 get_Sign();
System.Void set_Sign(System.Int32);
System.String ToString();
static System.Runtime.Remoting.Metadata.W3cXsd2001.SoapYearMonth Parse(System.String);
}
class SoapYear : System.__object{
this ();
this (System.DateTime);
this (System.DateTime,System.Int32);
static System.String get_XsdType();
System.String GetXsdType();
System.DateTime get_Value();
System.Void set_Value(System.DateTime);
System.Int32 get_Sign();
System.Void set_Sign(System.Int32);
System.String ToString();
static System.Runtime.Remoting.Metadata.W3cXsd2001.SoapYear Parse(System.String);
}
class SoapMonthDay : System.__object{
this ();
this (System.DateTime);
static System.String get_XsdType();
System.String GetXsdType();
System.DateTime get_Value();
System.Void set_Value(System.DateTime);
System.String ToString();
static System.Runtime.Remoting.Metadata.W3cXsd2001.SoapMonthDay Parse(System.String);
}
class SoapDay : System.__object{
this ();
this (System.DateTime);
static System.String get_XsdType();
System.String GetXsdType();
System.DateTime get_Value();
System.Void set_Value(System.DateTime);
System.String ToString();
static System.Runtime.Remoting.Metadata.W3cXsd2001.SoapDay Parse(System.String);
}
class SoapMonth : System.__object{
this ();
this (System.DateTime);
static System.String get_XsdType();
System.String GetXsdType();
System.DateTime get_Value();
System.Void set_Value(System.DateTime);
System.String ToString();
static System.Runtime.Remoting.Metadata.W3cXsd2001.SoapMonth Parse(System.String);
}
class SoapHexBinary : System.__object{
this ();
this (System.Byte[]);
static System.String get_XsdType();
System.String GetXsdType();
System.Byte[] get_Value();
System.Void set_Value(System.Byte[]);
System.String ToString();
static System.Runtime.Remoting.Metadata.W3cXsd2001.SoapHexBinary Parse(System.String);
}
class SoapBase64Binary : System.__object{
this ();
this (System.Byte[]);
static System.String get_XsdType();
System.String GetXsdType();
System.Byte[] get_Value();
System.Void set_Value(System.Byte[]);
System.String ToString();
static System.Runtime.Remoting.Metadata.W3cXsd2001.SoapBase64Binary Parse(System.String);
}
class SoapInteger : System.__object{
this ();
this (System.Decimal);
static System.String get_XsdType();
System.String GetXsdType();
System.Decimal get_Value();
System.Void set_Value(System.Decimal);
System.String ToString();
static System.Runtime.Remoting.Metadata.W3cXsd2001.SoapInteger Parse(System.String);
}
class SoapPositiveInteger : System.__object{
this ();
this (System.Decimal);
static System.String get_XsdType();
System.String GetXsdType();
System.Decimal get_Value();
System.Void set_Value(System.Decimal);
System.String ToString();
static System.Runtime.Remoting.Metadata.W3cXsd2001.SoapPositiveInteger Parse(System.String);
}
class SoapNonPositiveInteger : System.__object{
this ();
this (System.Decimal);
static System.String get_XsdType();
System.String GetXsdType();
System.Decimal get_Value();
System.Void set_Value(System.Decimal);
System.String ToString();
static System.Runtime.Remoting.Metadata.W3cXsd2001.SoapNonPositiveInteger Parse(System.String);
}
class SoapNonNegativeInteger : System.__object{
this ();
this (System.Decimal);
static System.String get_XsdType();
System.String GetXsdType();
System.Decimal get_Value();
System.Void set_Value(System.Decimal);
System.String ToString();
static System.Runtime.Remoting.Metadata.W3cXsd2001.SoapNonNegativeInteger Parse(System.String);
}
class SoapNegativeInteger : System.__object{
this ();
this (System.Decimal);
static System.String get_XsdType();
System.String GetXsdType();
System.Decimal get_Value();
System.Void set_Value(System.Decimal);
System.String ToString();
static System.Runtime.Remoting.Metadata.W3cXsd2001.SoapNegativeInteger Parse(System.String);
}
class SoapAnyUri : System.__object{
this ();
this (System.String);
static System.String get_XsdType();
System.String GetXsdType();
System.String get_Value();
System.Void set_Value(System.String);
System.String ToString();
static System.Runtime.Remoting.Metadata.W3cXsd2001.SoapAnyUri Parse(System.String);
}
class SoapQName : System.__object{
this ();
this (System.String);
this (System.String,System.String);
this (System.String,System.String,System.String);
static System.String get_XsdType();
System.String GetXsdType();
System.String get_Name();
System.Void set_Name(System.String);
System.String get_Namespace();
System.Void set_Namespace(System.String);
System.String get_Key();
System.Void set_Key(System.String);
System.String ToString();
static System.Runtime.Remoting.Metadata.W3cXsd2001.SoapQName Parse(System.String);
}
class SoapNotation : System.__object{
this ();
this (System.String);
static System.String get_XsdType();
System.String GetXsdType();
System.String get_Value();
System.Void set_Value(System.String);
System.String ToString();
static System.Runtime.Remoting.Metadata.W3cXsd2001.SoapNotation Parse(System.String);
}
class SoapNormalizedString : System.__object{
this ();
this (System.String);
static System.String get_XsdType();
System.String GetXsdType();
System.String get_Value();
System.Void set_Value(System.String);
System.String ToString();
static System.Runtime.Remoting.Metadata.W3cXsd2001.SoapNormalizedString Parse(System.String);
}
class SoapToken : System.__object{
this ();
this (System.String);
static System.String get_XsdType();
System.String GetXsdType();
System.String get_Value();
System.Void set_Value(System.String);
System.String ToString();
static System.Runtime.Remoting.Metadata.W3cXsd2001.SoapToken Parse(System.String);
}
class SoapLanguage : System.__object{
this ();
this (System.String);
static System.String get_XsdType();
System.String GetXsdType();
System.String get_Value();
System.Void set_Value(System.String);
System.String ToString();
static System.Runtime.Remoting.Metadata.W3cXsd2001.SoapLanguage Parse(System.String);
}
class SoapName : System.__object{
this ();
this (System.String);
static System.String get_XsdType();
System.String GetXsdType();
System.String get_Value();
System.Void set_Value(System.String);
System.String ToString();
static System.Runtime.Remoting.Metadata.W3cXsd2001.SoapName Parse(System.String);
}
class SoapIdrefs : System.__object{
this ();
this (System.String);
static System.String get_XsdType();
System.String GetXsdType();
System.String get_Value();
System.Void set_Value(System.String);
System.String ToString();
static System.Runtime.Remoting.Metadata.W3cXsd2001.SoapIdrefs Parse(System.String);
}
class SoapEntities : System.__object{
this ();
this (System.String);
static System.String get_XsdType();
System.String GetXsdType();
System.String get_Value();
System.Void set_Value(System.String);
System.String ToString();
static System.Runtime.Remoting.Metadata.W3cXsd2001.SoapEntities Parse(System.String);
}
class SoapNmtoken : System.__object{
this ();
this (System.String);
static System.String get_XsdType();
System.String GetXsdType();
System.String get_Value();
System.Void set_Value(System.String);
System.String ToString();
static System.Runtime.Remoting.Metadata.W3cXsd2001.SoapNmtoken Parse(System.String);
}
class SoapNmtokens : System.__object{
this ();
this (System.String);
static System.String get_XsdType();
System.String GetXsdType();
System.String get_Value();
System.Void set_Value(System.String);
System.String ToString();
static System.Runtime.Remoting.Metadata.W3cXsd2001.SoapNmtokens Parse(System.String);
}
class SoapNcName : System.__object{
this ();
this (System.String);
static System.String get_XsdType();
System.String GetXsdType();
System.String get_Value();
System.Void set_Value(System.String);
System.String ToString();
static System.Runtime.Remoting.Metadata.W3cXsd2001.SoapNcName Parse(System.String);
}
class SoapId : System.__object{
this ();
this (System.String);
static System.String get_XsdType();
System.String GetXsdType();
System.String get_Value();
System.Void set_Value(System.String);
System.String ToString();
static System.Runtime.Remoting.Metadata.W3cXsd2001.SoapId Parse(System.String);
}
class SoapIdref : System.__object{
this ();
this (System.String);
static System.String get_XsdType();
System.String GetXsdType();
System.String get_Value();
System.Void set_Value(System.String);
System.String ToString();
static System.Runtime.Remoting.Metadata.W3cXsd2001.SoapIdref Parse(System.String);
}
class SoapEntity : System.__object{
this ();
this (System.String);
static System.String get_XsdType();
System.String GetXsdType();
System.String get_Value();
System.Void set_Value(System.String);
System.String ToString();
static System.Runtime.Remoting.Metadata.W3cXsd2001.SoapEntity Parse(System.String);
}
}
