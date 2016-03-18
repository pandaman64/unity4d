module System.Text;
import System;
import System.Runtime.Serialization;
import System.Collections;
import System.Reflection;
public:
pragma(assembly,"mscorlib"){
class StringBuilder : System.__object{
this ();
this (System.Int32);
this (System.String);
this (System.String,System.Int32);
this (System.String,System.Int32,System.Int32,System.Int32);
this (System.Int32,System.Int32);
System.Int32 get_Capacity();
System.Void set_Capacity(System.Int32);
System.Int32 get_MaxCapacity();
System.Int32 EnsureCapacity(System.Int32);
System.String ToString();
System.String ToString(System.Int32,System.Int32);
System.Text.StringBuilder Clear();
System.Int32 get_Length();
System.Void set_Length(System.Int32);
System.Char get_Chars(System.Int32);
System.Void set_Chars(System.Int32,System.Char);
System.Text.StringBuilder Append(System.Char,System.Int32);
System.Text.StringBuilder Append(System.Char[],System.Int32,System.Int32);
System.Text.StringBuilder Append(System.String);
System.Text.StringBuilder Append(System.String,System.Int32,System.Int32);
System.Text.StringBuilder AppendLine();
System.Text.StringBuilder AppendLine(System.String);
System.Void CopyTo(System.Int32,System.Char[],System.Int32,System.Int32);
System.Text.StringBuilder Insert(System.Int32,System.String,System.Int32);
System.Text.StringBuilder Remove(System.Int32,System.Int32);
System.Text.StringBuilder Append(System.Boolean);
System.Text.StringBuilder Append(System.SByte);
System.Text.StringBuilder Append(System.Byte);
System.Text.StringBuilder Append(System.Char);
System.Text.StringBuilder Append(System.Int16);
System.Text.StringBuilder Append(System.Int32);
System.Text.StringBuilder Append(System.Int64);
System.Text.StringBuilder Append(System.Single);
System.Text.StringBuilder Append(System.Double);
System.Text.StringBuilder Append(System.Decimal);
System.Text.StringBuilder Append(System.UInt16);
System.Text.StringBuilder Append(System.UInt32);
System.Text.StringBuilder Append(System.UInt64);
System.Text.StringBuilder Append(System.__object);
System.Text.StringBuilder Append(System.Char[]);
System.Text.StringBuilder Insert(System.Int32,System.String);
System.Text.StringBuilder Insert(System.Int32,System.Boolean);
System.Text.StringBuilder Insert(System.Int32,System.SByte);
System.Text.StringBuilder Insert(System.Int32,System.Byte);
System.Text.StringBuilder Insert(System.Int32,System.Int16);
System.Text.StringBuilder Insert(System.Int32,System.Char);
System.Text.StringBuilder Insert(System.Int32,System.Char[]);
System.Text.StringBuilder Insert(System.Int32,System.Char[],System.Int32,System.Int32);
System.Text.StringBuilder Insert(System.Int32,System.Int32);
System.Text.StringBuilder Insert(System.Int32,System.Int64);
System.Text.StringBuilder Insert(System.Int32,System.Single);
System.Text.StringBuilder Insert(System.Int32,System.Double);
System.Text.StringBuilder Insert(System.Int32,System.Decimal);
System.Text.StringBuilder Insert(System.Int32,System.UInt16);
System.Text.StringBuilder Insert(System.Int32,System.UInt32);
System.Text.StringBuilder Insert(System.Int32,System.UInt64);
System.Text.StringBuilder Insert(System.Int32,System.__object);
System.Text.StringBuilder AppendFormat(System.String,System.__object);
System.Text.StringBuilder AppendFormat(System.String,System.__object,System.__object);
System.Text.StringBuilder AppendFormat(System.String,System.__object,System.__object,System.__object);
System.Text.StringBuilder AppendFormat(System.String,System.__object[]);
System.Text.StringBuilder AppendFormat(System.IFormatProvider,System.String,System.__object);
System.Text.StringBuilder AppendFormat(System.IFormatProvider,System.String,System.__object,System.__object);
System.Text.StringBuilder AppendFormat(System.IFormatProvider,System.String,System.__object,System.__object,System.__object);
System.Text.StringBuilder AppendFormat(System.IFormatProvider,System.String,System.__object[]);
System.Text.StringBuilder Replace(System.String,System.String);
System.Boolean Equals(System.Text.StringBuilder);
System.Text.StringBuilder Replace(System.String,System.String,System.Int32,System.Int32);
System.Text.StringBuilder Replace(System.Char,System.Char);
System.Text.StringBuilder Replace(System.Char,System.Char,System.Int32,System.Int32);
}
class ASCIIEncoding : System.Text.Encoding{
this ();
System.Int32 GetBytes(System.String,System.Int32,System.Int32,System.Byte[],System.Int32);
System.String GetString(System.Byte[],System.Int32,System.Int32);
System.Int32 GetByteCount(System.Char[],System.Int32,System.Int32);
System.Int32 GetByteCount(System.String);
System.Int32 GetBytes(System.Char[],System.Int32,System.Int32,System.Byte[],System.Int32);
System.Int32 GetCharCount(System.Byte[],System.Int32,System.Int32);
System.Int32 GetChars(System.Byte[],System.Int32,System.Int32,System.Char[],System.Int32);
System.Int32 GetMaxByteCount(System.Int32);
System.Int32 GetMaxCharCount(System.Int32);
System.Boolean get_IsSingleByte();
System.Text.Decoder GetDecoder();
System.Text.Encoder GetEncoder();
}
class Decoder : System.__object{
System.Text.DecoderFallback get_Fallback();
System.Void set_Fallback(System.Text.DecoderFallback);
System.Text.DecoderFallbackBuffer get_FallbackBuffer();
System.Void Reset();
System.Int32 GetCharCount(System.Byte[],System.Int32,System.Int32);
System.Int32 GetCharCount(System.Byte[],System.Int32,System.Int32,System.Boolean);
System.Int32 GetChars(System.Byte[],System.Int32,System.Int32,System.Char[],System.Int32);
System.Int32 GetChars(System.Byte[],System.Int32,System.Int32,System.Char[],System.Int32,System.Boolean);
}
class DecoderExceptionFallback : System.Text.DecoderFallback{
this ();
System.Text.DecoderFallbackBuffer CreateFallbackBuffer();
System.Int32 get_MaxCharCount();
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
}
class DecoderExceptionFallbackBuffer : System.Text.DecoderFallbackBuffer{
this ();
System.Boolean Fallback(System.Byte[],System.Int32);
System.Char GetNextChar();
System.Boolean MovePrevious();
System.Int32 get_Remaining();
}
class DecoderFallback : System.__object{
static System.Text.DecoderFallback get_ReplacementFallback();
static System.Text.DecoderFallback get_ExceptionFallback();
System.Text.DecoderFallbackBuffer CreateFallbackBuffer();
System.Int32 get_MaxCharCount();
}
class DecoderFallbackBuffer : System.__object{
System.Boolean Fallback(System.Byte[],System.Int32);
System.Char GetNextChar();
System.Boolean MovePrevious();
System.Int32 get_Remaining();
System.Void Reset();
}
class DecoderReplacementFallback : System.Text.DecoderFallback{
this ();
this (System.String);
System.String get_DefaultString();
System.Text.DecoderFallbackBuffer CreateFallbackBuffer();
System.Int32 get_MaxCharCount();
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
}
class DecoderReplacementFallbackBuffer : System.Text.DecoderFallbackBuffer{
this (System.Text.DecoderReplacementFallback);
System.Boolean Fallback(System.Byte[],System.Int32);
System.Char GetNextChar();
System.Boolean MovePrevious();
System.Int32 get_Remaining();
System.Void Reset();
}
class Encoder : System.__object{
System.Text.EncoderFallback get_Fallback();
System.Void set_Fallback(System.Text.EncoderFallback);
System.Text.EncoderFallbackBuffer get_FallbackBuffer();
System.Void Reset();
System.Int32 GetByteCount(System.Char[],System.Int32,System.Int32,System.Boolean);
System.Int32 GetBytes(System.Char[],System.Int32,System.Int32,System.Byte[],System.Int32,System.Boolean);
}
class EncoderExceptionFallback : System.Text.EncoderFallback{
this ();
System.Text.EncoderFallbackBuffer CreateFallbackBuffer();
System.Int32 get_MaxCharCount();
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
}
class EncoderExceptionFallbackBuffer : System.Text.EncoderFallbackBuffer{
this ();
System.Boolean Fallback(System.Char,System.Int32);
System.Boolean Fallback(System.Char,System.Char,System.Int32);
System.Char GetNextChar();
System.Boolean MovePrevious();
System.Int32 get_Remaining();
}
class EncoderFallback : System.__object{
static System.Text.EncoderFallback get_ReplacementFallback();
static System.Text.EncoderFallback get_ExceptionFallback();
System.Text.EncoderFallbackBuffer CreateFallbackBuffer();
System.Int32 get_MaxCharCount();
}
class EncoderFallbackBuffer : System.__object{
System.Boolean Fallback(System.Char,System.Int32);
System.Boolean Fallback(System.Char,System.Char,System.Int32);
System.Char GetNextChar();
System.Boolean MovePrevious();
System.Int32 get_Remaining();
System.Void Reset();
}
class EncoderReplacementFallback : System.Text.EncoderFallback{
this ();
this (System.String);
System.String get_DefaultString();
System.Text.EncoderFallbackBuffer CreateFallbackBuffer();
System.Int32 get_MaxCharCount();
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
}
class EncoderReplacementFallbackBuffer : System.Text.EncoderFallbackBuffer{
this (System.Text.EncoderReplacementFallback);
System.Boolean Fallback(System.Char,System.Int32);
System.Boolean Fallback(System.Char,System.Char,System.Int32);
System.Char GetNextChar();
System.Boolean MovePrevious();
System.Int32 get_Remaining();
System.Void Reset();
}
class Encoding : System.__object{
static System.Byte[] Convert(System.Text.Encoding,System.Text.Encoding,System.Byte[]);
static System.Byte[] Convert(System.Text.Encoding,System.Text.Encoding,System.Byte[],System.Int32,System.Int32);
static System.Void RegisterProvider(System.Text.EncodingProvider);
static System.Text.Encoding GetEncoding(System.Int32);
static System.Text.Encoding GetEncoding(System.Int32,System.Text.EncoderFallback,System.Text.DecoderFallback);
static System.Text.Encoding GetEncoding(System.String);
static System.Text.Encoding GetEncoding(System.String,System.Text.EncoderFallback,System.Text.DecoderFallback);
static System.Text.EncodingInfo[] GetEncodings();
System.Byte[] GetPreamble();
System.String get_BodyName();
System.String get_EncodingName();
System.String get_HeaderName();
System.String get_WebName();
System.Int32 get_WindowsCodePage();
System.Boolean get_IsBrowserDisplay();
System.Boolean get_IsBrowserSave();
System.Boolean get_IsMailNewsDisplay();
System.Boolean get_IsMailNewsSave();
System.Boolean get_IsSingleByte();
System.Text.EncoderFallback get_EncoderFallback();
System.Void set_EncoderFallback(System.Text.EncoderFallback);
System.Text.DecoderFallback get_DecoderFallback();
System.Void set_DecoderFallback(System.Text.DecoderFallback);
System.__object Clone();
System.Boolean get_IsReadOnly();
static System.Text.Encoding get_ASCII();
System.Int32 GetByteCount(System.Char[]);
System.Int32 GetByteCount(System.String);
System.Int32 GetByteCount(System.Char[],System.Int32,System.Int32);
System.Byte[] GetBytes(System.Char[]);
System.Byte[] GetBytes(System.Char[],System.Int32,System.Int32);
System.Int32 GetBytes(System.Char[],System.Int32,System.Int32,System.Byte[],System.Int32);
System.Byte[] GetBytes(System.String);
System.Int32 GetBytes(System.String,System.Int32,System.Int32,System.Byte[],System.Int32);
System.Int32 GetCharCount(System.Byte[]);
System.Int32 GetCharCount(System.Byte[],System.Int32,System.Int32);
System.Char[] GetChars(System.Byte[]);
System.Char[] GetChars(System.Byte[],System.Int32,System.Int32);
System.Int32 GetChars(System.Byte[],System.Int32,System.Int32,System.Char[],System.Int32);
System.Int32 get_CodePage();
System.Boolean IsAlwaysNormalized();
System.Boolean IsAlwaysNormalized(System.Text.NormalizationForm);
System.Text.Decoder GetDecoder();
static System.Text.Encoding get_Default();
System.Text.Encoder GetEncoder();
System.Int32 GetMaxByteCount(System.Int32);
System.Int32 GetMaxCharCount(System.Int32);
System.String GetString(System.Byte[]);
System.String GetString(System.Byte[],System.Int32,System.Int32);
static System.Text.Encoding get_Unicode();
static System.Text.Encoding get_BigEndianUnicode();
static System.Text.Encoding get_UTF7();
static System.Text.Encoding get_UTF8();
static System.Text.Encoding get_UTF32();
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
}
class EncodingInfo : System.__object{
System.Int32 get_CodePage();
System.String get_Name();
System.String get_DisplayName();
System.Text.Encoding GetEncoding();
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
}
class EncodingProvider : System.__object{
this ();
System.Text.Encoding GetEncoding(System.String);
System.Text.Encoding GetEncoding(System.Int32);
System.Text.Encoding GetEncoding(System.String,System.Text.EncoderFallback,System.Text.DecoderFallback);
System.Text.Encoding GetEncoding(System.Int32,System.Text.EncoderFallback,System.Text.DecoderFallback);
}
class NormalizationForm : System.Enum{
Int32 value__;
}
class UnicodeEncoding : System.Text.Encoding{
this ();
this (System.Boolean,System.Boolean);
this (System.Boolean,System.Boolean,System.Boolean);
System.Int32 GetByteCount(System.Char[],System.Int32,System.Int32);
System.Int32 GetByteCount(System.String);
System.Int32 GetBytes(System.String,System.Int32,System.Int32,System.Byte[],System.Int32);
System.Int32 GetBytes(System.Char[],System.Int32,System.Int32,System.Byte[],System.Int32);
System.Int32 GetCharCount(System.Byte[],System.Int32,System.Int32);
System.Int32 GetChars(System.Byte[],System.Int32,System.Int32,System.Char[],System.Int32);
System.String GetString(System.Byte[],System.Int32,System.Int32);
System.Text.Encoder GetEncoder();
System.Text.Decoder GetDecoder();
System.Byte[] GetPreamble();
System.Int32 GetMaxByteCount(System.Int32);
System.Int32 GetMaxCharCount(System.Int32);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
}
class UTF7Encoding : System.Text.Encoding{
this ();
this (System.Boolean);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.Int32 GetByteCount(System.Char[],System.Int32,System.Int32);
System.Int32 GetByteCount(System.String);
System.Int32 GetBytes(System.String,System.Int32,System.Int32,System.Byte[],System.Int32);
System.Int32 GetBytes(System.Char[],System.Int32,System.Int32,System.Byte[],System.Int32);
System.Int32 GetCharCount(System.Byte[],System.Int32,System.Int32);
System.Int32 GetChars(System.Byte[],System.Int32,System.Int32,System.Char[],System.Int32);
System.String GetString(System.Byte[],System.Int32,System.Int32);
System.Text.Decoder GetDecoder();
System.Text.Encoder GetEncoder();
System.Int32 GetMaxByteCount(System.Int32);
System.Int32 GetMaxCharCount(System.Int32);
}
class UTF8Encoding : System.Text.Encoding{
this ();
this (System.Boolean);
this (System.Boolean,System.Boolean);
System.Int32 GetByteCount(System.Char[],System.Int32,System.Int32);
System.Int32 GetByteCount(System.String);
System.Int32 GetBytes(System.String,System.Int32,System.Int32,System.Byte[],System.Int32);
System.Int32 GetBytes(System.Char[],System.Int32,System.Int32,System.Byte[],System.Int32);
System.Int32 GetCharCount(System.Byte[],System.Int32,System.Int32);
System.Int32 GetChars(System.Byte[],System.Int32,System.Int32,System.Char[],System.Int32);
System.String GetString(System.Byte[],System.Int32,System.Int32);
System.Text.Decoder GetDecoder();
System.Text.Encoder GetEncoder();
System.Int32 GetMaxByteCount(System.Int32);
System.Int32 GetMaxCharCount(System.Int32);
System.Byte[] GetPreamble();
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
}
class UTF32Encoding : System.Text.Encoding{
this ();
this (System.Boolean,System.Boolean);
this (System.Boolean,System.Boolean,System.Boolean);
System.Int32 GetByteCount(System.Char[],System.Int32,System.Int32);
System.Int32 GetByteCount(System.String);
System.Int32 GetBytes(System.String,System.Int32,System.Int32,System.Byte[],System.Int32);
System.Int32 GetBytes(System.Char[],System.Int32,System.Int32,System.Byte[],System.Int32);
System.Int32 GetCharCount(System.Byte[],System.Int32,System.Int32);
System.Int32 GetChars(System.Byte[],System.Int32,System.Int32,System.Char[],System.Int32);
System.String GetString(System.Byte[],System.Int32,System.Int32);
System.Text.Decoder GetDecoder();
System.Text.Encoder GetEncoder();
System.Int32 GetMaxByteCount(System.Int32);
System.Int32 GetMaxCharCount(System.Int32);
System.Byte[] GetPreamble();
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
}
}
