module System;
import System.Runtime.Serialization;
import System.Collections;
import System.Reflection;
import System.Text;
import System.Globalization;
import System.Security.Policy;
import System.Runtime.Remoting;
import System.Reflection.Emit;
import System.Security;
import System.Security.Principal;
import System.Runtime.Hosting;
import System.Threading;
import System.IO;
import System.Runtime.InteropServices;
public:
alias void Void;
pragma(assembly,"mscorlib"){
class AppContext : System.__object{
static System.String get_BaseDirectory();
static System.Void SetSwitch(System.String,System.Boolean);
}
class __object{
this ();
System.String ToString();
System.Boolean Equals(System.__object);
static System.Boolean Equals(System.__object,System.__object);
static System.Boolean ReferenceEquals(System.__object,System.__object);
System.Int32 GetHashCode();
System.Type GetType();
}
interface ICloneable{
System.__object Clone();
}
class Action : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.Void Invoke();
System.IAsyncResult BeginInvoke(System.AsyncCallback,System.__object);
System.Void EndInvoke(System.IAsyncResult);
}
class Array : System.__object{
static System.Array CreateInstance(System.Type,System.Int32);
static System.Array CreateInstance(System.Type,System.Int32,System.Int32);
static System.Array CreateInstance(System.Type,System.Int32,System.Int32,System.Int32);
static System.Array CreateInstance(System.Type,System.Int32[]);
static System.Array CreateInstance(System.Type,System.Int64[]);
static System.Array CreateInstance(System.Type,System.Int32[],System.Int32[]);
static System.Void Copy(System.Array,System.Array,System.Int32);
static System.Void Copy(System.Array,System.Int32,System.Array,System.Int32,System.Int32);
static System.Void ConstrainedCopy(System.Array,System.Int32,System.Array,System.Int32,System.Int32);
static System.Void Copy(System.Array,System.Array,System.Int64);
static System.Void Copy(System.Array,System.Int64,System.Array,System.Int64,System.Int64);
static System.Void Clear(System.Array,System.Int32,System.Int32);
System.__object GetValue(System.Int32[]);
System.__object GetValue(System.Int32);
System.__object GetValue(System.Int32,System.Int32);
System.__object GetValue(System.Int32,System.Int32,System.Int32);
System.__object GetValue(System.Int64);
System.__object GetValue(System.Int64,System.Int64);
System.__object GetValue(System.Int64,System.Int64,System.Int64);
System.__object GetValue(System.Int64[]);
System.Void SetValue(System.__object,System.Int32);
System.Void SetValue(System.__object,System.Int32,System.Int32);
System.Void SetValue(System.__object,System.Int32,System.Int32,System.Int32);
System.Void SetValue(System.__object,System.Int32[]);
System.Void SetValue(System.__object,System.Int64);
System.Void SetValue(System.__object,System.Int64,System.Int64);
System.Void SetValue(System.__object,System.Int64,System.Int64,System.Int64);
System.Void SetValue(System.__object,System.Int64[]);
System.Int32 get_Length();
System.Int64 get_LongLength();
System.Int32 GetLength(System.Int32);
System.Int64 GetLongLength(System.Int32);
System.Int32 get_Rank();
System.Int32 GetUpperBound(System.Int32);
System.Int32 GetLowerBound(System.Int32);
System.__object get_SyncRoot();
System.Boolean get_IsReadOnly();
System.Boolean get_IsFixedSize();
System.Boolean get_IsSynchronized();
System.__object Clone();
static System.Int32 BinarySearch(System.Array,System.__object);
static System.Int32 BinarySearch(System.Array,System.Int32,System.Int32,System.__object);
static System.Int32 BinarySearch(System.Array,System.__object,System.Collections.IComparer);
static System.Int32 BinarySearch(System.Array,System.Int32,System.Int32,System.__object,System.Collections.IComparer);
System.Void CopyTo(System.Array,System.Int32);
System.Void CopyTo(System.Array,System.Int64);
System.Collections.IEnumerator GetEnumerator();
static System.Int32 IndexOf(System.Array,System.__object);
static System.Int32 IndexOf(System.Array,System.__object,System.Int32);
static System.Int32 IndexOf(System.Array,System.__object,System.Int32,System.Int32);
static System.Int32 LastIndexOf(System.Array,System.__object);
static System.Int32 LastIndexOf(System.Array,System.__object,System.Int32);
static System.Int32 LastIndexOf(System.Array,System.__object,System.Int32,System.Int32);
static System.Void Reverse(System.Array);
static System.Void Reverse(System.Array,System.Int32,System.Int32);
static System.Void Sort(System.Array);
static System.Void Sort(System.Array,System.Array);
static System.Void Sort(System.Array,System.Int32,System.Int32);
static System.Void Sort(System.Array,System.Array,System.Int32,System.Int32);
static System.Void Sort(System.Array,System.Collections.IComparer);
static System.Void Sort(System.Array,System.Array,System.Collections.IComparer);
static System.Void Sort(System.Array,System.Int32,System.Int32,System.Collections.IComparer);
static System.Void Sort(System.Array,System.Array,System.Int32,System.Int32,System.Collections.IComparer);
System.Void Initialize();
}
interface IComparable{
System.Int32 CompareTo(System.__object);
}
class Tuple : System.__object{
}
class String : System.__object{
this (System.Char[],System.Int32,System.Int32);
this (System.Char[]);
this (System.Char,System.Int32);
static System.String Join(System.String,System.String[]);
static System.String Join(System.String,System.__object[]);
static System.String Join(System.String,System.String[],System.Int32,System.Int32);
System.Boolean Equals(System.__object);
System.Boolean Equals(System.String);
System.Boolean Equals(System.String,System.StringComparison);
static System.Boolean Equals(System.String,System.String);
static System.Boolean Equals(System.String,System.String,System.StringComparison);
static System.Boolean op_Equality(System.String,System.String);
static System.Boolean op_Inequality(System.String,System.String);
System.Char get_Chars(System.Int32);
System.Void CopyTo(System.Int32,System.Char[],System.Int32,System.Int32);
System.Char[] ToCharArray();
System.Char[] ToCharArray(System.Int32,System.Int32);
static System.Boolean IsNullOrEmpty(System.String);
static System.Boolean IsNullOrWhiteSpace(System.String);
System.Int32 GetHashCode();
System.Int32 get_Length();
System.String[] Split(System.Char[]);
System.String[] Split(System.Char[],System.Int32);
System.String[] Split(System.Char[],System.StringSplitOptions);
System.String[] Split(System.Char[],System.Int32,System.StringSplitOptions);
System.String[] Split(System.String[],System.StringSplitOptions);
System.String[] Split(System.String[],System.Int32,System.StringSplitOptions);
System.String Substring(System.Int32);
System.String Substring(System.Int32,System.Int32);
System.String Trim(System.Char[]);
System.String TrimStart(System.Char[]);
System.String TrimEnd(System.Char[]);
System.Boolean IsNormalized();
System.Boolean IsNormalized(System.Text.NormalizationForm);
System.String Normalize();
System.String Normalize(System.Text.NormalizationForm);
static System.Int32 Compare(System.String,System.String);
static System.Int32 Compare(System.String,System.String,System.Boolean);
static System.Int32 Compare(System.String,System.String,System.StringComparison);
static System.Int32 Compare(System.String,System.String,System.Globalization.CultureInfo,System.Globalization.CompareOptions);
static System.Int32 Compare(System.String,System.String,System.Boolean,System.Globalization.CultureInfo);
static System.Int32 Compare(System.String,System.Int32,System.String,System.Int32,System.Int32);
static System.Int32 Compare(System.String,System.Int32,System.String,System.Int32,System.Int32,System.Boolean);
static System.Int32 Compare(System.String,System.Int32,System.String,System.Int32,System.Int32,System.Boolean,System.Globalization.CultureInfo);
static System.Int32 Compare(System.String,System.Int32,System.String,System.Int32,System.Int32,System.Globalization.CultureInfo,System.Globalization.CompareOptions);
static System.Int32 Compare(System.String,System.Int32,System.String,System.Int32,System.Int32,System.StringComparison);
System.Int32 CompareTo(System.__object);
System.Int32 CompareTo(System.String);
static System.Int32 CompareOrdinal(System.String,System.String);
static System.Int32 CompareOrdinal(System.String,System.Int32,System.String,System.Int32,System.Int32);
System.Boolean Contains(System.String);
System.Boolean EndsWith(System.String);
System.Boolean EndsWith(System.String,System.StringComparison);
System.Boolean EndsWith(System.String,System.Boolean,System.Globalization.CultureInfo);
System.Int32 IndexOf(System.Char);
System.Int32 IndexOf(System.Char,System.Int32);
System.Int32 IndexOf(System.Char,System.Int32,System.Int32);
System.Int32 IndexOfAny(System.Char[]);
System.Int32 IndexOfAny(System.Char[],System.Int32);
System.Int32 IndexOfAny(System.Char[],System.Int32,System.Int32);
System.Int32 IndexOf(System.String);
System.Int32 IndexOf(System.String,System.Int32);
System.Int32 IndexOf(System.String,System.Int32,System.Int32);
System.Int32 IndexOf(System.String,System.StringComparison);
System.Int32 IndexOf(System.String,System.Int32,System.StringComparison);
System.Int32 IndexOf(System.String,System.Int32,System.Int32,System.StringComparison);
System.Int32 LastIndexOf(System.Char);
System.Int32 LastIndexOf(System.Char,System.Int32);
System.Int32 LastIndexOf(System.Char,System.Int32,System.Int32);
System.Int32 LastIndexOfAny(System.Char[]);
System.Int32 LastIndexOfAny(System.Char[],System.Int32);
System.Int32 LastIndexOfAny(System.Char[],System.Int32,System.Int32);
System.Int32 LastIndexOf(System.String);
System.Int32 LastIndexOf(System.String,System.Int32);
System.Int32 LastIndexOf(System.String,System.Int32,System.Int32);
System.Int32 LastIndexOf(System.String,System.StringComparison);
System.Int32 LastIndexOf(System.String,System.Int32,System.StringComparison);
System.Int32 LastIndexOf(System.String,System.Int32,System.Int32,System.StringComparison);
System.String PadLeft(System.Int32);
System.String PadLeft(System.Int32,System.Char);
System.String PadRight(System.Int32);
System.String PadRight(System.Int32,System.Char);
System.Boolean StartsWith(System.String);
System.Boolean StartsWith(System.String,System.StringComparison);
System.Boolean StartsWith(System.String,System.Boolean,System.Globalization.CultureInfo);
System.String ToLower();
System.String ToLower(System.Globalization.CultureInfo);
System.String ToLowerInvariant();
System.String ToUpper();
System.String ToUpper(System.Globalization.CultureInfo);
System.String ToUpperInvariant();
System.String ToString();
System.String ToString(System.IFormatProvider);
System.__object Clone();
System.String Trim();
System.String Insert(System.Int32,System.String);
System.String Replace(System.Char,System.Char);
System.String Replace(System.String,System.String);
System.String Remove(System.Int32,System.Int32);
System.String Remove(System.Int32);
static System.String Format(System.String,System.__object);
static System.String Format(System.String,System.__object,System.__object);
static System.String Format(System.String,System.__object,System.__object,System.__object);
static System.String Format(System.String,System.__object[]);
static System.String Format(System.IFormatProvider,System.String,System.__object);
static System.String Format(System.IFormatProvider,System.String,System.__object,System.__object);
static System.String Format(System.IFormatProvider,System.String,System.__object,System.__object,System.__object);
static System.String Format(System.IFormatProvider,System.String,System.__object[]);
static System.String Copy(System.String);
static System.String Concat(System.__object);
static System.String Concat(System.__object,System.__object);
static System.String Concat(System.__object,System.__object,System.__object);
static System.String Concat(System.__object,System.__object,System.__object,System.__object);
static System.String Concat(System.__object[]);
static System.String Concat(System.String,System.String);
static System.String Concat(System.String,System.String,System.String);
static System.String Concat(System.String,System.String,System.String,System.String);
static System.String Concat(System.String[]);
static System.String Intern(System.String);
static System.String IsInterned(System.String);
System.TypeCode GetTypeCode();
System.CharEnumerator GetEnumerator();
}
class StringSplitOptions : System.Enum{
}
class StringComparer : System.__object{
static System.StringComparer get_InvariantCulture();
static System.StringComparer get_InvariantCultureIgnoreCase();
static System.StringComparer get_CurrentCulture();
static System.StringComparer get_CurrentCultureIgnoreCase();
static System.StringComparer get_Ordinal();
static System.StringComparer get_OrdinalIgnoreCase();
static System.StringComparer Create(System.Globalization.CultureInfo,System.Boolean);
System.Int32 Compare(System.__object,System.__object);
System.Boolean Equals(System.__object,System.__object);
System.Int32 GetHashCode(System.__object);
System.Int32 Compare(System.String,System.String);
System.Boolean Equals(System.String,System.String);
System.Int32 GetHashCode(System.String);
}
class StringComparison : System.Enum{
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
System.DateTime Add(System.TimeSpan);
System.DateTime AddDays(System.Double);
System.DateTime AddHours(System.Double);
System.DateTime AddMilliseconds(System.Double);
System.DateTime AddMinutes(System.Double);
System.DateTime AddMonths(System.Int32);
System.DateTime AddSeconds(System.Double);
System.DateTime AddTicks(System.Int64);
System.DateTime AddYears(System.Int32);
static System.Int32 Compare(System.DateTime,System.DateTime);
System.Int32 CompareTo(System.__object);
System.Int32 CompareTo(System.DateTime);
static System.Int32 DaysInMonth(System.Int32,System.Int32);
System.Boolean Equals(System.__object);
System.Boolean Equals(System.DateTime);
static System.Boolean Equals(System.DateTime,System.DateTime);
static System.DateTime FromBinary(System.Int64);
static System.DateTime FromFileTime(System.Int64);
static System.DateTime FromFileTimeUtc(System.Int64);
static System.DateTime FromOADate(System.Double);
System.Boolean IsDaylightSavingTime();
static System.DateTime SpecifyKind(System.DateTime,System.DateTimeKind);
System.Int64 ToBinary();
System.DateTime get_Date();
System.Int32 get_Day();
System.DayOfWeek get_DayOfWeek();
System.Int32 get_DayOfYear();
System.Int32 GetHashCode();
System.Int32 get_Hour();
System.DateTimeKind get_Kind();
System.Int32 get_Millisecond();
System.Int32 get_Minute();
System.Int32 get_Month();
static System.DateTime get_Now();
static System.DateTime get_UtcNow();
System.Int32 get_Second();
System.Int64 get_Ticks();
System.TimeSpan get_TimeOfDay();
static System.DateTime get_Today();
System.Int32 get_Year();
static System.Boolean IsLeapYear(System.Int32);
static System.DateTime Parse(System.String);
static System.DateTime Parse(System.String,System.IFormatProvider);
static System.DateTime Parse(System.String,System.IFormatProvider,System.Globalization.DateTimeStyles);
static System.DateTime ParseExact(System.String,System.String,System.IFormatProvider);
static System.DateTime ParseExact(System.String,System.String,System.IFormatProvider,System.Globalization.DateTimeStyles);
static System.DateTime ParseExact(System.String,System.String[],System.IFormatProvider,System.Globalization.DateTimeStyles);
System.TimeSpan Subtract(System.DateTime);
System.DateTime Subtract(System.TimeSpan);
System.Double ToOADate();
System.Int64 ToFileTime();
System.Int64 ToFileTimeUtc();
System.DateTime ToLocalTime();
System.String ToLongDateString();
System.String ToLongTimeString();
System.String ToShortDateString();
System.String ToShortTimeString();
System.String ToString();
System.String ToString(System.String);
System.String ToString(System.IFormatProvider);
System.String ToString(System.String,System.IFormatProvider);
System.DateTime ToUniversalTime();
static System.DateTime op_Addition(System.DateTime,System.TimeSpan);
static System.DateTime op_Subtraction(System.DateTime,System.TimeSpan);
static System.TimeSpan op_Subtraction(System.DateTime,System.DateTime);
static System.Boolean op_Equality(System.DateTime,System.DateTime);
static System.Boolean op_Inequality(System.DateTime,System.DateTime);
static System.Boolean op_LessThan(System.DateTime,System.DateTime);
static System.Boolean op_LessThanOrEqual(System.DateTime,System.DateTime);
static System.Boolean op_GreaterThan(System.DateTime,System.DateTime);
static System.Boolean op_GreaterThanOrEqual(System.DateTime,System.DateTime);
System.String[] GetDateTimeFormats();
System.String[] GetDateTimeFormats(System.IFormatProvider);
System.String[] GetDateTimeFormats(System.Char);
System.String[] GetDateTimeFormats(System.Char,System.IFormatProvider);
System.TypeCode GetTypeCode();
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
static System.DateTimeOffset get_Now();
static System.DateTimeOffset get_UtcNow();
System.DateTime get_DateTime();
System.DateTime get_UtcDateTime();
System.DateTime get_LocalDateTime();
System.DateTimeOffset ToOffset(System.TimeSpan);
System.DateTime get_Date();
System.Int32 get_Day();
System.DayOfWeek get_DayOfWeek();
System.Int32 get_DayOfYear();
System.Int32 get_Hour();
System.Int32 get_Millisecond();
System.Int32 get_Minute();
System.Int32 get_Month();
System.TimeSpan get_Offset();
System.Int32 get_Second();
System.Int64 get_Ticks();
System.Int64 get_UtcTicks();
System.TimeSpan get_TimeOfDay();
System.Int32 get_Year();
System.DateTimeOffset Add(System.TimeSpan);
System.DateTimeOffset AddDays(System.Double);
System.DateTimeOffset AddHours(System.Double);
System.DateTimeOffset AddMilliseconds(System.Double);
System.DateTimeOffset AddMinutes(System.Double);
System.DateTimeOffset AddMonths(System.Int32);
System.DateTimeOffset AddSeconds(System.Double);
System.DateTimeOffset AddTicks(System.Int64);
System.DateTimeOffset AddYears(System.Int32);
static System.Int32 Compare(System.DateTimeOffset,System.DateTimeOffset);
System.Int32 CompareTo(System.DateTimeOffset);
System.Boolean Equals(System.__object);
System.Boolean Equals(System.DateTimeOffset);
System.Boolean EqualsExact(System.DateTimeOffset);
static System.Boolean Equals(System.DateTimeOffset,System.DateTimeOffset);
static System.DateTimeOffset FromFileTime(System.Int64);
static System.DateTimeOffset FromUnixTimeSeconds(System.Int64);
static System.DateTimeOffset FromUnixTimeMilliseconds(System.Int64);
System.Int32 GetHashCode();
static System.DateTimeOffset Parse(System.String);
static System.DateTimeOffset Parse(System.String,System.IFormatProvider);
static System.DateTimeOffset Parse(System.String,System.IFormatProvider,System.Globalization.DateTimeStyles);
static System.DateTimeOffset ParseExact(System.String,System.String,System.IFormatProvider);
static System.DateTimeOffset ParseExact(System.String,System.String,System.IFormatProvider,System.Globalization.DateTimeStyles);
static System.DateTimeOffset ParseExact(System.String,System.String[],System.IFormatProvider,System.Globalization.DateTimeStyles);
System.TimeSpan Subtract(System.DateTimeOffset);
System.DateTimeOffset Subtract(System.TimeSpan);
System.Int64 ToFileTime();
System.Int64 ToUnixTimeSeconds();
System.Int64 ToUnixTimeMilliseconds();
System.DateTimeOffset ToLocalTime();
System.String ToString();
System.String ToString(System.String);
System.String ToString(System.IFormatProvider);
System.String ToString(System.String,System.IFormatProvider);
System.DateTimeOffset ToUniversalTime();
static System.DateTimeOffset op_Implicit(System.DateTime);
static System.DateTimeOffset op_Addition(System.DateTimeOffset,System.TimeSpan);
static System.DateTimeOffset op_Subtraction(System.DateTimeOffset,System.TimeSpan);
static System.TimeSpan op_Subtraction(System.DateTimeOffset,System.DateTimeOffset);
static System.Boolean op_Equality(System.DateTimeOffset,System.DateTimeOffset);
static System.Boolean op_Inequality(System.DateTimeOffset,System.DateTimeOffset);
static System.Boolean op_LessThan(System.DateTimeOffset,System.DateTimeOffset);
static System.Boolean op_LessThanOrEqual(System.DateTimeOffset,System.DateTimeOffset);
static System.Boolean op_GreaterThan(System.DateTimeOffset,System.DateTimeOffset);
static System.Boolean op_GreaterThanOrEqual(System.DateTimeOffset,System.DateTimeOffset);
}
class Delegate : System.__object{
System.__object DynamicInvoke(System.__object[]);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
static System.Delegate Combine(System.Delegate,System.Delegate);
static System.Delegate Combine(System.Delegate[]);
System.Delegate[] GetInvocationList();
System.Reflection.MethodInfo get_Method();
System.__object get_Target();
static System.Delegate Remove(System.Delegate,System.Delegate);
static System.Delegate RemoveAll(System.Delegate,System.Delegate);
System.__object Clone();
static System.Delegate CreateDelegate(System.Type,System.__object,System.String);
static System.Delegate CreateDelegate(System.Type,System.__object,System.String,System.Boolean);
static System.Delegate CreateDelegate(System.Type,System.__object,System.String,System.Boolean,System.Boolean);
static System.Delegate CreateDelegate(System.Type,System.Type,System.String);
static System.Delegate CreateDelegate(System.Type,System.Type,System.String,System.Boolean);
static System.Delegate CreateDelegate(System.Type,System.Type,System.String,System.Boolean,System.Boolean);
static System.Delegate CreateDelegate(System.Type,System.Reflection.MethodInfo,System.Boolean);
static System.Delegate CreateDelegate(System.Type,System.__object,System.Reflection.MethodInfo);
static System.Delegate CreateDelegate(System.Type,System.__object,System.Reflection.MethodInfo,System.Boolean);
static System.Boolean op_Equality(System.Delegate,System.Delegate);
static System.Boolean op_Inequality(System.Delegate,System.Delegate);
System.Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
static System.Delegate CreateDelegate(System.Type,System.Reflection.MethodInfo);
}
class MulticastDelegate : System.Delegate{
System.Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
System.Boolean Equals(System.__object);
System.Delegate[] GetInvocationList();
static System.Boolean op_Equality(System.MulticastDelegate,System.MulticastDelegate);
static System.Boolean op_Inequality(System.MulticastDelegate,System.MulticastDelegate);
System.Int32 GetHashCode();
}
class Activator : System.__object{
static System.__object CreateInstance(System.Type,System.Reflection.BindingFlags,System.Reflection.Binder,System.__object[],System.Globalization.CultureInfo);
static System.__object CreateInstance(System.Type,System.Reflection.BindingFlags,System.Reflection.Binder,System.__object[],System.Globalization.CultureInfo,System.__object[]);
static System.__object CreateInstance(System.Type,System.__object[]);
static System.__object CreateInstance(System.Type,System.__object[],System.__object[]);
static System.__object CreateInstance(System.Type);
static System.Runtime.Remoting.ObjectHandle CreateInstance(System.String,System.String);
static System.Runtime.Remoting.ObjectHandle CreateInstance(System.String,System.String,System.__object[]);
static System.__object CreateInstance(System.Type,System.Boolean);
static System.Runtime.Remoting.ObjectHandle CreateInstanceFrom(System.String,System.String);
static System.Runtime.Remoting.ObjectHandle CreateInstanceFrom(System.String,System.String,System.__object[]);
static System.Runtime.Remoting.ObjectHandle CreateInstance(System.String,System.String,System.Boolean,System.Reflection.BindingFlags,System.Reflection.Binder,System.__object[],System.Globalization.CultureInfo,System.__object[],System.Security.Policy.Evidence);
static System.Runtime.Remoting.ObjectHandle CreateInstance(System.String,System.String,System.Boolean,System.Reflection.BindingFlags,System.Reflection.Binder,System.__object[],System.Globalization.CultureInfo,System.__object[]);
static System.Runtime.Remoting.ObjectHandle CreateInstanceFrom(System.String,System.String,System.Boolean,System.Reflection.BindingFlags,System.Reflection.Binder,System.__object[],System.Globalization.CultureInfo,System.__object[],System.Security.Policy.Evidence);
static System.Runtime.Remoting.ObjectHandle CreateInstanceFrom(System.String,System.String,System.Boolean,System.Reflection.BindingFlags,System.Reflection.Binder,System.__object[],System.Globalization.CultureInfo,System.__object[]);
static System.Runtime.Remoting.ObjectHandle CreateInstance(System.AppDomain,System.String,System.String);
static System.Runtime.Remoting.ObjectHandle CreateInstance(System.AppDomain,System.String,System.String,System.Boolean,System.Reflection.BindingFlags,System.Reflection.Binder,System.__object[],System.Globalization.CultureInfo,System.__object[],System.Security.Policy.Evidence);
static System.Runtime.Remoting.ObjectHandle CreateInstance(System.AppDomain,System.String,System.String,System.Boolean,System.Reflection.BindingFlags,System.Reflection.Binder,System.__object[],System.Globalization.CultureInfo,System.__object[]);
static System.Runtime.Remoting.ObjectHandle CreateInstanceFrom(System.AppDomain,System.String,System.String);
static System.Runtime.Remoting.ObjectHandle CreateInstanceFrom(System.AppDomain,System.String,System.String,System.Boolean,System.Reflection.BindingFlags,System.Reflection.Binder,System.__object[],System.Globalization.CultureInfo,System.__object[],System.Security.Policy.Evidence);
static System.Runtime.Remoting.ObjectHandle CreateInstanceFrom(System.AppDomain,System.String,System.String,System.Boolean,System.Reflection.BindingFlags,System.Reflection.Binder,System.__object[],System.Globalization.CultureInfo,System.__object[]);
static System.Runtime.Remoting.ObjectHandle CreateInstance(System.ActivationContext);
static System.Runtime.Remoting.ObjectHandle CreateInstance(System.ActivationContext,System.String[]);
static System.Runtime.Remoting.ObjectHandle CreateComInstanceFrom(System.String,System.String);
static System.__object GetObject(System.Type,System.String);
static System.__object GetObject(System.Type,System.String,System.__object);
}
class ResolveEventArgs : System.EventArgs{
this (System.String);
this (System.String,System.Reflection.Assembly);
System.String get_Name();
System.Reflection.Assembly get_RequestingAssembly();
}
class AssemblyLoadEventArgs : System.EventArgs{
this (System.Reflection.Assembly);
System.Reflection.Assembly get_LoadedAssembly();
}
class ResolveEventHandler : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.Reflection.Assembly Invoke(System.__object,System.ResolveEventArgs);
System.IAsyncResult BeginInvoke(System.__object,System.ResolveEventArgs,System.AsyncCallback,System.__object);
System.Reflection.Assembly EndInvoke(System.IAsyncResult);
}
class AssemblyLoadEventHandler : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.Void Invoke(System.__object,System.AssemblyLoadEventArgs);
System.IAsyncResult BeginInvoke(System.__object,System.AssemblyLoadEventArgs,System.AsyncCallback,System.__object);
System.Void EndInvoke(System.IAsyncResult);
}
class AppDomainInitializer : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.Void Invoke(System.String[]);
System.IAsyncResult BeginInvoke(System.String[],System.AsyncCallback,System.__object);
System.Void EndInvoke(System.IAsyncResult);
}
class AppDomain : System.MarshalByRefObject{
System.Void add_AssemblyLoad(System.AssemblyLoadEventHandler);
System.Void remove_AssemblyLoad(System.AssemblyLoadEventHandler);
System.Void add_TypeResolve(System.ResolveEventHandler);
System.Void remove_TypeResolve(System.ResolveEventHandler);
System.Void add_ResourceResolve(System.ResolveEventHandler);
System.Void remove_ResourceResolve(System.ResolveEventHandler);
System.Void add_AssemblyResolve(System.ResolveEventHandler);
System.Void remove_AssemblyResolve(System.ResolveEventHandler);
System.Void add_ReflectionOnlyAssemblyResolve(System.ResolveEventHandler);
System.Void remove_ReflectionOnlyAssemblyResolve(System.ResolveEventHandler);
System.AppDomainManager get_DomainManager();
System.Reflection.Emit.AssemblyBuilder DefineDynamicAssembly(System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess);
System.Reflection.Emit.AssemblyBuilder DefineDynamicAssembly(System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess,System.String);
System.Reflection.Emit.AssemblyBuilder DefineDynamicAssembly(System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess,System.Security.Policy.Evidence);
System.Reflection.Emit.AssemblyBuilder DefineDynamicAssembly(System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess,System.Security.PermissionSet,System.Security.PermissionSet,System.Security.PermissionSet);
System.Reflection.Emit.AssemblyBuilder DefineDynamicAssembly(System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess,System.String,System.Security.Policy.Evidence);
System.Reflection.Emit.AssemblyBuilder DefineDynamicAssembly(System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess,System.String,System.Security.PermissionSet,System.Security.PermissionSet,System.Security.PermissionSet);
System.Reflection.Emit.AssemblyBuilder DefineDynamicAssembly(System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess,System.Security.Policy.Evidence,System.Security.PermissionSet,System.Security.PermissionSet,System.Security.PermissionSet);
System.Reflection.Emit.AssemblyBuilder DefineDynamicAssembly(System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess,System.String,System.Security.Policy.Evidence,System.Security.PermissionSet,System.Security.PermissionSet,System.Security.PermissionSet);
System.Reflection.Emit.AssemblyBuilder DefineDynamicAssembly(System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess,System.String,System.Security.Policy.Evidence,System.Security.PermissionSet,System.Security.PermissionSet,System.Security.PermissionSet,System.Boolean);
System.String ApplyPolicy(System.String);
System.Runtime.Remoting.ObjectHandle CreateInstance(System.String,System.String);
System.Runtime.Remoting.ObjectHandle CreateInstanceFrom(System.String,System.String);
System.Runtime.Remoting.ObjectHandle CreateComInstanceFrom(System.String,System.String);
System.Runtime.Remoting.ObjectHandle CreateInstance(System.String,System.String,System.__object[]);
System.Runtime.Remoting.ObjectHandle CreateInstanceFrom(System.String,System.String,System.__object[]);
System.Runtime.Remoting.ObjectHandle CreateInstance(System.String,System.String,System.Boolean,System.Reflection.BindingFlags,System.Reflection.Binder,System.__object[],System.Globalization.CultureInfo,System.__object[],System.Security.Policy.Evidence);
System.Runtime.Remoting.ObjectHandle CreateInstance(System.String,System.String,System.Boolean,System.Reflection.BindingFlags,System.Reflection.Binder,System.__object[],System.Globalization.CultureInfo,System.__object[]);
System.Runtime.Remoting.ObjectHandle CreateInstanceFrom(System.String,System.String,System.Boolean,System.Reflection.BindingFlags,System.Reflection.Binder,System.__object[],System.Globalization.CultureInfo,System.__object[],System.Security.Policy.Evidence);
System.Runtime.Remoting.ObjectHandle CreateInstanceFrom(System.String,System.String,System.Boolean,System.Reflection.BindingFlags,System.Reflection.Binder,System.__object[],System.Globalization.CultureInfo,System.__object[]);
System.Reflection.Assembly Load(System.Reflection.AssemblyName);
System.Reflection.Assembly Load(System.String);
System.Reflection.Assembly Load(System.Byte[]);
System.Reflection.Assembly Load(System.Byte[],System.Byte[]);
System.Reflection.Assembly Load(System.Byte[],System.Byte[],System.Security.Policy.Evidence);
System.Reflection.Assembly Load(System.Reflection.AssemblyName,System.Security.Policy.Evidence);
System.Reflection.Assembly Load(System.String,System.Security.Policy.Evidence);
System.Int32 ExecuteAssembly(System.String);
System.Int32 ExecuteAssembly(System.String,System.Security.Policy.Evidence);
System.Int32 ExecuteAssembly(System.String,System.Security.Policy.Evidence,System.String[]);
System.Int32 ExecuteAssembly(System.String,System.String[]);
System.Int32 ExecuteAssemblyByName(System.String);
System.Int32 ExecuteAssemblyByName(System.String,System.Security.Policy.Evidence);
System.Int32 ExecuteAssemblyByName(System.String,System.Security.Policy.Evidence,System.String[]);
System.Int32 ExecuteAssemblyByName(System.String,System.String[]);
System.Int32 ExecuteAssemblyByName(System.Reflection.AssemblyName,System.Security.Policy.Evidence,System.String[]);
System.Int32 ExecuteAssemblyByName(System.Reflection.AssemblyName,System.String[]);
static System.AppDomain get_CurrentDomain();
System.Security.Policy.Evidence get_Evidence();
System.String get_FriendlyName();
System.String get_BaseDirectory();
System.String get_RelativeSearchPath();
System.Boolean get_ShadowCopyFiles();
System.String ToString();
System.Reflection.Assembly[] GetAssemblies();
System.Reflection.Assembly[] ReflectionOnlyGetAssemblies();
System.Boolean IsFinalizingForUnload();
System.Void AppendPrivatePath(System.String);
System.Void ClearPrivatePath();
System.Void ClearShadowCopyPath();
System.Void SetCachePath(System.String);
System.Void SetData(System.String,System.__object);
System.Void SetData(System.String,System.__object,System.Security.IPermission);
System.__object GetData(System.String);
static System.Int32 GetCurrentThreadId();
static System.Void Unload(System.AppDomain);
System.Void SetAppDomainPolicy(System.Security.Policy.PolicyLevel);
System.ActivationContext get_ActivationContext();
System.ApplicationIdentity get_ApplicationIdentity();
System.Security.Policy.ApplicationTrust get_ApplicationTrust();
System.Void SetThreadPrincipal(System.Security.Principal.IPrincipal);
System.Void SetPrincipalPolicy(System.Security.Principal.PrincipalPolicy);
System.__object InitializeLifetimeService();
System.Void DoCallBack(System.CrossAppDomainDelegate);
System.String get_DynamicDirectory();
static System.AppDomain CreateDomain(System.String,System.Security.Policy.Evidence);
static System.AppDomain CreateDomain(System.String,System.Security.Policy.Evidence,System.String,System.String,System.Boolean);
static System.AppDomain CreateDomain(System.String);
System.Void add_ProcessExit(System.EventHandler);
System.Void remove_ProcessExit(System.EventHandler);
System.Void add_DomainUnload(System.EventHandler);
System.Void remove_DomainUnload(System.EventHandler);
System.Void add_UnhandledException(System.UnhandledExceptionEventHandler);
System.Void remove_UnhandledException(System.UnhandledExceptionEventHandler);
static System.AppDomain CreateDomain(System.String,System.Security.Policy.Evidence,System.AppDomainSetup);
static System.AppDomain CreateDomain(System.String,System.Security.Policy.Evidence,System.AppDomainSetup,System.Security.PermissionSet,System.Security.Policy.StrongName[]);
static System.AppDomain CreateDomain(System.String,System.Security.Policy.Evidence,System.String,System.String,System.Boolean,System.AppDomainInitializer,System.String[]);
System.Void SetShadowCopyPath(System.String);
System.Void SetShadowCopyFiles();
System.Void SetDynamicBase(System.String);
System.AppDomainSetup get_SetupInformation();
System.Security.PermissionSet get_PermissionSet();
System.Boolean get_IsFullyTrusted();
System.Boolean get_IsHomogenous();
System.__object CreateInstanceAndUnwrap(System.String,System.String);
System.__object CreateInstanceAndUnwrap(System.String,System.String,System.__object[]);
System.__object CreateInstanceAndUnwrap(System.String,System.String,System.Boolean,System.Reflection.BindingFlags,System.Reflection.Binder,System.__object[],System.Globalization.CultureInfo,System.__object[],System.Security.Policy.Evidence);
System.__object CreateInstanceAndUnwrap(System.String,System.String,System.Boolean,System.Reflection.BindingFlags,System.Reflection.Binder,System.__object[],System.Globalization.CultureInfo,System.__object[]);
System.__object CreateInstanceFromAndUnwrap(System.String,System.String);
System.__object CreateInstanceFromAndUnwrap(System.String,System.String,System.__object[]);
System.__object CreateInstanceFromAndUnwrap(System.String,System.String,System.Boolean,System.Reflection.BindingFlags,System.Reflection.Binder,System.__object[],System.Globalization.CultureInfo,System.__object[],System.Security.Policy.Evidence);
System.__object CreateInstanceFromAndUnwrap(System.String,System.String,System.Boolean,System.Reflection.BindingFlags,System.Reflection.Binder,System.__object[],System.Globalization.CultureInfo,System.__object[]);
System.Int32 get_Id();
System.Boolean IsDefaultAppDomain();
static System.Boolean get_MonitoringIsEnabled();
static System.Void set_MonitoringIsEnabled(System.Boolean);
System.TimeSpan get_MonitoringTotalProcessorTime();
System.Int64 get_MonitoringTotalAllocatedMemorySize();
System.Int64 get_MonitoringSurvivedMemorySize();
static System.Int64 get_MonitoringSurvivedProcessMemorySize();
System.Type GetType();
}
class CrossAppDomainDelegate : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.Void Invoke();
System.IAsyncResult BeginInvoke(System.AsyncCallback,System.__object);
System.Void EndInvoke(System.IAsyncResult);
}
class AppDomainManagerInitializationOptions : System.Enum{
}
class AppDomainManager : System.MarshalByRefObject{
this ();
System.AppDomain CreateDomain(System.String,System.Security.Policy.Evidence,System.AppDomainSetup);
System.Void InitializeNewDomain(System.AppDomainSetup);
System.AppDomainManagerInitializationOptions get_InitializationFlags();
System.Void set_InitializationFlags(System.AppDomainManagerInitializationOptions);
System.Runtime.Hosting.ApplicationActivator get_ApplicationActivator();
System.Security.HostSecurityManager get_HostSecurityManager();
System.Threading.HostExecutionContextManager get_HostExecutionContextManager();
System.Reflection.Assembly get_EntryAssembly();
System.Boolean CheckSecuritySettings(System.Security.SecurityState);
}
interface _AppDomain{
System.Void GetTypeInfo(System.UInt32,System.UInt32,System.IntPtr);
System.String ToString();
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.Type GetType();
System.__object InitializeLifetimeService();
System.__object GetLifetimeService();
System.Security.Policy.Evidence get_Evidence();
System.Void add_DomainUnload(System.EventHandler);
System.Void remove_DomainUnload(System.EventHandler);
System.Void add_AssemblyLoad(System.AssemblyLoadEventHandler);
System.Void remove_AssemblyLoad(System.AssemblyLoadEventHandler);
System.Void add_ProcessExit(System.EventHandler);
System.Void remove_ProcessExit(System.EventHandler);
System.Void add_TypeResolve(System.ResolveEventHandler);
System.Void remove_TypeResolve(System.ResolveEventHandler);
System.Void add_ResourceResolve(System.ResolveEventHandler);
System.Void remove_ResourceResolve(System.ResolveEventHandler);
System.Void add_AssemblyResolve(System.ResolveEventHandler);
System.Void remove_AssemblyResolve(System.ResolveEventHandler);
System.Void add_UnhandledException(System.UnhandledExceptionEventHandler);
System.Void remove_UnhandledException(System.UnhandledExceptionEventHandler);
System.Reflection.Emit.AssemblyBuilder DefineDynamicAssembly(System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess);
System.Reflection.Emit.AssemblyBuilder DefineDynamicAssembly(System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess,System.String);
System.Reflection.Emit.AssemblyBuilder DefineDynamicAssembly(System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess,System.Security.Policy.Evidence);
System.Reflection.Emit.AssemblyBuilder DefineDynamicAssembly(System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess,System.Security.PermissionSet,System.Security.PermissionSet,System.Security.PermissionSet);
System.Reflection.Emit.AssemblyBuilder DefineDynamicAssembly(System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess,System.String,System.Security.Policy.Evidence);
System.Reflection.Emit.AssemblyBuilder DefineDynamicAssembly(System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess,System.String,System.Security.PermissionSet,System.Security.PermissionSet,System.Security.PermissionSet);
System.Reflection.Emit.AssemblyBuilder DefineDynamicAssembly(System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess,System.Security.Policy.Evidence,System.Security.PermissionSet,System.Security.PermissionSet,System.Security.PermissionSet);
System.Reflection.Emit.AssemblyBuilder DefineDynamicAssembly(System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess,System.String,System.Security.Policy.Evidence,System.Security.PermissionSet,System.Security.PermissionSet,System.Security.PermissionSet);
System.Reflection.Emit.AssemblyBuilder DefineDynamicAssembly(System.Reflection.AssemblyName,System.Reflection.Emit.AssemblyBuilderAccess,System.String,System.Security.Policy.Evidence,System.Security.PermissionSet,System.Security.PermissionSet,System.Security.PermissionSet,System.Boolean);
System.Runtime.Remoting.ObjectHandle CreateInstance(System.String,System.String);
System.Runtime.Remoting.ObjectHandle CreateInstanceFrom(System.String,System.String);
System.Runtime.Remoting.ObjectHandle CreateInstance(System.String,System.String,System.__object[]);
System.Runtime.Remoting.ObjectHandle CreateInstanceFrom(System.String,System.String,System.__object[]);
System.Runtime.Remoting.ObjectHandle CreateInstance(System.String,System.String,System.Boolean,System.Reflection.BindingFlags,System.Reflection.Binder,System.__object[],System.Globalization.CultureInfo,System.__object[],System.Security.Policy.Evidence);
System.Runtime.Remoting.ObjectHandle CreateInstanceFrom(System.String,System.String,System.Boolean,System.Reflection.BindingFlags,System.Reflection.Binder,System.__object[],System.Globalization.CultureInfo,System.__object[],System.Security.Policy.Evidence);
System.Reflection.Assembly Load(System.Reflection.AssemblyName);
System.Reflection.Assembly Load(System.String);
System.Reflection.Assembly Load(System.Byte[]);
System.Reflection.Assembly Load(System.Byte[],System.Byte[]);
System.Reflection.Assembly Load(System.Byte[],System.Byte[],System.Security.Policy.Evidence);
System.Reflection.Assembly Load(System.Reflection.AssemblyName,System.Security.Policy.Evidence);
System.Reflection.Assembly Load(System.String,System.Security.Policy.Evidence);
System.Int32 ExecuteAssembly(System.String,System.Security.Policy.Evidence);
System.Int32 ExecuteAssembly(System.String);
System.Int32 ExecuteAssembly(System.String,System.Security.Policy.Evidence,System.String[]);
System.String get_FriendlyName();
System.String get_BaseDirectory();
System.String get_RelativeSearchPath();
System.Boolean get_ShadowCopyFiles();
System.Reflection.Assembly[] GetAssemblies();
System.Void AppendPrivatePath(System.String);
System.Void ClearPrivatePath();
System.Void SetShadowCopyPath(System.String);
System.Void ClearShadowCopyPath();
System.Void SetCachePath(System.String);
System.Void SetData(System.String,System.__object);
System.__object GetData(System.String);
System.Void SetAppDomainPolicy(System.Security.Policy.PolicyLevel);
System.Void SetThreadPrincipal(System.Security.Principal.IPrincipal);
System.Void SetPrincipalPolicy(System.Security.Principal.PrincipalPolicy);
System.Void DoCallBack(System.CrossAppDomainDelegate);
System.String get_DynamicDirectory();
}
class AppDomainSetup : System.__object{
this ();
this (System.ActivationContext);
this (System.Runtime.Hosting.ActivationArguments);
System.String get_AppDomainManagerAssembly();
System.Void set_AppDomainManagerAssembly(System.String);
System.String get_AppDomainManagerType();
System.Void set_AppDomainManagerType(System.String);
System.String[] get_PartialTrustVisibleAssemblies();
System.Void set_PartialTrustVisibleAssemblies(System.String[]);
System.String get_ApplicationBase();
System.Void set_ApplicationBase(System.String);
System.String get_ConfigurationFile();
System.Void set_ConfigurationFile(System.String);
System.Byte[] GetConfigurationBytes();
System.Void SetConfigurationBytes(System.Byte[]);
System.String get_TargetFrameworkName();
System.Void set_TargetFrameworkName(System.String);
System.Void SetNativeFunction(System.String,System.Int32,System.IntPtr);
System.String get_DynamicBase();
System.Void set_DynamicBase(System.String);
System.Boolean get_DisallowPublisherPolicy();
System.Void set_DisallowPublisherPolicy(System.Boolean);
System.Boolean get_DisallowBindingRedirects();
System.Void set_DisallowBindingRedirects(System.Boolean);
System.Boolean get_DisallowCodeDownload();
System.Void set_DisallowCodeDownload(System.Boolean);
System.Boolean get_DisallowApplicationBaseProbing();
System.Void set_DisallowApplicationBaseProbing(System.Boolean);
System.String get_ApplicationName();
System.Void set_ApplicationName(System.String);
System.AppDomainInitializer get_AppDomainInitializer();
System.Void set_AppDomainInitializer(System.AppDomainInitializer);
System.String[] get_AppDomainInitializerArguments();
System.Void set_AppDomainInitializerArguments(System.String[]);
System.Runtime.Hosting.ActivationArguments get_ActivationArguments();
System.Void set_ActivationArguments(System.Runtime.Hosting.ActivationArguments);
System.Security.Policy.ApplicationTrust get_ApplicationTrust();
System.Void set_ApplicationTrust(System.Security.Policy.ApplicationTrust);
System.String get_PrivateBinPath();
System.Void set_PrivateBinPath(System.String);
System.String get_PrivateBinPathProbe();
System.Void set_PrivateBinPathProbe(System.String);
System.String get_ShadowCopyDirectories();
System.Void set_ShadowCopyDirectories(System.String);
System.String get_ShadowCopyFiles();
System.Void set_ShadowCopyFiles(System.String);
System.String get_CachePath();
System.Void set_CachePath(System.String);
System.String get_LicenseFile();
System.Void set_LicenseFile(System.String);
System.LoaderOptimization get_LoaderOptimization();
System.Void set_LoaderOptimization(System.LoaderOptimization);
System.Boolean get_SandboxInterop();
System.Void set_SandboxInterop(System.Boolean);
}
interface IAppDomainSetup{
System.String get_ApplicationBase();
System.Void set_ApplicationBase(System.String);
System.String get_ApplicationName();
System.Void set_ApplicationName(System.String);
System.String get_CachePath();
System.Void set_CachePath(System.String);
System.String get_ConfigurationFile();
System.Void set_ConfigurationFile(System.String);
System.String get_DynamicBase();
System.Void set_DynamicBase(System.String);
System.String get_LicenseFile();
System.Void set_LicenseFile(System.String);
System.String get_PrivateBinPath();
System.Void set_PrivateBinPath(System.String);
System.String get_PrivateBinPathProbe();
System.Void set_PrivateBinPathProbe(System.String);
System.String get_ShadowCopyDirectories();
System.Void set_ShadowCopyDirectories(System.String);
System.String get_ShadowCopyFiles();
System.Void set_ShadowCopyFiles(System.String);
}
class LoaderOptimization : System.Enum{
}
class LoaderOptimizationAttribute : System.Attribute{
this (System.Byte);
this (System.LoaderOptimization);
System.LoaderOptimization get_Value();
}
class ActivationContext : System.__object{
static class ContextForm : System.Enum{
}
static System.ActivationContext CreatePartialActivationContext(System.ApplicationIdentity);
static System.ActivationContext CreatePartialActivationContext(System.ApplicationIdentity,System.String[]);
System.ApplicationIdentity get_Identity();
System.ActivationContext.ContextForm get_Form();
System.Byte[] get_ApplicationManifestBytes();
System.Byte[] get_DeploymentManifestBytes();
System.Void Dispose();
}
class ApplicationIdentity : System.__object{
this (System.String);
System.String get_FullName();
System.String get_CodeBase();
System.String ToString();
}
class ApplicationId : System.__object{
this (System.Byte[],System.String,System.Version,System.String,System.String);
System.Byte[] get_PublicKeyToken();
System.String get_Name();
System.Version get_Version();
System.String get_ProcessorArchitecture();
System.String get_Culture();
System.ApplicationId Copy();
System.String ToString();
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
}
class ArgIterator : System.ValueType{
this (System.RuntimeArgumentHandle);
System.TypedReference GetNextArg();
System.TypedReference GetNextArg(System.RuntimeTypeHandle);
System.Void End();
System.Int32 GetRemainingCount();
System.RuntimeTypeHandle GetNextArgType();
System.Int32 GetHashCode();
System.Boolean Equals(System.__object);
}
class AsyncCallback : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.Void Invoke(System.IAsyncResult);
System.IAsyncResult BeginInvoke(System.IAsyncResult,System.AsyncCallback,System.__object);
System.Void EndInvoke(System.IAsyncResult);
}
class Attribute : System.__object{
static System.Attribute[] GetCustomAttributes(System.Reflection.MemberInfo,System.Type);
static System.Attribute[] GetCustomAttributes(System.Reflection.MemberInfo,System.Type,System.Boolean);
static System.Attribute[] GetCustomAttributes(System.Reflection.MemberInfo);
static System.Attribute[] GetCustomAttributes(System.Reflection.MemberInfo,System.Boolean);
static System.Boolean IsDefined(System.Reflection.MemberInfo,System.Type);
static System.Boolean IsDefined(System.Reflection.MemberInfo,System.Type,System.Boolean);
static System.Attribute GetCustomAttribute(System.Reflection.MemberInfo,System.Type);
static System.Attribute GetCustomAttribute(System.Reflection.MemberInfo,System.Type,System.Boolean);
static System.Attribute[] GetCustomAttributes(System.Reflection.ParameterInfo);
static System.Attribute[] GetCustomAttributes(System.Reflection.ParameterInfo,System.Type);
static System.Attribute[] GetCustomAttributes(System.Reflection.ParameterInfo,System.Type,System.Boolean);
static System.Attribute[] GetCustomAttributes(System.Reflection.ParameterInfo,System.Boolean);
static System.Boolean IsDefined(System.Reflection.ParameterInfo,System.Type);
static System.Boolean IsDefined(System.Reflection.ParameterInfo,System.Type,System.Boolean);
static System.Attribute GetCustomAttribute(System.Reflection.ParameterInfo,System.Type);
static System.Attribute GetCustomAttribute(System.Reflection.ParameterInfo,System.Type,System.Boolean);
static System.Attribute[] GetCustomAttributes(System.Reflection.Module,System.Type);
static System.Attribute[] GetCustomAttributes(System.Reflection.Module);
static System.Attribute[] GetCustomAttributes(System.Reflection.Module,System.Boolean);
static System.Attribute[] GetCustomAttributes(System.Reflection.Module,System.Type,System.Boolean);
static System.Boolean IsDefined(System.Reflection.Module,System.Type);
static System.Boolean IsDefined(System.Reflection.Module,System.Type,System.Boolean);
static System.Attribute GetCustomAttribute(System.Reflection.Module,System.Type);
static System.Attribute GetCustomAttribute(System.Reflection.Module,System.Type,System.Boolean);
static System.Attribute[] GetCustomAttributes(System.Reflection.Assembly,System.Type);
static System.Attribute[] GetCustomAttributes(System.Reflection.Assembly,System.Type,System.Boolean);
static System.Attribute[] GetCustomAttributes(System.Reflection.Assembly);
static System.Attribute[] GetCustomAttributes(System.Reflection.Assembly,System.Boolean);
static System.Boolean IsDefined(System.Reflection.Assembly,System.Type);
static System.Boolean IsDefined(System.Reflection.Assembly,System.Type,System.Boolean);
static System.Attribute GetCustomAttribute(System.Reflection.Assembly,System.Type);
static System.Attribute GetCustomAttribute(System.Reflection.Assembly,System.Type,System.Boolean);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.__object get_TypeId();
System.Boolean Match(System.__object);
System.Boolean IsDefaultAttribute();
}
class AttributeTargets : System.Enum{
}
class AttributeUsageAttribute : System.Attribute{
this (System.AttributeTargets);
System.AttributeTargets get_ValidOn();
System.Boolean get_AllowMultiple();
System.Void set_AllowMultiple(System.Boolean);
System.Boolean get_Inherited();
System.Void set_Inherited(System.Boolean);
}
class BitConverter : System.__object{
static System.Byte[] GetBytes(System.Boolean);
static System.Byte[] GetBytes(System.Char);
static System.Byte[] GetBytes(System.Int16);
static System.Byte[] GetBytes(System.Int32);
static System.Byte[] GetBytes(System.Int64);
static System.Byte[] GetBytes(System.UInt16);
static System.Byte[] GetBytes(System.UInt32);
static System.Byte[] GetBytes(System.UInt64);
static System.Byte[] GetBytes(System.Single);
static System.Byte[] GetBytes(System.Double);
static System.Char ToChar(System.Byte[],System.Int32);
static System.Int16 ToInt16(System.Byte[],System.Int32);
static System.Int32 ToInt32(System.Byte[],System.Int32);
static System.Int64 ToInt64(System.Byte[],System.Int32);
static System.UInt16 ToUInt16(System.Byte[],System.Int32);
static System.UInt32 ToUInt32(System.Byte[],System.Int32);
static System.UInt64 ToUInt64(System.Byte[],System.Int32);
static System.Single ToSingle(System.Byte[],System.Int32);
static System.Double ToDouble(System.Byte[],System.Int32);
static System.String ToString(System.Byte[],System.Int32,System.Int32);
static System.String ToString(System.Byte[]);
static System.String ToString(System.Byte[],System.Int32);
static System.Boolean ToBoolean(System.Byte[],System.Int32);
static System.Int64 DoubleToInt64Bits(System.Double);
static System.Double Int64BitsToDouble(System.Int64);
}
class Boolean : System.ValueType{
System.Int32 GetHashCode();
System.String ToString();
System.String ToString(System.IFormatProvider);
System.Boolean Equals(System.__object);
System.Boolean Equals(System.Boolean);
System.Int32 CompareTo(System.__object);
System.Int32 CompareTo(System.Boolean);
static System.Boolean Parse(System.String);
System.TypeCode GetTypeCode();
}
class Buffer : System.__object{
static System.Void BlockCopy(System.Array,System.Int32,System.Array,System.Int32,System.Int32);
static System.Byte GetByte(System.Array,System.Int32);
static System.Void SetByte(System.Array,System.Int32,System.Byte);
static System.Int32 ByteLength(System.Array);
}
class Byte : System.ValueType{
System.Int32 CompareTo(System.__object);
System.Int32 CompareTo(System.Byte);
System.Boolean Equals(System.__object);
System.Boolean Equals(System.Byte);
System.Int32 GetHashCode();
static System.Byte Parse(System.String);
static System.Byte Parse(System.String,System.Globalization.NumberStyles);
static System.Byte Parse(System.String,System.IFormatProvider);
static System.Byte Parse(System.String,System.Globalization.NumberStyles,System.IFormatProvider);
System.String ToString();
System.String ToString(System.String);
System.String ToString(System.IFormatProvider);
System.String ToString(System.String,System.IFormatProvider);
System.TypeCode GetTypeCode();
}
class Char : System.ValueType{
System.Int32 GetHashCode();
System.Boolean Equals(System.__object);
System.Boolean Equals(System.Char);
System.Int32 CompareTo(System.__object);
System.Int32 CompareTo(System.Char);
System.String ToString();
System.String ToString(System.IFormatProvider);
static System.String ToString(System.Char);
static System.Char Parse(System.String);
static System.Boolean IsDigit(System.Char);
static System.Boolean IsLetter(System.Char);
static System.Boolean IsWhiteSpace(System.Char);
static System.Boolean IsUpper(System.Char);
static System.Boolean IsLower(System.Char);
static System.Boolean IsPunctuation(System.Char);
static System.Boolean IsLetterOrDigit(System.Char);
static System.Char ToUpper(System.Char,System.Globalization.CultureInfo);
static System.Char ToUpper(System.Char);
static System.Char ToUpperInvariant(System.Char);
static System.Char ToLower(System.Char,System.Globalization.CultureInfo);
static System.Char ToLower(System.Char);
static System.Char ToLowerInvariant(System.Char);
System.TypeCode GetTypeCode();
static System.Boolean IsControl(System.Char);
static System.Boolean IsControl(System.String,System.Int32);
static System.Boolean IsDigit(System.String,System.Int32);
static System.Boolean IsLetter(System.String,System.Int32);
static System.Boolean IsLetterOrDigit(System.String,System.Int32);
static System.Boolean IsLower(System.String,System.Int32);
static System.Boolean IsNumber(System.Char);
static System.Boolean IsNumber(System.String,System.Int32);
static System.Boolean IsPunctuation(System.String,System.Int32);
static System.Boolean IsSeparator(System.Char);
static System.Boolean IsSeparator(System.String,System.Int32);
static System.Boolean IsSurrogate(System.Char);
static System.Boolean IsSurrogate(System.String,System.Int32);
static System.Boolean IsSymbol(System.Char);
static System.Boolean IsSymbol(System.String,System.Int32);
static System.Boolean IsUpper(System.String,System.Int32);
static System.Boolean IsWhiteSpace(System.String,System.Int32);
static System.Globalization.UnicodeCategory GetUnicodeCategory(System.Char);
static System.Globalization.UnicodeCategory GetUnicodeCategory(System.String,System.Int32);
static System.Double GetNumericValue(System.Char);
static System.Double GetNumericValue(System.String,System.Int32);
static System.Boolean IsHighSurrogate(System.Char);
static System.Boolean IsHighSurrogate(System.String,System.Int32);
static System.Boolean IsLowSurrogate(System.Char);
static System.Boolean IsLowSurrogate(System.String,System.Int32);
static System.Boolean IsSurrogatePair(System.String,System.Int32);
static System.Boolean IsSurrogatePair(System.Char,System.Char);
static System.String ConvertFromUtf32(System.Int32);
static System.Int32 ConvertToUtf32(System.Char,System.Char);
static System.Int32 ConvertToUtf32(System.String,System.Int32);
}
class CharEnumerator : System.__object{
System.__object Clone();
System.Boolean MoveNext();
System.Void Dispose();
System.Char get_Current();
System.Void Reset();
}
class CLSCompliantAttribute : System.Attribute{
this (System.Boolean);
System.Boolean get_IsCompliant();
}
class Console : System.__object{
static System.Boolean get_IsInputRedirected();
static System.Boolean get_IsOutputRedirected();
static System.Boolean get_IsErrorRedirected();
static System.IO.TextReader get_In();
static System.IO.TextWriter get_Out();
static System.IO.TextWriter get_Error();
static System.Text.Encoding get_InputEncoding();
static System.Void set_InputEncoding(System.Text.Encoding);
static System.Text.Encoding get_OutputEncoding();
static System.Void set_OutputEncoding(System.Text.Encoding);
static System.Void Beep();
static System.Void Beep(System.Int32,System.Int32);
static System.Void Clear();
static System.ConsoleColor get_BackgroundColor();
static System.Void set_BackgroundColor(System.ConsoleColor);
static System.ConsoleColor get_ForegroundColor();
static System.Void set_ForegroundColor(System.ConsoleColor);
static System.Void ResetColor();
static System.Void MoveBufferArea(System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32);
static System.Void MoveBufferArea(System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Char,System.ConsoleColor,System.ConsoleColor);
static System.Int32 get_BufferHeight();
static System.Void set_BufferHeight(System.Int32);
static System.Int32 get_BufferWidth();
static System.Void set_BufferWidth(System.Int32);
static System.Void SetBufferSize(System.Int32,System.Int32);
static System.Int32 get_WindowHeight();
static System.Void set_WindowHeight(System.Int32);
static System.Int32 get_WindowWidth();
static System.Void set_WindowWidth(System.Int32);
static System.Void SetWindowSize(System.Int32,System.Int32);
static System.Int32 get_LargestWindowWidth();
static System.Int32 get_LargestWindowHeight();
static System.Int32 get_WindowLeft();
static System.Void set_WindowLeft(System.Int32);
static System.Int32 get_WindowTop();
static System.Void set_WindowTop(System.Int32);
static System.Void SetWindowPosition(System.Int32,System.Int32);
static System.Int32 get_CursorLeft();
static System.Void set_CursorLeft(System.Int32);
static System.Int32 get_CursorTop();
static System.Void set_CursorTop(System.Int32);
static System.Void SetCursorPosition(System.Int32,System.Int32);
static System.Int32 get_CursorSize();
static System.Void set_CursorSize(System.Int32);
static System.Boolean get_CursorVisible();
static System.Void set_CursorVisible(System.Boolean);
static System.String get_Title();
static System.Void set_Title(System.String);
static System.ConsoleKeyInfo ReadKey();
static System.ConsoleKeyInfo ReadKey(System.Boolean);
static System.Boolean get_KeyAvailable();
static System.Boolean get_NumberLock();
static System.Boolean get_CapsLock();
static System.Boolean get_TreatControlCAsInput();
static System.Void set_TreatControlCAsInput(System.Boolean);
static System.Void add_CancelKeyPress(System.ConsoleCancelEventHandler);
static System.Void remove_CancelKeyPress(System.ConsoleCancelEventHandler);
static System.IO.Stream OpenStandardError();
static System.IO.Stream OpenStandardError(System.Int32);
static System.IO.Stream OpenStandardInput();
static System.IO.Stream OpenStandardInput(System.Int32);
static System.IO.Stream OpenStandardOutput();
static System.IO.Stream OpenStandardOutput(System.Int32);
static System.Void SetIn(System.IO.TextReader);
static System.Void SetOut(System.IO.TextWriter);
static System.Void SetError(System.IO.TextWriter);
static System.Int32 Read();
static System.String ReadLine();
static System.Void WriteLine();
static System.Void WriteLine(System.Boolean);
static System.Void WriteLine(System.Char);
static System.Void WriteLine(System.Char[]);
static System.Void WriteLine(System.Char[],System.Int32,System.Int32);
static System.Void WriteLine(System.Decimal);
static System.Void WriteLine(System.Double);
static System.Void WriteLine(System.Single);
static System.Void WriteLine(System.Int32);
static System.Void WriteLine(System.UInt32);
static System.Void WriteLine(System.Int64);
static System.Void WriteLine(System.UInt64);
static System.Void WriteLine(System.__object);
static System.Void WriteLine(System.String);
static System.Void WriteLine(System.String,System.__object);
static System.Void WriteLine(System.String,System.__object,System.__object);
static System.Void WriteLine(System.String,System.__object,System.__object,System.__object);
static System.Void WriteLine(System.String,System.__object,System.__object,System.__object,System.__object);
static System.Void WriteLine(System.String,System.__object[]);
static System.Void Write(System.String,System.__object);
static System.Void Write(System.String,System.__object,System.__object);
static System.Void Write(System.String,System.__object,System.__object,System.__object);
static System.Void Write(System.String,System.__object,System.__object,System.__object,System.__object);
static System.Void Write(System.String,System.__object[]);
static System.Void Write(System.Boolean);
static System.Void Write(System.Char);
static System.Void Write(System.Char[]);
static System.Void Write(System.Char[],System.Int32,System.Int32);
static System.Void Write(System.Double);
static System.Void Write(System.Decimal);
static System.Void Write(System.Single);
static System.Void Write(System.Int32);
static System.Void Write(System.UInt32);
static System.Void Write(System.Int64);
static System.Void Write(System.UInt64);
static System.Void Write(System.__object);
static System.Void Write(System.String);
}
class ConsoleCancelEventHandler : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.Void Invoke(System.__object,System.ConsoleCancelEventArgs);
System.IAsyncResult BeginInvoke(System.__object,System.ConsoleCancelEventArgs,System.AsyncCallback,System.__object);
System.Void EndInvoke(System.IAsyncResult);
}
class ConsoleCancelEventArgs : System.EventArgs{
System.Boolean get_Cancel();
System.Void set_Cancel(System.Boolean);
System.ConsoleSpecialKey get_SpecialKey();
}
class ConsoleColor : System.Enum{
}
class ConsoleKey : System.Enum{
}
class ConsoleKeyInfo : System.ValueType{
this (System.Char,System.ConsoleKey,System.Boolean,System.Boolean,System.Boolean);
System.Char get_KeyChar();
System.ConsoleKey get_Key();
System.ConsoleModifiers get_Modifiers();
System.Boolean Equals(System.__object);
System.Boolean Equals(System.ConsoleKeyInfo);
static System.Boolean op_Equality(System.ConsoleKeyInfo,System.ConsoleKeyInfo);
static System.Boolean op_Inequality(System.ConsoleKeyInfo,System.ConsoleKeyInfo);
System.Int32 GetHashCode();
}
class ConsoleModifiers : System.Enum{
}
class ConsoleSpecialKey : System.Enum{
}
class Base64FormattingOptions : System.Enum{
}
class Convert : System.__object{
static System.TypeCode GetTypeCode(System.__object);
static System.Boolean IsDBNull(System.__object);
static System.__object ChangeType(System.__object,System.TypeCode);
static System.__object ChangeType(System.__object,System.TypeCode,System.IFormatProvider);
static System.__object ChangeType(System.__object,System.Type);
static System.__object ChangeType(System.__object,System.Type,System.IFormatProvider);
static System.Boolean ToBoolean(System.__object);
static System.Boolean ToBoolean(System.__object,System.IFormatProvider);
static System.Boolean ToBoolean(System.Boolean);
static System.Boolean ToBoolean(System.SByte);
static System.Boolean ToBoolean(System.Char);
static System.Boolean ToBoolean(System.Byte);
static System.Boolean ToBoolean(System.Int16);
static System.Boolean ToBoolean(System.UInt16);
static System.Boolean ToBoolean(System.Int32);
static System.Boolean ToBoolean(System.UInt32);
static System.Boolean ToBoolean(System.Int64);
static System.Boolean ToBoolean(System.UInt64);
static System.Boolean ToBoolean(System.String);
static System.Boolean ToBoolean(System.String,System.IFormatProvider);
static System.Boolean ToBoolean(System.Single);
static System.Boolean ToBoolean(System.Double);
static System.Boolean ToBoolean(System.Decimal);
static System.Boolean ToBoolean(System.DateTime);
static System.Char ToChar(System.__object);
static System.Char ToChar(System.__object,System.IFormatProvider);
static System.Char ToChar(System.Boolean);
static System.Char ToChar(System.Char);
static System.Char ToChar(System.SByte);
static System.Char ToChar(System.Byte);
static System.Char ToChar(System.Int16);
static System.Char ToChar(System.UInt16);
static System.Char ToChar(System.Int32);
static System.Char ToChar(System.UInt32);
static System.Char ToChar(System.Int64);
static System.Char ToChar(System.UInt64);
static System.Char ToChar(System.String);
static System.Char ToChar(System.String,System.IFormatProvider);
static System.Char ToChar(System.Single);
static System.Char ToChar(System.Double);
static System.Char ToChar(System.Decimal);
static System.Char ToChar(System.DateTime);
static System.SByte ToSByte(System.__object);
static System.SByte ToSByte(System.__object,System.IFormatProvider);
static System.SByte ToSByte(System.Boolean);
static System.SByte ToSByte(System.SByte);
static System.SByte ToSByte(System.Char);
static System.SByte ToSByte(System.Byte);
static System.SByte ToSByte(System.Int16);
static System.SByte ToSByte(System.UInt16);
static System.SByte ToSByte(System.Int32);
static System.SByte ToSByte(System.UInt32);
static System.SByte ToSByte(System.Int64);
static System.SByte ToSByte(System.UInt64);
static System.SByte ToSByte(System.Single);
static System.SByte ToSByte(System.Double);
static System.SByte ToSByte(System.Decimal);
static System.SByte ToSByte(System.String);
static System.SByte ToSByte(System.String,System.IFormatProvider);
static System.SByte ToSByte(System.DateTime);
static System.Byte ToByte(System.__object);
static System.Byte ToByte(System.__object,System.IFormatProvider);
static System.Byte ToByte(System.Boolean);
static System.Byte ToByte(System.Byte);
static System.Byte ToByte(System.Char);
static System.Byte ToByte(System.SByte);
static System.Byte ToByte(System.Int16);
static System.Byte ToByte(System.UInt16);
static System.Byte ToByte(System.Int32);
static System.Byte ToByte(System.UInt32);
static System.Byte ToByte(System.Int64);
static System.Byte ToByte(System.UInt64);
static System.Byte ToByte(System.Single);
static System.Byte ToByte(System.Double);
static System.Byte ToByte(System.Decimal);
static System.Byte ToByte(System.String);
static System.Byte ToByte(System.String,System.IFormatProvider);
static System.Byte ToByte(System.DateTime);
static System.Int16 ToInt16(System.__object);
static System.Int16 ToInt16(System.__object,System.IFormatProvider);
static System.Int16 ToInt16(System.Boolean);
static System.Int16 ToInt16(System.Char);
static System.Int16 ToInt16(System.SByte);
static System.Int16 ToInt16(System.Byte);
static System.Int16 ToInt16(System.UInt16);
static System.Int16 ToInt16(System.Int32);
static System.Int16 ToInt16(System.UInt32);
static System.Int16 ToInt16(System.Int16);
static System.Int16 ToInt16(System.Int64);
static System.Int16 ToInt16(System.UInt64);
static System.Int16 ToInt16(System.Single);
static System.Int16 ToInt16(System.Double);
static System.Int16 ToInt16(System.Decimal);
static System.Int16 ToInt16(System.String);
static System.Int16 ToInt16(System.String,System.IFormatProvider);
static System.Int16 ToInt16(System.DateTime);
static System.UInt16 ToUInt16(System.__object);
static System.UInt16 ToUInt16(System.__object,System.IFormatProvider);
static System.UInt16 ToUInt16(System.Boolean);
static System.UInt16 ToUInt16(System.Char);
static System.UInt16 ToUInt16(System.SByte);
static System.UInt16 ToUInt16(System.Byte);
static System.UInt16 ToUInt16(System.Int16);
static System.UInt16 ToUInt16(System.Int32);
static System.UInt16 ToUInt16(System.UInt16);
static System.UInt16 ToUInt16(System.UInt32);
static System.UInt16 ToUInt16(System.Int64);
static System.UInt16 ToUInt16(System.UInt64);
static System.UInt16 ToUInt16(System.Single);
static System.UInt16 ToUInt16(System.Double);
static System.UInt16 ToUInt16(System.Decimal);
static System.UInt16 ToUInt16(System.String);
static System.UInt16 ToUInt16(System.String,System.IFormatProvider);
static System.UInt16 ToUInt16(System.DateTime);
static System.Int32 ToInt32(System.__object);
static System.Int32 ToInt32(System.__object,System.IFormatProvider);
static System.Int32 ToInt32(System.Boolean);
static System.Int32 ToInt32(System.Char);
static System.Int32 ToInt32(System.SByte);
static System.Int32 ToInt32(System.Byte);
static System.Int32 ToInt32(System.Int16);
static System.Int32 ToInt32(System.UInt16);
static System.Int32 ToInt32(System.UInt32);
static System.Int32 ToInt32(System.Int32);
static System.Int32 ToInt32(System.Int64);
static System.Int32 ToInt32(System.UInt64);
static System.Int32 ToInt32(System.Single);
static System.Int32 ToInt32(System.Double);
static System.Int32 ToInt32(System.Decimal);
static System.Int32 ToInt32(System.String);
static System.Int32 ToInt32(System.String,System.IFormatProvider);
static System.Int32 ToInt32(System.DateTime);
static System.UInt32 ToUInt32(System.__object);
static System.UInt32 ToUInt32(System.__object,System.IFormatProvider);
static System.UInt32 ToUInt32(System.Boolean);
static System.UInt32 ToUInt32(System.Char);
static System.UInt32 ToUInt32(System.SByte);
static System.UInt32 ToUInt32(System.Byte);
static System.UInt32 ToUInt32(System.Int16);
static System.UInt32 ToUInt32(System.UInt16);
static System.UInt32 ToUInt32(System.Int32);
static System.UInt32 ToUInt32(System.UInt32);
static System.UInt32 ToUInt32(System.Int64);
static System.UInt32 ToUInt32(System.UInt64);
static System.UInt32 ToUInt32(System.Single);
static System.UInt32 ToUInt32(System.Double);
static System.UInt32 ToUInt32(System.Decimal);
static System.UInt32 ToUInt32(System.String);
static System.UInt32 ToUInt32(System.String,System.IFormatProvider);
static System.UInt32 ToUInt32(System.DateTime);
static System.Int64 ToInt64(System.__object);
static System.Int64 ToInt64(System.__object,System.IFormatProvider);
static System.Int64 ToInt64(System.Boolean);
static System.Int64 ToInt64(System.Char);
static System.Int64 ToInt64(System.SByte);
static System.Int64 ToInt64(System.Byte);
static System.Int64 ToInt64(System.Int16);
static System.Int64 ToInt64(System.UInt16);
static System.Int64 ToInt64(System.Int32);
static System.Int64 ToInt64(System.UInt32);
static System.Int64 ToInt64(System.UInt64);
static System.Int64 ToInt64(System.Int64);
static System.Int64 ToInt64(System.Single);
static System.Int64 ToInt64(System.Double);
static System.Int64 ToInt64(System.Decimal);
static System.Int64 ToInt64(System.String);
static System.Int64 ToInt64(System.String,System.IFormatProvider);
static System.Int64 ToInt64(System.DateTime);
static System.UInt64 ToUInt64(System.__object);
static System.UInt64 ToUInt64(System.__object,System.IFormatProvider);
static System.UInt64 ToUInt64(System.Boolean);
static System.UInt64 ToUInt64(System.Char);
static System.UInt64 ToUInt64(System.SByte);
static System.UInt64 ToUInt64(System.Byte);
static System.UInt64 ToUInt64(System.Int16);
static System.UInt64 ToUInt64(System.UInt16);
static System.UInt64 ToUInt64(System.Int32);
static System.UInt64 ToUInt64(System.UInt32);
static System.UInt64 ToUInt64(System.Int64);
static System.UInt64 ToUInt64(System.UInt64);
static System.UInt64 ToUInt64(System.Single);
static System.UInt64 ToUInt64(System.Double);
static System.UInt64 ToUInt64(System.Decimal);
static System.UInt64 ToUInt64(System.String);
static System.UInt64 ToUInt64(System.String,System.IFormatProvider);
static System.UInt64 ToUInt64(System.DateTime);
static System.Single ToSingle(System.__object);
static System.Single ToSingle(System.__object,System.IFormatProvider);
static System.Single ToSingle(System.SByte);
static System.Single ToSingle(System.Byte);
static System.Single ToSingle(System.Char);
static System.Single ToSingle(System.Int16);
static System.Single ToSingle(System.UInt16);
static System.Single ToSingle(System.Int32);
static System.Single ToSingle(System.UInt32);
static System.Single ToSingle(System.Int64);
static System.Single ToSingle(System.UInt64);
static System.Single ToSingle(System.Single);
static System.Single ToSingle(System.Double);
static System.Single ToSingle(System.Decimal);
static System.Single ToSingle(System.String);
static System.Single ToSingle(System.String,System.IFormatProvider);
static System.Single ToSingle(System.Boolean);
static System.Single ToSingle(System.DateTime);
static System.Double ToDouble(System.__object);
static System.Double ToDouble(System.__object,System.IFormatProvider);
static System.Double ToDouble(System.SByte);
static System.Double ToDouble(System.Byte);
static System.Double ToDouble(System.Int16);
static System.Double ToDouble(System.Char);
static System.Double ToDouble(System.UInt16);
static System.Double ToDouble(System.Int32);
static System.Double ToDouble(System.UInt32);
static System.Double ToDouble(System.Int64);
static System.Double ToDouble(System.UInt64);
static System.Double ToDouble(System.Single);
static System.Double ToDouble(System.Double);
static System.Double ToDouble(System.Decimal);
static System.Double ToDouble(System.String);
static System.Double ToDouble(System.String,System.IFormatProvider);
static System.Double ToDouble(System.Boolean);
static System.Double ToDouble(System.DateTime);
static System.Decimal ToDecimal(System.__object);
static System.Decimal ToDecimal(System.__object,System.IFormatProvider);
static System.Decimal ToDecimal(System.SByte);
static System.Decimal ToDecimal(System.Byte);
static System.Decimal ToDecimal(System.Char);
static System.Decimal ToDecimal(System.Int16);
static System.Decimal ToDecimal(System.UInt16);
static System.Decimal ToDecimal(System.Int32);
static System.Decimal ToDecimal(System.UInt32);
static System.Decimal ToDecimal(System.Int64);
static System.Decimal ToDecimal(System.UInt64);
static System.Decimal ToDecimal(System.Single);
static System.Decimal ToDecimal(System.Double);
static System.Decimal ToDecimal(System.String);
static System.Decimal ToDecimal(System.String,System.IFormatProvider);
static System.Decimal ToDecimal(System.Decimal);
static System.Decimal ToDecimal(System.Boolean);
static System.Decimal ToDecimal(System.DateTime);
static System.DateTime ToDateTime(System.DateTime);
static System.DateTime ToDateTime(System.__object);
static System.DateTime ToDateTime(System.__object,System.IFormatProvider);
static System.DateTime ToDateTime(System.String);
static System.DateTime ToDateTime(System.String,System.IFormatProvider);
static System.DateTime ToDateTime(System.SByte);
static System.DateTime ToDateTime(System.Byte);
static System.DateTime ToDateTime(System.Int16);
static System.DateTime ToDateTime(System.UInt16);
static System.DateTime ToDateTime(System.Int32);
static System.DateTime ToDateTime(System.UInt32);
static System.DateTime ToDateTime(System.Int64);
static System.DateTime ToDateTime(System.UInt64);
static System.DateTime ToDateTime(System.Boolean);
static System.DateTime ToDateTime(System.Char);
static System.DateTime ToDateTime(System.Single);
static System.DateTime ToDateTime(System.Double);
static System.DateTime ToDateTime(System.Decimal);
static System.String ToString(System.__object);
static System.String ToString(System.__object,System.IFormatProvider);
static System.String ToString(System.Boolean);
static System.String ToString(System.Boolean,System.IFormatProvider);
static System.String ToString(System.Char);
static System.String ToString(System.Char,System.IFormatProvider);
static System.String ToString(System.SByte);
static System.String ToString(System.SByte,System.IFormatProvider);
static System.String ToString(System.Byte);
static System.String ToString(System.Byte,System.IFormatProvider);
static System.String ToString(System.Int16);
static System.String ToString(System.Int16,System.IFormatProvider);
static System.String ToString(System.UInt16);
static System.String ToString(System.UInt16,System.IFormatProvider);
static System.String ToString(System.Int32);
static System.String ToString(System.Int32,System.IFormatProvider);
static System.String ToString(System.UInt32);
static System.String ToString(System.UInt32,System.IFormatProvider);
static System.String ToString(System.Int64);
static System.String ToString(System.Int64,System.IFormatProvider);
static System.String ToString(System.UInt64);
static System.String ToString(System.UInt64,System.IFormatProvider);
static System.String ToString(System.Single);
static System.String ToString(System.Single,System.IFormatProvider);
static System.String ToString(System.Double);
static System.String ToString(System.Double,System.IFormatProvider);
static System.String ToString(System.Decimal);
static System.String ToString(System.Decimal,System.IFormatProvider);
static System.String ToString(System.DateTime);
static System.String ToString(System.DateTime,System.IFormatProvider);
static System.String ToString(System.String);
static System.String ToString(System.String,System.IFormatProvider);
static System.Byte ToByte(System.String,System.Int32);
static System.SByte ToSByte(System.String,System.Int32);
static System.Int16 ToInt16(System.String,System.Int32);
static System.UInt16 ToUInt16(System.String,System.Int32);
static System.Int32 ToInt32(System.String,System.Int32);
static System.UInt32 ToUInt32(System.String,System.Int32);
static System.Int64 ToInt64(System.String,System.Int32);
static System.UInt64 ToUInt64(System.String,System.Int32);
static System.String ToString(System.Byte,System.Int32);
static System.String ToString(System.Int16,System.Int32);
static System.String ToString(System.Int32,System.Int32);
static System.String ToString(System.Int64,System.Int32);
static System.String ToBase64String(System.Byte[]);
static System.String ToBase64String(System.Byte[],System.Base64FormattingOptions);
static System.String ToBase64String(System.Byte[],System.Int32,System.Int32);
static System.String ToBase64String(System.Byte[],System.Int32,System.Int32,System.Base64FormattingOptions);
static System.Int32 ToBase64CharArray(System.Byte[],System.Int32,System.Int32,System.Char[],System.Int32);
static System.Int32 ToBase64CharArray(System.Byte[],System.Int32,System.Int32,System.Char[],System.Int32,System.Base64FormattingOptions);
static System.Byte[] FromBase64String(System.String);
static System.Byte[] FromBase64CharArray(System.Char[],System.Int32,System.Int32);
}
class ContextBoundObject : System.MarshalByRefObject{
}
class ContextStaticAttribute : System.Attribute{
this ();
}
class DayOfWeek : System.Enum{
}
class DBNull : System.__object{
System.Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
System.String ToString();
System.String ToString(System.IFormatProvider);
System.TypeCode GetTypeCode();
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
static System.Int64 ToOACurrency(System.Decimal);
static System.Decimal FromOACurrency(System.Int64);
static System.Decimal Add(System.Decimal,System.Decimal);
static System.Decimal Ceiling(System.Decimal);
static System.Int32 Compare(System.Decimal,System.Decimal);
System.Int32 CompareTo(System.__object);
System.Int32 CompareTo(System.Decimal);
static System.Decimal Divide(System.Decimal,System.Decimal);
System.Boolean Equals(System.__object);
System.Boolean Equals(System.Decimal);
System.Int32 GetHashCode();
static System.Boolean Equals(System.Decimal,System.Decimal);
static System.Decimal Floor(System.Decimal);
System.String ToString();
System.String ToString(System.String);
System.String ToString(System.IFormatProvider);
System.String ToString(System.String,System.IFormatProvider);
static System.Decimal Parse(System.String);
static System.Decimal Parse(System.String,System.Globalization.NumberStyles);
static System.Decimal Parse(System.String,System.IFormatProvider);
static System.Decimal Parse(System.String,System.Globalization.NumberStyles,System.IFormatProvider);
static System.Int32[] GetBits(System.Decimal);
static System.Decimal Remainder(System.Decimal,System.Decimal);
static System.Decimal Multiply(System.Decimal,System.Decimal);
static System.Decimal Negate(System.Decimal);
static System.Decimal Round(System.Decimal);
static System.Decimal Round(System.Decimal,System.Int32);
static System.Decimal Round(System.Decimal,System.MidpointRounding);
static System.Decimal Round(System.Decimal,System.Int32,System.MidpointRounding);
static System.Decimal Subtract(System.Decimal,System.Decimal);
static System.Byte ToByte(System.Decimal);
static System.SByte ToSByte(System.Decimal);
static System.Int16 ToInt16(System.Decimal);
static System.Double ToDouble(System.Decimal);
static System.Int32 ToInt32(System.Decimal);
static System.Int64 ToInt64(System.Decimal);
static System.UInt16 ToUInt16(System.Decimal);
static System.UInt32 ToUInt32(System.Decimal);
static System.UInt64 ToUInt64(System.Decimal);
static System.Single ToSingle(System.Decimal);
static System.Decimal Truncate(System.Decimal);
static System.Decimal op_Implicit(System.Byte);
static System.Decimal op_Implicit(System.SByte);
static System.Decimal op_Implicit(System.Int16);
static System.Decimal op_Implicit(System.UInt16);
static System.Decimal op_Implicit(System.Char);
static System.Decimal op_Implicit(System.Int32);
static System.Decimal op_Implicit(System.UInt32);
static System.Decimal op_Implicit(System.Int64);
static System.Decimal op_Implicit(System.UInt64);
static System.Decimal op_Explicit(System.Single);
static System.Decimal op_Explicit(System.Double);
static System.Byte op_Explicit(System.Decimal);
static System.SByte op_Explicit(System.Decimal);
static System.Char op_Explicit(System.Decimal);
static System.Int16 op_Explicit(System.Decimal);
static System.UInt16 op_Explicit(System.Decimal);
static System.Int32 op_Explicit(System.Decimal);
static System.UInt32 op_Explicit(System.Decimal);
static System.Int64 op_Explicit(System.Decimal);
static System.UInt64 op_Explicit(System.Decimal);
static System.Single op_Explicit(System.Decimal);
static System.Double op_Explicit(System.Decimal);
static System.Decimal op_UnaryPlus(System.Decimal);
static System.Decimal op_UnaryNegation(System.Decimal);
static System.Decimal op_Increment(System.Decimal);
static System.Decimal op_Decrement(System.Decimal);
static System.Decimal op_Addition(System.Decimal,System.Decimal);
static System.Decimal op_Subtraction(System.Decimal,System.Decimal);
static System.Decimal op_Multiply(System.Decimal,System.Decimal);
static System.Decimal op_Division(System.Decimal,System.Decimal);
static System.Decimal op_Modulus(System.Decimal,System.Decimal);
static System.Boolean op_Equality(System.Decimal,System.Decimal);
static System.Boolean op_Inequality(System.Decimal,System.Decimal);
static System.Boolean op_LessThan(System.Decimal,System.Decimal);
static System.Boolean op_LessThanOrEqual(System.Decimal,System.Decimal);
static System.Boolean op_GreaterThan(System.Decimal,System.Decimal);
static System.Boolean op_GreaterThanOrEqual(System.Decimal,System.Decimal);
System.TypeCode GetTypeCode();
}
class Double : System.ValueType{
static System.Boolean IsInfinity(System.Double);
static System.Boolean IsPositiveInfinity(System.Double);
static System.Boolean IsNegativeInfinity(System.Double);
static System.Boolean IsNaN(System.Double);
System.Int32 CompareTo(System.__object);
System.Int32 CompareTo(System.Double);
System.Boolean Equals(System.__object);
static System.Boolean op_Equality(System.Double,System.Double);
static System.Boolean op_Inequality(System.Double,System.Double);
static System.Boolean op_LessThan(System.Double,System.Double);
static System.Boolean op_GreaterThan(System.Double,System.Double);
static System.Boolean op_LessThanOrEqual(System.Double,System.Double);
static System.Boolean op_GreaterThanOrEqual(System.Double,System.Double);
System.Boolean Equals(System.Double);
System.Int32 GetHashCode();
System.String ToString();
System.String ToString(System.String);
System.String ToString(System.IFormatProvider);
System.String ToString(System.String,System.IFormatProvider);
static System.Double Parse(System.String);
static System.Double Parse(System.String,System.Globalization.NumberStyles);
static System.Double Parse(System.String,System.IFormatProvider);
static System.Double Parse(System.String,System.Globalization.NumberStyles,System.IFormatProvider);
System.TypeCode GetTypeCode();
}
class Enum : System.ValueType{
static System.__object Parse(System.Type,System.String);
static System.__object Parse(System.Type,System.String,System.Boolean);
static System.Type GetUnderlyingType(System.Type);
static System.Array GetValues(System.Type);
static System.String GetName(System.Type,System.__object);
static System.String[] GetNames(System.Type);
static System.__object ToObject(System.Type,System.__object);
static System.Boolean IsDefined(System.Type,System.__object);
static System.String Format(System.Type,System.__object,System.String);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.String ToString();
System.String ToString(System.String,System.IFormatProvider);
System.Int32 CompareTo(System.__object);
System.String ToString(System.String);
System.String ToString(System.IFormatProvider);
System.Boolean HasFlag(System.Enum);
System.TypeCode GetTypeCode();
static System.__object ToObject(System.Type,System.SByte);
static System.__object ToObject(System.Type,System.Int16);
static System.__object ToObject(System.Type,System.Int32);
static System.__object ToObject(System.Type,System.Byte);
static System.__object ToObject(System.Type,System.UInt16);
static System.__object ToObject(System.Type,System.UInt32);
static System.__object ToObject(System.Type,System.Int64);
static System.__object ToObject(System.Type,System.UInt64);
}
class EnvironmentVariableTarget : System.Enum{
}
class Environment : System.__object{
static class SpecialFolderOption : System.Enum{
}
static class SpecialFolder : System.Enum{
}
static System.Int32 get_TickCount();
static System.Void Exit(System.Int32);
static System.Int32 get_ExitCode();
static System.Void set_ExitCode(System.Int32);
static System.Void FailFast(System.String);
static System.String get_CommandLine();
static System.String get_CurrentDirectory();
static System.Void set_CurrentDirectory(System.String);
static System.String get_SystemDirectory();
static System.String ExpandEnvironmentVariables(System.String);
static System.String get_MachineName();
static System.Int32 get_ProcessorCount();
static System.Int32 get_SystemPageSize();
static System.String[] GetCommandLineArgs();
static System.String GetEnvironmentVariable(System.String);
static System.String GetEnvironmentVariable(System.String,System.EnvironmentVariableTarget);
static System.Collections.IDictionary GetEnvironmentVariables();
static System.Collections.IDictionary GetEnvironmentVariables(System.EnvironmentVariableTarget);
static System.Void SetEnvironmentVariable(System.String,System.String);
static System.Void SetEnvironmentVariable(System.String,System.String,System.EnvironmentVariableTarget);
static System.String[] GetLogicalDrives();
static System.String get_NewLine();
static System.Version get_Version();
static System.Int64 get_WorkingSet();
static System.OperatingSystem get_OSVersion();
static System.String get_StackTrace();
static System.Boolean get_Is64BitProcess();
static System.Boolean get_Is64BitOperatingSystem();
static System.Boolean get_HasShutdownStarted();
static System.String get_UserName();
static System.Boolean get_UserInteractive();
static System.String GetFolderPath(System.Environment.SpecialFolder);
static System.String GetFolderPath(System.Environment.SpecialFolder,System.Environment.SpecialFolderOption);
static System.String get_UserDomainName();
static System.Int32 get_CurrentManagedThreadId();
}
class EventArgs : System.__object{
this ();
}
class EventHandler : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.Void Invoke(System.__object,System.EventArgs);
System.IAsyncResult BeginInvoke(System.__object,System.EventArgs,System.AsyncCallback,System.__object);
System.Void EndInvoke(System.IAsyncResult);
}
class FlagsAttribute : System.Attribute{
this ();
}
class FormattableString : System.__object{
System.String get_Format();
System.__object[] GetArguments();
System.Int32 get_ArgumentCount();
System.__object GetArgument(System.Int32);
System.String ToString(System.IFormatProvider);
static System.String Invariant(System.FormattableString);
System.String ToString();
}
class GCCollectionMode : System.Enum{
}
class GCNotificationStatus : System.Enum{
}
class GC : System.__object{
static System.Void AddMemoryPressure(System.Int64);
static System.Void RemoveMemoryPressure(System.Int64);
static System.Int32 GetGeneration(System.__object);
static System.Void Collect(System.Int32);
static System.Void Collect();
static System.Void Collect(System.Int32,System.GCCollectionMode);
static System.Void Collect(System.Int32,System.GCCollectionMode,System.Boolean);
static System.Void Collect(System.Int32,System.GCCollectionMode,System.Boolean,System.Boolean);
static System.Int32 CollectionCount(System.Int32);
static System.Void KeepAlive(System.__object);
static System.Int32 GetGeneration(System.WeakReference);
static System.Int32 get_MaxGeneration();
static System.Void WaitForPendingFinalizers();
static System.Void SuppressFinalize(System.__object);
static System.Void ReRegisterForFinalize(System.__object);
static System.Int64 GetTotalMemory(System.Boolean);
static System.Void RegisterForFullGCNotification(System.Int32,System.Int32);
static System.Void CancelFullGCNotification();
static System.GCNotificationStatus WaitForFullGCApproach();
static System.GCNotificationStatus WaitForFullGCApproach(System.Int32);
static System.GCNotificationStatus WaitForFullGCComplete();
static System.GCNotificationStatus WaitForFullGCComplete(System.Int32);
static System.Boolean TryStartNoGCRegion(System.Int64);
static System.Boolean TryStartNoGCRegion(System.Int64,System.Int64);
static System.Boolean TryStartNoGCRegion(System.Int64,System.Boolean);
static System.Boolean TryStartNoGCRegion(System.Int64,System.Int64,System.Boolean);
static System.Void EndNoGCRegion();
}
class Guid : System.ValueType{
this (System.Byte[]);
this (System.UInt32,System.UInt16,System.UInt16,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte);
this (System.Int32,System.Int16,System.Int16,System.Byte[]);
this (System.Int32,System.Int16,System.Int16,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte);
this (System.String);
static System.Guid Parse(System.String);
static System.Guid ParseExact(System.String,System.String);
System.Byte[] ToByteArray();
System.String ToString();
System.Int32 GetHashCode();
System.Boolean Equals(System.__object);
System.Boolean Equals(System.Guid);
System.Int32 CompareTo(System.__object);
System.Int32 CompareTo(System.Guid);
static System.Boolean op_Equality(System.Guid,System.Guid);
static System.Boolean op_Inequality(System.Guid,System.Guid);
static System.Guid NewGuid();
System.String ToString(System.String);
System.String ToString(System.String,System.IFormatProvider);
}
interface IAsyncResult{
System.Boolean get_IsCompleted();
System.Threading.WaitHandle get_AsyncWaitHandle();
System.__object get_AsyncState();
System.Boolean get_CompletedSynchronously();
}
interface ICustomFormatter{
System.String Format(System.String,System.__object,System.IFormatProvider);
}
interface IDisposable{
System.Void Dispose();
}
interface IFormatProvider{
System.__object GetFormat(System.Type);
}
interface IFormattable{
System.String ToString(System.String,System.IFormatProvider);
}
class Int16 : System.ValueType{
System.Int32 CompareTo(System.__object);
System.Int32 CompareTo(System.Int16);
System.Boolean Equals(System.__object);
System.Boolean Equals(System.Int16);
System.Int32 GetHashCode();
System.String ToString();
System.String ToString(System.IFormatProvider);
System.String ToString(System.String);
System.String ToString(System.String,System.IFormatProvider);
static System.Int16 Parse(System.String);
static System.Int16 Parse(System.String,System.Globalization.NumberStyles);
static System.Int16 Parse(System.String,System.IFormatProvider);
static System.Int16 Parse(System.String,System.Globalization.NumberStyles,System.IFormatProvider);
System.TypeCode GetTypeCode();
}
class Int32 : System.ValueType{
System.Int32 CompareTo(System.__object);
System.Int32 CompareTo(System.Int32);
System.Boolean Equals(System.__object);
System.Boolean Equals(System.Int32);
System.Int32 GetHashCode();
System.String ToString();
System.String ToString(System.String);
System.String ToString(System.IFormatProvider);
System.String ToString(System.String,System.IFormatProvider);
static System.Int32 Parse(System.String);
static System.Int32 Parse(System.String,System.Globalization.NumberStyles);
static System.Int32 Parse(System.String,System.IFormatProvider);
static System.Int32 Parse(System.String,System.Globalization.NumberStyles,System.IFormatProvider);
System.TypeCode GetTypeCode();
}
class Int64 : System.ValueType{
System.Int32 CompareTo(System.__object);
System.Int32 CompareTo(System.Int64);
System.Boolean Equals(System.__object);
System.Boolean Equals(System.Int64);
System.Int32 GetHashCode();
System.String ToString();
System.String ToString(System.IFormatProvider);
System.String ToString(System.String);
System.String ToString(System.String,System.IFormatProvider);
static System.Int64 Parse(System.String);
static System.Int64 Parse(System.String,System.Globalization.NumberStyles);
static System.Int64 Parse(System.String,System.IFormatProvider);
static System.Int64 Parse(System.String,System.Globalization.NumberStyles,System.IFormatProvider);
System.TypeCode GetTypeCode();
}
class IntPtr : System.ValueType{
this (System.Int32);
this (System.Int64);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.Int32 ToInt32();
System.Int64 ToInt64();
System.String ToString();
System.String ToString(System.String);
static System.IntPtr op_Explicit(System.Int32);
static System.IntPtr op_Explicit(System.Int64);
static System.Int32 op_Explicit(System.IntPtr);
static System.Int64 op_Explicit(System.IntPtr);
static System.Boolean op_Equality(System.IntPtr,System.IntPtr);
static System.Boolean op_Inequality(System.IntPtr,System.IntPtr);
static System.IntPtr Add(System.IntPtr,System.Int32);
static System.IntPtr op_Addition(System.IntPtr,System.Int32);
static System.IntPtr Subtract(System.IntPtr,System.Int32);
static System.IntPtr op_Subtraction(System.IntPtr,System.Int32);
static System.Int32 get_Size();
}
interface IConvertible{
System.TypeCode GetTypeCode();
System.Boolean ToBoolean(System.IFormatProvider);
System.Char ToChar(System.IFormatProvider);
System.SByte ToSByte(System.IFormatProvider);
System.Byte ToByte(System.IFormatProvider);
System.Int16 ToInt16(System.IFormatProvider);
System.UInt16 ToUInt16(System.IFormatProvider);
System.Int32 ToInt32(System.IFormatProvider);
System.UInt32 ToUInt32(System.IFormatProvider);
System.Int64 ToInt64(System.IFormatProvider);
System.UInt64 ToUInt64(System.IFormatProvider);
System.Single ToSingle(System.IFormatProvider);
System.Double ToDouble(System.IFormatProvider);
System.Decimal ToDecimal(System.IFormatProvider);
System.DateTime ToDateTime(System.IFormatProvider);
System.String ToString(System.IFormatProvider);
System.__object ToType(System.Type,System.IFormatProvider);
}
interface IServiceProvider{
System.__object GetService(System.Type);
}
class LocalDataStoreSlot : System.__object{
}
class MarshalByRefObject : System.__object{
System.__object GetLifetimeService();
System.__object InitializeLifetimeService();
System.Runtime.Remoting.ObjRef CreateObjRef(System.Type);
}
class Math : System.__object{
static System.Double Acos(System.Double);
static System.Double Asin(System.Double);
static System.Double Atan(System.Double);
static System.Double Atan2(System.Double,System.Double);
static System.Decimal Ceiling(System.Decimal);
static System.Double Ceiling(System.Double);
static System.Double Cos(System.Double);
static System.Double Cosh(System.Double);
static System.Decimal Floor(System.Decimal);
static System.Double Floor(System.Double);
static System.Double Sin(System.Double);
static System.Double Tan(System.Double);
static System.Double Sinh(System.Double);
static System.Double Tanh(System.Double);
static System.Double Round(System.Double);
static System.Double Round(System.Double,System.Int32);
static System.Double Round(System.Double,System.MidpointRounding);
static System.Double Round(System.Double,System.Int32,System.MidpointRounding);
static System.Decimal Round(System.Decimal);
static System.Decimal Round(System.Decimal,System.Int32);
static System.Decimal Round(System.Decimal,System.MidpointRounding);
static System.Decimal Round(System.Decimal,System.Int32,System.MidpointRounding);
static System.Decimal Truncate(System.Decimal);
static System.Double Truncate(System.Double);
static System.Double Sqrt(System.Double);
static System.Double Log(System.Double);
static System.Double Log10(System.Double);
static System.Double Exp(System.Double);
static System.Double Pow(System.Double,System.Double);
static System.Double IEEERemainder(System.Double,System.Double);
static System.SByte Abs(System.SByte);
static System.Int16 Abs(System.Int16);
static System.Int32 Abs(System.Int32);
static System.Int64 Abs(System.Int64);
static System.Single Abs(System.Single);
static System.Double Abs(System.Double);
static System.Decimal Abs(System.Decimal);
static System.SByte Max(System.SByte,System.SByte);
static System.Byte Max(System.Byte,System.Byte);
static System.Int16 Max(System.Int16,System.Int16);
static System.UInt16 Max(System.UInt16,System.UInt16);
static System.Int32 Max(System.Int32,System.Int32);
static System.UInt32 Max(System.UInt32,System.UInt32);
static System.Int64 Max(System.Int64,System.Int64);
static System.UInt64 Max(System.UInt64,System.UInt64);
static System.Single Max(System.Single,System.Single);
static System.Double Max(System.Double,System.Double);
static System.Decimal Max(System.Decimal,System.Decimal);
static System.SByte Min(System.SByte,System.SByte);
static System.Byte Min(System.Byte,System.Byte);
static System.Int16 Min(System.Int16,System.Int16);
static System.UInt16 Min(System.UInt16,System.UInt16);
static System.Int32 Min(System.Int32,System.Int32);
static System.UInt32 Min(System.UInt32,System.UInt32);
static System.Int64 Min(System.Int64,System.Int64);
static System.UInt64 Min(System.UInt64,System.UInt64);
static System.Single Min(System.Single,System.Single);
static System.Double Min(System.Double,System.Double);
static System.Decimal Min(System.Decimal,System.Decimal);
static System.Double Log(System.Double,System.Double);
static System.Int32 Sign(System.SByte);
static System.Int32 Sign(System.Int16);
static System.Int32 Sign(System.Int32);
static System.Int32 Sign(System.Int64);
static System.Int32 Sign(System.Single);
static System.Int32 Sign(System.Double);
static System.Int32 Sign(System.Decimal);
static System.Int64 BigMul(System.Int32,System.Int32);
}
class MidpointRounding : System.Enum{
}
class NonSerializedAttribute : System.Attribute{
this ();
}
class ObsoleteAttribute : System.Attribute{
this ();
this (System.String);
this (System.String,System.Boolean);
System.String get_Message();
System.Boolean get_IsError();
}
class OperatingSystem : System.__object{
this (System.PlatformID,System.Version);
System.Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
System.PlatformID get_Platform();
System.String get_ServicePack();
System.Version get_Version();
System.__object Clone();
System.String ToString();
System.String get_VersionString();
}
class ParamArrayAttribute : System.Attribute{
this ();
}
class PlatformID : System.Enum{
}
class Random : System.__object{
this (System.Int32);
this ();
System.Int32 Next();
System.Int32 Next(System.Int32,System.Int32);
System.Int32 Next(System.Int32);
System.Double NextDouble();
System.Void NextBytes(System.Byte[]);
}
class RuntimeArgumentHandle : System.ValueType{
}
class RuntimeTypeHandle : System.ValueType{
static System.Boolean op_Equality(System.RuntimeTypeHandle,System.__object);
static System.Boolean op_Equality(System.__object,System.RuntimeTypeHandle);
static System.Boolean op_Inequality(System.RuntimeTypeHandle,System.__object);
static System.Boolean op_Inequality(System.__object,System.RuntimeTypeHandle);
System.Int32 GetHashCode();
System.Boolean Equals(System.__object);
System.Boolean Equals(System.RuntimeTypeHandle);
System.IntPtr get_Value();
System.ModuleHandle GetModuleHandle();
System.Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
}
class RuntimeMethodHandle : System.ValueType{
System.Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
System.IntPtr get_Value();
System.Int32 GetHashCode();
System.Boolean Equals(System.__object);
static System.Boolean op_Equality(System.RuntimeMethodHandle,System.RuntimeMethodHandle);
static System.Boolean op_Inequality(System.RuntimeMethodHandle,System.RuntimeMethodHandle);
System.Boolean Equals(System.RuntimeMethodHandle);
System.IntPtr GetFunctionPointer();
}
class RuntimeFieldHandle : System.ValueType{
System.IntPtr get_Value();
System.Int32 GetHashCode();
System.Boolean Equals(System.__object);
System.Boolean Equals(System.RuntimeFieldHandle);
static System.Boolean op_Equality(System.RuntimeFieldHandle,System.RuntimeFieldHandle);
static System.Boolean op_Inequality(System.RuntimeFieldHandle,System.RuntimeFieldHandle);
System.Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
}
class ModuleHandle : System.ValueType{
System.Int32 GetHashCode();
System.Boolean Equals(System.__object);
System.Boolean Equals(System.ModuleHandle);
static System.Boolean op_Equality(System.ModuleHandle,System.ModuleHandle);
static System.Boolean op_Inequality(System.ModuleHandle,System.ModuleHandle);
System.RuntimeTypeHandle GetRuntimeTypeHandleFromMetadataToken(System.Int32);
System.RuntimeTypeHandle ResolveTypeHandle(System.Int32);
System.RuntimeTypeHandle ResolveTypeHandle(System.Int32,System.RuntimeTypeHandle[],System.RuntimeTypeHandle[]);
System.RuntimeMethodHandle GetRuntimeMethodHandleFromMetadataToken(System.Int32);
System.RuntimeMethodHandle ResolveMethodHandle(System.Int32);
System.RuntimeMethodHandle ResolveMethodHandle(System.Int32,System.RuntimeTypeHandle[],System.RuntimeTypeHandle[]);
System.RuntimeFieldHandle GetRuntimeFieldHandleFromMetadataToken(System.Int32);
System.RuntimeFieldHandle ResolveFieldHandle(System.Int32);
System.RuntimeFieldHandle ResolveFieldHandle(System.Int32,System.RuntimeTypeHandle[],System.RuntimeTypeHandle[]);
System.Int32 get_MDStreamVersion();
}
class SByte : System.ValueType{
System.String ToString();
System.Int32 CompareTo(System.__object);
System.Int32 CompareTo(System.SByte);
System.Boolean Equals(System.__object);
System.Boolean Equals(System.SByte);
System.Int32 GetHashCode();
System.String ToString(System.IFormatProvider);
System.String ToString(System.String);
System.String ToString(System.String,System.IFormatProvider);
static System.SByte Parse(System.String);
static System.SByte Parse(System.String,System.Globalization.NumberStyles);
static System.SByte Parse(System.String,System.IFormatProvider);
static System.SByte Parse(System.String,System.Globalization.NumberStyles,System.IFormatProvider);
System.TypeCode GetTypeCode();
}
class SerializableAttribute : System.Attribute{
this ();
}
class Single : System.ValueType{
static System.Boolean IsInfinity(System.Single);
static System.Boolean IsPositiveInfinity(System.Single);
static System.Boolean IsNegativeInfinity(System.Single);
static System.Boolean IsNaN(System.Single);
System.Int32 CompareTo(System.__object);
System.Int32 CompareTo(System.Single);
static System.Boolean op_Equality(System.Single,System.Single);
static System.Boolean op_Inequality(System.Single,System.Single);
static System.Boolean op_LessThan(System.Single,System.Single);
static System.Boolean op_GreaterThan(System.Single,System.Single);
static System.Boolean op_LessThanOrEqual(System.Single,System.Single);
static System.Boolean op_GreaterThanOrEqual(System.Single,System.Single);
System.Boolean Equals(System.__object);
System.Boolean Equals(System.Single);
System.Int32 GetHashCode();
System.String ToString();
System.String ToString(System.IFormatProvider);
System.String ToString(System.String);
System.String ToString(System.String,System.IFormatProvider);
static System.Single Parse(System.String);
static System.Single Parse(System.String,System.Globalization.NumberStyles);
static System.Single Parse(System.String,System.IFormatProvider);
static System.Single Parse(System.String,System.Globalization.NumberStyles,System.IFormatProvider);
System.TypeCode GetTypeCode();
}
class STAThreadAttribute : System.Attribute{
this ();
}
class MTAThreadAttribute : System.Attribute{
this ();
}
class TimeSpan : System.ValueType{
this (System.Int64);
this (System.Int32,System.Int32,System.Int32);
this (System.Int32,System.Int32,System.Int32,System.Int32);
this (System.Int32,System.Int32,System.Int32,System.Int32,System.Int32);
System.Int64 get_Ticks();
System.Int32 get_Days();
System.Int32 get_Hours();
System.Int32 get_Milliseconds();
System.Int32 get_Minutes();
System.Int32 get_Seconds();
System.Double get_TotalDays();
System.Double get_TotalHours();
System.Double get_TotalMilliseconds();
System.Double get_TotalMinutes();
System.Double get_TotalSeconds();
System.TimeSpan Add(System.TimeSpan);
static System.Int32 Compare(System.TimeSpan,System.TimeSpan);
System.Int32 CompareTo(System.__object);
System.Int32 CompareTo(System.TimeSpan);
static System.TimeSpan FromDays(System.Double);
System.TimeSpan Duration();
System.Boolean Equals(System.__object);
System.Boolean Equals(System.TimeSpan);
static System.Boolean Equals(System.TimeSpan,System.TimeSpan);
System.Int32 GetHashCode();
static System.TimeSpan FromHours(System.Double);
static System.TimeSpan FromMilliseconds(System.Double);
static System.TimeSpan FromMinutes(System.Double);
System.TimeSpan Negate();
static System.TimeSpan FromSeconds(System.Double);
System.TimeSpan Subtract(System.TimeSpan);
static System.TimeSpan FromTicks(System.Int64);
static System.TimeSpan Parse(System.String);
static System.TimeSpan Parse(System.String,System.IFormatProvider);
static System.TimeSpan ParseExact(System.String,System.String,System.IFormatProvider);
static System.TimeSpan ParseExact(System.String,System.String[],System.IFormatProvider);
static System.TimeSpan ParseExact(System.String,System.String,System.IFormatProvider,System.Globalization.TimeSpanStyles);
static System.TimeSpan ParseExact(System.String,System.String[],System.IFormatProvider,System.Globalization.TimeSpanStyles);
System.String ToString();
System.String ToString(System.String);
System.String ToString(System.String,System.IFormatProvider);
static System.TimeSpan op_UnaryNegation(System.TimeSpan);
static System.TimeSpan op_Subtraction(System.TimeSpan,System.TimeSpan);
static System.TimeSpan op_UnaryPlus(System.TimeSpan);
static System.TimeSpan op_Addition(System.TimeSpan,System.TimeSpan);
static System.Boolean op_Equality(System.TimeSpan,System.TimeSpan);
static System.Boolean op_Inequality(System.TimeSpan,System.TimeSpan);
static System.Boolean op_LessThan(System.TimeSpan,System.TimeSpan);
static System.Boolean op_LessThanOrEqual(System.TimeSpan,System.TimeSpan);
static System.Boolean op_GreaterThan(System.TimeSpan,System.TimeSpan);
static System.Boolean op_GreaterThanOrEqual(System.TimeSpan,System.TimeSpan);
}
class TimeZone : System.__object{
static System.TimeZone get_CurrentTimeZone();
System.String get_StandardName();
System.String get_DaylightName();
System.TimeSpan GetUtcOffset(System.DateTime);
System.DateTime ToUniversalTime(System.DateTime);
System.DateTime ToLocalTime(System.DateTime);
System.Globalization.DaylightTime GetDaylightChanges(System.Int32);
System.Boolean IsDaylightSavingTime(System.DateTime);
static System.Boolean IsDaylightSavingTime(System.DateTime,System.Globalization.DaylightTime);
}
class TimeZoneInfo : System.__object{
static class AdjustmentRule : System.__object{
System.DateTime get_DateStart();
System.DateTime get_DateEnd();
System.TimeSpan get_DaylightDelta();
System.TimeZoneInfo.TransitionTime get_DaylightTransitionStart();
System.TimeZoneInfo.TransitionTime get_DaylightTransitionEnd();
System.Boolean Equals(System.TimeZoneInfo.AdjustmentRule);
System.Int32 GetHashCode();
static System.TimeZoneInfo.AdjustmentRule CreateAdjustmentRule(System.DateTime,System.DateTime,System.TimeSpan,System.TimeZoneInfo.TransitionTime,System.TimeZoneInfo.TransitionTime);
}
static class TransitionTime : System.ValueType{
System.DateTime get_TimeOfDay();
System.Int32 get_Month();
System.Int32 get_Week();
System.Int32 get_Day();
System.DayOfWeek get_DayOfWeek();
System.Boolean get_IsFixedDateRule();
System.Boolean Equals(System.__object);
static System.Boolean op_Equality(System.TimeZoneInfo.TransitionTime,System.TimeZoneInfo.TransitionTime);
static System.Boolean op_Inequality(System.TimeZoneInfo.TransitionTime,System.TimeZoneInfo.TransitionTime);
System.Boolean Equals(System.TimeZoneInfo.TransitionTime);
System.Int32 GetHashCode();
static System.TimeZoneInfo.TransitionTime CreateFixedDateRule(System.DateTime,System.Int32,System.Int32);
static System.TimeZoneInfo.TransitionTime CreateFloatingDateRule(System.DateTime,System.Int32,System.Int32,System.DayOfWeek);
}
System.String get_Id();
System.String get_DisplayName();
System.String get_StandardName();
System.String get_DaylightName();
System.TimeSpan get_BaseUtcOffset();
System.Boolean get_SupportsDaylightSavingTime();
System.TimeZoneInfo.AdjustmentRule[] GetAdjustmentRules();
System.TimeSpan[] GetAmbiguousTimeOffsets(System.DateTimeOffset);
System.TimeSpan[] GetAmbiguousTimeOffsets(System.DateTime);
System.TimeSpan GetUtcOffset(System.DateTimeOffset);
System.TimeSpan GetUtcOffset(System.DateTime);
System.Boolean IsAmbiguousTime(System.DateTimeOffset);
System.Boolean IsAmbiguousTime(System.DateTime);
System.Boolean IsDaylightSavingTime(System.DateTimeOffset);
System.Boolean IsDaylightSavingTime(System.DateTime);
System.Boolean IsInvalidTime(System.DateTime);
static System.Void ClearCachedData();
static System.DateTimeOffset ConvertTimeBySystemTimeZoneId(System.DateTimeOffset,System.String);
static System.DateTime ConvertTimeBySystemTimeZoneId(System.DateTime,System.String);
static System.DateTime ConvertTimeBySystemTimeZoneId(System.DateTime,System.String,System.String);
static System.DateTimeOffset ConvertTime(System.DateTimeOffset,System.TimeZoneInfo);
static System.DateTime ConvertTime(System.DateTime,System.TimeZoneInfo);
static System.DateTime ConvertTime(System.DateTime,System.TimeZoneInfo,System.TimeZoneInfo);
static System.DateTime ConvertTimeFromUtc(System.DateTime,System.TimeZoneInfo);
static System.DateTime ConvertTimeToUtc(System.DateTime);
static System.DateTime ConvertTimeToUtc(System.DateTime,System.TimeZoneInfo);
System.Boolean Equals(System.TimeZoneInfo);
System.Boolean Equals(System.__object);
static System.TimeZoneInfo FromSerializedString(System.String);
System.Int32 GetHashCode();
System.Boolean HasSameRules(System.TimeZoneInfo);
static System.TimeZoneInfo get_Local();
System.String ToSerializedString();
System.String ToString();
static System.TimeZoneInfo get_Utc();
static System.TimeZoneInfo CreateCustomTimeZone(System.String,System.TimeSpan,System.String,System.String);
static System.TimeZoneInfo CreateCustomTimeZone(System.String,System.TimeSpan,System.String,System.String,System.String,System.TimeZoneInfo.AdjustmentRule[]);
static System.TimeZoneInfo CreateCustomTimeZone(System.String,System.TimeSpan,System.String,System.String,System.String,System.TimeZoneInfo.AdjustmentRule[],System.Boolean);
static System.TimeZoneInfo FindSystemTimeZoneById(System.String);
}
class Type : System.Reflection.MemberInfo{
System.Reflection.MemberTypes get_MemberType();
System.Type get_DeclaringType();
System.Reflection.MethodBase get_DeclaringMethod();
System.Type get_ReflectedType();
static System.Type GetType(System.String,System.Boolean,System.Boolean);
static System.Type GetType(System.String,System.Boolean);
static System.Type GetType(System.String);
static System.Type ReflectionOnlyGetType(System.String,System.Boolean,System.Boolean);
System.Type MakePointerType();
System.Runtime.InteropServices.StructLayoutAttribute get_StructLayoutAttribute();
System.Type MakeByRefType();
System.Type MakeArrayType();
System.Type MakeArrayType(System.Int32);
static System.Type GetTypeFromProgID(System.String);
static System.Type GetTypeFromProgID(System.String,System.Boolean);
static System.Type GetTypeFromProgID(System.String,System.String);
static System.Type GetTypeFromProgID(System.String,System.String,System.Boolean);
static System.Type GetTypeFromCLSID(System.Guid);
static System.Type GetTypeFromCLSID(System.Guid,System.Boolean);
static System.Type GetTypeFromCLSID(System.Guid,System.String);
static System.Type GetTypeFromCLSID(System.Guid,System.String,System.Boolean);
static System.TypeCode GetTypeCode(System.Type);
System.Guid get_GUID();
static System.Reflection.Binder get_DefaultBinder();
System.__object InvokeMember(System.String,System.Reflection.BindingFlags,System.Reflection.Binder,System.__object,System.__object[],System.Reflection.ParameterModifier[],System.Globalization.CultureInfo,System.String[]);
System.__object InvokeMember(System.String,System.Reflection.BindingFlags,System.Reflection.Binder,System.__object,System.__object[],System.Globalization.CultureInfo);
System.__object InvokeMember(System.String,System.Reflection.BindingFlags,System.Reflection.Binder,System.__object,System.__object[]);
System.Reflection.Module get_Module();
System.Reflection.Assembly get_Assembly();
System.RuntimeTypeHandle get_TypeHandle();
static System.RuntimeTypeHandle GetTypeHandle(System.__object);
static System.Type GetTypeFromHandle(System.RuntimeTypeHandle);
System.String get_FullName();
System.String get_Namespace();
System.String get_AssemblyQualifiedName();
System.Int32 GetArrayRank();
System.Type get_BaseType();
System.Reflection.ConstructorInfo GetConstructor(System.Reflection.BindingFlags,System.Reflection.Binder,System.Reflection.CallingConventions,System.Type[],System.Reflection.ParameterModifier[]);
System.Reflection.ConstructorInfo GetConstructor(System.Reflection.BindingFlags,System.Reflection.Binder,System.Type[],System.Reflection.ParameterModifier[]);
System.Reflection.ConstructorInfo GetConstructor(System.Type[]);
System.Reflection.ConstructorInfo[] GetConstructors();
System.Reflection.ConstructorInfo[] GetConstructors(System.Reflection.BindingFlags);
System.Reflection.ConstructorInfo get_TypeInitializer();
System.Reflection.MethodInfo GetMethod(System.String,System.Reflection.BindingFlags,System.Reflection.Binder,System.Reflection.CallingConventions,System.Type[],System.Reflection.ParameterModifier[]);
System.Reflection.MethodInfo GetMethod(System.String,System.Reflection.BindingFlags,System.Reflection.Binder,System.Type[],System.Reflection.ParameterModifier[]);
System.Reflection.MethodInfo GetMethod(System.String,System.Type[],System.Reflection.ParameterModifier[]);
System.Reflection.MethodInfo GetMethod(System.String,System.Type[]);
System.Reflection.MethodInfo GetMethod(System.String,System.Reflection.BindingFlags);
System.Reflection.MethodInfo GetMethod(System.String);
System.Reflection.MethodInfo[] GetMethods();
System.Reflection.MethodInfo[] GetMethods(System.Reflection.BindingFlags);
System.Reflection.FieldInfo GetField(System.String,System.Reflection.BindingFlags);
System.Reflection.FieldInfo GetField(System.String);
System.Reflection.FieldInfo[] GetFields();
System.Reflection.FieldInfo[] GetFields(System.Reflection.BindingFlags);
System.Type GetInterface(System.String);
System.Type GetInterface(System.String,System.Boolean);
System.Type[] GetInterfaces();
System.Type[] FindInterfaces(System.Reflection.TypeFilter,System.__object);
System.Reflection.EventInfo GetEvent(System.String);
System.Reflection.EventInfo GetEvent(System.String,System.Reflection.BindingFlags);
System.Reflection.EventInfo[] GetEvents();
System.Reflection.EventInfo[] GetEvents(System.Reflection.BindingFlags);
System.Reflection.PropertyInfo GetProperty(System.String,System.Reflection.BindingFlags,System.Reflection.Binder,System.Type,System.Type[],System.Reflection.ParameterModifier[]);
System.Reflection.PropertyInfo GetProperty(System.String,System.Type,System.Type[],System.Reflection.ParameterModifier[]);
System.Reflection.PropertyInfo GetProperty(System.String,System.Reflection.BindingFlags);
System.Reflection.PropertyInfo GetProperty(System.String,System.Type,System.Type[]);
System.Reflection.PropertyInfo GetProperty(System.String,System.Type[]);
System.Reflection.PropertyInfo GetProperty(System.String,System.Type);
System.Reflection.PropertyInfo GetProperty(System.String);
System.Reflection.PropertyInfo[] GetProperties(System.Reflection.BindingFlags);
System.Reflection.PropertyInfo[] GetProperties();
System.Type[] GetNestedTypes();
System.Type[] GetNestedTypes(System.Reflection.BindingFlags);
System.Type GetNestedType(System.String);
System.Type GetNestedType(System.String,System.Reflection.BindingFlags);
System.Reflection.MemberInfo[] GetMember(System.String);
System.Reflection.MemberInfo[] GetMember(System.String,System.Reflection.BindingFlags);
System.Reflection.MemberInfo[] GetMember(System.String,System.Reflection.MemberTypes,System.Reflection.BindingFlags);
System.Reflection.MemberInfo[] GetMembers();
System.Reflection.MemberInfo[] GetMembers(System.Reflection.BindingFlags);
System.Reflection.MemberInfo[] GetDefaultMembers();
System.Reflection.MemberInfo[] FindMembers(System.Reflection.MemberTypes,System.Reflection.BindingFlags,System.Reflection.MemberFilter,System.__object);
System.Boolean get_IsNested();
System.Reflection.TypeAttributes get_Attributes();
System.Reflection.GenericParameterAttributes get_GenericParameterAttributes();
System.Boolean get_IsVisible();
System.Boolean get_IsNotPublic();
System.Boolean get_IsPublic();
System.Boolean get_IsNestedPublic();
System.Boolean get_IsNestedPrivate();
System.Boolean get_IsNestedFamily();
System.Boolean get_IsNestedAssembly();
System.Boolean get_IsNestedFamANDAssem();
System.Boolean get_IsNestedFamORAssem();
System.Boolean get_IsAutoLayout();
System.Boolean get_IsLayoutSequential();
System.Boolean get_IsExplicitLayout();
System.Boolean get_IsClass();
System.Boolean get_IsInterface();
System.Boolean get_IsValueType();
System.Boolean get_IsAbstract();
System.Boolean get_IsSealed();
System.Boolean get_IsEnum();
System.Boolean get_IsSpecialName();
System.Boolean get_IsImport();
System.Boolean get_IsSerializable();
System.Boolean get_IsAnsiClass();
System.Boolean get_IsUnicodeClass();
System.Boolean get_IsAutoClass();
System.Boolean get_IsArray();
System.Boolean get_IsGenericType();
System.Boolean get_IsGenericTypeDefinition();
System.Boolean get_IsConstructedGenericType();
System.Boolean get_IsGenericParameter();
System.Int32 get_GenericParameterPosition();
System.Boolean get_ContainsGenericParameters();
System.Type[] GetGenericParameterConstraints();
System.Boolean get_IsByRef();
System.Boolean get_IsPointer();
System.Boolean get_IsPrimitive();
System.Boolean get_IsCOMObject();
System.Boolean get_HasElementType();
System.Boolean get_IsContextful();
System.Boolean get_IsMarshalByRef();
System.Type MakeGenericType(System.Type[]);
System.Type GetElementType();
System.Type[] GetGenericArguments();
System.Type[] get_GenericTypeArguments();
System.Type GetGenericTypeDefinition();
System.String[] GetEnumNames();
System.Array GetEnumValues();
System.Type GetEnumUnderlyingType();
System.Boolean IsEnumDefined(System.__object);
System.String GetEnumName(System.__object);
System.Boolean get_IsSecurityCritical();
System.Boolean get_IsSecuritySafeCritical();
System.Boolean get_IsSecurityTransparent();
System.Type get_UnderlyingSystemType();
System.Boolean IsSubclassOf(System.Type);
System.Boolean IsInstanceOfType(System.__object);
System.Boolean IsAssignableFrom(System.Type);
System.Boolean IsEquivalentTo(System.Type);
System.String ToString();
static System.Type[] GetTypeArray(System.__object[]);
System.Boolean Equals(System.__object);
System.Boolean Equals(System.Type);
static System.Boolean op_Equality(System.Type,System.Type);
static System.Boolean op_Inequality(System.Type,System.Type);
System.Int32 GetHashCode();
System.Reflection.InterfaceMapping GetInterfaceMap(System.Type);
System.Type GetType();
}
class TypeCode : System.Enum{
}
class TypedReference : System.ValueType{
static System.TypedReference MakeTypedReference(System.__object,System.Reflection.FieldInfo[]);
System.Int32 GetHashCode();
System.Boolean Equals(System.__object);
static System.__object ToObject(System.TypedReference);
static System.Type GetTargetType(System.TypedReference);
static System.RuntimeTypeHandle TargetTypeToken(System.TypedReference);
static System.Void SetTypedReference(System.TypedReference,System.__object);
}
class UInt16 : System.ValueType{
System.Int32 CompareTo(System.__object);
System.Int32 CompareTo(System.UInt16);
System.Boolean Equals(System.__object);
System.Boolean Equals(System.UInt16);
System.Int32 GetHashCode();
System.String ToString();
System.String ToString(System.IFormatProvider);
System.String ToString(System.String);
System.String ToString(System.String,System.IFormatProvider);
static System.UInt16 Parse(System.String);
static System.UInt16 Parse(System.String,System.Globalization.NumberStyles);
static System.UInt16 Parse(System.String,System.IFormatProvider);
static System.UInt16 Parse(System.String,System.Globalization.NumberStyles,System.IFormatProvider);
System.TypeCode GetTypeCode();
}
class UInt32 : System.ValueType{
System.Int32 CompareTo(System.__object);
System.Int32 CompareTo(System.UInt32);
System.Boolean Equals(System.__object);
System.Boolean Equals(System.UInt32);
System.Int32 GetHashCode();
System.String ToString();
System.String ToString(System.IFormatProvider);
System.String ToString(System.String);
System.String ToString(System.String,System.IFormatProvider);
static System.UInt32 Parse(System.String);
static System.UInt32 Parse(System.String,System.Globalization.NumberStyles);
static System.UInt32 Parse(System.String,System.IFormatProvider);
static System.UInt32 Parse(System.String,System.Globalization.NumberStyles,System.IFormatProvider);
System.TypeCode GetTypeCode();
}
class UInt64 : System.ValueType{
System.Int32 CompareTo(System.__object);
System.Int32 CompareTo(System.UInt64);
System.Boolean Equals(System.__object);
System.Boolean Equals(System.UInt64);
System.Int32 GetHashCode();
System.String ToString();
System.String ToString(System.IFormatProvider);
System.String ToString(System.String);
System.String ToString(System.String,System.IFormatProvider);
static System.UInt64 Parse(System.String);
static System.UInt64 Parse(System.String,System.Globalization.NumberStyles);
static System.UInt64 Parse(System.String,System.IFormatProvider);
static System.UInt64 Parse(System.String,System.Globalization.NumberStyles,System.IFormatProvider);
System.TypeCode GetTypeCode();
}
class UIntPtr : System.ValueType{
this (System.UInt32);
this (System.UInt64);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.UInt32 ToUInt32();
System.UInt64 ToUInt64();
System.String ToString();
static System.UIntPtr op_Explicit(System.UInt32);
static System.UIntPtr op_Explicit(System.UInt64);
static System.UInt32 op_Explicit(System.UIntPtr);
static System.UInt64 op_Explicit(System.UIntPtr);
static System.Boolean op_Equality(System.UIntPtr,System.UIntPtr);
static System.Boolean op_Inequality(System.UIntPtr,System.UIntPtr);
static System.UIntPtr Add(System.UIntPtr,System.Int32);
static System.UIntPtr op_Addition(System.UIntPtr,System.Int32);
static System.UIntPtr Subtract(System.UIntPtr,System.Int32);
static System.UIntPtr op_Subtraction(System.UIntPtr,System.Int32);
static System.Int32 get_Size();
}
class UnhandledExceptionEventArgs : System.EventArgs{
this (System.__object,System.Boolean);
System.__object get_ExceptionObject();
System.Boolean get_IsTerminating();
}
class UnhandledExceptionEventHandler : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.Void Invoke(System.__object,System.UnhandledExceptionEventArgs);
System.IAsyncResult BeginInvoke(System.__object,System.UnhandledExceptionEventArgs,System.AsyncCallback,System.__object);
System.Void EndInvoke(System.IAsyncResult);
}
class ValueType : System.__object{
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.String ToString();
}
class Version : System.__object{
this (System.Int32,System.Int32,System.Int32,System.Int32);
this (System.Int32,System.Int32,System.Int32);
this (System.Int32,System.Int32);
this (System.String);
this ();
System.Int32 get_Major();
System.Int32 get_Minor();
System.Int32 get_Build();
System.Int32 get_Revision();
System.Int16 get_MajorRevision();
System.Int16 get_MinorRevision();
System.__object Clone();
System.Int32 CompareTo(System.__object);
System.Int32 CompareTo(System.Version);
System.Boolean Equals(System.__object);
System.Boolean Equals(System.Version);
System.Int32 GetHashCode();
System.String ToString();
System.String ToString(System.Int32);
static System.Version Parse(System.String);
static System.Boolean op_Equality(System.Version,System.Version);
static System.Boolean op_Inequality(System.Version,System.Version);
static System.Boolean op_LessThan(System.Version,System.Version);
static System.Boolean op_LessThanOrEqual(System.Version,System.Version);
static System.Boolean op_GreaterThan(System.Version,System.Version);
static System.Boolean op_GreaterThanOrEqual(System.Version,System.Version);
}
class WeakReference : System.__object{
this (System.__object);
this (System.__object,System.Boolean);
System.Boolean get_IsAlive();
System.Boolean get_TrackResurrection();
System.__object get_Target();
System.Void set_Target(System.__object);
System.Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
}
class ThreadStaticAttribute : System.Attribute{
this ();
}
class Nullable : System.__object{
static System.Type GetUnderlyingType(System.Type);
}
}
