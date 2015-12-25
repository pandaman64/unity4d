module System;
import System.Runtime.Serialization;
import System.Collections;
import System.Reflection;
import System.Text;
import System.Globalization;
import System.Security.Policy;
import System.Configuration.Assemblies;
import System.Runtime.Remoting;
import System.Reflection.Emit;
import System.Security;
import System.Security.Principal;
import System.Runtime.Hosting;
import System.Threading;
import System.IO;
import System.Runtime.InteropServices;
public:
pragma(assembly,"mscorlib"){
class AggregateException : System.Exception{
this ();
this (System.String);
this (System.String,System.Exception);
this (System.Exception[]);
this (System.String,System.Exception[]);
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
Exception GetBaseException();
AggregateException Flatten();
String ToString();
}
class AppContext : System.Object{
static String get_BaseDirectory();
static Void SetSwitch(System.String,System.Boolean);
}
class Object{
this ();
String ToString();
Boolean Equals(System.Object);
static Boolean Equals(System.Object,System.Object);
static Boolean ReferenceEquals(System.Object,System.Object);
Int32 GetHashCode();
Type GetType();
}
interface ICloneable{
Object Clone();
}
class Action : System.MulticastDelegate{
this (System.Object,System.IntPtr);
Void Invoke();
IAsyncResult BeginInvoke(System.AsyncCallback,System.Object);
Void EndInvoke(System.IAsyncResult);
}
class Array : System.Object{
static Array CreateInstance(System.Type,System.Int32);
static Array CreateInstance(System.Type,System.Int32,System.Int32);
static Array CreateInstance(System.Type,System.Int32,System.Int32,System.Int32);
static Array CreateInstance(System.Type,System.Int32[]);
static Array CreateInstance(System.Type,System.Int64[]);
static Array CreateInstance(System.Type,System.Int32[],System.Int32[]);
static Void Copy(System.Array,System.Array,System.Int32);
static Void Copy(System.Array,System.Int32,System.Array,System.Int32,System.Int32);
static Void ConstrainedCopy(System.Array,System.Int32,System.Array,System.Int32,System.Int32);
static Void Copy(System.Array,System.Array,System.Int64);
static Void Copy(System.Array,System.Int64,System.Array,System.Int64,System.Int64);
static Void Clear(System.Array,System.Int32,System.Int32);
Object GetValue(System.Int32[]);
Object GetValue(System.Int32);
Object GetValue(System.Int32,System.Int32);
Object GetValue(System.Int32,System.Int32,System.Int32);
Object GetValue(System.Int64);
Object GetValue(System.Int64,System.Int64);
Object GetValue(System.Int64,System.Int64,System.Int64);
Object GetValue(System.Int64[]);
Void SetValue(System.Object,System.Int32);
Void SetValue(System.Object,System.Int32,System.Int32);
Void SetValue(System.Object,System.Int32,System.Int32,System.Int32);
Void SetValue(System.Object,System.Int32[]);
Void SetValue(System.Object,System.Int64);
Void SetValue(System.Object,System.Int64,System.Int64);
Void SetValue(System.Object,System.Int64,System.Int64,System.Int64);
Void SetValue(System.Object,System.Int64[]);
Int32 get_Length();
Int64 get_LongLength();
Int32 GetLength(System.Int32);
Int64 GetLongLength(System.Int32);
Int32 get_Rank();
Int32 GetUpperBound(System.Int32);
Int32 GetLowerBound(System.Int32);
Object get_SyncRoot();
Boolean get_IsReadOnly();
Boolean get_IsFixedSize();
Boolean get_IsSynchronized();
Object Clone();
static Int32 BinarySearch(System.Array,System.Object);
static Int32 BinarySearch(System.Array,System.Int32,System.Int32,System.Object);
static Int32 BinarySearch(System.Array,System.Object,System.Collections.IComparer);
static Int32 BinarySearch(System.Array,System.Int32,System.Int32,System.Object,System.Collections.IComparer);
Void CopyTo(System.Array,System.Int32);
Void CopyTo(System.Array,System.Int64);
IEnumerator GetEnumerator();
static Int32 IndexOf(System.Array,System.Object);
static Int32 IndexOf(System.Array,System.Object,System.Int32);
static Int32 IndexOf(System.Array,System.Object,System.Int32,System.Int32);
static Int32 LastIndexOf(System.Array,System.Object);
static Int32 LastIndexOf(System.Array,System.Object,System.Int32);
static Int32 LastIndexOf(System.Array,System.Object,System.Int32,System.Int32);
static Void Reverse(System.Array);
static Void Reverse(System.Array,System.Int32,System.Int32);
static Void Sort(System.Array);
static Void Sort(System.Array,System.Array);
static Void Sort(System.Array,System.Int32,System.Int32);
static Void Sort(System.Array,System.Array,System.Int32,System.Int32);
static Void Sort(System.Array,System.Collections.IComparer);
static Void Sort(System.Array,System.Array,System.Collections.IComparer);
static Void Sort(System.Array,System.Int32,System.Int32,System.Collections.IComparer);
static Void Sort(System.Array,System.Array,System.Int32,System.Int32,System.Collections.IComparer);
Void Initialize();
}
interface IComparable{
Int32 CompareTo(System.Object);
}
class Tuple : System.Object{
}
class String : System.Object{
this (System.Char[],System.Int32,System.Int32);
this (System.Char[]);
this (System.Char,System.Int32);
static String Join(System.String,System.String[]);
static String Join(System.String,System.Object[]);
static String Join(System.String,System.String[],System.Int32,System.Int32);
Boolean Equals(System.Object);
Boolean Equals(System.String);
Boolean Equals(System.String,System.StringComparison);
static Boolean Equals(System.String,System.String);
static Boolean Equals(System.String,System.String,System.StringComparison);
static Boolean op_Equality(System.String,System.String);
static Boolean op_Inequality(System.String,System.String);
Char get_Chars(System.Int32);
Void CopyTo(System.Int32,System.Char[],System.Int32,System.Int32);
Char[] ToCharArray();
Char[] ToCharArray(System.Int32,System.Int32);
static Boolean IsNullOrEmpty(System.String);
static Boolean IsNullOrWhiteSpace(System.String);
Int32 GetHashCode();
Int32 get_Length();
String[] Split(System.Char[]);
String[] Split(System.Char[],System.Int32);
String[] Split(System.Char[],System.StringSplitOptions);
String[] Split(System.Char[],System.Int32,System.StringSplitOptions);
String[] Split(System.String[],System.StringSplitOptions);
String[] Split(System.String[],System.Int32,System.StringSplitOptions);
String Substring(System.Int32);
String Substring(System.Int32,System.Int32);
String Trim(System.Char[]);
String TrimStart(System.Char[]);
String TrimEnd(System.Char[]);
Boolean IsNormalized();
Boolean IsNormalized(System.Text.NormalizationForm);
String Normalize();
String Normalize(System.Text.NormalizationForm);
static Int32 Compare(System.String,System.String);
static Int32 Compare(System.String,System.String,System.Boolean);
static Int32 Compare(System.String,System.String,System.StringComparison);
static Int32 Compare(System.String,System.String,System.Globalization.CultureInfo,System.Globalization.CompareOptions);
static Int32 Compare(System.String,System.String,System.Boolean,System.Globalization.CultureInfo);
static Int32 Compare(System.String,System.Int32,System.String,System.Int32,System.Int32);
static Int32 Compare(System.String,System.Int32,System.String,System.Int32,System.Int32,System.Boolean);
static Int32 Compare(System.String,System.Int32,System.String,System.Int32,System.Int32,System.Boolean,System.Globalization.CultureInfo);
static Int32 Compare(System.String,System.Int32,System.String,System.Int32,System.Int32,System.Globalization.CultureInfo,System.Globalization.CompareOptions);
static Int32 Compare(System.String,System.Int32,System.String,System.Int32,System.Int32,System.StringComparison);
Int32 CompareTo(System.Object);
Int32 CompareTo(System.String);
static Int32 CompareOrdinal(System.String,System.String);
static Int32 CompareOrdinal(System.String,System.Int32,System.String,System.Int32,System.Int32);
Boolean Contains(System.String);
Boolean EndsWith(System.String);
Boolean EndsWith(System.String,System.StringComparison);
Boolean EndsWith(System.String,System.Boolean,System.Globalization.CultureInfo);
Int32 IndexOf(System.Char);
Int32 IndexOf(System.Char,System.Int32);
Int32 IndexOf(System.Char,System.Int32,System.Int32);
Int32 IndexOfAny(System.Char[]);
Int32 IndexOfAny(System.Char[],System.Int32);
Int32 IndexOfAny(System.Char[],System.Int32,System.Int32);
Int32 IndexOf(System.String);
Int32 IndexOf(System.String,System.Int32);
Int32 IndexOf(System.String,System.Int32,System.Int32);
Int32 IndexOf(System.String,System.StringComparison);
Int32 IndexOf(System.String,System.Int32,System.StringComparison);
Int32 IndexOf(System.String,System.Int32,System.Int32,System.StringComparison);
Int32 LastIndexOf(System.Char);
Int32 LastIndexOf(System.Char,System.Int32);
Int32 LastIndexOf(System.Char,System.Int32,System.Int32);
Int32 LastIndexOfAny(System.Char[]);
Int32 LastIndexOfAny(System.Char[],System.Int32);
Int32 LastIndexOfAny(System.Char[],System.Int32,System.Int32);
Int32 LastIndexOf(System.String);
Int32 LastIndexOf(System.String,System.Int32);
Int32 LastIndexOf(System.String,System.Int32,System.Int32);
Int32 LastIndexOf(System.String,System.StringComparison);
Int32 LastIndexOf(System.String,System.Int32,System.StringComparison);
Int32 LastIndexOf(System.String,System.Int32,System.Int32,System.StringComparison);
String PadLeft(System.Int32);
String PadLeft(System.Int32,System.Char);
String PadRight(System.Int32);
String PadRight(System.Int32,System.Char);
Boolean StartsWith(System.String);
Boolean StartsWith(System.String,System.StringComparison);
Boolean StartsWith(System.String,System.Boolean,System.Globalization.CultureInfo);
String ToLower();
String ToLower(System.Globalization.CultureInfo);
String ToLowerInvariant();
String ToUpper();
String ToUpper(System.Globalization.CultureInfo);
String ToUpperInvariant();
String ToString();
String ToString(System.IFormatProvider);
Object Clone();
String Trim();
String Insert(System.Int32,System.String);
String Replace(System.Char,System.Char);
String Replace(System.String,System.String);
String Remove(System.Int32,System.Int32);
String Remove(System.Int32);
static String Format(System.String,System.Object);
static String Format(System.String,System.Object,System.Object);
static String Format(System.String,System.Object,System.Object,System.Object);
static String Format(System.String,System.Object[]);
static String Format(System.IFormatProvider,System.String,System.Object);
static String Format(System.IFormatProvider,System.String,System.Object,System.Object);
static String Format(System.IFormatProvider,System.String,System.Object,System.Object,System.Object);
static String Format(System.IFormatProvider,System.String,System.Object[]);
static String Copy(System.String);
static String Concat(System.Object);
static String Concat(System.Object,System.Object);
static String Concat(System.Object,System.Object,System.Object);
static String Concat(System.Object,System.Object,System.Object,System.Object);
static String Concat(System.Object[]);
static String Concat(System.String,System.String);
static String Concat(System.String,System.String,System.String);
static String Concat(System.String,System.String,System.String,System.String);
static String Concat(System.String[]);
static String Intern(System.String);
static String IsInterned(System.String);
TypeCode GetTypeCode();
CharEnumerator GetEnumerator();
}
class StringSplitOptions : System.Enum{
}
class StringComparer : System.Object{
static StringComparer get_InvariantCulture();
static StringComparer get_InvariantCultureIgnoreCase();
static StringComparer get_CurrentCulture();
static StringComparer get_CurrentCultureIgnoreCase();
static StringComparer get_Ordinal();
static StringComparer get_OrdinalIgnoreCase();
static StringComparer Create(System.Globalization.CultureInfo,System.Boolean);
Int32 Compare(System.Object,System.Object);
Boolean Equals(System.Object,System.Object);
Int32 GetHashCode(System.Object);
Int32 Compare(System.String,System.String);
Boolean Equals(System.String,System.String);
Int32 GetHashCode(System.String);
}
class StringComparison : System.Enum{
}
class Exception : System.Object{
this ();
this (System.String);
this (System.String,System.Exception);
String get_Message();
IDictionary get_Data();
Exception GetBaseException();
Exception get_InnerException();
MethodBase get_TargetSite();
String get_StackTrace();
String get_HelpLink();
Void set_HelpLink(System.String);
String get_Source();
Void set_Source(System.String);
String ToString();
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
Int32 get_HResult();
Type GetType();
}
class DateTime : System.ValueType{
this (System.Int64);
this (System.Int64,System.DateTimeKind);
this (System.Int32,System.Int32,System.Int32);
this (System.Int32,System.Int32,System.Int32,System.Globalization.Calendar);
this (System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32);
this (System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.DateTimeKind);
this (System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Globalization.Calendar);
this (System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32);
this (System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.DateTimeKind);
this (System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Globalization.Calendar);
this (System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Globalization.Calendar,System.DateTimeKind);
DateTime Add(System.TimeSpan);
DateTime AddDays(System.Double);
DateTime AddHours(System.Double);
DateTime AddMilliseconds(System.Double);
DateTime AddMinutes(System.Double);
DateTime AddMonths(System.Int32);
DateTime AddSeconds(System.Double);
DateTime AddTicks(System.Int64);
DateTime AddYears(System.Int32);
static Int32 Compare(System.DateTime,System.DateTime);
Int32 CompareTo(System.Object);
Int32 CompareTo(System.DateTime);
static Int32 DaysInMonth(System.Int32,System.Int32);
Boolean Equals(System.Object);
Boolean Equals(System.DateTime);
static Boolean Equals(System.DateTime,System.DateTime);
static DateTime FromBinary(System.Int64);
static DateTime FromFileTime(System.Int64);
static DateTime FromFileTimeUtc(System.Int64);
static DateTime FromOADate(System.Double);
Boolean IsDaylightSavingTime();
static DateTime SpecifyKind(System.DateTime,System.DateTimeKind);
Int64 ToBinary();
DateTime get_Date();
Int32 get_Day();
DayOfWeek get_DayOfWeek();
Int32 get_DayOfYear();
Int32 GetHashCode();
Int32 get_Hour();
DateTimeKind get_Kind();
Int32 get_Millisecond();
Int32 get_Minute();
Int32 get_Month();
static DateTime get_Now();
static DateTime get_UtcNow();
Int32 get_Second();
Int64 get_Ticks();
TimeSpan get_TimeOfDay();
static DateTime get_Today();
Int32 get_Year();
static Boolean IsLeapYear(System.Int32);
static DateTime Parse(System.String);
static DateTime Parse(System.String,System.IFormatProvider);
static DateTime Parse(System.String,System.IFormatProvider,System.Globalization.DateTimeStyles);
static DateTime ParseExact(System.String,System.String,System.IFormatProvider);
static DateTime ParseExact(System.String,System.String,System.IFormatProvider,System.Globalization.DateTimeStyles);
static DateTime ParseExact(System.String,System.String[],System.IFormatProvider,System.Globalization.DateTimeStyles);
TimeSpan Subtract(System.DateTime);
DateTime Subtract(System.TimeSpan);
Double ToOADate();
Int64 ToFileTime();
Int64 ToFileTimeUtc();
DateTime ToLocalTime();
String ToLongDateString();
String ToLongTimeString();
String ToShortDateString();
String ToShortTimeString();
String ToString();
String ToString(System.String);
String ToString(System.IFormatProvider);
String ToString(System.String,System.IFormatProvider);
DateTime ToUniversalTime();
static DateTime op_Addition(System.DateTime,System.TimeSpan);
static DateTime op_Subtraction(System.DateTime,System.TimeSpan);
static TimeSpan op_Subtraction(System.DateTime,System.DateTime);
static Boolean op_Equality(System.DateTime,System.DateTime);
static Boolean op_Inequality(System.DateTime,System.DateTime);
static Boolean op_LessThan(System.DateTime,System.DateTime);
static Boolean op_LessThanOrEqual(System.DateTime,System.DateTime);
static Boolean op_GreaterThan(System.DateTime,System.DateTime);
static Boolean op_GreaterThanOrEqual(System.DateTime,System.DateTime);
String[] GetDateTimeFormats();
String[] GetDateTimeFormats(System.IFormatProvider);
String[] GetDateTimeFormats(System.Char);
String[] GetDateTimeFormats(System.Char,System.IFormatProvider);
TypeCode GetTypeCode();
}
class DateTimeKind : System.Enum{
}
class DateTimeOffset : System.ValueType{
this (System.Int64,System.TimeSpan);
this (System.DateTime);
this (System.DateTime,System.TimeSpan);
this (System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.TimeSpan);
this (System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.TimeSpan);
this (System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Globalization.Calendar,System.TimeSpan);
static DateTimeOffset get_Now();
static DateTimeOffset get_UtcNow();
DateTime get_DateTime();
DateTime get_UtcDateTime();
DateTime get_LocalDateTime();
DateTimeOffset ToOffset(System.TimeSpan);
DateTime get_Date();
Int32 get_Day();
DayOfWeek get_DayOfWeek();
Int32 get_DayOfYear();
Int32 get_Hour();
Int32 get_Millisecond();
Int32 get_Minute();
Int32 get_Month();
TimeSpan get_Offset();
Int32 get_Second();
Int64 get_Ticks();
Int64 get_UtcTicks();
TimeSpan get_TimeOfDay();
Int32 get_Year();
DateTimeOffset Add(System.TimeSpan);
DateTimeOffset AddDays(System.Double);
DateTimeOffset AddHours(System.Double);
DateTimeOffset AddMilliseconds(System.Double);
DateTimeOffset AddMinutes(System.Double);
DateTimeOffset AddMonths(System.Int32);
DateTimeOffset AddSeconds(System.Double);
DateTimeOffset AddTicks(System.Int64);
DateTimeOffset AddYears(System.Int32);
static Int32 Compare(System.DateTimeOffset,System.DateTimeOffset);
Int32 CompareTo(System.DateTimeOffset);
Boolean Equals(System.Object);
Boolean Equals(System.DateTimeOffset);
Boolean EqualsExact(System.DateTimeOffset);
static Boolean Equals(System.DateTimeOffset,System.DateTimeOffset);
static DateTimeOffset FromFileTime(System.Int64);
static DateTimeOffset FromUnixTimeSeconds(System.Int64);
static DateTimeOffset FromUnixTimeMilliseconds(System.Int64);
Int32 GetHashCode();
static DateTimeOffset Parse(System.String);
static DateTimeOffset Parse(System.String,System.IFormatProvider);
static DateTimeOffset Parse(System.String,System.IFormatProvider,System.Globalization.DateTimeStyles);
static DateTimeOffset ParseExact(System.String,System.String,System.IFormatProvider);
static DateTimeOffset ParseExact(System.String,System.String,System.IFormatProvider,System.Globalization.DateTimeStyles);
static DateTimeOffset ParseExact(System.String,System.String[],System.IFormatProvider,System.Globalization.DateTimeStyles);
TimeSpan Subtract(System.DateTimeOffset);
DateTimeOffset Subtract(System.TimeSpan);
Int64 ToFileTime();
Int64 ToUnixTimeSeconds();
Int64 ToUnixTimeMilliseconds();
DateTimeOffset ToLocalTime();
String ToString();
String ToString(System.String);
String ToString(System.IFormatProvider);
String ToString(System.String,System.IFormatProvider);
DateTimeOffset ToUniversalTime();
static DateTimeOffset op_Implicit(System.DateTime);
static DateTimeOffset op_Addition(System.DateTimeOffset,System.TimeSpan);
static DateTimeOffset op_Subtraction(System.DateTimeOffset,System.TimeSpan);
static TimeSpan op_Subtraction(System.DateTimeOffset,System.DateTimeOffset);
static Boolean op_Equality(System.DateTimeOffset,System.DateTimeOffset);
static Boolean op_Inequality(System.DateTimeOffset,System.DateTimeOffset);
static Boolean op_LessThan(System.DateTimeOffset,System.DateTimeOffset);
static Boolean op_LessThanOrEqual(System.DateTimeOffset,System.DateTimeOffset);
static Boolean op_GreaterThan(System.DateTimeOffset,System.DateTimeOffset);
static Boolean op_GreaterThanOrEqual(System.DateTimeOffset,System.DateTimeOffset);
}
class SystemException : System.Exception{
this ();
this (System.String);
this (System.String,System.Exception);
}
class OutOfMemoryException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class StackOverflowException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class DataMisalignedException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class ExecutionEngineException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class Delegate : System.Object{
Object DynamicInvoke(System.Object[]);
Boolean Equals(System.Object);
Int32 GetHashCode();
static Delegate Combine(System.Delegate,System.Delegate);
static Delegate Combine(System.Delegate[]);
Delegate[] GetInvocationList();
MethodInfo get_Method();
Object get_Target();
static Delegate Remove(System.Delegate,System.Delegate);
static Delegate RemoveAll(System.Delegate,System.Delegate);
Object Clone();
static Delegate CreateDelegate(System.Type,System.Object,System.String);
static Delegate CreateDelegate(System.Type,System.Object,System.String,System.Boolean);
static Delegate CreateDelegate(System.Type,System.Object,System.String,System.Boolean,System.Boolean);
static Delegate CreateDelegate(System.Type,System.Type,System.String);
static Delegate CreateDelegate(System.Type,System.Type,System.String,System.Boolean);
static Delegate CreateDelegate(System.Type,System.Type,System.String,System.Boolean,System.Boolean);
static Delegate CreateDelegate(System.Type,System.Reflection.MethodInfo,System.Boolean);
static Delegate CreateDelegate(System.Type,System.Object,System.Reflection.MethodInfo);
static Delegate CreateDelegate(System.Type,System.Object,System.Reflection.MethodInfo,System.Boolean);
static Boolean op_Equality(System.Delegate,System.Delegate);
static Boolean op_Inequality(System.Delegate,System.Delegate);
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
static Delegate CreateDelegate(System.Type,System.Reflection.MethodInfo);
}
class MulticastDelegate : System.Delegate{
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
Boolean Equals(System.Object);
Delegate[] GetInvocationList();
static Boolean op_Equality(System.MulticastDelegate,System.MulticastDelegate);
static Boolean op_Inequality(System.MulticastDelegate,System.MulticastDelegate);
Int32 GetHashCode();
}
class MemberAccessException : System.SystemException{
this (System.String);
this ();
this (System.String,System.Exception);
}
class Activator : System.Object{
static Object CreateInstance(System.Type,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object[],System.Globalization.CultureInfo);
static Object CreateInstance(System.Type,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object[],System.Globalization.CultureInfo,System.Object[]);
static Object CreateInstance(System.Type,System.Object[]);
static Object CreateInstance(System.Type,System.Object[],System.Object[]);
static Object CreateInstance(System.Type);
static ObjectHandle CreateInstance(System.String,System.String);
static ObjectHandle CreateInstance(System.String,System.String,System.Object[]);
static Object CreateInstance(System.Type,System.Boolean);
static ObjectHandle CreateInstanceFrom(System.String,System.String);
static ObjectHandle CreateInstanceFrom(System.String,System.String,System.Object[]);
static ObjectHandle CreateInstance(System.String,System.String,System.Boolean,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object[],System.Globalization.CultureInfo,System.Object[],System.Security.Policy.Evidence);
static ObjectHandle CreateInstance(System.String,System.String,System.Boolean,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object[],System.Globalization.CultureInfo,System.Object[]);
static ObjectHandle CreateInstanceFrom(System.String,System.String,System.Boolean,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object[],System.Globalization.CultureInfo,System.Object[],System.Security.Policy.Evidence);
static ObjectHandle CreateInstanceFrom(System.String,System.String,System.Boolean,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object[],System.Globalization.CultureInfo,System.Object[]);
static ObjectHandle CreateInstance(System.AppDomain,System.String,System.String);
static ObjectHandle CreateInstance(System.AppDomain,System.String,System.String,System.Boolean,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object[],System.Globalization.CultureInfo,System.Object[],System.Security.Policy.Evidence);
static ObjectHandle CreateInstance(System.AppDomain,System.String,System.String,System.Boolean,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object[],System.Globalization.CultureInfo,System.Object[]);
static ObjectHandle CreateInstanceFrom(System.AppDomain,System.String,System.String);
static ObjectHandle CreateInstanceFrom(System.AppDomain,System.String,System.String,System.Boolean,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object[],System.Globalization.CultureInfo,System.Object[],System.Security.Policy.Evidence);
static ObjectHandle CreateInstanceFrom(System.AppDomain,System.String,System.String,System.Boolean,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object[],System.Globalization.CultureInfo,System.Object[]);
static ObjectHandle CreateInstance(System.ActivationContext);
static ObjectHandle CreateInstance(System.ActivationContext,System.String[]);
static ObjectHandle CreateComInstanceFrom(System.String,System.String);
static ObjectHandle CreateComInstanceFrom(System.String,System.String,System.Byte[],System.Configuration.Assemblies.AssemblyHashAlgorithm);
static Object GetObject(System.Type,System.String);
static Object GetObject(System.Type,System.String,System.Object);
}
class AccessViolationException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class ApplicationException : System.Exception{
this ();
this (System.String);
this (System.String,System.Exception);
}
class ResolveEventArgs : System.EventArgs{
this (System.String);
this (System.String,System.Reflection.Assembly);
String get_Name();
Assembly get_RequestingAssembly();
}
class AssemblyLoadEventArgs : System.EventArgs{
this (System.Reflection.Assembly);
Assembly get_LoadedAssembly();
}
class ResolveEventHandler : System.MulticastDelegate{
this (System.Object,System.IntPtr);
Assembly Invoke(System.Object,System.ResolveEventArgs);
IAsyncResult BeginInvoke(System.Object,System.ResolveEventArgs,System.AsyncCallback,System.Object);
Assembly EndInvoke(System.IAsyncResult);
}
class AssemblyLoadEventHandler : System.MulticastDelegate{
this (System.Object,System.IntPtr);
Void Invoke(System.Object,System.AssemblyLoadEventArgs);
IAsyncResult BeginInvoke(System.Object,System.AssemblyLoadEventArgs,System.AsyncCallback,System.Object);
Void EndInvoke(System.IAsyncResult);
}
class AppDomainInitializer : System.MulticastDelegate{
this (System.Object,System.IntPtr);
Void Invoke(System.String[]);
IAsyncResult BeginInvoke(System.String[],System.AsyncCallback,System.Object);
Void EndInvoke(System.IAsyncResult);
}
class AppDomain : System.MarshalByRefObject{
Void add_AssemblyLoad(System.AssemblyLoadEventHandler);
Void remove_AssemblyLoad(System.AssemblyLoadEventHandler);
Void add_TypeResolve(System.ResolveEventHandler);
Void remove_TypeResolve(System.ResolveEventHandler);
Void add_ResourceResolve(System.ResolveEventHandler);
Void remove_ResourceResolve(System.ResolveEventHandler);
Void add_AssemblyResolve(System.ResolveEventHandler);
Void remove_AssemblyResolve(System.ResolveEventHandler);
Void add_ReflectionOnlyAssemblyResolve(System.ResolveEventHandler);
Void remove_ReflectionOnlyAssemblyResolve(System.ResolveEventHandler);
AppDomainManager get_DomainManager();
AssemblyBuilder DefineDynamicAssembly(System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess);
AssemblyBuilder DefineDynamicAssembly(System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess,System.String);
AssemblyBuilder DefineDynamicAssembly(System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess,System.Security.Policy.Evidence);
AssemblyBuilder DefineDynamicAssembly(System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess,System.Security.PermissionSet,System.Security.PermissionSet,System.Security.PermissionSet);
AssemblyBuilder DefineDynamicAssembly(System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess,System.String,System.Security.Policy.Evidence);
AssemblyBuilder DefineDynamicAssembly(System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess,System.String,System.Security.PermissionSet,System.Security.PermissionSet,System.Security.PermissionSet);
AssemblyBuilder DefineDynamicAssembly(System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess,System.Security.Policy.Evidence,System.Security.PermissionSet,System.Security.PermissionSet,System.Security.PermissionSet);
AssemblyBuilder DefineDynamicAssembly(System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess,System.String,System.Security.Policy.Evidence,System.Security.PermissionSet,System.Security.PermissionSet,System.Security.PermissionSet);
AssemblyBuilder DefineDynamicAssembly(System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess,System.String,System.Security.Policy.Evidence,System.Security.PermissionSet,System.Security.PermissionSet,System.Security.PermissionSet,System.Boolean);
String ApplyPolicy(System.String);
ObjectHandle CreateInstance(System.String,System.String);
ObjectHandle CreateInstanceFrom(System.String,System.String);
ObjectHandle CreateComInstanceFrom(System.String,System.String);
ObjectHandle CreateComInstanceFrom(System.String,System.String,System.Byte[],System.Configuration.Assemblies.AssemblyHashAlgorithm);
ObjectHandle CreateInstance(System.String,System.String,System.Object[]);
ObjectHandle CreateInstanceFrom(System.String,System.String,System.Object[]);
ObjectHandle CreateInstance(System.String,System.String,System.Boolean,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object[],System.Globalization.CultureInfo,System.Object[],System.Security.Policy.Evidence);
ObjectHandle CreateInstance(System.String,System.String,System.Boolean,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object[],System.Globalization.CultureInfo,System.Object[]);
ObjectHandle CreateInstanceFrom(System.String,System.String,System.Boolean,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object[],System.Globalization.CultureInfo,System.Object[],System.Security.Policy.Evidence);
ObjectHandle CreateInstanceFrom(System.String,System.String,System.Boolean,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object[],System.Globalization.CultureInfo,System.Object[]);
Assembly Load(System.Reflection.AssemblyName);
Assembly Load(System.String);
Assembly Load(System.Byte[]);
Assembly Load(System.Byte[],System.Byte[]);
Assembly Load(System.Byte[],System.Byte[],System.Security.Policy.Evidence);
Assembly Load(System.Reflection.AssemblyName,System.Security.Policy.Evidence);
Assembly Load(System.String,System.Security.Policy.Evidence);
Int32 ExecuteAssembly(System.String);
Int32 ExecuteAssembly(System.String,System.Security.Policy.Evidence);
Int32 ExecuteAssembly(System.String,System.Security.Policy.Evidence,System.String[]);
Int32 ExecuteAssembly(System.String,System.String[]);
Int32 ExecuteAssembly(System.String,System.Security.Policy.Evidence,System.String[],System.Byte[],System.Configuration.Assemblies.AssemblyHashAlgorithm);
Int32 ExecuteAssembly(System.String,System.String[],System.Byte[],System.Configuration.Assemblies.AssemblyHashAlgorithm);
Int32 ExecuteAssemblyByName(System.String);
Int32 ExecuteAssemblyByName(System.String,System.Security.Policy.Evidence);
Int32 ExecuteAssemblyByName(System.String,System.Security.Policy.Evidence,System.String[]);
Int32 ExecuteAssemblyByName(System.String,System.String[]);
Int32 ExecuteAssemblyByName(System.Reflection.AssemblyName,System.Security.Policy.Evidence,System.String[]);
Int32 ExecuteAssemblyByName(System.Reflection.AssemblyName,System.String[]);
static AppDomain get_CurrentDomain();
Evidence get_Evidence();
String get_FriendlyName();
String get_BaseDirectory();
String get_RelativeSearchPath();
Boolean get_ShadowCopyFiles();
String ToString();
Assembly[] GetAssemblies();
Assembly[] ReflectionOnlyGetAssemblies();
Boolean IsFinalizingForUnload();
Void AppendPrivatePath(System.String);
Void ClearPrivatePath();
Void ClearShadowCopyPath();
Void SetCachePath(System.String);
Void SetData(System.String,System.Object);
Void SetData(System.String,System.Object,System.Security.IPermission);
Object GetData(System.String);
static Int32 GetCurrentThreadId();
static Void Unload(System.AppDomain);
Void SetAppDomainPolicy(System.Security.Policy.PolicyLevel);
ActivationContext get_ActivationContext();
ApplicationIdentity get_ApplicationIdentity();
ApplicationTrust get_ApplicationTrust();
Void SetThreadPrincipal(System.Security.Principal.IPrincipal);
Void SetPrincipalPolicy(System.Security.Principal.PrincipalPolicy);
Object InitializeLifetimeService();
Void DoCallBack(System.CrossAppDomainDelegate);
String get_DynamicDirectory();
static AppDomain CreateDomain(System.String,System.Security.Policy.Evidence);
static AppDomain CreateDomain(System.String,System.Security.Policy.Evidence,System.String,System.String,System.Boolean);
static AppDomain CreateDomain(System.String);
Void add_ProcessExit(System.EventHandler);
Void remove_ProcessExit(System.EventHandler);
Void add_DomainUnload(System.EventHandler);
Void remove_DomainUnload(System.EventHandler);
Void add_UnhandledException(System.UnhandledExceptionEventHandler);
Void remove_UnhandledException(System.UnhandledExceptionEventHandler);
static AppDomain CreateDomain(System.String,System.Security.Policy.Evidence,System.AppDomainSetup);
static AppDomain CreateDomain(System.String,System.Security.Policy.Evidence,System.AppDomainSetup,System.Security.PermissionSet,System.Security.Policy.StrongName[]);
static AppDomain CreateDomain(System.String,System.Security.Policy.Evidence,System.String,System.String,System.Boolean,System.AppDomainInitializer,System.String[]);
Void SetShadowCopyPath(System.String);
Void SetShadowCopyFiles();
Void SetDynamicBase(System.String);
AppDomainSetup get_SetupInformation();
PermissionSet get_PermissionSet();
Boolean get_IsFullyTrusted();
Boolean get_IsHomogenous();
Object CreateInstanceAndUnwrap(System.String,System.String);
Object CreateInstanceAndUnwrap(System.String,System.String,System.Object[]);
Object CreateInstanceAndUnwrap(System.String,System.String,System.Boolean,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object[],System.Globalization.CultureInfo,System.Object[],System.Security.Policy.Evidence);
Object CreateInstanceAndUnwrap(System.String,System.String,System.Boolean,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object[],System.Globalization.CultureInfo,System.Object[]);
Object CreateInstanceFromAndUnwrap(System.String,System.String);
Object CreateInstanceFromAndUnwrap(System.String,System.String,System.Object[]);
Object CreateInstanceFromAndUnwrap(System.String,System.String,System.Boolean,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object[],System.Globalization.CultureInfo,System.Object[],System.Security.Policy.Evidence);
Object CreateInstanceFromAndUnwrap(System.String,System.String,System.Boolean,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object[],System.Globalization.CultureInfo,System.Object[]);
Int32 get_Id();
Boolean IsDefaultAppDomain();
static Boolean get_MonitoringIsEnabled();
static Void set_MonitoringIsEnabled(System.Boolean);
TimeSpan get_MonitoringTotalProcessorTime();
Int64 get_MonitoringTotalAllocatedMemorySize();
Int64 get_MonitoringSurvivedMemorySize();
static Int64 get_MonitoringSurvivedProcessMemorySize();
Type GetType();
}
class CrossAppDomainDelegate : System.MulticastDelegate{
this (System.Object,System.IntPtr);
Void Invoke();
IAsyncResult BeginInvoke(System.AsyncCallback,System.Object);
Void EndInvoke(System.IAsyncResult);
}
class AppDomainManagerInitializationOptions : System.Enum{
}
class AppDomainManager : System.MarshalByRefObject{
this ();
AppDomain CreateDomain(System.String,System.Security.Policy.Evidence,System.AppDomainSetup);
Void InitializeNewDomain(System.AppDomainSetup);
AppDomainManagerInitializationOptions get_InitializationFlags();
Void set_InitializationFlags(System.AppDomainManagerInitializationOptions);
ApplicationActivator get_ApplicationActivator();
HostSecurityManager get_HostSecurityManager();
HostExecutionContextManager get_HostExecutionContextManager();
Assembly get_EntryAssembly();
Boolean CheckSecuritySettings(System.Security.SecurityState);
}
interface _AppDomain{
Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
String ToString();
Boolean Equals(System.Object);
Int32 GetHashCode();
Type GetType();
Object InitializeLifetimeService();
Object GetLifetimeService();
Evidence get_Evidence();
Void add_DomainUnload(System.EventHandler);
Void remove_DomainUnload(System.EventHandler);
Void add_AssemblyLoad(System.AssemblyLoadEventHandler);
Void remove_AssemblyLoad(System.AssemblyLoadEventHandler);
Void add_ProcessExit(System.EventHandler);
Void remove_ProcessExit(System.EventHandler);
Void add_TypeResolve(System.ResolveEventHandler);
Void remove_TypeResolve(System.ResolveEventHandler);
Void add_ResourceResolve(System.ResolveEventHandler);
Void remove_ResourceResolve(System.ResolveEventHandler);
Void add_AssemblyResolve(System.ResolveEventHandler);
Void remove_AssemblyResolve(System.ResolveEventHandler);
Void add_UnhandledException(System.UnhandledExceptionEventHandler);
Void remove_UnhandledException(System.UnhandledExceptionEventHandler);
AssemblyBuilder DefineDynamicAssembly(System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess);
AssemblyBuilder DefineDynamicAssembly(System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess,System.String);
AssemblyBuilder DefineDynamicAssembly(System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess,System.Security.Policy.Evidence);
AssemblyBuilder DefineDynamicAssembly(System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess,System.Security.PermissionSet,System.Security.PermissionSet,System.Security.PermissionSet);
AssemblyBuilder DefineDynamicAssembly(System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess,System.String,System.Security.Policy.Evidence);
AssemblyBuilder DefineDynamicAssembly(System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess,System.String,System.Security.PermissionSet,System.Security.PermissionSet,System.Security.PermissionSet);
AssemblyBuilder DefineDynamicAssembly(System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess,System.Security.Policy.Evidence,System.Security.PermissionSet,System.Security.PermissionSet,System.Security.PermissionSet);
AssemblyBuilder DefineDynamicAssembly(System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess,System.String,System.Security.Policy.Evidence,System.Security.PermissionSet,System.Security.PermissionSet,System.Security.PermissionSet);
AssemblyBuilder DefineDynamicAssembly(System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess,System.String,System.Security.Policy.Evidence,System.Security.PermissionSet,System.Security.PermissionSet,System.Security.PermissionSet,System.Boolean);
ObjectHandle CreateInstance(System.String,System.String);
ObjectHandle CreateInstanceFrom(System.String,System.String);
ObjectHandle CreateInstance(System.String,System.String,System.Object[]);
ObjectHandle CreateInstanceFrom(System.String,System.String,System.Object[]);
ObjectHandle CreateInstance(System.String,System.String,System.Boolean,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object[],System.Globalization.CultureInfo,System.Object[],System.Security.Policy.Evidence);
ObjectHandle CreateInstanceFrom(System.String,System.String,System.Boolean,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object[],System.Globalization.CultureInfo,System.Object[],System.Security.Policy.Evidence);
Assembly Load(System.Reflection.AssemblyName);
Assembly Load(System.String);
Assembly Load(System.Byte[]);
Assembly Load(System.Byte[],System.Byte[]);
Assembly Load(System.Byte[],System.Byte[],System.Security.Policy.Evidence);
Assembly Load(System.Reflection.AssemblyName,System.Security.Policy.Evidence);
Assembly Load(System.String,System.Security.Policy.Evidence);
Int32 ExecuteAssembly(System.String,System.Security.Policy.Evidence);
Int32 ExecuteAssembly(System.String);
Int32 ExecuteAssembly(System.String,System.Security.Policy.Evidence,System.String[]);
String get_FriendlyName();
String get_BaseDirectory();
String get_RelativeSearchPath();
Boolean get_ShadowCopyFiles();
Assembly[] GetAssemblies();
Void AppendPrivatePath(System.String);
Void ClearPrivatePath();
Void SetShadowCopyPath(System.String);
Void ClearShadowCopyPath();
Void SetCachePath(System.String);
Void SetData(System.String,System.Object);
Object GetData(System.String);
Void SetAppDomainPolicy(System.Security.Policy.PolicyLevel);
Void SetThreadPrincipal(System.Security.Principal.IPrincipal);
Void SetPrincipalPolicy(System.Security.Principal.PrincipalPolicy);
Void DoCallBack(System.CrossAppDomainDelegate);
String get_DynamicDirectory();
}
class AppDomainSetup : System.Object{
this ();
this (System.ActivationContext);
this (System.Runtime.Hosting.ActivationArguments);
String get_AppDomainManagerAssembly();
Void set_AppDomainManagerAssembly(System.String);
String get_AppDomainManagerType();
Void set_AppDomainManagerType(System.String);
String[] get_PartialTrustVisibleAssemblies();
Void set_PartialTrustVisibleAssemblies(System.String[]);
String get_ApplicationBase();
Void set_ApplicationBase(System.String);
String get_ConfigurationFile();
Void set_ConfigurationFile(System.String);
Byte[] GetConfigurationBytes();
Void SetConfigurationBytes(System.Byte[]);
String get_TargetFrameworkName();
Void set_TargetFrameworkName(System.String);
Void SetNativeFunction(System.String,System.Int32,System.IntPtr);
String get_DynamicBase();
Void set_DynamicBase(System.String);
Boolean get_DisallowPublisherPolicy();
Void set_DisallowPublisherPolicy(System.Boolean);
Boolean get_DisallowBindingRedirects();
Void set_DisallowBindingRedirects(System.Boolean);
Boolean get_DisallowCodeDownload();
Void set_DisallowCodeDownload(System.Boolean);
Boolean get_DisallowApplicationBaseProbing();
Void set_DisallowApplicationBaseProbing(System.Boolean);
String get_ApplicationName();
Void set_ApplicationName(System.String);
AppDomainInitializer get_AppDomainInitializer();
Void set_AppDomainInitializer(System.AppDomainInitializer);
String[] get_AppDomainInitializerArguments();
Void set_AppDomainInitializerArguments(System.String[]);
ActivationArguments get_ActivationArguments();
Void set_ActivationArguments(System.Runtime.Hosting.ActivationArguments);
ApplicationTrust get_ApplicationTrust();
Void set_ApplicationTrust(System.Security.Policy.ApplicationTrust);
String get_PrivateBinPath();
Void set_PrivateBinPath(System.String);
String get_PrivateBinPathProbe();
Void set_PrivateBinPathProbe(System.String);
String get_ShadowCopyDirectories();
Void set_ShadowCopyDirectories(System.String);
String get_ShadowCopyFiles();
Void set_ShadowCopyFiles(System.String);
String get_CachePath();
Void set_CachePath(System.String);
String get_LicenseFile();
Void set_LicenseFile(System.String);
LoaderOptimization get_LoaderOptimization();
Void set_LoaderOptimization(System.LoaderOptimization);
Boolean get_SandboxInterop();
Void set_SandboxInterop(System.Boolean);
}
interface IAppDomainSetup{
String get_ApplicationBase();
Void set_ApplicationBase(System.String);
String get_ApplicationName();
Void set_ApplicationName(System.String);
String get_CachePath();
Void set_CachePath(System.String);
String get_ConfigurationFile();
Void set_ConfigurationFile(System.String);
String get_DynamicBase();
Void set_DynamicBase(System.String);
String get_LicenseFile();
Void set_LicenseFile(System.String);
String get_PrivateBinPath();
Void set_PrivateBinPath(System.String);
String get_PrivateBinPathProbe();
Void set_PrivateBinPathProbe(System.String);
String get_ShadowCopyDirectories();
Void set_ShadowCopyDirectories(System.String);
String get_ShadowCopyFiles();
Void set_ShadowCopyFiles(System.String);
}
class LoaderOptimization : System.Enum{
}
class LoaderOptimizationAttribute : System.Attribute{
this (System.Byte);
this (System.LoaderOptimization);
LoaderOptimization get_Value();
}
class AppDomainUnloadedException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class ActivationContext : System.Object{
static class ContextForm : System.Enum{
}
static ActivationContext CreatePartialActivationContext(System.ApplicationIdentity);
static ActivationContext CreatePartialActivationContext(System.ApplicationIdentity,System.String[]);
ApplicationIdentity get_Identity();
ContextForm get_Form();
Byte[] get_ApplicationManifestBytes();
Byte[] get_DeploymentManifestBytes();
Void Dispose();
}
class ApplicationIdentity : System.Object{
this (System.String);
String get_FullName();
String get_CodeBase();
String ToString();
}
class ApplicationId : System.Object{
this (System.Byte[],System.String,System.Version,System.String,System.String);
Byte[] get_PublicKeyToken();
String get_Name();
Version get_Version();
String get_ProcessorArchitecture();
String get_Culture();
ApplicationId Copy();
String ToString();
Boolean Equals(System.Object);
Int32 GetHashCode();
}
class ArgumentException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
this (System.String,System.String,System.Exception);
this (System.String,System.String);
String get_Message();
String get_ParamName();
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
}
class ArgumentNullException : System.ArgumentException{
this ();
this (System.String);
this (System.String,System.Exception);
this (System.String,System.String);
}
class ArgumentOutOfRangeException : System.ArgumentException{
this ();
this (System.String);
this (System.String,System.String);
this (System.String,System.Exception);
this (System.String,System.Object,System.String);
String get_Message();
Object get_ActualValue();
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
}
class ArgIterator : System.ValueType{
this (System.RuntimeArgumentHandle);
TypedReference GetNextArg();
TypedReference GetNextArg(System.RuntimeTypeHandle);
Void End();
Int32 GetRemainingCount();
RuntimeTypeHandle GetNextArgType();
Int32 GetHashCode();
Boolean Equals(System.Object);
}
class ArithmeticException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class ArrayTypeMismatchException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class AsyncCallback : System.MulticastDelegate{
this (System.Object,System.IntPtr);
Void Invoke(System.IAsyncResult);
IAsyncResult BeginInvoke(System.IAsyncResult,System.AsyncCallback,System.Object);
Void EndInvoke(System.IAsyncResult);
}
class Attribute : System.Object{
static Attribute[] GetCustomAttributes(System.Reflection.MemberInfo,System.Type);
static Attribute[] GetCustomAttributes(System.Reflection.MemberInfo,System.Type,System.Boolean);
static Attribute[] GetCustomAttributes(System.Reflection.MemberInfo);
static Attribute[] GetCustomAttributes(System.Reflection.MemberInfo,System.Boolean);
static Boolean IsDefined(System.Reflection.MemberInfo,System.Type);
static Boolean IsDefined(System.Reflection.MemberInfo,System.Type,System.Boolean);
static Attribute GetCustomAttribute(System.Reflection.MemberInfo,System.Type);
static Attribute GetCustomAttribute(System.Reflection.MemberInfo,System.Type,System.Boolean);
static Attribute[] GetCustomAttributes(System.Reflection.ParameterInfo);
static Attribute[] GetCustomAttributes(System.Reflection.ParameterInfo,System.Type);
static Attribute[] GetCustomAttributes(System.Reflection.ParameterInfo,System.Type,System.Boolean);
static Attribute[] GetCustomAttributes(System.Reflection.ParameterInfo,System.Boolean);
static Boolean IsDefined(System.Reflection.ParameterInfo,System.Type);
static Boolean IsDefined(System.Reflection.ParameterInfo,System.Type,System.Boolean);
static Attribute GetCustomAttribute(System.Reflection.ParameterInfo,System.Type);
static Attribute GetCustomAttribute(System.Reflection.ParameterInfo,System.Type,System.Boolean);
static Attribute[] GetCustomAttributes(System.Reflection.Module,System.Type);
static Attribute[] GetCustomAttributes(System.Reflection.Module);
static Attribute[] GetCustomAttributes(System.Reflection.Module,System.Boolean);
static Attribute[] GetCustomAttributes(System.Reflection.Module,System.Type,System.Boolean);
static Boolean IsDefined(System.Reflection.Module,System.Type);
static Boolean IsDefined(System.Reflection.Module,System.Type,System.Boolean);
static Attribute GetCustomAttribute(System.Reflection.Module,System.Type);
static Attribute GetCustomAttribute(System.Reflection.Module,System.Type,System.Boolean);
static Attribute[] GetCustomAttributes(System.Reflection.Assembly,System.Type);
static Attribute[] GetCustomAttributes(System.Reflection.Assembly,System.Type,System.Boolean);
static Attribute[] GetCustomAttributes(System.Reflection.Assembly);
static Attribute[] GetCustomAttributes(System.Reflection.Assembly,System.Boolean);
static Boolean IsDefined(System.Reflection.Assembly,System.Type);
static Boolean IsDefined(System.Reflection.Assembly,System.Type,System.Boolean);
static Attribute GetCustomAttribute(System.Reflection.Assembly,System.Type);
static Attribute GetCustomAttribute(System.Reflection.Assembly,System.Type,System.Boolean);
Boolean Equals(System.Object);
Int32 GetHashCode();
Object get_TypeId();
Boolean Match(System.Object);
Boolean IsDefaultAttribute();
}
class AttributeTargets : System.Enum{
}
class AttributeUsageAttribute : System.Attribute{
this (System.AttributeTargets);
AttributeTargets get_ValidOn();
Boolean get_AllowMultiple();
Void set_AllowMultiple(System.Boolean);
Boolean get_Inherited();
Void set_Inherited(System.Boolean);
}
class BadImageFormatException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
this (System.String,System.String);
this (System.String,System.String,System.Exception);
String get_Message();
String get_FileName();
String ToString();
String get_FusionLog();
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
}
class BitConverter : System.Object{
static Byte[] GetBytes(System.Boolean);
static Byte[] GetBytes(System.Char);
static Byte[] GetBytes(System.Int16);
static Byte[] GetBytes(System.Int32);
static Byte[] GetBytes(System.Int64);
static Byte[] GetBytes(System.UInt16);
static Byte[] GetBytes(System.UInt32);
static Byte[] GetBytes(System.UInt64);
static Byte[] GetBytes(System.Single);
static Byte[] GetBytes(System.Double);
static Char ToChar(System.Byte[],System.Int32);
static Int16 ToInt16(System.Byte[],System.Int32);
static Int32 ToInt32(System.Byte[],System.Int32);
static Int64 ToInt64(System.Byte[],System.Int32);
static UInt16 ToUInt16(System.Byte[],System.Int32);
static UInt32 ToUInt32(System.Byte[],System.Int32);
static UInt64 ToUInt64(System.Byte[],System.Int32);
static Single ToSingle(System.Byte[],System.Int32);
static Double ToDouble(System.Byte[],System.Int32);
static String ToString(System.Byte[],System.Int32,System.Int32);
static String ToString(System.Byte[]);
static String ToString(System.Byte[],System.Int32);
static Boolean ToBoolean(System.Byte[],System.Int32);
static Int64 DoubleToInt64Bits(System.Double);
static Double Int64BitsToDouble(System.Int64);
}
class Boolean : System.ValueType{
Int32 GetHashCode();
String ToString();
String ToString(System.IFormatProvider);
Boolean Equals(System.Object);
Boolean Equals(System.Boolean);
Int32 CompareTo(System.Object);
Int32 CompareTo(System.Boolean);
static Boolean Parse(System.String);
TypeCode GetTypeCode();
}
class Buffer : System.Object{
static Void BlockCopy(System.Array,System.Int32,System.Array,System.Int32,System.Int32);
static Byte GetByte(System.Array,System.Int32);
static Void SetByte(System.Array,System.Int32,System.Byte);
static Int32 ByteLength(System.Array);
}
class Byte : System.ValueType{
Int32 CompareTo(System.Object);
Int32 CompareTo(System.Byte);
Boolean Equals(System.Object);
Boolean Equals(System.Byte);
Int32 GetHashCode();
static Byte Parse(System.String);
static Byte Parse(System.String,System.Globalization.NumberStyles);
static Byte Parse(System.String,System.IFormatProvider);
static Byte Parse(System.String,System.Globalization.NumberStyles,System.IFormatProvider);
String ToString();
String ToString(System.String);
String ToString(System.IFormatProvider);
String ToString(System.String,System.IFormatProvider);
TypeCode GetTypeCode();
}
class CannotUnloadAppDomainException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class Char : System.ValueType{
Int32 GetHashCode();
Boolean Equals(System.Object);
Boolean Equals(System.Char);
Int32 CompareTo(System.Object);
Int32 CompareTo(System.Char);
String ToString();
String ToString(System.IFormatProvider);
static String ToString(System.Char);
static Char Parse(System.String);
static Boolean IsDigit(System.Char);
static Boolean IsLetter(System.Char);
static Boolean IsWhiteSpace(System.Char);
static Boolean IsUpper(System.Char);
static Boolean IsLower(System.Char);
static Boolean IsPunctuation(System.Char);
static Boolean IsLetterOrDigit(System.Char);
static Char ToUpper(System.Char,System.Globalization.CultureInfo);
static Char ToUpper(System.Char);
static Char ToUpperInvariant(System.Char);
static Char ToLower(System.Char,System.Globalization.CultureInfo);
static Char ToLower(System.Char);
static Char ToLowerInvariant(System.Char);
TypeCode GetTypeCode();
static Boolean IsControl(System.Char);
static Boolean IsControl(System.String,System.Int32);
static Boolean IsDigit(System.String,System.Int32);
static Boolean IsLetter(System.String,System.Int32);
static Boolean IsLetterOrDigit(System.String,System.Int32);
static Boolean IsLower(System.String,System.Int32);
static Boolean IsNumber(System.Char);
static Boolean IsNumber(System.String,System.Int32);
static Boolean IsPunctuation(System.String,System.Int32);
static Boolean IsSeparator(System.Char);
static Boolean IsSeparator(System.String,System.Int32);
static Boolean IsSurrogate(System.Char);
static Boolean IsSurrogate(System.String,System.Int32);
static Boolean IsSymbol(System.Char);
static Boolean IsSymbol(System.String,System.Int32);
static Boolean IsUpper(System.String,System.Int32);
static Boolean IsWhiteSpace(System.String,System.Int32);
static UnicodeCategory GetUnicodeCategory(System.Char);
static UnicodeCategory GetUnicodeCategory(System.String,System.Int32);
static Double GetNumericValue(System.Char);
static Double GetNumericValue(System.String,System.Int32);
static Boolean IsHighSurrogate(System.Char);
static Boolean IsHighSurrogate(System.String,System.Int32);
static Boolean IsLowSurrogate(System.Char);
static Boolean IsLowSurrogate(System.String,System.Int32);
static Boolean IsSurrogatePair(System.String,System.Int32);
static Boolean IsSurrogatePair(System.Char,System.Char);
static String ConvertFromUtf32(System.Int32);
static Int32 ConvertToUtf32(System.Char,System.Char);
static Int32 ConvertToUtf32(System.String,System.Int32);
}
class CharEnumerator : System.Object{
Object Clone();
Boolean MoveNext();
Void Dispose();
Char get_Current();
Void Reset();
}
class CLSCompliantAttribute : System.Attribute{
this (System.Boolean);
Boolean get_IsCompliant();
}
class TypeUnloadedException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class Console : System.Object{
static Boolean get_IsInputRedirected();
static Boolean get_IsOutputRedirected();
static Boolean get_IsErrorRedirected();
static TextReader get_In();
static TextWriter get_Out();
static TextWriter get_Error();
static Encoding get_InputEncoding();
static Void set_InputEncoding(System.Text.Encoding);
static Encoding get_OutputEncoding();
static Void set_OutputEncoding(System.Text.Encoding);
static Void Beep();
static Void Beep(System.Int32,System.Int32);
static Void Clear();
static ConsoleColor get_BackgroundColor();
static Void set_BackgroundColor(System.ConsoleColor);
static ConsoleColor get_ForegroundColor();
static Void set_ForegroundColor(System.ConsoleColor);
static Void ResetColor();
static Void MoveBufferArea(System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32);
static Void MoveBufferArea(System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Char,System.ConsoleColor,System.ConsoleColor);
static Int32 get_BufferHeight();
static Void set_BufferHeight(System.Int32);
static Int32 get_BufferWidth();
static Void set_BufferWidth(System.Int32);
static Void SetBufferSize(System.Int32,System.Int32);
static Int32 get_WindowHeight();
static Void set_WindowHeight(System.Int32);
static Int32 get_WindowWidth();
static Void set_WindowWidth(System.Int32);
static Void SetWindowSize(System.Int32,System.Int32);
static Int32 get_LargestWindowWidth();
static Int32 get_LargestWindowHeight();
static Int32 get_WindowLeft();
static Void set_WindowLeft(System.Int32);
static Int32 get_WindowTop();
static Void set_WindowTop(System.Int32);
static Void SetWindowPosition(System.Int32,System.Int32);
static Int32 get_CursorLeft();
static Void set_CursorLeft(System.Int32);
static Int32 get_CursorTop();
static Void set_CursorTop(System.Int32);
static Void SetCursorPosition(System.Int32,System.Int32);
static Int32 get_CursorSize();
static Void set_CursorSize(System.Int32);
static Boolean get_CursorVisible();
static Void set_CursorVisible(System.Boolean);
static String get_Title();
static Void set_Title(System.String);
static ConsoleKeyInfo ReadKey();
static ConsoleKeyInfo ReadKey(System.Boolean);
static Boolean get_KeyAvailable();
static Boolean get_NumberLock();
static Boolean get_CapsLock();
static Boolean get_TreatControlCAsInput();
static Void set_TreatControlCAsInput(System.Boolean);
static Void add_CancelKeyPress(System.ConsoleCancelEventHandler);
static Void remove_CancelKeyPress(System.ConsoleCancelEventHandler);
static Stream OpenStandardError();
static Stream OpenStandardError(System.Int32);
static Stream OpenStandardInput();
static Stream OpenStandardInput(System.Int32);
static Stream OpenStandardOutput();
static Stream OpenStandardOutput(System.Int32);
static Void SetIn(System.IO.TextReader);
static Void SetOut(System.IO.TextWriter);
static Void SetError(System.IO.TextWriter);
static Int32 Read();
static String ReadLine();
static Void WriteLine();
static Void WriteLine(System.Boolean);
static Void WriteLine(System.Char);
static Void WriteLine(System.Char[]);
static Void WriteLine(System.Char[],System.Int32,System.Int32);
static Void WriteLine(System.Decimal);
static Void WriteLine(System.Double);
static Void WriteLine(System.Single);
static Void WriteLine(System.Int32);
static Void WriteLine(System.UInt32);
static Void WriteLine(System.Int64);
static Void WriteLine(System.UInt64);
static Void WriteLine(System.Object);
static Void WriteLine(System.String);
static Void WriteLine(System.String,System.Object);
static Void WriteLine(System.String,System.Object,System.Object);
static Void WriteLine(System.String,System.Object,System.Object,System.Object);
static Void WriteLine(System.String,System.Object,System.Object,System.Object,System.Object);
static Void WriteLine(System.String,System.Object[]);
static Void Write(System.String,System.Object);
static Void Write(System.String,System.Object,System.Object);
static Void Write(System.String,System.Object,System.Object,System.Object);
static Void Write(System.String,System.Object,System.Object,System.Object,System.Object);
static Void Write(System.String,System.Object[]);
static Void Write(System.Boolean);
static Void Write(System.Char);
static Void Write(System.Char[]);
static Void Write(System.Char[],System.Int32,System.Int32);
static Void Write(System.Double);
static Void Write(System.Decimal);
static Void Write(System.Single);
static Void Write(System.Int32);
static Void Write(System.UInt32);
static Void Write(System.Int64);
static Void Write(System.UInt64);
static Void Write(System.Object);
static Void Write(System.String);
}
class ConsoleCancelEventHandler : System.MulticastDelegate{
this (System.Object,System.IntPtr);
Void Invoke(System.Object,System.ConsoleCancelEventArgs);
IAsyncResult BeginInvoke(System.Object,System.ConsoleCancelEventArgs,System.AsyncCallback,System.Object);
Void EndInvoke(System.IAsyncResult);
}
class ConsoleCancelEventArgs : System.EventArgs{
Boolean get_Cancel();
Void set_Cancel(System.Boolean);
ConsoleSpecialKey get_SpecialKey();
}
class ConsoleColor : System.Enum{
}
class ConsoleKey : System.Enum{
}
class ConsoleKeyInfo : System.ValueType{
this (System.Char,System.ConsoleKey,System.Boolean,System.Boolean,System.Boolean);
Char get_KeyChar();
ConsoleKey get_Key();
ConsoleModifiers get_Modifiers();
Boolean Equals(System.Object);
Boolean Equals(System.ConsoleKeyInfo);
static Boolean op_Equality(System.ConsoleKeyInfo,System.ConsoleKeyInfo);
static Boolean op_Inequality(System.ConsoleKeyInfo,System.ConsoleKeyInfo);
Int32 GetHashCode();
}
class ConsoleModifiers : System.Enum{
}
class ConsoleSpecialKey : System.Enum{
}
class ContextMarshalException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class Base64FormattingOptions : System.Enum{
}
class Convert : System.Object{
static TypeCode GetTypeCode(System.Object);
static Boolean IsDBNull(System.Object);
static Object ChangeType(System.Object,System.TypeCode);
static Object ChangeType(System.Object,System.TypeCode,System.IFormatProvider);
static Object ChangeType(System.Object,System.Type);
static Object ChangeType(System.Object,System.Type,System.IFormatProvider);
static Boolean ToBoolean(System.Object);
static Boolean ToBoolean(System.Object,System.IFormatProvider);
static Boolean ToBoolean(System.Boolean);
static Boolean ToBoolean(System.SByte);
static Boolean ToBoolean(System.Char);
static Boolean ToBoolean(System.Byte);
static Boolean ToBoolean(System.Int16);
static Boolean ToBoolean(System.UInt16);
static Boolean ToBoolean(System.Int32);
static Boolean ToBoolean(System.UInt32);
static Boolean ToBoolean(System.Int64);
static Boolean ToBoolean(System.UInt64);
static Boolean ToBoolean(System.String);
static Boolean ToBoolean(System.String,System.IFormatProvider);
static Boolean ToBoolean(System.Single);
static Boolean ToBoolean(System.Double);
static Boolean ToBoolean(System.Decimal);
static Boolean ToBoolean(System.DateTime);
static Char ToChar(System.Object);
static Char ToChar(System.Object,System.IFormatProvider);
static Char ToChar(System.Boolean);
static Char ToChar(System.Char);
static Char ToChar(System.SByte);
static Char ToChar(System.Byte);
static Char ToChar(System.Int16);
static Char ToChar(System.UInt16);
static Char ToChar(System.Int32);
static Char ToChar(System.UInt32);
static Char ToChar(System.Int64);
static Char ToChar(System.UInt64);
static Char ToChar(System.String);
static Char ToChar(System.String,System.IFormatProvider);
static Char ToChar(System.Single);
static Char ToChar(System.Double);
static Char ToChar(System.Decimal);
static Char ToChar(System.DateTime);
static SByte ToSByte(System.Object);
static SByte ToSByte(System.Object,System.IFormatProvider);
static SByte ToSByte(System.Boolean);
static SByte ToSByte(System.SByte);
static SByte ToSByte(System.Char);
static SByte ToSByte(System.Byte);
static SByte ToSByte(System.Int16);
static SByte ToSByte(System.UInt16);
static SByte ToSByte(System.Int32);
static SByte ToSByte(System.UInt32);
static SByte ToSByte(System.Int64);
static SByte ToSByte(System.UInt64);
static SByte ToSByte(System.Single);
static SByte ToSByte(System.Double);
static SByte ToSByte(System.Decimal);
static SByte ToSByte(System.String);
static SByte ToSByte(System.String,System.IFormatProvider);
static SByte ToSByte(System.DateTime);
static Byte ToByte(System.Object);
static Byte ToByte(System.Object,System.IFormatProvider);
static Byte ToByte(System.Boolean);
static Byte ToByte(System.Byte);
static Byte ToByte(System.Char);
static Byte ToByte(System.SByte);
static Byte ToByte(System.Int16);
static Byte ToByte(System.UInt16);
static Byte ToByte(System.Int32);
static Byte ToByte(System.UInt32);
static Byte ToByte(System.Int64);
static Byte ToByte(System.UInt64);
static Byte ToByte(System.Single);
static Byte ToByte(System.Double);
static Byte ToByte(System.Decimal);
static Byte ToByte(System.String);
static Byte ToByte(System.String,System.IFormatProvider);
static Byte ToByte(System.DateTime);
static Int16 ToInt16(System.Object);
static Int16 ToInt16(System.Object,System.IFormatProvider);
static Int16 ToInt16(System.Boolean);
static Int16 ToInt16(System.Char);
static Int16 ToInt16(System.SByte);
static Int16 ToInt16(System.Byte);
static Int16 ToInt16(System.UInt16);
static Int16 ToInt16(System.Int32);
static Int16 ToInt16(System.UInt32);
static Int16 ToInt16(System.Int16);
static Int16 ToInt16(System.Int64);
static Int16 ToInt16(System.UInt64);
static Int16 ToInt16(System.Single);
static Int16 ToInt16(System.Double);
static Int16 ToInt16(System.Decimal);
static Int16 ToInt16(System.String);
static Int16 ToInt16(System.String,System.IFormatProvider);
static Int16 ToInt16(System.DateTime);
static UInt16 ToUInt16(System.Object);
static UInt16 ToUInt16(System.Object,System.IFormatProvider);
static UInt16 ToUInt16(System.Boolean);
static UInt16 ToUInt16(System.Char);
static UInt16 ToUInt16(System.SByte);
static UInt16 ToUInt16(System.Byte);
static UInt16 ToUInt16(System.Int16);
static UInt16 ToUInt16(System.Int32);
static UInt16 ToUInt16(System.UInt16);
static UInt16 ToUInt16(System.UInt32);
static UInt16 ToUInt16(System.Int64);
static UInt16 ToUInt16(System.UInt64);
static UInt16 ToUInt16(System.Single);
static UInt16 ToUInt16(System.Double);
static UInt16 ToUInt16(System.Decimal);
static UInt16 ToUInt16(System.String);
static UInt16 ToUInt16(System.String,System.IFormatProvider);
static UInt16 ToUInt16(System.DateTime);
static Int32 ToInt32(System.Object);
static Int32 ToInt32(System.Object,System.IFormatProvider);
static Int32 ToInt32(System.Boolean);
static Int32 ToInt32(System.Char);
static Int32 ToInt32(System.SByte);
static Int32 ToInt32(System.Byte);
static Int32 ToInt32(System.Int16);
static Int32 ToInt32(System.UInt16);
static Int32 ToInt32(System.UInt32);
static Int32 ToInt32(System.Int32);
static Int32 ToInt32(System.Int64);
static Int32 ToInt32(System.UInt64);
static Int32 ToInt32(System.Single);
static Int32 ToInt32(System.Double);
static Int32 ToInt32(System.Decimal);
static Int32 ToInt32(System.String);
static Int32 ToInt32(System.String,System.IFormatProvider);
static Int32 ToInt32(System.DateTime);
static UInt32 ToUInt32(System.Object);
static UInt32 ToUInt32(System.Object,System.IFormatProvider);
static UInt32 ToUInt32(System.Boolean);
static UInt32 ToUInt32(System.Char);
static UInt32 ToUInt32(System.SByte);
static UInt32 ToUInt32(System.Byte);
static UInt32 ToUInt32(System.Int16);
static UInt32 ToUInt32(System.UInt16);
static UInt32 ToUInt32(System.Int32);
static UInt32 ToUInt32(System.UInt32);
static UInt32 ToUInt32(System.Int64);
static UInt32 ToUInt32(System.UInt64);
static UInt32 ToUInt32(System.Single);
static UInt32 ToUInt32(System.Double);
static UInt32 ToUInt32(System.Decimal);
static UInt32 ToUInt32(System.String);
static UInt32 ToUInt32(System.String,System.IFormatProvider);
static UInt32 ToUInt32(System.DateTime);
static Int64 ToInt64(System.Object);
static Int64 ToInt64(System.Object,System.IFormatProvider);
static Int64 ToInt64(System.Boolean);
static Int64 ToInt64(System.Char);
static Int64 ToInt64(System.SByte);
static Int64 ToInt64(System.Byte);
static Int64 ToInt64(System.Int16);
static Int64 ToInt64(System.UInt16);
static Int64 ToInt64(System.Int32);
static Int64 ToInt64(System.UInt32);
static Int64 ToInt64(System.UInt64);
static Int64 ToInt64(System.Int64);
static Int64 ToInt64(System.Single);
static Int64 ToInt64(System.Double);
static Int64 ToInt64(System.Decimal);
static Int64 ToInt64(System.String);
static Int64 ToInt64(System.String,System.IFormatProvider);
static Int64 ToInt64(System.DateTime);
static UInt64 ToUInt64(System.Object);
static UInt64 ToUInt64(System.Object,System.IFormatProvider);
static UInt64 ToUInt64(System.Boolean);
static UInt64 ToUInt64(System.Char);
static UInt64 ToUInt64(System.SByte);
static UInt64 ToUInt64(System.Byte);
static UInt64 ToUInt64(System.Int16);
static UInt64 ToUInt64(System.UInt16);
static UInt64 ToUInt64(System.Int32);
static UInt64 ToUInt64(System.UInt32);
static UInt64 ToUInt64(System.Int64);
static UInt64 ToUInt64(System.UInt64);
static UInt64 ToUInt64(System.Single);
static UInt64 ToUInt64(System.Double);
static UInt64 ToUInt64(System.Decimal);
static UInt64 ToUInt64(System.String);
static UInt64 ToUInt64(System.String,System.IFormatProvider);
static UInt64 ToUInt64(System.DateTime);
static Single ToSingle(System.Object);
static Single ToSingle(System.Object,System.IFormatProvider);
static Single ToSingle(System.SByte);
static Single ToSingle(System.Byte);
static Single ToSingle(System.Char);
static Single ToSingle(System.Int16);
static Single ToSingle(System.UInt16);
static Single ToSingle(System.Int32);
static Single ToSingle(System.UInt32);
static Single ToSingle(System.Int64);
static Single ToSingle(System.UInt64);
static Single ToSingle(System.Single);
static Single ToSingle(System.Double);
static Single ToSingle(System.Decimal);
static Single ToSingle(System.String);
static Single ToSingle(System.String,System.IFormatProvider);
static Single ToSingle(System.Boolean);
static Single ToSingle(System.DateTime);
static Double ToDouble(System.Object);
static Double ToDouble(System.Object,System.IFormatProvider);
static Double ToDouble(System.SByte);
static Double ToDouble(System.Byte);
static Double ToDouble(System.Int16);
static Double ToDouble(System.Char);
static Double ToDouble(System.UInt16);
static Double ToDouble(System.Int32);
static Double ToDouble(System.UInt32);
static Double ToDouble(System.Int64);
static Double ToDouble(System.UInt64);
static Double ToDouble(System.Single);
static Double ToDouble(System.Double);
static Double ToDouble(System.Decimal);
static Double ToDouble(System.String);
static Double ToDouble(System.String,System.IFormatProvider);
static Double ToDouble(System.Boolean);
static Double ToDouble(System.DateTime);
static Decimal ToDecimal(System.Object);
static Decimal ToDecimal(System.Object,System.IFormatProvider);
static Decimal ToDecimal(System.SByte);
static Decimal ToDecimal(System.Byte);
static Decimal ToDecimal(System.Char);
static Decimal ToDecimal(System.Int16);
static Decimal ToDecimal(System.UInt16);
static Decimal ToDecimal(System.Int32);
static Decimal ToDecimal(System.UInt32);
static Decimal ToDecimal(System.Int64);
static Decimal ToDecimal(System.UInt64);
static Decimal ToDecimal(System.Single);
static Decimal ToDecimal(System.Double);
static Decimal ToDecimal(System.String);
static Decimal ToDecimal(System.String,System.IFormatProvider);
static Decimal ToDecimal(System.Decimal);
static Decimal ToDecimal(System.Boolean);
static Decimal ToDecimal(System.DateTime);
static DateTime ToDateTime(System.DateTime);
static DateTime ToDateTime(System.Object);
static DateTime ToDateTime(System.Object,System.IFormatProvider);
static DateTime ToDateTime(System.String);
static DateTime ToDateTime(System.String,System.IFormatProvider);
static DateTime ToDateTime(System.SByte);
static DateTime ToDateTime(System.Byte);
static DateTime ToDateTime(System.Int16);
static DateTime ToDateTime(System.UInt16);
static DateTime ToDateTime(System.Int32);
static DateTime ToDateTime(System.UInt32);
static DateTime ToDateTime(System.Int64);
static DateTime ToDateTime(System.UInt64);
static DateTime ToDateTime(System.Boolean);
static DateTime ToDateTime(System.Char);
static DateTime ToDateTime(System.Single);
static DateTime ToDateTime(System.Double);
static DateTime ToDateTime(System.Decimal);
static String ToString(System.Object);
static String ToString(System.Object,System.IFormatProvider);
static String ToString(System.Boolean);
static String ToString(System.Boolean,System.IFormatProvider);
static String ToString(System.Char);
static String ToString(System.Char,System.IFormatProvider);
static String ToString(System.SByte);
static String ToString(System.SByte,System.IFormatProvider);
static String ToString(System.Byte);
static String ToString(System.Byte,System.IFormatProvider);
static String ToString(System.Int16);
static String ToString(System.Int16,System.IFormatProvider);
static String ToString(System.UInt16);
static String ToString(System.UInt16,System.IFormatProvider);
static String ToString(System.Int32);
static String ToString(System.Int32,System.IFormatProvider);
static String ToString(System.UInt32);
static String ToString(System.UInt32,System.IFormatProvider);
static String ToString(System.Int64);
static String ToString(System.Int64,System.IFormatProvider);
static String ToString(System.UInt64);
static String ToString(System.UInt64,System.IFormatProvider);
static String ToString(System.Single);
static String ToString(System.Single,System.IFormatProvider);
static String ToString(System.Double);
static String ToString(System.Double,System.IFormatProvider);
static String ToString(System.Decimal);
static String ToString(System.Decimal,System.IFormatProvider);
static String ToString(System.DateTime);
static String ToString(System.DateTime,System.IFormatProvider);
static String ToString(System.String);
static String ToString(System.String,System.IFormatProvider);
static Byte ToByte(System.String,System.Int32);
static SByte ToSByte(System.String,System.Int32);
static Int16 ToInt16(System.String,System.Int32);
static UInt16 ToUInt16(System.String,System.Int32);
static Int32 ToInt32(System.String,System.Int32);
static UInt32 ToUInt32(System.String,System.Int32);
static Int64 ToInt64(System.String,System.Int32);
static UInt64 ToUInt64(System.String,System.Int32);
static String ToString(System.Byte,System.Int32);
static String ToString(System.Int16,System.Int32);
static String ToString(System.Int32,System.Int32);
static String ToString(System.Int64,System.Int32);
static String ToBase64String(System.Byte[]);
static String ToBase64String(System.Byte[],System.Base64FormattingOptions);
static String ToBase64String(System.Byte[],System.Int32,System.Int32);
static String ToBase64String(System.Byte[],System.Int32,System.Int32,System.Base64FormattingOptions);
static Int32 ToBase64CharArray(System.Byte[],System.Int32,System.Int32,System.Char[],System.Int32);
static Int32 ToBase64CharArray(System.Byte[],System.Int32,System.Int32,System.Char[],System.Int32,System.Base64FormattingOptions);
static Byte[] FromBase64String(System.String);
static Byte[] FromBase64CharArray(System.Char[],System.Int32,System.Int32);
}
class ContextBoundObject : System.MarshalByRefObject{
}
class ContextStaticAttribute : System.Attribute{
this ();
}
class DayOfWeek : System.Enum{
}
class DBNull : System.Object{
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
String ToString();
String ToString(System.IFormatProvider);
TypeCode GetTypeCode();
}
class Decimal : System.ValueType{
this (System.Int32);
this (System.UInt32);
this (System.Int64);
this (System.UInt64);
this (System.Single);
this (System.Double);
this (System.Int32[]);
this (System.Int32,System.Int32,System.Int32,System.Boolean,System.Byte);
static Int64 ToOACurrency(System.Decimal);
static Decimal FromOACurrency(System.Int64);
static Decimal Add(System.Decimal,System.Decimal);
static Decimal Ceiling(System.Decimal);
static Int32 Compare(System.Decimal,System.Decimal);
Int32 CompareTo(System.Object);
Int32 CompareTo(System.Decimal);
static Decimal Divide(System.Decimal,System.Decimal);
Boolean Equals(System.Object);
Boolean Equals(System.Decimal);
Int32 GetHashCode();
static Boolean Equals(System.Decimal,System.Decimal);
static Decimal Floor(System.Decimal);
String ToString();
String ToString(System.String);
String ToString(System.IFormatProvider);
String ToString(System.String,System.IFormatProvider);
static Decimal Parse(System.String);
static Decimal Parse(System.String,System.Globalization.NumberStyles);
static Decimal Parse(System.String,System.IFormatProvider);
static Decimal Parse(System.String,System.Globalization.NumberStyles,System.IFormatProvider);
static Int32[] GetBits(System.Decimal);
static Decimal Remainder(System.Decimal,System.Decimal);
static Decimal Multiply(System.Decimal,System.Decimal);
static Decimal Negate(System.Decimal);
static Decimal Round(System.Decimal);
static Decimal Round(System.Decimal,System.Int32);
static Decimal Round(System.Decimal,System.MidpointRounding);
static Decimal Round(System.Decimal,System.Int32,System.MidpointRounding);
static Decimal Subtract(System.Decimal,System.Decimal);
static Byte ToByte(System.Decimal);
static SByte ToSByte(System.Decimal);
static Int16 ToInt16(System.Decimal);
static Double ToDouble(System.Decimal);
static Int32 ToInt32(System.Decimal);
static Int64 ToInt64(System.Decimal);
static UInt16 ToUInt16(System.Decimal);
static UInt32 ToUInt32(System.Decimal);
static UInt64 ToUInt64(System.Decimal);
static Single ToSingle(System.Decimal);
static Decimal Truncate(System.Decimal);
static Decimal op_Implicit(System.Byte);
static Decimal op_Implicit(System.SByte);
static Decimal op_Implicit(System.Int16);
static Decimal op_Implicit(System.UInt16);
static Decimal op_Implicit(System.Char);
static Decimal op_Implicit(System.Int32);
static Decimal op_Implicit(System.UInt32);
static Decimal op_Implicit(System.Int64);
static Decimal op_Implicit(System.UInt64);
static Decimal op_Explicit(System.Single);
static Decimal op_Explicit(System.Double);
static Byte op_Explicit(System.Decimal);
static SByte op_Explicit(System.Decimal);
static Char op_Explicit(System.Decimal);
static Int16 op_Explicit(System.Decimal);
static UInt16 op_Explicit(System.Decimal);
static Int32 op_Explicit(System.Decimal);
static UInt32 op_Explicit(System.Decimal);
static Int64 op_Explicit(System.Decimal);
static UInt64 op_Explicit(System.Decimal);
static Single op_Explicit(System.Decimal);
static Double op_Explicit(System.Decimal);
static Decimal op_UnaryPlus(System.Decimal);
static Decimal op_UnaryNegation(System.Decimal);
static Decimal op_Increment(System.Decimal);
static Decimal op_Decrement(System.Decimal);
static Decimal op_Addition(System.Decimal,System.Decimal);
static Decimal op_Subtraction(System.Decimal,System.Decimal);
static Decimal op_Multiply(System.Decimal,System.Decimal);
static Decimal op_Division(System.Decimal,System.Decimal);
static Decimal op_Modulus(System.Decimal,System.Decimal);
static Boolean op_Equality(System.Decimal,System.Decimal);
static Boolean op_Inequality(System.Decimal,System.Decimal);
static Boolean op_LessThan(System.Decimal,System.Decimal);
static Boolean op_LessThanOrEqual(System.Decimal,System.Decimal);
static Boolean op_GreaterThan(System.Decimal,System.Decimal);
static Boolean op_GreaterThanOrEqual(System.Decimal,System.Decimal);
TypeCode GetTypeCode();
}
class DivideByZeroException : System.ArithmeticException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class Double : System.ValueType{
static Boolean IsInfinity(System.Double);
static Boolean IsPositiveInfinity(System.Double);
static Boolean IsNegativeInfinity(System.Double);
static Boolean IsNaN(System.Double);
Int32 CompareTo(System.Object);
Int32 CompareTo(System.Double);
Boolean Equals(System.Object);
static Boolean op_Equality(System.Double,System.Double);
static Boolean op_Inequality(System.Double,System.Double);
static Boolean op_LessThan(System.Double,System.Double);
static Boolean op_GreaterThan(System.Double,System.Double);
static Boolean op_LessThanOrEqual(System.Double,System.Double);
static Boolean op_GreaterThanOrEqual(System.Double,System.Double);
Boolean Equals(System.Double);
Int32 GetHashCode();
String ToString();
String ToString(System.String);
String ToString(System.IFormatProvider);
String ToString(System.String,System.IFormatProvider);
static Double Parse(System.String);
static Double Parse(System.String,System.Globalization.NumberStyles);
static Double Parse(System.String,System.IFormatProvider);
static Double Parse(System.String,System.Globalization.NumberStyles,System.IFormatProvider);
TypeCode GetTypeCode();
}
class DuplicateWaitObjectException : System.ArgumentException{
this ();
this (System.String);
this (System.String,System.String);
this (System.String,System.Exception);
}
class Enum : System.ValueType{
static Object Parse(System.Type,System.String);
static Object Parse(System.Type,System.String,System.Boolean);
static Type GetUnderlyingType(System.Type);
static Array GetValues(System.Type);
static String GetName(System.Type,System.Object);
static String[] GetNames(System.Type);
static Object ToObject(System.Type,System.Object);
static Boolean IsDefined(System.Type,System.Object);
static String Format(System.Type,System.Object,System.String);
Boolean Equals(System.Object);
Int32 GetHashCode();
String ToString();
String ToString(System.String,System.IFormatProvider);
Int32 CompareTo(System.Object);
String ToString(System.String);
String ToString(System.IFormatProvider);
Boolean HasFlag(System.Enum);
TypeCode GetTypeCode();
static Object ToObject(System.Type,System.SByte);
static Object ToObject(System.Type,System.Int16);
static Object ToObject(System.Type,System.Int32);
static Object ToObject(System.Type,System.Byte);
static Object ToObject(System.Type,System.UInt16);
static Object ToObject(System.Type,System.UInt32);
static Object ToObject(System.Type,System.Int64);
static Object ToObject(System.Type,System.UInt64);
}
class EntryPointNotFoundException : System.TypeLoadException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class DllNotFoundException : System.TypeLoadException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class EnvironmentVariableTarget : System.Enum{
}
class Environment : System.Object{
static class SpecialFolderOption : System.Enum{
}
static class SpecialFolder : System.Enum{
}
static Int32 get_TickCount();
static Void Exit(System.Int32);
static Int32 get_ExitCode();
static Void set_ExitCode(System.Int32);
static Void FailFast(System.String);
static Void FailFast(System.String,System.Exception);
static String get_CommandLine();
static String get_CurrentDirectory();
static Void set_CurrentDirectory(System.String);
static String get_SystemDirectory();
static String ExpandEnvironmentVariables(System.String);
static String get_MachineName();
static Int32 get_ProcessorCount();
static Int32 get_SystemPageSize();
static String[] GetCommandLineArgs();
static String GetEnvironmentVariable(System.String);
static String GetEnvironmentVariable(System.String,System.EnvironmentVariableTarget);
static IDictionary GetEnvironmentVariables();
static IDictionary GetEnvironmentVariables(System.EnvironmentVariableTarget);
static Void SetEnvironmentVariable(System.String,System.String);
static Void SetEnvironmentVariable(System.String,System.String,System.EnvironmentVariableTarget);
static String[] GetLogicalDrives();
static String get_NewLine();
static Version get_Version();
static Int64 get_WorkingSet();
static OperatingSystem get_OSVersion();
static String get_StackTrace();
static Boolean get_Is64BitProcess();
static Boolean get_Is64BitOperatingSystem();
static Boolean get_HasShutdownStarted();
static String get_UserName();
static Boolean get_UserInteractive();
static String GetFolderPath(System.Environment.SpecialFolder);
static String GetFolderPath(System.Environment.SpecialFolder,System.Environment.SpecialFolderOption);
static String get_UserDomainName();
static Int32 get_CurrentManagedThreadId();
}
class EventArgs : System.Object{
this ();
}
class EventHandler : System.MulticastDelegate{
this (System.Object,System.IntPtr);
Void Invoke(System.Object,System.EventArgs);
IAsyncResult BeginInvoke(System.Object,System.EventArgs,System.AsyncCallback,System.Object);
Void EndInvoke(System.IAsyncResult);
}
class FieldAccessException : System.MemberAccessException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class FlagsAttribute : System.Attribute{
this ();
}
class FormatException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class FormattableString : System.Object{
String get_Format();
Object[] GetArguments();
Int32 get_ArgumentCount();
Object GetArgument(System.Int32);
String ToString(System.IFormatProvider);
static String Invariant(System.FormattableString);
String ToString();
}
class GCCollectionMode : System.Enum{
}
class GCNotificationStatus : System.Enum{
}
class GC : System.Object{
static Void AddMemoryPressure(System.Int64);
static Void RemoveMemoryPressure(System.Int64);
static Int32 GetGeneration(System.Object);
static Void Collect(System.Int32);
static Void Collect();
static Void Collect(System.Int32,System.GCCollectionMode);
static Void Collect(System.Int32,System.GCCollectionMode,System.Boolean);
static Void Collect(System.Int32,System.GCCollectionMode,System.Boolean,System.Boolean);
static Int32 CollectionCount(System.Int32);
static Void KeepAlive(System.Object);
static Int32 GetGeneration(System.WeakReference);
static Int32 get_MaxGeneration();
static Void WaitForPendingFinalizers();
static Void SuppressFinalize(System.Object);
static Void ReRegisterForFinalize(System.Object);
static Int64 GetTotalMemory(System.Boolean);
static Void RegisterForFullGCNotification(System.Int32,System.Int32);
static Void CancelFullGCNotification();
static GCNotificationStatus WaitForFullGCApproach();
static GCNotificationStatus WaitForFullGCApproach(System.Int32);
static GCNotificationStatus WaitForFullGCComplete();
static GCNotificationStatus WaitForFullGCComplete(System.Int32);
static Boolean TryStartNoGCRegion(System.Int64);
static Boolean TryStartNoGCRegion(System.Int64,System.Int64);
static Boolean TryStartNoGCRegion(System.Int64,System.Boolean);
static Boolean TryStartNoGCRegion(System.Int64,System.Int64,System.Boolean);
static Void EndNoGCRegion();
}
class Guid : System.ValueType{
this (System.Byte[]);
this (System.UInt32,System.UInt16,System.UInt16,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte);
this (System.Int32,System.Int16,System.Int16,System.Byte[]);
this (System.Int32,System.Int16,System.Int16,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte);
this (System.String);
static Guid Parse(System.String);
static Guid ParseExact(System.String,System.String);
Byte[] ToByteArray();
String ToString();
Int32 GetHashCode();
Boolean Equals(System.Object);
Boolean Equals(System.Guid);
Int32 CompareTo(System.Object);
Int32 CompareTo(System.Guid);
static Boolean op_Equality(System.Guid,System.Guid);
static Boolean op_Inequality(System.Guid,System.Guid);
static Guid NewGuid();
String ToString(System.String);
String ToString(System.String,System.IFormatProvider);
}
interface IAsyncResult{
Boolean get_IsCompleted();
WaitHandle get_AsyncWaitHandle();
Object get_AsyncState();
Boolean get_CompletedSynchronously();
}
interface ICustomFormatter{
String Format(System.String,System.Object,System.IFormatProvider);
}
interface IDisposable{
Void Dispose();
}
interface IFormatProvider{
Object GetFormat(System.Type);
}
interface IFormattable{
String ToString(System.String,System.IFormatProvider);
}
class IndexOutOfRangeException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class InsufficientMemoryException : System.OutOfMemoryException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class InsufficientExecutionStackException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class Int16 : System.ValueType{
Int32 CompareTo(System.Object);
Int32 CompareTo(System.Int16);
Boolean Equals(System.Object);
Boolean Equals(System.Int16);
Int32 GetHashCode();
String ToString();
String ToString(System.IFormatProvider);
String ToString(System.String);
String ToString(System.String,System.IFormatProvider);
static Int16 Parse(System.String);
static Int16 Parse(System.String,System.Globalization.NumberStyles);
static Int16 Parse(System.String,System.IFormatProvider);
static Int16 Parse(System.String,System.Globalization.NumberStyles,System.IFormatProvider);
TypeCode GetTypeCode();
}
class Int32 : System.ValueType{
Int32 CompareTo(System.Object);
Int32 CompareTo(System.Int32);
Boolean Equals(System.Object);
Boolean Equals(System.Int32);
Int32 GetHashCode();
String ToString();
String ToString(System.String);
String ToString(System.IFormatProvider);
String ToString(System.String,System.IFormatProvider);
static Int32 Parse(System.String);
static Int32 Parse(System.String,System.Globalization.NumberStyles);
static Int32 Parse(System.String,System.IFormatProvider);
static Int32 Parse(System.String,System.Globalization.NumberStyles,System.IFormatProvider);
TypeCode GetTypeCode();
}
class Int64 : System.ValueType{
Int32 CompareTo(System.Object);
Int32 CompareTo(System.Int64);
Boolean Equals(System.Object);
Boolean Equals(System.Int64);
Int32 GetHashCode();
String ToString();
String ToString(System.IFormatProvider);
String ToString(System.String);
String ToString(System.String,System.IFormatProvider);
static Int64 Parse(System.String);
static Int64 Parse(System.String,System.Globalization.NumberStyles);
static Int64 Parse(System.String,System.IFormatProvider);
static Int64 Parse(System.String,System.Globalization.NumberStyles,System.IFormatProvider);
TypeCode GetTypeCode();
}
class IntPtr : System.ValueType{
this (System.Int32);
this (System.Int64);
Boolean Equals(System.Object);
Int32 GetHashCode();
Int32 ToInt32();
Int64 ToInt64();
String ToString();
String ToString(System.String);
static IntPtr op_Explicit(System.Int32);
static IntPtr op_Explicit(System.Int64);
static Int32 op_Explicit(System.IntPtr);
static Int64 op_Explicit(System.IntPtr);
static Boolean op_Equality(System.IntPtr,System.IntPtr);
static Boolean op_Inequality(System.IntPtr,System.IntPtr);
static IntPtr Add(System.IntPtr,System.Int32);
static IntPtr op_Addition(System.IntPtr,System.Int32);
static IntPtr Subtract(System.IntPtr,System.Int32);
static IntPtr op_Subtraction(System.IntPtr,System.Int32);
static Int32 get_Size();
}
class InvalidCastException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
this (System.String,System.Int32);
}
class InvalidOperationException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class InvalidProgramException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class InvalidTimeZoneException : System.Exception{
this (System.String);
this (System.String,System.Exception);
this ();
}
interface IConvertible{
TypeCode GetTypeCode();
Boolean ToBoolean(System.IFormatProvider);
Char ToChar(System.IFormatProvider);
SByte ToSByte(System.IFormatProvider);
Byte ToByte(System.IFormatProvider);
Int16 ToInt16(System.IFormatProvider);
UInt16 ToUInt16(System.IFormatProvider);
Int32 ToInt32(System.IFormatProvider);
UInt32 ToUInt32(System.IFormatProvider);
Int64 ToInt64(System.IFormatProvider);
UInt64 ToUInt64(System.IFormatProvider);
Single ToSingle(System.IFormatProvider);
Double ToDouble(System.IFormatProvider);
Decimal ToDecimal(System.IFormatProvider);
DateTime ToDateTime(System.IFormatProvider);
String ToString(System.IFormatProvider);
Object ToType(System.Type,System.IFormatProvider);
}
interface IServiceProvider{
Object GetService(System.Type);
}
class LocalDataStoreSlot : System.Object{
}
class MarshalByRefObject : System.Object{
Object GetLifetimeService();
Object InitializeLifetimeService();
ObjRef CreateObjRef(System.Type);
}
class Math : System.Object{
static Double Acos(System.Double);
static Double Asin(System.Double);
static Double Atan(System.Double);
static Double Atan2(System.Double,System.Double);
static Decimal Ceiling(System.Decimal);
static Double Ceiling(System.Double);
static Double Cos(System.Double);
static Double Cosh(System.Double);
static Decimal Floor(System.Decimal);
static Double Floor(System.Double);
static Double Sin(System.Double);
static Double Tan(System.Double);
static Double Sinh(System.Double);
static Double Tanh(System.Double);
static Double Round(System.Double);
static Double Round(System.Double,System.Int32);
static Double Round(System.Double,System.MidpointRounding);
static Double Round(System.Double,System.Int32,System.MidpointRounding);
static Decimal Round(System.Decimal);
static Decimal Round(System.Decimal,System.Int32);
static Decimal Round(System.Decimal,System.MidpointRounding);
static Decimal Round(System.Decimal,System.Int32,System.MidpointRounding);
static Decimal Truncate(System.Decimal);
static Double Truncate(System.Double);
static Double Sqrt(System.Double);
static Double Log(System.Double);
static Double Log10(System.Double);
static Double Exp(System.Double);
static Double Pow(System.Double,System.Double);
static Double IEEERemainder(System.Double,System.Double);
static SByte Abs(System.SByte);
static Int16 Abs(System.Int16);
static Int32 Abs(System.Int32);
static Int64 Abs(System.Int64);
static Single Abs(System.Single);
static Double Abs(System.Double);
static Decimal Abs(System.Decimal);
static SByte Max(System.SByte,System.SByte);
static Byte Max(System.Byte,System.Byte);
static Int16 Max(System.Int16,System.Int16);
static UInt16 Max(System.UInt16,System.UInt16);
static Int32 Max(System.Int32,System.Int32);
static UInt32 Max(System.UInt32,System.UInt32);
static Int64 Max(System.Int64,System.Int64);
static UInt64 Max(System.UInt64,System.UInt64);
static Single Max(System.Single,System.Single);
static Double Max(System.Double,System.Double);
static Decimal Max(System.Decimal,System.Decimal);
static SByte Min(System.SByte,System.SByte);
static Byte Min(System.Byte,System.Byte);
static Int16 Min(System.Int16,System.Int16);
static UInt16 Min(System.UInt16,System.UInt16);
static Int32 Min(System.Int32,System.Int32);
static UInt32 Min(System.UInt32,System.UInt32);
static Int64 Min(System.Int64,System.Int64);
static UInt64 Min(System.UInt64,System.UInt64);
static Single Min(System.Single,System.Single);
static Double Min(System.Double,System.Double);
static Decimal Min(System.Decimal,System.Decimal);
static Double Log(System.Double,System.Double);
static Int32 Sign(System.SByte);
static Int32 Sign(System.Int16);
static Int32 Sign(System.Int32);
static Int32 Sign(System.Int64);
static Int32 Sign(System.Single);
static Int32 Sign(System.Double);
static Int32 Sign(System.Decimal);
static Int64 BigMul(System.Int32,System.Int32);
}
class MethodAccessException : System.MemberAccessException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class MidpointRounding : System.Enum{
}
class MissingFieldException : System.MissingMemberException{
this ();
this (System.String);
this (System.String,System.Exception);
this (System.String,System.String);
String get_Message();
}
class MissingMemberException : System.MemberAccessException{
this (System.String);
this ();
this (System.String,System.Exception);
this (System.String,System.String);
String get_Message();
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
}
class MissingMethodException : System.MissingMemberException{
this ();
this (System.String);
this (System.String,System.Exception);
this (System.String,System.String);
String get_Message();
}
class MulticastNotSupportedException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class NonSerializedAttribute : System.Attribute{
this ();
}
class NotFiniteNumberException : System.ArithmeticException{
this ();
this (System.Double);
this (System.String);
this (System.String,System.Double);
this (System.String,System.Exception);
this (System.String,System.Double,System.Exception);
Double get_OffendingNumber();
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
}
class NotImplementedException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class NotSupportedException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class NullReferenceException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class ObjectDisposedException : System.InvalidOperationException{
this (System.String);
this (System.String,System.String);
this (System.String,System.Exception);
String get_Message();
String get_ObjectName();
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
}
class ObsoleteAttribute : System.Attribute{
this ();
this (System.String);
this (System.String,System.Boolean);
String get_Message();
Boolean get_IsError();
}
class OperatingSystem : System.Object{
this (System.PlatformID,System.Version);
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
PlatformID get_Platform();
String get_ServicePack();
Version get_Version();
Object Clone();
String ToString();
String get_VersionString();
}
class OperationCanceledException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
this (System.Threading.CancellationToken);
this (System.String,System.Threading.CancellationToken);
this (System.String,System.Exception,System.Threading.CancellationToken);
CancellationToken get_CancellationToken();
}
class OverflowException : System.ArithmeticException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class ParamArrayAttribute : System.Attribute{
this ();
}
class PlatformID : System.Enum{
}
class PlatformNotSupportedException : System.NotSupportedException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class Random : System.Object{
this (System.Int32);
this ();
Int32 Next();
Int32 Next(System.Int32,System.Int32);
Int32 Next(System.Int32);
Double NextDouble();
Void NextBytes(System.Byte[]);
}
class RankException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class RuntimeArgumentHandle : System.ValueType{
}
class RuntimeTypeHandle : System.ValueType{
static Boolean op_Equality(System.RuntimeTypeHandle,System.Object);
static Boolean op_Equality(System.Object,System.RuntimeTypeHandle);
static Boolean op_Inequality(System.RuntimeTypeHandle,System.Object);
static Boolean op_Inequality(System.Object,System.RuntimeTypeHandle);
Int32 GetHashCode();
Boolean Equals(System.Object);
Boolean Equals(System.RuntimeTypeHandle);
IntPtr get_Value();
ModuleHandle GetModuleHandle();
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
}
class RuntimeMethodHandle : System.ValueType{
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
IntPtr get_Value();
Int32 GetHashCode();
Boolean Equals(System.Object);
static Boolean op_Equality(System.RuntimeMethodHandle,System.RuntimeMethodHandle);
static Boolean op_Inequality(System.RuntimeMethodHandle,System.RuntimeMethodHandle);
Boolean Equals(System.RuntimeMethodHandle);
IntPtr GetFunctionPointer();
}
class RuntimeFieldHandle : System.ValueType{
IntPtr get_Value();
Int32 GetHashCode();
Boolean Equals(System.Object);
Boolean Equals(System.RuntimeFieldHandle);
static Boolean op_Equality(System.RuntimeFieldHandle,System.RuntimeFieldHandle);
static Boolean op_Inequality(System.RuntimeFieldHandle,System.RuntimeFieldHandle);
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
}
class ModuleHandle : System.ValueType{
Int32 GetHashCode();
Boolean Equals(System.Object);
Boolean Equals(System.ModuleHandle);
static Boolean op_Equality(System.ModuleHandle,System.ModuleHandle);
static Boolean op_Inequality(System.ModuleHandle,System.ModuleHandle);
RuntimeTypeHandle GetRuntimeTypeHandleFromMetadataToken(System.Int32);
RuntimeTypeHandle ResolveTypeHandle(System.Int32);
RuntimeTypeHandle ResolveTypeHandle(System.Int32,System.RuntimeTypeHandle[],System.RuntimeTypeHandle[]);
RuntimeMethodHandle GetRuntimeMethodHandleFromMetadataToken(System.Int32);
RuntimeMethodHandle ResolveMethodHandle(System.Int32);
RuntimeMethodHandle ResolveMethodHandle(System.Int32,System.RuntimeTypeHandle[],System.RuntimeTypeHandle[]);
RuntimeFieldHandle GetRuntimeFieldHandleFromMetadataToken(System.Int32);
RuntimeFieldHandle ResolveFieldHandle(System.Int32);
RuntimeFieldHandle ResolveFieldHandle(System.Int32,System.RuntimeTypeHandle[],System.RuntimeTypeHandle[]);
Int32 get_MDStreamVersion();
}
class SByte : System.ValueType{
String ToString();
Int32 CompareTo(System.Object);
Int32 CompareTo(System.SByte);
Boolean Equals(System.Object);
Boolean Equals(System.SByte);
Int32 GetHashCode();
String ToString(System.IFormatProvider);
String ToString(System.String);
String ToString(System.String,System.IFormatProvider);
static SByte Parse(System.String);
static SByte Parse(System.String,System.Globalization.NumberStyles);
static SByte Parse(System.String,System.IFormatProvider);
static SByte Parse(System.String,System.Globalization.NumberStyles,System.IFormatProvider);
TypeCode GetTypeCode();
}
class SerializableAttribute : System.Attribute{
this ();
}
class Single : System.ValueType{
static Boolean IsInfinity(System.Single);
static Boolean IsPositiveInfinity(System.Single);
static Boolean IsNegativeInfinity(System.Single);
static Boolean IsNaN(System.Single);
Int32 CompareTo(System.Object);
Int32 CompareTo(System.Single);
static Boolean op_Equality(System.Single,System.Single);
static Boolean op_Inequality(System.Single,System.Single);
static Boolean op_LessThan(System.Single,System.Single);
static Boolean op_GreaterThan(System.Single,System.Single);
static Boolean op_LessThanOrEqual(System.Single,System.Single);
static Boolean op_GreaterThanOrEqual(System.Single,System.Single);
Boolean Equals(System.Object);
Boolean Equals(System.Single);
Int32 GetHashCode();
String ToString();
String ToString(System.IFormatProvider);
String ToString(System.String);
String ToString(System.String,System.IFormatProvider);
static Single Parse(System.String);
static Single Parse(System.String,System.Globalization.NumberStyles);
static Single Parse(System.String,System.IFormatProvider);
static Single Parse(System.String,System.Globalization.NumberStyles,System.IFormatProvider);
TypeCode GetTypeCode();
}
class STAThreadAttribute : System.Attribute{
this ();
}
class MTAThreadAttribute : System.Attribute{
this ();
}
class TimeoutException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class TimeSpan : System.ValueType{
this (System.Int64);
this (System.Int32,System.Int32,System.Int32);
this (System.Int32,System.Int32,System.Int32,System.Int32);
this (System.Int32,System.Int32,System.Int32,System.Int32,System.Int32);
Int64 get_Ticks();
Int32 get_Days();
Int32 get_Hours();
Int32 get_Milliseconds();
Int32 get_Minutes();
Int32 get_Seconds();
Double get_TotalDays();
Double get_TotalHours();
Double get_TotalMilliseconds();
Double get_TotalMinutes();
Double get_TotalSeconds();
TimeSpan Add(System.TimeSpan);
static Int32 Compare(System.TimeSpan,System.TimeSpan);
Int32 CompareTo(System.Object);
Int32 CompareTo(System.TimeSpan);
static TimeSpan FromDays(System.Double);
TimeSpan Duration();
Boolean Equals(System.Object);
Boolean Equals(System.TimeSpan);
static Boolean Equals(System.TimeSpan,System.TimeSpan);
Int32 GetHashCode();
static TimeSpan FromHours(System.Double);
static TimeSpan FromMilliseconds(System.Double);
static TimeSpan FromMinutes(System.Double);
TimeSpan Negate();
static TimeSpan FromSeconds(System.Double);
TimeSpan Subtract(System.TimeSpan);
static TimeSpan FromTicks(System.Int64);
static TimeSpan Parse(System.String);
static TimeSpan Parse(System.String,System.IFormatProvider);
static TimeSpan ParseExact(System.String,System.String,System.IFormatProvider);
static TimeSpan ParseExact(System.String,System.String[],System.IFormatProvider);
static TimeSpan ParseExact(System.String,System.String,System.IFormatProvider,System.Globalization.TimeSpanStyles);
static TimeSpan ParseExact(System.String,System.String[],System.IFormatProvider,System.Globalization.TimeSpanStyles);
String ToString();
String ToString(System.String);
String ToString(System.String,System.IFormatProvider);
static TimeSpan op_UnaryNegation(System.TimeSpan);
static TimeSpan op_Subtraction(System.TimeSpan,System.TimeSpan);
static TimeSpan op_UnaryPlus(System.TimeSpan);
static TimeSpan op_Addition(System.TimeSpan,System.TimeSpan);
static Boolean op_Equality(System.TimeSpan,System.TimeSpan);
static Boolean op_Inequality(System.TimeSpan,System.TimeSpan);
static Boolean op_LessThan(System.TimeSpan,System.TimeSpan);
static Boolean op_LessThanOrEqual(System.TimeSpan,System.TimeSpan);
static Boolean op_GreaterThan(System.TimeSpan,System.TimeSpan);
static Boolean op_GreaterThanOrEqual(System.TimeSpan,System.TimeSpan);
}
class TimeZone : System.Object{
static TimeZone get_CurrentTimeZone();
String get_StandardName();
String get_DaylightName();
TimeSpan GetUtcOffset(System.DateTime);
DateTime ToUniversalTime(System.DateTime);
DateTime ToLocalTime(System.DateTime);
DaylightTime GetDaylightChanges(System.Int32);
Boolean IsDaylightSavingTime(System.DateTime);
static Boolean IsDaylightSavingTime(System.DateTime,System.Globalization.DaylightTime);
}
class TimeZoneInfo : System.Object{
static class AdjustmentRule : System.Object{
DateTime get_DateStart();
DateTime get_DateEnd();
TimeSpan get_DaylightDelta();
TransitionTime get_DaylightTransitionStart();
TransitionTime get_DaylightTransitionEnd();
Boolean Equals(System.TimeZoneInfo.AdjustmentRule);
Int32 GetHashCode();
static AdjustmentRule CreateAdjustmentRule(System.DateTime,System.DateTime,System.TimeSpan,System.TimeZoneInfo.TransitionTime,System.TimeZoneInfo.TransitionTime);
}
static class TransitionTime : System.ValueType{
DateTime get_TimeOfDay();
Int32 get_Month();
Int32 get_Week();
Int32 get_Day();
DayOfWeek get_DayOfWeek();
Boolean get_IsFixedDateRule();
Boolean Equals(System.Object);
static Boolean op_Equality(System.TimeZoneInfo.TransitionTime,System.TimeZoneInfo.TransitionTime);
static Boolean op_Inequality(System.TimeZoneInfo.TransitionTime,System.TimeZoneInfo.TransitionTime);
Boolean Equals(System.TimeZoneInfo.TransitionTime);
Int32 GetHashCode();
static TransitionTime CreateFixedDateRule(System.DateTime,System.Int32,System.Int32);
static TransitionTime CreateFloatingDateRule(System.DateTime,System.Int32,System.Int32,System.DayOfWeek);
}
String get_Id();
String get_DisplayName();
String get_StandardName();
String get_DaylightName();
TimeSpan get_BaseUtcOffset();
Boolean get_SupportsDaylightSavingTime();
AdjustmentRule[] GetAdjustmentRules();
TimeSpan[] GetAmbiguousTimeOffsets(System.DateTimeOffset);
TimeSpan[] GetAmbiguousTimeOffsets(System.DateTime);
TimeSpan GetUtcOffset(System.DateTimeOffset);
TimeSpan GetUtcOffset(System.DateTime);
Boolean IsAmbiguousTime(System.DateTimeOffset);
Boolean IsAmbiguousTime(System.DateTime);
Boolean IsDaylightSavingTime(System.DateTimeOffset);
Boolean IsDaylightSavingTime(System.DateTime);
Boolean IsInvalidTime(System.DateTime);
static Void ClearCachedData();
static DateTimeOffset ConvertTimeBySystemTimeZoneId(System.DateTimeOffset,System.String);
static DateTime ConvertTimeBySystemTimeZoneId(System.DateTime,System.String);
static DateTime ConvertTimeBySystemTimeZoneId(System.DateTime,System.String,System.String);
static DateTimeOffset ConvertTime(System.DateTimeOffset,System.TimeZoneInfo);
static DateTime ConvertTime(System.DateTime,System.TimeZoneInfo);
static DateTime ConvertTime(System.DateTime,System.TimeZoneInfo,System.TimeZoneInfo);
static DateTime ConvertTimeFromUtc(System.DateTime,System.TimeZoneInfo);
static DateTime ConvertTimeToUtc(System.DateTime);
static DateTime ConvertTimeToUtc(System.DateTime,System.TimeZoneInfo);
Boolean Equals(System.TimeZoneInfo);
Boolean Equals(System.Object);
static TimeZoneInfo FromSerializedString(System.String);
Int32 GetHashCode();
Boolean HasSameRules(System.TimeZoneInfo);
static TimeZoneInfo get_Local();
String ToSerializedString();
String ToString();
static TimeZoneInfo get_Utc();
static TimeZoneInfo CreateCustomTimeZone(System.String,System.TimeSpan,System.String,System.String);
static TimeZoneInfo CreateCustomTimeZone(System.String,System.TimeSpan,System.String,System.String,System.String,System.TimeZoneInfo.AdjustmentRule[]);
static TimeZoneInfo CreateCustomTimeZone(System.String,System.TimeSpan,System.String,System.String,System.String,System.TimeZoneInfo.AdjustmentRule[],System.Boolean);
static TimeZoneInfo FindSystemTimeZoneById(System.String);
}
class TimeZoneNotFoundException : System.Exception{
this (System.String);
this (System.String,System.Exception);
this ();
}
class Type : System.Reflection.MemberInfo{
MemberTypes get_MemberType();
Type get_DeclaringType();
MethodBase get_DeclaringMethod();
Type get_ReflectedType();
static Type GetType(System.String,System.Boolean,System.Boolean);
static Type GetType(System.String,System.Boolean);
static Type GetType(System.String);
static Type ReflectionOnlyGetType(System.String,System.Boolean,System.Boolean);
Type MakePointerType();
StructLayoutAttribute get_StructLayoutAttribute();
Type MakeByRefType();
Type MakeArrayType();
Type MakeArrayType(System.Int32);
static Type GetTypeFromProgID(System.String);
static Type GetTypeFromProgID(System.String,System.Boolean);
static Type GetTypeFromProgID(System.String,System.String);
static Type GetTypeFromProgID(System.String,System.String,System.Boolean);
static Type GetTypeFromCLSID(System.Guid);
static Type GetTypeFromCLSID(System.Guid,System.Boolean);
static Type GetTypeFromCLSID(System.Guid,System.String);
static Type GetTypeFromCLSID(System.Guid,System.String,System.Boolean);
static TypeCode GetTypeCode(System.Type);
Guid get_GUID();
static Binder get_DefaultBinder();
Object InvokeMember(System.String,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object,System.Object[],System.Reflection.ParameterModifier[],System.Globalization.CultureInfo,System.String[]);
Object InvokeMember(System.String,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object,System.Object[],System.Globalization.CultureInfo);
Object InvokeMember(System.String,System.Reflection.BindingFlags,System.Reflection.Binder,System.Object,System.Object[]);
Module get_Module();
Assembly get_Assembly();
RuntimeTypeHandle get_TypeHandle();
static RuntimeTypeHandle GetTypeHandle(System.Object);
static Type GetTypeFromHandle(System.RuntimeTypeHandle);
String get_FullName();
String get_Namespace();
String get_AssemblyQualifiedName();
Int32 GetArrayRank();
Type get_BaseType();
ConstructorInfo GetConstructor(System.Reflection.BindingFlags,System.Reflection.Binder,System.Reflection.CallingConventions,System.Type[],System.Reflection.ParameterModifier[]);
ConstructorInfo GetConstructor(System.Reflection.BindingFlags,System.Reflection.Binder,System.Type[],System.Reflection.ParameterModifier[]);
ConstructorInfo GetConstructor(System.Type[]);
ConstructorInfo[] GetConstructors();
ConstructorInfo[] GetConstructors(System.Reflection.BindingFlags);
ConstructorInfo get_TypeInitializer();
MethodInfo GetMethod(System.String,System.Reflection.BindingFlags,System.Reflection.Binder,System.Reflection.CallingConventions,System.Type[],System.Reflection.ParameterModifier[]);
MethodInfo GetMethod(System.String,System.Reflection.BindingFlags,System.Reflection.Binder,System.Type[],System.Reflection.ParameterModifier[]);
MethodInfo GetMethod(System.String,System.Type[],System.Reflection.ParameterModifier[]);
MethodInfo GetMethod(System.String,System.Type[]);
MethodInfo GetMethod(System.String,System.Reflection.BindingFlags);
MethodInfo GetMethod(System.String);
MethodInfo[] GetMethods();
MethodInfo[] GetMethods(System.Reflection.BindingFlags);
FieldInfo GetField(System.String,System.Reflection.BindingFlags);
FieldInfo GetField(System.String);
FieldInfo[] GetFields();
FieldInfo[] GetFields(System.Reflection.BindingFlags);
Type GetInterface(System.String);
Type GetInterface(System.String,System.Boolean);
Type[] GetInterfaces();
Type[] FindInterfaces(System.Reflection.TypeFilter,System.Object);
EventInfo GetEvent(System.String);
EventInfo GetEvent(System.String,System.Reflection.BindingFlags);
EventInfo[] GetEvents();
EventInfo[] GetEvents(System.Reflection.BindingFlags);
PropertyInfo GetProperty(System.String,System.Reflection.BindingFlags,System.Reflection.Binder,System.Type,System.Type[],System.Reflection.ParameterModifier[]);
PropertyInfo GetProperty(System.String,System.Type,System.Type[],System.Reflection.ParameterModifier[]);
PropertyInfo GetProperty(System.String,System.Reflection.BindingFlags);
PropertyInfo GetProperty(System.String,System.Type,System.Type[]);
PropertyInfo GetProperty(System.String,System.Type[]);
PropertyInfo GetProperty(System.String,System.Type);
PropertyInfo GetProperty(System.String);
PropertyInfo[] GetProperties(System.Reflection.BindingFlags);
PropertyInfo[] GetProperties();
Type[] GetNestedTypes();
Type[] GetNestedTypes(System.Reflection.BindingFlags);
Type GetNestedType(System.String);
Type GetNestedType(System.String,System.Reflection.BindingFlags);
MemberInfo[] GetMember(System.String);
MemberInfo[] GetMember(System.String,System.Reflection.BindingFlags);
MemberInfo[] GetMember(System.String,System.Reflection.MemberTypes,System.Reflection.BindingFlags);
MemberInfo[] GetMembers();
MemberInfo[] GetMembers(System.Reflection.BindingFlags);
MemberInfo[] GetDefaultMembers();
MemberInfo[] FindMembers(System.Reflection.MemberTypes,System.Reflection.BindingFlags,System.Reflection.MemberFilter,System.Object);
Boolean get_IsNested();
TypeAttributes get_Attributes();
GenericParameterAttributes get_GenericParameterAttributes();
Boolean get_IsVisible();
Boolean get_IsNotPublic();
Boolean get_IsPublic();
Boolean get_IsNestedPublic();
Boolean get_IsNestedPrivate();
Boolean get_IsNestedFamily();
Boolean get_IsNestedAssembly();
Boolean get_IsNestedFamANDAssem();
Boolean get_IsNestedFamORAssem();
Boolean get_IsAutoLayout();
Boolean get_IsLayoutSequential();
Boolean get_IsExplicitLayout();
Boolean get_IsClass();
Boolean get_IsInterface();
Boolean get_IsValueType();
Boolean get_IsAbstract();
Boolean get_IsSealed();
Boolean get_IsEnum();
Boolean get_IsSpecialName();
Boolean get_IsImport();
Boolean get_IsSerializable();
Boolean get_IsAnsiClass();
Boolean get_IsUnicodeClass();
Boolean get_IsAutoClass();
Boolean get_IsArray();
Boolean get_IsGenericType();
Boolean get_IsGenericTypeDefinition();
Boolean get_IsConstructedGenericType();
Boolean get_IsGenericParameter();
Int32 get_GenericParameterPosition();
Boolean get_ContainsGenericParameters();
Type[] GetGenericParameterConstraints();
Boolean get_IsByRef();
Boolean get_IsPointer();
Boolean get_IsPrimitive();
Boolean get_IsCOMObject();
Boolean get_HasElementType();
Boolean get_IsContextful();
Boolean get_IsMarshalByRef();
Type MakeGenericType(System.Type[]);
Type GetElementType();
Type[] GetGenericArguments();
Type[] get_GenericTypeArguments();
Type GetGenericTypeDefinition();
String[] GetEnumNames();
Array GetEnumValues();
Type GetEnumUnderlyingType();
Boolean IsEnumDefined(System.Object);
String GetEnumName(System.Object);
Boolean get_IsSecurityCritical();
Boolean get_IsSecuritySafeCritical();
Boolean get_IsSecurityTransparent();
Type get_UnderlyingSystemType();
Boolean IsSubclassOf(System.Type);
Boolean IsInstanceOfType(System.Object);
Boolean IsAssignableFrom(System.Type);
Boolean IsEquivalentTo(System.Type);
String ToString();
static Type[] GetTypeArray(System.Object[]);
Boolean Equals(System.Object);
Boolean Equals(System.Type);
static Boolean op_Equality(System.Type,System.Type);
static Boolean op_Inequality(System.Type,System.Type);
Int32 GetHashCode();
InterfaceMapping GetInterfaceMap(System.Type);
Type GetType();
}
class TypeAccessException : System.TypeLoadException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class TypeCode : System.Enum{
}
class TypedReference : System.ValueType{
static TypedReference MakeTypedReference(System.Object,System.Reflection.FieldInfo[]);
Int32 GetHashCode();
Boolean Equals(System.Object);
static Object ToObject(System.TypedReference);
static Type GetTargetType(System.TypedReference);
static RuntimeTypeHandle TargetTypeToken(System.TypedReference);
static Void SetTypedReference(System.TypedReference,System.Object);
}
class TypeInitializationException : System.SystemException{
this (System.String,System.Exception);
String get_TypeName();
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
}
class TypeLoadException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
String get_Message();
String get_TypeName();
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
}
class UInt16 : System.ValueType{
Int32 CompareTo(System.Object);
Int32 CompareTo(System.UInt16);
Boolean Equals(System.Object);
Boolean Equals(System.UInt16);
Int32 GetHashCode();
String ToString();
String ToString(System.IFormatProvider);
String ToString(System.String);
String ToString(System.String,System.IFormatProvider);
static UInt16 Parse(System.String);
static UInt16 Parse(System.String,System.Globalization.NumberStyles);
static UInt16 Parse(System.String,System.IFormatProvider);
static UInt16 Parse(System.String,System.Globalization.NumberStyles,System.IFormatProvider);
TypeCode GetTypeCode();
}
class UInt32 : System.ValueType{
Int32 CompareTo(System.Object);
Int32 CompareTo(System.UInt32);
Boolean Equals(System.Object);
Boolean Equals(System.UInt32);
Int32 GetHashCode();
String ToString();
String ToString(System.IFormatProvider);
String ToString(System.String);
String ToString(System.String,System.IFormatProvider);
static UInt32 Parse(System.String);
static UInt32 Parse(System.String,System.Globalization.NumberStyles);
static UInt32 Parse(System.String,System.IFormatProvider);
static UInt32 Parse(System.String,System.Globalization.NumberStyles,System.IFormatProvider);
TypeCode GetTypeCode();
}
class UInt64 : System.ValueType{
Int32 CompareTo(System.Object);
Int32 CompareTo(System.UInt64);
Boolean Equals(System.Object);
Boolean Equals(System.UInt64);
Int32 GetHashCode();
String ToString();
String ToString(System.IFormatProvider);
String ToString(System.String);
String ToString(System.String,System.IFormatProvider);
static UInt64 Parse(System.String);
static UInt64 Parse(System.String,System.Globalization.NumberStyles);
static UInt64 Parse(System.String,System.IFormatProvider);
static UInt64 Parse(System.String,System.Globalization.NumberStyles,System.IFormatProvider);
TypeCode GetTypeCode();
}
class UIntPtr : System.ValueType{
this (System.UInt32);
this (System.UInt64);
Boolean Equals(System.Object);
Int32 GetHashCode();
UInt32 ToUInt32();
UInt64 ToUInt64();
String ToString();
static UIntPtr op_Explicit(System.UInt32);
static UIntPtr op_Explicit(System.UInt64);
static UInt32 op_Explicit(System.UIntPtr);
static UInt64 op_Explicit(System.UIntPtr);
static Boolean op_Equality(System.UIntPtr,System.UIntPtr);
static Boolean op_Inequality(System.UIntPtr,System.UIntPtr);
static UIntPtr Add(System.UIntPtr,System.Int32);
static UIntPtr op_Addition(System.UIntPtr,System.Int32);
static UIntPtr Subtract(System.UIntPtr,System.Int32);
static UIntPtr op_Subtraction(System.UIntPtr,System.Int32);
static Int32 get_Size();
}
class UnauthorizedAccessException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class UnhandledExceptionEventArgs : System.EventArgs{
this (System.Object,System.Boolean);
Object get_ExceptionObject();
Boolean get_IsTerminating();
}
class UnhandledExceptionEventHandler : System.MulticastDelegate{
this (System.Object,System.IntPtr);
Void Invoke(System.Object,System.UnhandledExceptionEventArgs);
IAsyncResult BeginInvoke(System.Object,System.UnhandledExceptionEventArgs,System.AsyncCallback,System.Object);
Void EndInvoke(System.IAsyncResult);
}
class ValueType : System.Object{
Boolean Equals(System.Object);
Int32 GetHashCode();
String ToString();
}
class Version : System.Object{
this (System.Int32,System.Int32,System.Int32,System.Int32);
this (System.Int32,System.Int32,System.Int32);
this (System.Int32,System.Int32);
this (System.String);
this ();
Int32 get_Major();
Int32 get_Minor();
Int32 get_Build();
Int32 get_Revision();
Int16 get_MajorRevision();
Int16 get_MinorRevision();
Object Clone();
Int32 CompareTo(System.Object);
Int32 CompareTo(System.Version);
Boolean Equals(System.Object);
Boolean Equals(System.Version);
Int32 GetHashCode();
String ToString();
String ToString(System.Int32);
static Version Parse(System.String);
static Boolean op_Equality(System.Version,System.Version);
static Boolean op_Inequality(System.Version,System.Version);
static Boolean op_LessThan(System.Version,System.Version);
static Boolean op_LessThanOrEqual(System.Version,System.Version);
static Boolean op_GreaterThan(System.Version,System.Version);
static Boolean op_GreaterThanOrEqual(System.Version,System.Version);
}
class Void : System.ValueType{
}
class WeakReference : System.Object{
this (System.Object);
this (System.Object,System.Boolean);
Boolean get_IsAlive();
Boolean get_TrackResurrection();
Object get_Target();
Void set_Target(System.Object);
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
}
class ThreadStaticAttribute : System.Attribute{
this ();
}
class Nullable : System.Object{
static Type GetUnderlyingType(System.Type);
}
}
