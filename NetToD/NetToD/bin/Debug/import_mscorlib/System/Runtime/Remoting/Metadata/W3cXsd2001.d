module System.Runtime.Remoting.Metadata.W3cXsd2001;
import System;
public:
pragma(assembly,"mscorlib"){
interface ISoapXsd{
String GetXsdType();
}
class SoapDateTime : System.Object{
this ();
static String get_XsdType();
static String ToString(System.DateTime);
static DateTime Parse(System.String);
}
class SoapDuration : System.Object{
this ();
static String get_XsdType();
static String ToString(System.TimeSpan);
static TimeSpan Parse(System.String);
}
class SoapTime : System.Object{
this ();
this (System.DateTime);
static String get_XsdType();
String GetXsdType();
DateTime get_Value();
Void set_Value(System.DateTime);
String ToString();
static SoapTime Parse(System.String);
}
class SoapDate : System.Object{
this ();
this (System.DateTime);
this (System.DateTime,System.Int32);
static String get_XsdType();
String GetXsdType();
DateTime get_Value();
Void set_Value(System.DateTime);
Int32 get_Sign();
Void set_Sign(System.Int32);
String ToString();
static SoapDate Parse(System.String);
}
class SoapYearMonth : System.Object{
this ();
this (System.DateTime);
this (System.DateTime,System.Int32);
static String get_XsdType();
String GetXsdType();
DateTime get_Value();
Void set_Value(System.DateTime);
Int32 get_Sign();
Void set_Sign(System.Int32);
String ToString();
static SoapYearMonth Parse(System.String);
}
class SoapYear : System.Object{
this ();
this (System.DateTime);
this (System.DateTime,System.Int32);
static String get_XsdType();
String GetXsdType();
DateTime get_Value();
Void set_Value(System.DateTime);
Int32 get_Sign();
Void set_Sign(System.Int32);
String ToString();
static SoapYear Parse(System.String);
}
class SoapMonthDay : System.Object{
this ();
this (System.DateTime);
static String get_XsdType();
String GetXsdType();
DateTime get_Value();
Void set_Value(System.DateTime);
String ToString();
static SoapMonthDay Parse(System.String);
}
class SoapDay : System.Object{
this ();
this (System.DateTime);
static String get_XsdType();
String GetXsdType();
DateTime get_Value();
Void set_Value(System.DateTime);
String ToString();
static SoapDay Parse(System.String);
}
class SoapMonth : System.Object{
this ();
this (System.DateTime);
static String get_XsdType();
String GetXsdType();
DateTime get_Value();
Void set_Value(System.DateTime);
String ToString();
static SoapMonth Parse(System.String);
}
class SoapHexBinary : System.Object{
this ();
this (System.Byte[]);
static String get_XsdType();
String GetXsdType();
Byte[] get_Value();
Void set_Value(System.Byte[]);
String ToString();
static SoapHexBinary Parse(System.String);
}
class SoapBase64Binary : System.Object{
this ();
this (System.Byte[]);
static String get_XsdType();
String GetXsdType();
Byte[] get_Value();
Void set_Value(System.Byte[]);
String ToString();
static SoapBase64Binary Parse(System.String);
}
class SoapInteger : System.Object{
this ();
this (System.Decimal);
static String get_XsdType();
String GetXsdType();
Decimal get_Value();
Void set_Value(System.Decimal);
String ToString();
static SoapInteger Parse(System.String);
}
class SoapPositiveInteger : System.Object{
this ();
this (System.Decimal);
static String get_XsdType();
String GetXsdType();
Decimal get_Value();
Void set_Value(System.Decimal);
String ToString();
static SoapPositiveInteger Parse(System.String);
}
class SoapNonPositiveInteger : System.Object{
this ();
this (System.Decimal);
static String get_XsdType();
String GetXsdType();
Decimal get_Value();
Void set_Value(System.Decimal);
String ToString();
static SoapNonPositiveInteger Parse(System.String);
}
class SoapNonNegativeInteger : System.Object{
this ();
this (System.Decimal);
static String get_XsdType();
String GetXsdType();
Decimal get_Value();
Void set_Value(System.Decimal);
String ToString();
static SoapNonNegativeInteger Parse(System.String);
}
class SoapNegativeInteger : System.Object{
this ();
this (System.Decimal);
static String get_XsdType();
String GetXsdType();
Decimal get_Value();
Void set_Value(System.Decimal);
String ToString();
static SoapNegativeInteger Parse(System.String);
}
class SoapAnyUri : System.Object{
this ();
this (System.String);
static String get_XsdType();
String GetXsdType();
String get_Value();
Void set_Value(System.String);
String ToString();
static SoapAnyUri Parse(System.String);
}
class SoapQName : System.Object{
this ();
this (System.String);
this (System.String,System.String);
this (System.String,System.String,System.String);
static String get_XsdType();
String GetXsdType();
String get_Name();
Void set_Name(System.String);
String get_Namespace();
Void set_Namespace(System.String);
String get_Key();
Void set_Key(System.String);
String ToString();
static SoapQName Parse(System.String);
}
class SoapNotation : System.Object{
this ();
this (System.String);
static String get_XsdType();
String GetXsdType();
String get_Value();
Void set_Value(System.String);
String ToString();
static SoapNotation Parse(System.String);
}
class SoapNormalizedString : System.Object{
this ();
this (System.String);
static String get_XsdType();
String GetXsdType();
String get_Value();
Void set_Value(System.String);
String ToString();
static SoapNormalizedString Parse(System.String);
}
class SoapToken : System.Object{
this ();
this (System.String);
static String get_XsdType();
String GetXsdType();
String get_Value();
Void set_Value(System.String);
String ToString();
static SoapToken Parse(System.String);
}
class SoapLanguage : System.Object{
this ();
this (System.String);
static String get_XsdType();
String GetXsdType();
String get_Value();
Void set_Value(System.String);
String ToString();
static SoapLanguage Parse(System.String);
}
class SoapName : System.Object{
this ();
this (System.String);
static String get_XsdType();
String GetXsdType();
String get_Value();
Void set_Value(System.String);
String ToString();
static SoapName Parse(System.String);
}
class SoapIdrefs : System.Object{
this ();
this (System.String);
static String get_XsdType();
String GetXsdType();
String get_Value();
Void set_Value(System.String);
String ToString();
static SoapIdrefs Parse(System.String);
}
class SoapEntities : System.Object{
this ();
this (System.String);
static String get_XsdType();
String GetXsdType();
String get_Value();
Void set_Value(System.String);
String ToString();
static SoapEntities Parse(System.String);
}
class SoapNmtoken : System.Object{
this ();
this (System.String);
static String get_XsdType();
String GetXsdType();
String get_Value();
Void set_Value(System.String);
String ToString();
static SoapNmtoken Parse(System.String);
}
class SoapNmtokens : System.Object{
this ();
this (System.String);
static String get_XsdType();
String GetXsdType();
String get_Value();
Void set_Value(System.String);
String ToString();
static SoapNmtokens Parse(System.String);
}
class SoapNcName : System.Object{
this ();
this (System.String);
static String get_XsdType();
String GetXsdType();
String get_Value();
Void set_Value(System.String);
String ToString();
static SoapNcName Parse(System.String);
}
class SoapId : System.Object{
this ();
this (System.String);
static String get_XsdType();
String GetXsdType();
String get_Value();
Void set_Value(System.String);
String ToString();
static SoapId Parse(System.String);
}
class SoapIdref : System.Object{
this ();
this (System.String);
static String get_XsdType();
String GetXsdType();
String get_Value();
Void set_Value(System.String);
String ToString();
static SoapIdref Parse(System.String);
}
class SoapEntity : System.Object{
this ();
this (System.String);
static String get_XsdType();
String GetXsdType();
String get_Value();
Void set_Value(System.String);
String ToString();
static SoapEntity Parse(System.String);
}
}
