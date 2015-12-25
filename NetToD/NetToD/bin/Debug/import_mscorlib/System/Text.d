module System.Text;
import System;
import System.Runtime.Serialization;
import System.Collections;
import System.Reflection;
public:
pragma(assembly,"mscorlib"){
class StringBuilder : System.Object{
this ();
this (System.Int32);
this (System.String);
this (System.String,System.Int32);
this (System.String,System.Int32,System.Int32,System.Int32);
this (System.Int32,System.Int32);
Int32 get_Capacity();
Void set_Capacity(System.Int32);
Int32 get_MaxCapacity();
Int32 EnsureCapacity(System.Int32);
String ToString();
String ToString(System.Int32,System.Int32);
StringBuilder Clear();
Int32 get_Length();
Void set_Length(System.Int32);
Char get_Chars(System.Int32);
Void set_Chars(System.Int32,System.Char);
StringBuilder Append(System.Char,System.Int32);
StringBuilder Append(System.Char[],System.Int32,System.Int32);
StringBuilder Append(System.String);
StringBuilder Append(System.String,System.Int32,System.Int32);
StringBuilder AppendLine();
StringBuilder AppendLine(System.String);
Void CopyTo(System.Int32,System.Char[],System.Int32,System.Int32);
StringBuilder Insert(System.Int32,System.String,System.Int32);
StringBuilder Remove(System.Int32,System.Int32);
StringBuilder Append(System.Boolean);
StringBuilder Append(System.SByte);
StringBuilder Append(System.Byte);
StringBuilder Append(System.Char);
StringBuilder Append(System.Int16);
StringBuilder Append(System.Int32);
StringBuilder Append(System.Int64);
StringBuilder Append(System.Single);
StringBuilder Append(System.Double);
StringBuilder Append(System.Decimal);
StringBuilder Append(System.UInt16);
StringBuilder Append(System.UInt32);
StringBuilder Append(System.UInt64);
StringBuilder Append(System.Object);
StringBuilder Append(System.Char[]);
StringBuilder Insert(System.Int32,System.String);
StringBuilder Insert(System.Int32,System.Boolean);
StringBuilder Insert(System.Int32,System.SByte);
StringBuilder Insert(System.Int32,System.Byte);
StringBuilder Insert(System.Int32,System.Int16);
StringBuilder Insert(System.Int32,System.Char);
StringBuilder Insert(System.Int32,System.Char[]);
StringBuilder Insert(System.Int32,System.Char[],System.Int32,System.Int32);
StringBuilder Insert(System.Int32,System.Int32);
StringBuilder Insert(System.Int32,System.Int64);
StringBuilder Insert(System.Int32,System.Single);
StringBuilder Insert(System.Int32,System.Double);
StringBuilder Insert(System.Int32,System.Decimal);
StringBuilder Insert(System.Int32,System.UInt16);
StringBuilder Insert(System.Int32,System.UInt32);
StringBuilder Insert(System.Int32,System.UInt64);
StringBuilder Insert(System.Int32,System.Object);
StringBuilder AppendFormat(System.String,System.Object);
StringBuilder AppendFormat(System.String,System.Object,System.Object);
StringBuilder AppendFormat(System.String,System.Object,System.Object,System.Object);
StringBuilder AppendFormat(System.String,System.Object[]);
StringBuilder AppendFormat(System.IFormatProvider,System.String,System.Object);
StringBuilder AppendFormat(System.IFormatProvider,System.String,System.Object,System.Object);
StringBuilder AppendFormat(System.IFormatProvider,System.String,System.Object,System.Object,System.Object);
StringBuilder AppendFormat(System.IFormatProvider,System.String,System.Object[]);
StringBuilder Replace(System.String,System.String);
Boolean Equals(System.Text.StringBuilder);
StringBuilder Replace(System.String,System.String,System.Int32,System.Int32);
StringBuilder Replace(System.Char,System.Char);
StringBuilder Replace(System.Char,System.Char,System.Int32,System.Int32);
}
class ASCIIEncoding : System.Text.Encoding{
this ();
Int32 GetBytes(System.String,System.Int32,System.Int32,System.Byte[],System.Int32);
String GetString(System.Byte[],System.Int32,System.Int32);
Int32 GetByteCount(System.Char[],System.Int32,System.Int32);
Int32 GetByteCount(System.String);
Int32 GetBytes(System.Char[],System.Int32,System.Int32,System.Byte[],System.Int32);
Int32 GetCharCount(System.Byte[],System.Int32,System.Int32);
Int32 GetChars(System.Byte[],System.Int32,System.Int32,System.Char[],System.Int32);
Int32 GetMaxByteCount(System.Int32);
Int32 GetMaxCharCount(System.Int32);
Boolean get_IsSingleByte();
Decoder GetDecoder();
Encoder GetEncoder();
}
class Decoder : System.Object{
DecoderFallback get_Fallback();
Void set_Fallback(System.Text.DecoderFallback);
DecoderFallbackBuffer get_FallbackBuffer();
Void Reset();
Int32 GetCharCount(System.Byte[],System.Int32,System.Int32);
Int32 GetCharCount(System.Byte[],System.Int32,System.Int32,System.Boolean);
Int32 GetChars(System.Byte[],System.Int32,System.Int32,System.Char[],System.Int32);
Int32 GetChars(System.Byte[],System.Int32,System.Int32,System.Char[],System.Int32,System.Boolean);
}
class DecoderExceptionFallback : System.Text.DecoderFallback{
this ();
DecoderFallbackBuffer CreateFallbackBuffer();
Int32 get_MaxCharCount();
Boolean Equals(System.Object);
Int32 GetHashCode();
}
class DecoderExceptionFallbackBuffer : System.Text.DecoderFallbackBuffer{
this ();
Boolean Fallback(System.Byte[],System.Int32);
Char GetNextChar();
Boolean MovePrevious();
Int32 get_Remaining();
}
class DecoderFallbackException : System.ArgumentException{
this ();
this (System.String);
this (System.String,System.Exception);
this (System.String,System.Byte[],System.Int32);
Byte[] get_BytesUnknown();
Int32 get_Index();
}
class DecoderFallback : System.Object{
static DecoderFallback get_ReplacementFallback();
static DecoderFallback get_ExceptionFallback();
DecoderFallbackBuffer CreateFallbackBuffer();
Int32 get_MaxCharCount();
}
class DecoderFallbackBuffer : System.Object{
Boolean Fallback(System.Byte[],System.Int32);
Char GetNextChar();
Boolean MovePrevious();
Int32 get_Remaining();
Void Reset();
}
class DecoderReplacementFallback : System.Text.DecoderFallback{
this ();
this (System.String);
String get_DefaultString();
DecoderFallbackBuffer CreateFallbackBuffer();
Int32 get_MaxCharCount();
Boolean Equals(System.Object);
Int32 GetHashCode();
}
class DecoderReplacementFallbackBuffer : System.Text.DecoderFallbackBuffer{
this (System.Text.DecoderReplacementFallback);
Boolean Fallback(System.Byte[],System.Int32);
Char GetNextChar();
Boolean MovePrevious();
Int32 get_Remaining();
Void Reset();
}
class Encoder : System.Object{
EncoderFallback get_Fallback();
Void set_Fallback(System.Text.EncoderFallback);
EncoderFallbackBuffer get_FallbackBuffer();
Void Reset();
Int32 GetByteCount(System.Char[],System.Int32,System.Int32,System.Boolean);
Int32 GetBytes(System.Char[],System.Int32,System.Int32,System.Byte[],System.Int32,System.Boolean);
}
class EncoderExceptionFallback : System.Text.EncoderFallback{
this ();
EncoderFallbackBuffer CreateFallbackBuffer();
Int32 get_MaxCharCount();
Boolean Equals(System.Object);
Int32 GetHashCode();
}
class EncoderExceptionFallbackBuffer : System.Text.EncoderFallbackBuffer{
this ();
Boolean Fallback(System.Char,System.Int32);
Boolean Fallback(System.Char,System.Char,System.Int32);
Char GetNextChar();
Boolean MovePrevious();
Int32 get_Remaining();
}
class EncoderFallbackException : System.ArgumentException{
this ();
this (System.String);
this (System.String,System.Exception);
Char get_CharUnknown();
Char get_CharUnknownHigh();
Char get_CharUnknownLow();
Int32 get_Index();
Boolean IsUnknownSurrogate();
}
class EncoderFallback : System.Object{
static EncoderFallback get_ReplacementFallback();
static EncoderFallback get_ExceptionFallback();
EncoderFallbackBuffer CreateFallbackBuffer();
Int32 get_MaxCharCount();
}
class EncoderFallbackBuffer : System.Object{
Boolean Fallback(System.Char,System.Int32);
Boolean Fallback(System.Char,System.Char,System.Int32);
Char GetNextChar();
Boolean MovePrevious();
Int32 get_Remaining();
Void Reset();
}
class EncoderReplacementFallback : System.Text.EncoderFallback{
this ();
this (System.String);
String get_DefaultString();
EncoderFallbackBuffer CreateFallbackBuffer();
Int32 get_MaxCharCount();
Boolean Equals(System.Object);
Int32 GetHashCode();
}
class EncoderReplacementFallbackBuffer : System.Text.EncoderFallbackBuffer{
this (System.Text.EncoderReplacementFallback);
Boolean Fallback(System.Char,System.Int32);
Boolean Fallback(System.Char,System.Char,System.Int32);
Char GetNextChar();
Boolean MovePrevious();
Int32 get_Remaining();
Void Reset();
}
class Encoding : System.Object{
static Byte[] Convert(System.Text.Encoding,System.Text.Encoding,System.Byte[]);
static Byte[] Convert(System.Text.Encoding,System.Text.Encoding,System.Byte[],System.Int32,System.Int32);
static Void RegisterProvider(System.Text.EncodingProvider);
static Encoding GetEncoding(System.Int32);
static Encoding GetEncoding(System.Int32,System.Text.EncoderFallback,System.Text.DecoderFallback);
static Encoding GetEncoding(System.String);
static Encoding GetEncoding(System.String,System.Text.EncoderFallback,System.Text.DecoderFallback);
static EncodingInfo[] GetEncodings();
Byte[] GetPreamble();
String get_BodyName();
String get_EncodingName();
String get_HeaderName();
String get_WebName();
Int32 get_WindowsCodePage();
Boolean get_IsBrowserDisplay();
Boolean get_IsBrowserSave();
Boolean get_IsMailNewsDisplay();
Boolean get_IsMailNewsSave();
Boolean get_IsSingleByte();
EncoderFallback get_EncoderFallback();
Void set_EncoderFallback(System.Text.EncoderFallback);
DecoderFallback get_DecoderFallback();
Void set_DecoderFallback(System.Text.DecoderFallback);
Object Clone();
Boolean get_IsReadOnly();
static Encoding get_ASCII();
Int32 GetByteCount(System.Char[]);
Int32 GetByteCount(System.String);
Int32 GetByteCount(System.Char[],System.Int32,System.Int32);
Byte[] GetBytes(System.Char[]);
Byte[] GetBytes(System.Char[],System.Int32,System.Int32);
Int32 GetBytes(System.Char[],System.Int32,System.Int32,System.Byte[],System.Int32);
Byte[] GetBytes(System.String);
Int32 GetBytes(System.String,System.Int32,System.Int32,System.Byte[],System.Int32);
Int32 GetCharCount(System.Byte[]);
Int32 GetCharCount(System.Byte[],System.Int32,System.Int32);
Char[] GetChars(System.Byte[]);
Char[] GetChars(System.Byte[],System.Int32,System.Int32);
Int32 GetChars(System.Byte[],System.Int32,System.Int32,System.Char[],System.Int32);
Int32 get_CodePage();
Boolean IsAlwaysNormalized();
Boolean IsAlwaysNormalized(System.Text.NormalizationForm);
Decoder GetDecoder();
static Encoding get_Default();
Encoder GetEncoder();
Int32 GetMaxByteCount(System.Int32);
Int32 GetMaxCharCount(System.Int32);
String GetString(System.Byte[]);
String GetString(System.Byte[],System.Int32,System.Int32);
static Encoding get_Unicode();
static Encoding get_BigEndianUnicode();
static Encoding get_UTF7();
static Encoding get_UTF8();
static Encoding get_UTF32();
Boolean Equals(System.Object);
Int32 GetHashCode();
}
class EncodingInfo : System.Object{
Int32 get_CodePage();
String get_Name();
String get_DisplayName();
Encoding GetEncoding();
Boolean Equals(System.Object);
Int32 GetHashCode();
}
class EncodingProvider : System.Object{
this ();
Encoding GetEncoding(System.String);
Encoding GetEncoding(System.Int32);
Encoding GetEncoding(System.String,System.Text.EncoderFallback,System.Text.DecoderFallback);
Encoding GetEncoding(System.Int32,System.Text.EncoderFallback,System.Text.DecoderFallback);
}
class NormalizationForm : System.Enum{
}
class UnicodeEncoding : System.Text.Encoding{
this ();
this (System.Boolean,System.Boolean);
this (System.Boolean,System.Boolean,System.Boolean);
Int32 GetByteCount(System.Char[],System.Int32,System.Int32);
Int32 GetByteCount(System.String);
Int32 GetBytes(System.String,System.Int32,System.Int32,System.Byte[],System.Int32);
Int32 GetBytes(System.Char[],System.Int32,System.Int32,System.Byte[],System.Int32);
Int32 GetCharCount(System.Byte[],System.Int32,System.Int32);
Int32 GetChars(System.Byte[],System.Int32,System.Int32,System.Char[],System.Int32);
String GetString(System.Byte[],System.Int32,System.Int32);
Encoder GetEncoder();
Decoder GetDecoder();
Byte[] GetPreamble();
Int32 GetMaxByteCount(System.Int32);
Int32 GetMaxCharCount(System.Int32);
Boolean Equals(System.Object);
Int32 GetHashCode();
}
class UTF7Encoding : System.Text.Encoding{
this ();
this (System.Boolean);
Boolean Equals(System.Object);
Int32 GetHashCode();
Int32 GetByteCount(System.Char[],System.Int32,System.Int32);
Int32 GetByteCount(System.String);
Int32 GetBytes(System.String,System.Int32,System.Int32,System.Byte[],System.Int32);
Int32 GetBytes(System.Char[],System.Int32,System.Int32,System.Byte[],System.Int32);
Int32 GetCharCount(System.Byte[],System.Int32,System.Int32);
Int32 GetChars(System.Byte[],System.Int32,System.Int32,System.Char[],System.Int32);
String GetString(System.Byte[],System.Int32,System.Int32);
Decoder GetDecoder();
Encoder GetEncoder();
Int32 GetMaxByteCount(System.Int32);
Int32 GetMaxCharCount(System.Int32);
}
class UTF8Encoding : System.Text.Encoding{
this ();
this (System.Boolean);
this (System.Boolean,System.Boolean);
Int32 GetByteCount(System.Char[],System.Int32,System.Int32);
Int32 GetByteCount(System.String);
Int32 GetBytes(System.String,System.Int32,System.Int32,System.Byte[],System.Int32);
Int32 GetBytes(System.Char[],System.Int32,System.Int32,System.Byte[],System.Int32);
Int32 GetCharCount(System.Byte[],System.Int32,System.Int32);
Int32 GetChars(System.Byte[],System.Int32,System.Int32,System.Char[],System.Int32);
String GetString(System.Byte[],System.Int32,System.Int32);
Decoder GetDecoder();
Encoder GetEncoder();
Int32 GetMaxByteCount(System.Int32);
Int32 GetMaxCharCount(System.Int32);
Byte[] GetPreamble();
Boolean Equals(System.Object);
Int32 GetHashCode();
}
class UTF32Encoding : System.Text.Encoding{
this ();
this (System.Boolean,System.Boolean);
this (System.Boolean,System.Boolean,System.Boolean);
Int32 GetByteCount(System.Char[],System.Int32,System.Int32);
Int32 GetByteCount(System.String);
Int32 GetBytes(System.String,System.Int32,System.Int32,System.Byte[],System.Int32);
Int32 GetBytes(System.Char[],System.Int32,System.Int32,System.Byte[],System.Int32);
Int32 GetCharCount(System.Byte[],System.Int32,System.Int32);
Int32 GetChars(System.Byte[],System.Int32,System.Int32,System.Char[],System.Int32);
String GetString(System.Byte[],System.Int32,System.Int32);
Decoder GetDecoder();
Encoder GetEncoder();
Int32 GetMaxByteCount(System.Int32);
Int32 GetMaxCharCount(System.Int32);
Byte[] GetPreamble();
Boolean Equals(System.Object);
Int32 GetHashCode();
}
}
