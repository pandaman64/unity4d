module System.Globalization;
import System;
import System.Reflection;
import System.Runtime.Serialization;
import System.Collections;
public:
pragma(assembly,"mscorlib"){
class Calendar : System.Object{
DateTime get_MinSupportedDateTime();
DateTime get_MaxSupportedDateTime();
CalendarAlgorithmType get_AlgorithmType();
Boolean get_IsReadOnly();
Object Clone();
static Calendar ReadOnly(System.Globalization.Calendar);
DateTime AddMilliseconds(System.DateTime,System.Double);
DateTime AddDays(System.DateTime,System.Int32);
DateTime AddHours(System.DateTime,System.Int32);
DateTime AddMinutes(System.DateTime,System.Int32);
DateTime AddMonths(System.DateTime,System.Int32);
DateTime AddSeconds(System.DateTime,System.Int32);
DateTime AddWeeks(System.DateTime,System.Int32);
DateTime AddYears(System.DateTime,System.Int32);
Int32 GetDayOfMonth(System.DateTime);
DayOfWeek GetDayOfWeek(System.DateTime);
Int32 GetDayOfYear(System.DateTime);
Int32 GetDaysInMonth(System.Int32,System.Int32);
Int32 GetDaysInMonth(System.Int32,System.Int32,System.Int32);
Int32 GetDaysInYear(System.Int32);
Int32 GetDaysInYear(System.Int32,System.Int32);
Int32 GetEra(System.DateTime);
Int32[] get_Eras();
Int32 GetHour(System.DateTime);
Double GetMilliseconds(System.DateTime);
Int32 GetMinute(System.DateTime);
Int32 GetMonth(System.DateTime);
Int32 GetMonthsInYear(System.Int32);
Int32 GetMonthsInYear(System.Int32,System.Int32);
Int32 GetSecond(System.DateTime);
Int32 GetWeekOfYear(System.DateTime,System.Globalization.CalendarWeekRule,System.DayOfWeek);
Int32 GetYear(System.DateTime);
Boolean IsLeapDay(System.Int32,System.Int32,System.Int32);
Boolean IsLeapDay(System.Int32,System.Int32,System.Int32,System.Int32);
Boolean IsLeapMonth(System.Int32,System.Int32);
Boolean IsLeapMonth(System.Int32,System.Int32,System.Int32);
Int32 GetLeapMonth(System.Int32);
Int32 GetLeapMonth(System.Int32,System.Int32);
Boolean IsLeapYear(System.Int32);
Boolean IsLeapYear(System.Int32,System.Int32);
DateTime ToDateTime(System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32);
DateTime ToDateTime(System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32);
Int32 get_TwoDigitYearMax();
Void set_TwoDigitYearMax(System.Int32);
Int32 ToFourDigitYear(System.Int32);
}
class CalendarAlgorithmType : System.Enum{
}
class CalendarWeekRule : System.Enum{
}
class CharUnicodeInfo : System.Object{
static Double GetNumericValue(System.Char);
static Double GetNumericValue(System.String,System.Int32);
static Int32 GetDecimalDigitValue(System.Char);
static Int32 GetDecimalDigitValue(System.String,System.Int32);
static Int32 GetDigitValue(System.Char);
static Int32 GetDigitValue(System.String,System.Int32);
static UnicodeCategory GetUnicodeCategory(System.Char);
static UnicodeCategory GetUnicodeCategory(System.String,System.Int32);
}
class CompareOptions : System.Enum{
}
class CompareInfo : System.Object{
static CompareInfo GetCompareInfo(System.Int32,System.Reflection.Assembly);
static CompareInfo GetCompareInfo(System.String,System.Reflection.Assembly);
static CompareInfo GetCompareInfo(System.Int32);
static CompareInfo GetCompareInfo(System.String);
static Boolean IsSortable(System.Char);
static Boolean IsSortable(System.String);
String get_Name();
Int32 Compare(System.String,System.String);
Int32 Compare(System.String,System.String,System.Globalization.CompareOptions);
Int32 Compare(System.String,System.Int32,System.Int32,System.String,System.Int32,System.Int32);
Int32 Compare(System.String,System.Int32,System.String,System.Int32,System.Globalization.CompareOptions);
Int32 Compare(System.String,System.Int32,System.String,System.Int32);
Int32 Compare(System.String,System.Int32,System.Int32,System.String,System.Int32,System.Int32,System.Globalization.CompareOptions);
Boolean IsPrefix(System.String,System.String,System.Globalization.CompareOptions);
Boolean IsPrefix(System.String,System.String);
Boolean IsSuffix(System.String,System.String,System.Globalization.CompareOptions);
Boolean IsSuffix(System.String,System.String);
Int32 IndexOf(System.String,System.Char);
Int32 IndexOf(System.String,System.String);
Int32 IndexOf(System.String,System.Char,System.Globalization.CompareOptions);
Int32 IndexOf(System.String,System.String,System.Globalization.CompareOptions);
Int32 IndexOf(System.String,System.Char,System.Int32);
Int32 IndexOf(System.String,System.String,System.Int32);
Int32 IndexOf(System.String,System.Char,System.Int32,System.Globalization.CompareOptions);
Int32 IndexOf(System.String,System.String,System.Int32,System.Globalization.CompareOptions);
Int32 IndexOf(System.String,System.Char,System.Int32,System.Int32);
Int32 IndexOf(System.String,System.String,System.Int32,System.Int32);
Int32 IndexOf(System.String,System.Char,System.Int32,System.Int32,System.Globalization.CompareOptions);
Int32 IndexOf(System.String,System.String,System.Int32,System.Int32,System.Globalization.CompareOptions);
Int32 LastIndexOf(System.String,System.Char);
Int32 LastIndexOf(System.String,System.String);
Int32 LastIndexOf(System.String,System.Char,System.Globalization.CompareOptions);
Int32 LastIndexOf(System.String,System.String,System.Globalization.CompareOptions);
Int32 LastIndexOf(System.String,System.Char,System.Int32);
Int32 LastIndexOf(System.String,System.String,System.Int32);
Int32 LastIndexOf(System.String,System.Char,System.Int32,System.Globalization.CompareOptions);
Int32 LastIndexOf(System.String,System.String,System.Int32,System.Globalization.CompareOptions);
Int32 LastIndexOf(System.String,System.Char,System.Int32,System.Int32);
Int32 LastIndexOf(System.String,System.String,System.Int32,System.Int32);
Int32 LastIndexOf(System.String,System.Char,System.Int32,System.Int32,System.Globalization.CompareOptions);
Int32 LastIndexOf(System.String,System.String,System.Int32,System.Int32,System.Globalization.CompareOptions);
SortKey GetSortKey(System.String,System.Globalization.CompareOptions);
SortKey GetSortKey(System.String);
Boolean Equals(System.Object);
Int32 GetHashCode();
Int32 GetHashCode(System.String,System.Globalization.CompareOptions);
String ToString();
Int32 get_LCID();
SortVersion get_Version();
}
class CultureInfo : System.Object{
this (System.String);
this (System.String,System.Boolean);
this (System.Int32);
this (System.Int32,System.Boolean);
static CultureInfo CreateSpecificCulture(System.String);
static CultureInfo get_CurrentCulture();
static Void set_CurrentCulture(System.Globalization.CultureInfo);
static CultureInfo get_CurrentUICulture();
static Void set_CurrentUICulture(System.Globalization.CultureInfo);
static CultureInfo get_InstalledUICulture();
static CultureInfo get_DefaultThreadCurrentCulture();
static Void set_DefaultThreadCurrentCulture(System.Globalization.CultureInfo);
static CultureInfo get_DefaultThreadCurrentUICulture();
static Void set_DefaultThreadCurrentUICulture(System.Globalization.CultureInfo);
static CultureInfo get_InvariantCulture();
CultureInfo get_Parent();
Int32 get_LCID();
Int32 get_KeyboardLayoutId();
static CultureInfo[] GetCultures(System.Globalization.CultureTypes);
String get_Name();
String get_IetfLanguageTag();
String get_DisplayName();
String get_NativeName();
String get_EnglishName();
String get_TwoLetterISOLanguageName();
String get_ThreeLetterISOLanguageName();
String get_ThreeLetterWindowsLanguageName();
CompareInfo get_CompareInfo();
TextInfo get_TextInfo();
Boolean Equals(System.Object);
Int32 GetHashCode();
String ToString();
Object GetFormat(System.Type);
Boolean get_IsNeutralCulture();
CultureTypes get_CultureTypes();
NumberFormatInfo get_NumberFormat();
Void set_NumberFormat(System.Globalization.NumberFormatInfo);
DateTimeFormatInfo get_DateTimeFormat();
Void set_DateTimeFormat(System.Globalization.DateTimeFormatInfo);
Void ClearCachedData();
Calendar get_Calendar();
Calendar[] get_OptionalCalendars();
Boolean get_UseUserOverride();
CultureInfo GetConsoleFallbackUICulture();
Object Clone();
static CultureInfo ReadOnly(System.Globalization.CultureInfo);
Boolean get_IsReadOnly();
static CultureInfo GetCultureInfo(System.Int32);
static CultureInfo GetCultureInfo(System.String);
static CultureInfo GetCultureInfo(System.String,System.String);
static CultureInfo GetCultureInfoByIetfLanguageTag(System.String);
}
class CultureNotFoundException : System.ArgumentException{
this ();
this (System.String);
this (System.String,System.String);
this (System.String,System.Exception);
this (System.String,System.Int32,System.String);
this (System.String,System.Int32,System.Exception);
this (System.String,System.String,System.String);
this (System.String,System.String,System.Exception);
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
String get_InvalidCultureName();
String get_Message();
}
class CultureTypes : System.Enum{
}
class DateTimeStyles : System.Enum{
}
class DateTimeFormatInfo : System.Object{
this ();
static DateTimeFormatInfo get_InvariantInfo();
static DateTimeFormatInfo get_CurrentInfo();
static DateTimeFormatInfo GetInstance(System.IFormatProvider);
Object GetFormat(System.Type);
Object Clone();
String get_AMDesignator();
Void set_AMDesignator(System.String);
Calendar get_Calendar();
Void set_Calendar(System.Globalization.Calendar);
Int32 GetEra(System.String);
String GetEraName(System.Int32);
String GetAbbreviatedEraName(System.Int32);
String get_DateSeparator();
Void set_DateSeparator(System.String);
DayOfWeek get_FirstDayOfWeek();
Void set_FirstDayOfWeek(System.DayOfWeek);
CalendarWeekRule get_CalendarWeekRule();
Void set_CalendarWeekRule(System.Globalization.CalendarWeekRule);
String get_FullDateTimePattern();
Void set_FullDateTimePattern(System.String);
String get_LongDatePattern();
Void set_LongDatePattern(System.String);
String get_LongTimePattern();
Void set_LongTimePattern(System.String);
String get_MonthDayPattern();
Void set_MonthDayPattern(System.String);
String get_PMDesignator();
Void set_PMDesignator(System.String);
String get_RFC1123Pattern();
String get_ShortDatePattern();
Void set_ShortDatePattern(System.String);
String get_ShortTimePattern();
Void set_ShortTimePattern(System.String);
String get_SortableDateTimePattern();
String get_TimeSeparator();
Void set_TimeSeparator(System.String);
String get_UniversalSortableDateTimePattern();
String get_YearMonthPattern();
Void set_YearMonthPattern(System.String);
String[] get_AbbreviatedDayNames();
Void set_AbbreviatedDayNames(System.String[]);
String[] get_ShortestDayNames();
Void set_ShortestDayNames(System.String[]);
String[] get_DayNames();
Void set_DayNames(System.String[]);
String[] get_AbbreviatedMonthNames();
Void set_AbbreviatedMonthNames(System.String[]);
String[] get_MonthNames();
Void set_MonthNames(System.String[]);
String GetAbbreviatedDayName(System.DayOfWeek);
String GetShortestDayName(System.DayOfWeek);
String[] GetAllDateTimePatterns();
String[] GetAllDateTimePatterns(System.Char);
String GetDayName(System.DayOfWeek);
String GetAbbreviatedMonthName(System.Int32);
String GetMonthName(System.Int32);
static DateTimeFormatInfo ReadOnly(System.Globalization.DateTimeFormatInfo);
Boolean get_IsReadOnly();
String get_NativeCalendarName();
Void SetAllDateTimePatterns(System.String[],System.Char);
String[] get_AbbreviatedMonthGenitiveNames();
Void set_AbbreviatedMonthGenitiveNames(System.String[]);
String[] get_MonthGenitiveNames();
Void set_MonthGenitiveNames(System.String[]);
}
class DaylightTime : System.Object{
this (System.DateTime,System.DateTime,System.TimeSpan);
DateTime get_Start();
DateTime get_End();
TimeSpan get_Delta();
}
class DigitShapes : System.Enum{
}
class GregorianCalendar : System.Globalization.Calendar{
this (System.Globalization.GregorianCalendarTypes);
this ();
DateTime get_MinSupportedDateTime();
DateTime get_MaxSupportedDateTime();
CalendarAlgorithmType get_AlgorithmType();
GregorianCalendarTypes get_CalendarType();
Void set_CalendarType(System.Globalization.GregorianCalendarTypes);
DateTime AddMonths(System.DateTime,System.Int32);
DateTime AddYears(System.DateTime,System.Int32);
Int32 GetDayOfMonth(System.DateTime);
DayOfWeek GetDayOfWeek(System.DateTime);
Int32 GetDayOfYear(System.DateTime);
Int32 GetDaysInMonth(System.Int32,System.Int32,System.Int32);
Int32 GetDaysInYear(System.Int32,System.Int32);
Int32 GetEra(System.DateTime);
Int32[] get_Eras();
Int32 GetMonth(System.DateTime);
Int32 GetMonthsInYear(System.Int32,System.Int32);
Int32 GetYear(System.DateTime);
Boolean IsLeapDay(System.Int32,System.Int32,System.Int32,System.Int32);
Int32 GetLeapMonth(System.Int32,System.Int32);
Boolean IsLeapMonth(System.Int32,System.Int32,System.Int32);
Boolean IsLeapYear(System.Int32,System.Int32);
DateTime ToDateTime(System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32);
Int32 get_TwoDigitYearMax();
Void set_TwoDigitYearMax(System.Int32);
Int32 ToFourDigitYear(System.Int32);
}
class GregorianCalendarTypes : System.Enum{
}
class HebrewCalendar : System.Globalization.Calendar{
this ();
DateTime get_MinSupportedDateTime();
DateTime get_MaxSupportedDateTime();
CalendarAlgorithmType get_AlgorithmType();
DateTime AddMonths(System.DateTime,System.Int32);
DateTime AddYears(System.DateTime,System.Int32);
Int32 GetDayOfMonth(System.DateTime);
DayOfWeek GetDayOfWeek(System.DateTime);
Int32 GetDayOfYear(System.DateTime);
Int32 GetDaysInMonth(System.Int32,System.Int32,System.Int32);
Int32 GetDaysInYear(System.Int32,System.Int32);
Int32 GetEra(System.DateTime);
Int32[] get_Eras();
Int32 GetMonth(System.DateTime);
Int32 GetMonthsInYear(System.Int32,System.Int32);
Int32 GetYear(System.DateTime);
Boolean IsLeapDay(System.Int32,System.Int32,System.Int32,System.Int32);
Int32 GetLeapMonth(System.Int32,System.Int32);
Boolean IsLeapMonth(System.Int32,System.Int32,System.Int32);
Boolean IsLeapYear(System.Int32,System.Int32);
DateTime ToDateTime(System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32);
Int32 get_TwoDigitYearMax();
Void set_TwoDigitYearMax(System.Int32);
Int32 ToFourDigitYear(System.Int32);
}
class HijriCalendar : System.Globalization.Calendar{
this ();
DateTime get_MinSupportedDateTime();
DateTime get_MaxSupportedDateTime();
CalendarAlgorithmType get_AlgorithmType();
Int32 get_HijriAdjustment();
Void set_HijriAdjustment(System.Int32);
DateTime AddMonths(System.DateTime,System.Int32);
DateTime AddYears(System.DateTime,System.Int32);
Int32 GetDayOfMonth(System.DateTime);
DayOfWeek GetDayOfWeek(System.DateTime);
Int32 GetDayOfYear(System.DateTime);
Int32 GetDaysInMonth(System.Int32,System.Int32,System.Int32);
Int32 GetDaysInYear(System.Int32,System.Int32);
Int32 GetEra(System.DateTime);
Int32[] get_Eras();
Int32 GetMonth(System.DateTime);
Int32 GetMonthsInYear(System.Int32,System.Int32);
Int32 GetYear(System.DateTime);
Boolean IsLeapDay(System.Int32,System.Int32,System.Int32,System.Int32);
Int32 GetLeapMonth(System.Int32,System.Int32);
Boolean IsLeapMonth(System.Int32,System.Int32,System.Int32);
Boolean IsLeapYear(System.Int32,System.Int32);
DateTime ToDateTime(System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32);
Int32 get_TwoDigitYearMax();
Void set_TwoDigitYearMax(System.Int32);
Int32 ToFourDigitYear(System.Int32);
}
class UmAlQuraCalendar : System.Globalization.Calendar{
this ();
DateTime get_MinSupportedDateTime();
DateTime get_MaxSupportedDateTime();
CalendarAlgorithmType get_AlgorithmType();
DateTime AddMonths(System.DateTime,System.Int32);
DateTime AddYears(System.DateTime,System.Int32);
Int32 GetDayOfMonth(System.DateTime);
DayOfWeek GetDayOfWeek(System.DateTime);
Int32 GetDayOfYear(System.DateTime);
Int32 GetDaysInMonth(System.Int32,System.Int32,System.Int32);
Int32 GetDaysInYear(System.Int32,System.Int32);
Int32 GetEra(System.DateTime);
Int32[] get_Eras();
Int32 GetMonth(System.DateTime);
Int32 GetMonthsInYear(System.Int32,System.Int32);
Int32 GetYear(System.DateTime);
Boolean IsLeapDay(System.Int32,System.Int32,System.Int32,System.Int32);
Int32 GetLeapMonth(System.Int32,System.Int32);
Boolean IsLeapMonth(System.Int32,System.Int32,System.Int32);
Boolean IsLeapYear(System.Int32,System.Int32);
DateTime ToDateTime(System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32);
Int32 get_TwoDigitYearMax();
Void set_TwoDigitYearMax(System.Int32);
Int32 ToFourDigitYear(System.Int32);
}
class ChineseLunisolarCalendar : System.Globalization.EastAsianLunisolarCalendar{
this ();
DateTime get_MinSupportedDateTime();
DateTime get_MaxSupportedDateTime();
Int32 GetEra(System.DateTime);
Int32[] get_Eras();
}
class EastAsianLunisolarCalendar : System.Globalization.Calendar{
CalendarAlgorithmType get_AlgorithmType();
Int32 GetSexagenaryYear(System.DateTime);
Int32 GetCelestialStem(System.Int32);
Int32 GetTerrestrialBranch(System.Int32);
Int32 GetDaysInMonth(System.Int32,System.Int32,System.Int32);
DateTime ToDateTime(System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32);
DateTime AddMonths(System.DateTime,System.Int32);
DateTime AddYears(System.DateTime,System.Int32);
Int32 GetDayOfYear(System.DateTime);
Int32 GetDayOfMonth(System.DateTime);
Int32 GetDaysInYear(System.Int32,System.Int32);
Int32 GetMonth(System.DateTime);
Int32 GetYear(System.DateTime);
DayOfWeek GetDayOfWeek(System.DateTime);
Int32 GetMonthsInYear(System.Int32,System.Int32);
Boolean IsLeapDay(System.Int32,System.Int32,System.Int32,System.Int32);
Boolean IsLeapMonth(System.Int32,System.Int32,System.Int32);
Int32 GetLeapMonth(System.Int32,System.Int32);
Boolean IsLeapYear(System.Int32,System.Int32);
Int32 get_TwoDigitYearMax();
Void set_TwoDigitYearMax(System.Int32);
Int32 ToFourDigitYear(System.Int32);
}
class JapaneseLunisolarCalendar : System.Globalization.EastAsianLunisolarCalendar{
this ();
DateTime get_MinSupportedDateTime();
DateTime get_MaxSupportedDateTime();
Int32 GetEra(System.DateTime);
Int32[] get_Eras();
}
class JulianCalendar : System.Globalization.Calendar{
this ();
DateTime get_MinSupportedDateTime();
DateTime get_MaxSupportedDateTime();
CalendarAlgorithmType get_AlgorithmType();
DateTime AddMonths(System.DateTime,System.Int32);
DateTime AddYears(System.DateTime,System.Int32);
Int32 GetDayOfMonth(System.DateTime);
DayOfWeek GetDayOfWeek(System.DateTime);
Int32 GetDayOfYear(System.DateTime);
Int32 GetDaysInMonth(System.Int32,System.Int32,System.Int32);
Int32 GetDaysInYear(System.Int32,System.Int32);
Int32 GetEra(System.DateTime);
Int32 GetMonth(System.DateTime);
Int32[] get_Eras();
Int32 GetMonthsInYear(System.Int32,System.Int32);
Int32 GetYear(System.DateTime);
Boolean IsLeapDay(System.Int32,System.Int32,System.Int32,System.Int32);
Int32 GetLeapMonth(System.Int32,System.Int32);
Boolean IsLeapMonth(System.Int32,System.Int32,System.Int32);
Boolean IsLeapYear(System.Int32,System.Int32);
DateTime ToDateTime(System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32);
Int32 get_TwoDigitYearMax();
Void set_TwoDigitYearMax(System.Int32);
Int32 ToFourDigitYear(System.Int32);
}
class KoreanLunisolarCalendar : System.Globalization.EastAsianLunisolarCalendar{
this ();
DateTime get_MinSupportedDateTime();
DateTime get_MaxSupportedDateTime();
Int32 GetEra(System.DateTime);
Int32[] get_Eras();
}
class PersianCalendar : System.Globalization.Calendar{
this ();
DateTime get_MinSupportedDateTime();
DateTime get_MaxSupportedDateTime();
CalendarAlgorithmType get_AlgorithmType();
DateTime AddMonths(System.DateTime,System.Int32);
DateTime AddYears(System.DateTime,System.Int32);
Int32 GetDayOfMonth(System.DateTime);
DayOfWeek GetDayOfWeek(System.DateTime);
Int32 GetDayOfYear(System.DateTime);
Int32 GetDaysInMonth(System.Int32,System.Int32,System.Int32);
Int32 GetDaysInYear(System.Int32,System.Int32);
Int32 GetEra(System.DateTime);
Int32[] get_Eras();
Int32 GetMonth(System.DateTime);
Int32 GetMonthsInYear(System.Int32,System.Int32);
Int32 GetYear(System.DateTime);
Boolean IsLeapDay(System.Int32,System.Int32,System.Int32,System.Int32);
Int32 GetLeapMonth(System.Int32,System.Int32);
Boolean IsLeapMonth(System.Int32,System.Int32,System.Int32);
Boolean IsLeapYear(System.Int32,System.Int32);
DateTime ToDateTime(System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32);
Int32 get_TwoDigitYearMax();
Void set_TwoDigitYearMax(System.Int32);
Int32 ToFourDigitYear(System.Int32);
}
class TaiwanLunisolarCalendar : System.Globalization.EastAsianLunisolarCalendar{
this ();
DateTime get_MinSupportedDateTime();
DateTime get_MaxSupportedDateTime();
Int32 GetEra(System.DateTime);
Int32[] get_Eras();
}
class IdnMapping : System.Object{
this ();
Boolean get_AllowUnassigned();
Void set_AllowUnassigned(System.Boolean);
Boolean get_UseStd3AsciiRules();
Void set_UseStd3AsciiRules(System.Boolean);
String GetAscii(System.String);
String GetAscii(System.String,System.Int32);
String GetAscii(System.String,System.Int32,System.Int32);
String GetUnicode(System.String);
String GetUnicode(System.String,System.Int32);
String GetUnicode(System.String,System.Int32,System.Int32);
Boolean Equals(System.Object);
Int32 GetHashCode();
}
class JapaneseCalendar : System.Globalization.Calendar{
this ();
DateTime get_MinSupportedDateTime();
DateTime get_MaxSupportedDateTime();
CalendarAlgorithmType get_AlgorithmType();
DateTime AddMonths(System.DateTime,System.Int32);
DateTime AddYears(System.DateTime,System.Int32);
Int32 GetDaysInMonth(System.Int32,System.Int32,System.Int32);
Int32 GetDaysInYear(System.Int32,System.Int32);
Int32 GetDayOfMonth(System.DateTime);
DayOfWeek GetDayOfWeek(System.DateTime);
Int32 GetDayOfYear(System.DateTime);
Int32 GetMonthsInYear(System.Int32,System.Int32);
Int32 GetWeekOfYear(System.DateTime,System.Globalization.CalendarWeekRule,System.DayOfWeek);
Int32 GetEra(System.DateTime);
Int32 GetMonth(System.DateTime);
Int32 GetYear(System.DateTime);
Boolean IsLeapDay(System.Int32,System.Int32,System.Int32,System.Int32);
Boolean IsLeapYear(System.Int32,System.Int32);
Int32 GetLeapMonth(System.Int32,System.Int32);
Boolean IsLeapMonth(System.Int32,System.Int32,System.Int32);
DateTime ToDateTime(System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32);
Int32 ToFourDigitYear(System.Int32);
Int32[] get_Eras();
Int32 get_TwoDigitYearMax();
Void set_TwoDigitYearMax(System.Int32);
}
class KoreanCalendar : System.Globalization.Calendar{
this ();
DateTime get_MinSupportedDateTime();
DateTime get_MaxSupportedDateTime();
CalendarAlgorithmType get_AlgorithmType();
DateTime AddMonths(System.DateTime,System.Int32);
DateTime AddYears(System.DateTime,System.Int32);
Int32 GetDaysInMonth(System.Int32,System.Int32,System.Int32);
Int32 GetDaysInYear(System.Int32,System.Int32);
Int32 GetDayOfMonth(System.DateTime);
DayOfWeek GetDayOfWeek(System.DateTime);
Int32 GetDayOfYear(System.DateTime);
Int32 GetMonthsInYear(System.Int32,System.Int32);
Int32 GetWeekOfYear(System.DateTime,System.Globalization.CalendarWeekRule,System.DayOfWeek);
Int32 GetEra(System.DateTime);
Int32 GetMonth(System.DateTime);
Int32 GetYear(System.DateTime);
Boolean IsLeapDay(System.Int32,System.Int32,System.Int32,System.Int32);
Boolean IsLeapYear(System.Int32,System.Int32);
Int32 GetLeapMonth(System.Int32,System.Int32);
Boolean IsLeapMonth(System.Int32,System.Int32,System.Int32);
DateTime ToDateTime(System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32);
Int32[] get_Eras();
Int32 get_TwoDigitYearMax();
Void set_TwoDigitYearMax(System.Int32);
Int32 ToFourDigitYear(System.Int32);
}
class RegionInfo : System.Object{
this (System.String);
this (System.Int32);
static RegionInfo get_CurrentRegion();
String get_Name();
String get_EnglishName();
String get_DisplayName();
String get_NativeName();
String get_TwoLetterISORegionName();
String get_ThreeLetterISORegionName();
String get_ThreeLetterWindowsRegionName();
Boolean get_IsMetric();
Int32 get_GeoId();
String get_CurrencyEnglishName();
String get_CurrencyNativeName();
String get_CurrencySymbol();
String get_ISOCurrencySymbol();
Boolean Equals(System.Object);
Int32 GetHashCode();
String ToString();
}
class SortKey : System.Object{
String get_OriginalString();
Byte[] get_KeyData();
static Int32 Compare(System.Globalization.SortKey,System.Globalization.SortKey);
Boolean Equals(System.Object);
Int32 GetHashCode();
String ToString();
}
class StringInfo : System.Object{
this ();
this (System.String);
static String GetNextTextElement(System.String,System.Int32);
Boolean Equals(System.Object);
Int32 GetHashCode();
String get_String();
Void set_String(System.String);
Int32 get_LengthInTextElements();
String SubstringByTextElements(System.Int32);
String SubstringByTextElements(System.Int32,System.Int32);
static String GetNextTextElement(System.String);
static TextElementEnumerator GetTextElementEnumerator(System.String);
static TextElementEnumerator GetTextElementEnumerator(System.String,System.Int32);
static Int32[] ParseCombiningCharacters(System.String);
}
class TaiwanCalendar : System.Globalization.Calendar{
this ();
DateTime get_MinSupportedDateTime();
DateTime get_MaxSupportedDateTime();
CalendarAlgorithmType get_AlgorithmType();
DateTime AddMonths(System.DateTime,System.Int32);
DateTime AddYears(System.DateTime,System.Int32);
Int32 GetDaysInMonth(System.Int32,System.Int32,System.Int32);
Int32 GetDaysInYear(System.Int32,System.Int32);
Int32 GetDayOfMonth(System.DateTime);
DayOfWeek GetDayOfWeek(System.DateTime);
Int32 GetDayOfYear(System.DateTime);
Int32 GetMonthsInYear(System.Int32,System.Int32);
Int32 GetWeekOfYear(System.DateTime,System.Globalization.CalendarWeekRule,System.DayOfWeek);
Int32 GetEra(System.DateTime);
Int32 GetMonth(System.DateTime);
Int32 GetYear(System.DateTime);
Boolean IsLeapDay(System.Int32,System.Int32,System.Int32,System.Int32);
Boolean IsLeapYear(System.Int32,System.Int32);
Int32 GetLeapMonth(System.Int32,System.Int32);
Boolean IsLeapMonth(System.Int32,System.Int32,System.Int32);
DateTime ToDateTime(System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32);
Int32[] get_Eras();
Int32 get_TwoDigitYearMax();
Void set_TwoDigitYearMax(System.Int32);
Int32 ToFourDigitYear(System.Int32);
}
class TextElementEnumerator : System.Object{
Boolean MoveNext();
Object get_Current();
String GetTextElement();
Int32 get_ElementIndex();
Void Reset();
}
class TextInfo : System.Object{
Int32 get_ANSICodePage();
Int32 get_OEMCodePage();
Int32 get_MacCodePage();
Int32 get_EBCDICCodePage();
Int32 get_LCID();
String get_CultureName();
Boolean get_IsReadOnly();
Object Clone();
static TextInfo ReadOnly(System.Globalization.TextInfo);
String get_ListSeparator();
Void set_ListSeparator(System.String);
Char ToLower(System.Char);
String ToLower(System.String);
Char ToUpper(System.Char);
String ToUpper(System.String);
Boolean Equals(System.Object);
Int32 GetHashCode();
String ToString();
String ToTitleCase(System.String);
Boolean get_IsRightToLeft();
}
class ThaiBuddhistCalendar : System.Globalization.Calendar{
this ();
DateTime get_MinSupportedDateTime();
DateTime get_MaxSupportedDateTime();
CalendarAlgorithmType get_AlgorithmType();
DateTime AddMonths(System.DateTime,System.Int32);
DateTime AddYears(System.DateTime,System.Int32);
Int32 GetDaysInMonth(System.Int32,System.Int32,System.Int32);
Int32 GetDaysInYear(System.Int32,System.Int32);
Int32 GetDayOfMonth(System.DateTime);
DayOfWeek GetDayOfWeek(System.DateTime);
Int32 GetDayOfYear(System.DateTime);
Int32 GetMonthsInYear(System.Int32,System.Int32);
Int32 GetWeekOfYear(System.DateTime,System.Globalization.CalendarWeekRule,System.DayOfWeek);
Int32 GetEra(System.DateTime);
Int32 GetMonth(System.DateTime);
Int32 GetYear(System.DateTime);
Boolean IsLeapDay(System.Int32,System.Int32,System.Int32,System.Int32);
Boolean IsLeapYear(System.Int32,System.Int32);
Int32 GetLeapMonth(System.Int32,System.Int32);
Boolean IsLeapMonth(System.Int32,System.Int32,System.Int32);
DateTime ToDateTime(System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32);
Int32[] get_Eras();
Int32 get_TwoDigitYearMax();
Void set_TwoDigitYearMax(System.Int32);
Int32 ToFourDigitYear(System.Int32);
}
class TimeSpanStyles : System.Enum{
}
class NumberFormatInfo : System.Object{
this ();
static NumberFormatInfo get_InvariantInfo();
static NumberFormatInfo GetInstance(System.IFormatProvider);
Object Clone();
Int32 get_CurrencyDecimalDigits();
Void set_CurrencyDecimalDigits(System.Int32);
String get_CurrencyDecimalSeparator();
Void set_CurrencyDecimalSeparator(System.String);
Boolean get_IsReadOnly();
Int32[] get_CurrencyGroupSizes();
Void set_CurrencyGroupSizes(System.Int32[]);
Int32[] get_NumberGroupSizes();
Void set_NumberGroupSizes(System.Int32[]);
Int32[] get_PercentGroupSizes();
Void set_PercentGroupSizes(System.Int32[]);
String get_CurrencyGroupSeparator();
Void set_CurrencyGroupSeparator(System.String);
String get_CurrencySymbol();
Void set_CurrencySymbol(System.String);
static NumberFormatInfo get_CurrentInfo();
String get_NaNSymbol();
Void set_NaNSymbol(System.String);
Int32 get_CurrencyNegativePattern();
Void set_CurrencyNegativePattern(System.Int32);
Int32 get_NumberNegativePattern();
Void set_NumberNegativePattern(System.Int32);
Int32 get_PercentPositivePattern();
Void set_PercentPositivePattern(System.Int32);
Int32 get_PercentNegativePattern();
Void set_PercentNegativePattern(System.Int32);
String get_NegativeInfinitySymbol();
Void set_NegativeInfinitySymbol(System.String);
String get_NegativeSign();
Void set_NegativeSign(System.String);
Int32 get_NumberDecimalDigits();
Void set_NumberDecimalDigits(System.Int32);
String get_NumberDecimalSeparator();
Void set_NumberDecimalSeparator(System.String);
String get_NumberGroupSeparator();
Void set_NumberGroupSeparator(System.String);
Int32 get_CurrencyPositivePattern();
Void set_CurrencyPositivePattern(System.Int32);
String get_PositiveInfinitySymbol();
Void set_PositiveInfinitySymbol(System.String);
String get_PositiveSign();
Void set_PositiveSign(System.String);
Int32 get_PercentDecimalDigits();
Void set_PercentDecimalDigits(System.Int32);
String get_PercentDecimalSeparator();
Void set_PercentDecimalSeparator(System.String);
String get_PercentGroupSeparator();
Void set_PercentGroupSeparator(System.String);
String get_PercentSymbol();
Void set_PercentSymbol(System.String);
String get_PerMilleSymbol();
Void set_PerMilleSymbol(System.String);
String[] get_NativeDigits();
Void set_NativeDigits(System.String[]);
DigitShapes get_DigitSubstitution();
Void set_DigitSubstitution(System.Globalization.DigitShapes);
Object GetFormat(System.Type);
static NumberFormatInfo ReadOnly(System.Globalization.NumberFormatInfo);
}
class NumberStyles : System.Enum{
}
class UnicodeCategory : System.Enum{
}
class SortVersion : System.Object{
this (System.Int32,System.Guid);
Int32 get_FullVersion();
Guid get_SortId();
Boolean Equals(System.Object);
Boolean Equals(System.Globalization.SortVersion);
Int32 GetHashCode();
static Boolean op_Equality(System.Globalization.SortVersion,System.Globalization.SortVersion);
static Boolean op_Inequality(System.Globalization.SortVersion,System.Globalization.SortVersion);
}
}
