module System.Globalization;
import System;
import System.Reflection;
import System.Runtime.Serialization;
import System.Collections;
public:
pragma(assembly,"mscorlib"){
class Calendar : System.__object{
System.DateTime get_MinSupportedDateTime();
System.DateTime get_MaxSupportedDateTime();
System.Globalization.CalendarAlgorithmType get_AlgorithmType();
System.Boolean get_IsReadOnly();
System.__object Clone();
static System.Globalization.Calendar ReadOnly(System.Globalization.Calendar);
System.DateTime AddMilliseconds(System.DateTime,System.Double);
System.DateTime AddDays(System.DateTime,System.Int32);
System.DateTime AddHours(System.DateTime,System.Int32);
System.DateTime AddMinutes(System.DateTime,System.Int32);
System.DateTime AddMonths(System.DateTime,System.Int32);
System.DateTime AddSeconds(System.DateTime,System.Int32);
System.DateTime AddWeeks(System.DateTime,System.Int32);
System.DateTime AddYears(System.DateTime,System.Int32);
System.Int32 GetDayOfMonth(System.DateTime);
System.DayOfWeek GetDayOfWeek(System.DateTime);
System.Int32 GetDayOfYear(System.DateTime);
System.Int32 GetDaysInMonth(System.Int32,System.Int32);
System.Int32 GetDaysInMonth(System.Int32,System.Int32,System.Int32);
System.Int32 GetDaysInYear(System.Int32);
System.Int32 GetDaysInYear(System.Int32,System.Int32);
System.Int32 GetEra(System.DateTime);
System.Int32[] get_Eras();
System.Int32 GetHour(System.DateTime);
System.Double GetMilliseconds(System.DateTime);
System.Int32 GetMinute(System.DateTime);
System.Int32 GetMonth(System.DateTime);
System.Int32 GetMonthsInYear(System.Int32);
System.Int32 GetMonthsInYear(System.Int32,System.Int32);
System.Int32 GetSecond(System.DateTime);
System.Int32 GetWeekOfYear(System.DateTime,System.Globalization.CalendarWeekRule,System.DayOfWeek);
System.Int32 GetYear(System.DateTime);
System.Boolean IsLeapDay(System.Int32,System.Int32,System.Int32);
System.Boolean IsLeapDay(System.Int32,System.Int32,System.Int32,System.Int32);
System.Boolean IsLeapMonth(System.Int32,System.Int32);
System.Boolean IsLeapMonth(System.Int32,System.Int32,System.Int32);
System.Int32 GetLeapMonth(System.Int32);
System.Int32 GetLeapMonth(System.Int32,System.Int32);
System.Boolean IsLeapYear(System.Int32);
System.Boolean IsLeapYear(System.Int32,System.Int32);
System.DateTime ToDateTime(System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32);
System.DateTime ToDateTime(System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32);
System.Int32 get_TwoDigitYearMax();
System.Void set_TwoDigitYearMax(System.Int32);
System.Int32 ToFourDigitYear(System.Int32);
}
class CalendarAlgorithmType : System.Enum{
Int32 value__;
}
class CalendarWeekRule : System.Enum{
Int32 value__;
}
class CharUnicodeInfo : System.__object{
static System.Double GetNumericValue(System.Char);
static System.Double GetNumericValue(System.String,System.Int32);
static System.Int32 GetDecimalDigitValue(System.Char);
static System.Int32 GetDecimalDigitValue(System.String,System.Int32);
static System.Int32 GetDigitValue(System.Char);
static System.Int32 GetDigitValue(System.String,System.Int32);
static System.Globalization.UnicodeCategory GetUnicodeCategory(System.Char);
static System.Globalization.UnicodeCategory GetUnicodeCategory(System.String,System.Int32);
}
class CompareOptions : System.Enum{
Int32 value__;
}
class CompareInfo : System.__object{
static System.Globalization.CompareInfo GetCompareInfo(System.Int32,System.Reflection.Assembly);
static System.Globalization.CompareInfo GetCompareInfo(System.String,System.Reflection.Assembly);
static System.Globalization.CompareInfo GetCompareInfo(System.Int32);
static System.Globalization.CompareInfo GetCompareInfo(System.String);
static System.Boolean IsSortable(System.Char);
static System.Boolean IsSortable(System.String);
System.String get_Name();
System.Int32 Compare(System.String,System.String);
System.Int32 Compare(System.String,System.String,System.Globalization.CompareOptions);
System.Int32 Compare(System.String,System.Int32,System.Int32,System.String,System.Int32,System.Int32);
System.Int32 Compare(System.String,System.Int32,System.String,System.Int32,System.Globalization.CompareOptions);
System.Int32 Compare(System.String,System.Int32,System.String,System.Int32);
System.Int32 Compare(System.String,System.Int32,System.Int32,System.String,System.Int32,System.Int32,System.Globalization.CompareOptions);
System.Boolean IsPrefix(System.String,System.String,System.Globalization.CompareOptions);
System.Boolean IsPrefix(System.String,System.String);
System.Boolean IsSuffix(System.String,System.String,System.Globalization.CompareOptions);
System.Boolean IsSuffix(System.String,System.String);
System.Int32 IndexOf(System.String,System.Char);
System.Int32 IndexOf(System.String,System.String);
System.Int32 IndexOf(System.String,System.Char,System.Globalization.CompareOptions);
System.Int32 IndexOf(System.String,System.String,System.Globalization.CompareOptions);
System.Int32 IndexOf(System.String,System.Char,System.Int32);
System.Int32 IndexOf(System.String,System.String,System.Int32);
System.Int32 IndexOf(System.String,System.Char,System.Int32,System.Globalization.CompareOptions);
System.Int32 IndexOf(System.String,System.String,System.Int32,System.Globalization.CompareOptions);
System.Int32 IndexOf(System.String,System.Char,System.Int32,System.Int32);
System.Int32 IndexOf(System.String,System.String,System.Int32,System.Int32);
System.Int32 IndexOf(System.String,System.Char,System.Int32,System.Int32,System.Globalization.CompareOptions);
System.Int32 IndexOf(System.String,System.String,System.Int32,System.Int32,System.Globalization.CompareOptions);
System.Int32 LastIndexOf(System.String,System.Char);
System.Int32 LastIndexOf(System.String,System.String);
System.Int32 LastIndexOf(System.String,System.Char,System.Globalization.CompareOptions);
System.Int32 LastIndexOf(System.String,System.String,System.Globalization.CompareOptions);
System.Int32 LastIndexOf(System.String,System.Char,System.Int32);
System.Int32 LastIndexOf(System.String,System.String,System.Int32);
System.Int32 LastIndexOf(System.String,System.Char,System.Int32,System.Globalization.CompareOptions);
System.Int32 LastIndexOf(System.String,System.String,System.Int32,System.Globalization.CompareOptions);
System.Int32 LastIndexOf(System.String,System.Char,System.Int32,System.Int32);
System.Int32 LastIndexOf(System.String,System.String,System.Int32,System.Int32);
System.Int32 LastIndexOf(System.String,System.Char,System.Int32,System.Int32,System.Globalization.CompareOptions);
System.Int32 LastIndexOf(System.String,System.String,System.Int32,System.Int32,System.Globalization.CompareOptions);
System.Globalization.SortKey GetSortKey(System.String,System.Globalization.CompareOptions);
System.Globalization.SortKey GetSortKey(System.String);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.Int32 GetHashCode(System.String,System.Globalization.CompareOptions);
System.String ToString();
System.Int32 get_LCID();
System.Globalization.SortVersion get_Version();
}
class CultureInfo : System.__object{
this (System.String);
this (System.String,System.Boolean);
this (System.Int32);
this (System.Int32,System.Boolean);
static System.Globalization.CultureInfo CreateSpecificCulture(System.String);
static System.Globalization.CultureInfo get_CurrentCulture();
static System.Void set_CurrentCulture(System.Globalization.CultureInfo);
static System.Globalization.CultureInfo get_CurrentUICulture();
static System.Void set_CurrentUICulture(System.Globalization.CultureInfo);
static System.Globalization.CultureInfo get_InstalledUICulture();
static System.Globalization.CultureInfo get_DefaultThreadCurrentCulture();
static System.Void set_DefaultThreadCurrentCulture(System.Globalization.CultureInfo);
static System.Globalization.CultureInfo get_DefaultThreadCurrentUICulture();
static System.Void set_DefaultThreadCurrentUICulture(System.Globalization.CultureInfo);
static System.Globalization.CultureInfo get_InvariantCulture();
System.Globalization.CultureInfo get_Parent();
System.Int32 get_LCID();
System.Int32 get_KeyboardLayoutId();
static System.Globalization.CultureInfo[] GetCultures(System.Globalization.CultureTypes);
System.String get_Name();
System.String get_IetfLanguageTag();
System.String get_DisplayName();
System.String get_NativeName();
System.String get_EnglishName();
System.String get_TwoLetterISOLanguageName();
System.String get_ThreeLetterISOLanguageName();
System.String get_ThreeLetterWindowsLanguageName();
System.Globalization.CompareInfo get_CompareInfo();
System.Globalization.TextInfo get_TextInfo();
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.String ToString();
System.__object GetFormat(System.Type);
System.Boolean get_IsNeutralCulture();
System.Globalization.CultureTypes get_CultureTypes();
System.Globalization.NumberFormatInfo get_NumberFormat();
System.Void set_NumberFormat(System.Globalization.NumberFormatInfo);
System.Globalization.DateTimeFormatInfo get_DateTimeFormat();
System.Void set_DateTimeFormat(System.Globalization.DateTimeFormatInfo);
System.Void ClearCachedData();
System.Globalization.Calendar get_Calendar();
System.Globalization.Calendar[] get_OptionalCalendars();
System.Boolean get_UseUserOverride();
System.Globalization.CultureInfo GetConsoleFallbackUICulture();
System.__object Clone();
static System.Globalization.CultureInfo ReadOnly(System.Globalization.CultureInfo);
System.Boolean get_IsReadOnly();
static System.Globalization.CultureInfo GetCultureInfo(System.Int32);
static System.Globalization.CultureInfo GetCultureInfo(System.String);
static System.Globalization.CultureInfo GetCultureInfo(System.String,System.String);
static System.Globalization.CultureInfo GetCultureInfoByIetfLanguageTag(System.String);
}
class CultureTypes : System.Enum{
Int32 value__;
}
class DateTimeStyles : System.Enum{
Int32 value__;
}
class DateTimeFormatInfo : System.__object{
this ();
static System.Globalization.DateTimeFormatInfo get_InvariantInfo();
static System.Globalization.DateTimeFormatInfo get_CurrentInfo();
static System.Globalization.DateTimeFormatInfo GetInstance(System.IFormatProvider);
System.__object GetFormat(System.Type);
System.__object Clone();
System.String get_AMDesignator();
System.Void set_AMDesignator(System.String);
System.Globalization.Calendar get_Calendar();
System.Void set_Calendar(System.Globalization.Calendar);
System.Int32 GetEra(System.String);
System.String GetEraName(System.Int32);
System.String GetAbbreviatedEraName(System.Int32);
System.String get_DateSeparator();
System.Void set_DateSeparator(System.String);
System.DayOfWeek get_FirstDayOfWeek();
System.Void set_FirstDayOfWeek(System.DayOfWeek);
System.Globalization.CalendarWeekRule get_CalendarWeekRule();
System.Void set_CalendarWeekRule(System.Globalization.CalendarWeekRule);
System.String get_FullDateTimePattern();
System.Void set_FullDateTimePattern(System.String);
System.String get_LongDatePattern();
System.Void set_LongDatePattern(System.String);
System.String get_LongTimePattern();
System.Void set_LongTimePattern(System.String);
System.String get_MonthDayPattern();
System.Void set_MonthDayPattern(System.String);
System.String get_PMDesignator();
System.Void set_PMDesignator(System.String);
System.String get_RFC1123Pattern();
System.String get_ShortDatePattern();
System.Void set_ShortDatePattern(System.String);
System.String get_ShortTimePattern();
System.Void set_ShortTimePattern(System.String);
System.String get_SortableDateTimePattern();
System.String get_TimeSeparator();
System.Void set_TimeSeparator(System.String);
System.String get_UniversalSortableDateTimePattern();
System.String get_YearMonthPattern();
System.Void set_YearMonthPattern(System.String);
System.String[] get_AbbreviatedDayNames();
System.Void set_AbbreviatedDayNames(System.String[]);
System.String[] get_ShortestDayNames();
System.Void set_ShortestDayNames(System.String[]);
System.String[] get_DayNames();
System.Void set_DayNames(System.String[]);
System.String[] get_AbbreviatedMonthNames();
System.Void set_AbbreviatedMonthNames(System.String[]);
System.String[] get_MonthNames();
System.Void set_MonthNames(System.String[]);
System.String GetAbbreviatedDayName(System.DayOfWeek);
System.String GetShortestDayName(System.DayOfWeek);
System.String[] GetAllDateTimePatterns();
System.String[] GetAllDateTimePatterns(System.Char);
System.String GetDayName(System.DayOfWeek);
System.String GetAbbreviatedMonthName(System.Int32);
System.String GetMonthName(System.Int32);
static System.Globalization.DateTimeFormatInfo ReadOnly(System.Globalization.DateTimeFormatInfo);
System.Boolean get_IsReadOnly();
System.String get_NativeCalendarName();
System.Void SetAllDateTimePatterns(System.String[],System.Char);
System.String[] get_AbbreviatedMonthGenitiveNames();
System.Void set_AbbreviatedMonthGenitiveNames(System.String[]);
System.String[] get_MonthGenitiveNames();
System.Void set_MonthGenitiveNames(System.String[]);
}
class DaylightTime : System.__object{
this (System.DateTime,System.DateTime,System.TimeSpan);
System.DateTime get_Start();
System.DateTime get_End();
System.TimeSpan get_Delta();
}
class DigitShapes : System.Enum{
Int32 value__;
}
class GregorianCalendar : System.Globalization.Calendar{
this (System.Globalization.GregorianCalendarTypes);
this ();
System.DateTime get_MinSupportedDateTime();
System.DateTime get_MaxSupportedDateTime();
System.Globalization.CalendarAlgorithmType get_AlgorithmType();
System.Globalization.GregorianCalendarTypes get_CalendarType();
System.Void set_CalendarType(System.Globalization.GregorianCalendarTypes);
System.DateTime AddMonths(System.DateTime,System.Int32);
System.DateTime AddYears(System.DateTime,System.Int32);
System.Int32 GetDayOfMonth(System.DateTime);
System.DayOfWeek GetDayOfWeek(System.DateTime);
System.Int32 GetDayOfYear(System.DateTime);
System.Int32 GetDaysInMonth(System.Int32,System.Int32,System.Int32);
System.Int32 GetDaysInYear(System.Int32,System.Int32);
System.Int32 GetEra(System.DateTime);
System.Int32[] get_Eras();
System.Int32 GetMonth(System.DateTime);
System.Int32 GetMonthsInYear(System.Int32,System.Int32);
System.Int32 GetYear(System.DateTime);
System.Boolean IsLeapDay(System.Int32,System.Int32,System.Int32,System.Int32);
System.Int32 GetLeapMonth(System.Int32,System.Int32);
System.Boolean IsLeapMonth(System.Int32,System.Int32,System.Int32);
System.Boolean IsLeapYear(System.Int32,System.Int32);
System.DateTime ToDateTime(System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32);
System.Int32 get_TwoDigitYearMax();
System.Void set_TwoDigitYearMax(System.Int32);
System.Int32 ToFourDigitYear(System.Int32);
}
class GregorianCalendarTypes : System.Enum{
Int32 value__;
}
class HebrewCalendar : System.Globalization.Calendar{
this ();
System.DateTime get_MinSupportedDateTime();
System.DateTime get_MaxSupportedDateTime();
System.Globalization.CalendarAlgorithmType get_AlgorithmType();
System.DateTime AddMonths(System.DateTime,System.Int32);
System.DateTime AddYears(System.DateTime,System.Int32);
System.Int32 GetDayOfMonth(System.DateTime);
System.DayOfWeek GetDayOfWeek(System.DateTime);
System.Int32 GetDayOfYear(System.DateTime);
System.Int32 GetDaysInMonth(System.Int32,System.Int32,System.Int32);
System.Int32 GetDaysInYear(System.Int32,System.Int32);
System.Int32 GetEra(System.DateTime);
System.Int32[] get_Eras();
System.Int32 GetMonth(System.DateTime);
System.Int32 GetMonthsInYear(System.Int32,System.Int32);
System.Int32 GetYear(System.DateTime);
System.Boolean IsLeapDay(System.Int32,System.Int32,System.Int32,System.Int32);
System.Int32 GetLeapMonth(System.Int32,System.Int32);
System.Boolean IsLeapMonth(System.Int32,System.Int32,System.Int32);
System.Boolean IsLeapYear(System.Int32,System.Int32);
System.DateTime ToDateTime(System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32);
System.Int32 get_TwoDigitYearMax();
System.Void set_TwoDigitYearMax(System.Int32);
System.Int32 ToFourDigitYear(System.Int32);
}
class HijriCalendar : System.Globalization.Calendar{
this ();
System.DateTime get_MinSupportedDateTime();
System.DateTime get_MaxSupportedDateTime();
System.Globalization.CalendarAlgorithmType get_AlgorithmType();
System.Int32 get_HijriAdjustment();
System.Void set_HijriAdjustment(System.Int32);
System.DateTime AddMonths(System.DateTime,System.Int32);
System.DateTime AddYears(System.DateTime,System.Int32);
System.Int32 GetDayOfMonth(System.DateTime);
System.DayOfWeek GetDayOfWeek(System.DateTime);
System.Int32 GetDayOfYear(System.DateTime);
System.Int32 GetDaysInMonth(System.Int32,System.Int32,System.Int32);
System.Int32 GetDaysInYear(System.Int32,System.Int32);
System.Int32 GetEra(System.DateTime);
System.Int32[] get_Eras();
System.Int32 GetMonth(System.DateTime);
System.Int32 GetMonthsInYear(System.Int32,System.Int32);
System.Int32 GetYear(System.DateTime);
System.Boolean IsLeapDay(System.Int32,System.Int32,System.Int32,System.Int32);
System.Int32 GetLeapMonth(System.Int32,System.Int32);
System.Boolean IsLeapMonth(System.Int32,System.Int32,System.Int32);
System.Boolean IsLeapYear(System.Int32,System.Int32);
System.DateTime ToDateTime(System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32);
System.Int32 get_TwoDigitYearMax();
System.Void set_TwoDigitYearMax(System.Int32);
System.Int32 ToFourDigitYear(System.Int32);
}
class UmAlQuraCalendar : System.Globalization.Calendar{
this ();
System.DateTime get_MinSupportedDateTime();
System.DateTime get_MaxSupportedDateTime();
System.Globalization.CalendarAlgorithmType get_AlgorithmType();
System.DateTime AddMonths(System.DateTime,System.Int32);
System.DateTime AddYears(System.DateTime,System.Int32);
System.Int32 GetDayOfMonth(System.DateTime);
System.DayOfWeek GetDayOfWeek(System.DateTime);
System.Int32 GetDayOfYear(System.DateTime);
System.Int32 GetDaysInMonth(System.Int32,System.Int32,System.Int32);
System.Int32 GetDaysInYear(System.Int32,System.Int32);
System.Int32 GetEra(System.DateTime);
System.Int32[] get_Eras();
System.Int32 GetMonth(System.DateTime);
System.Int32 GetMonthsInYear(System.Int32,System.Int32);
System.Int32 GetYear(System.DateTime);
System.Boolean IsLeapDay(System.Int32,System.Int32,System.Int32,System.Int32);
System.Int32 GetLeapMonth(System.Int32,System.Int32);
System.Boolean IsLeapMonth(System.Int32,System.Int32,System.Int32);
System.Boolean IsLeapYear(System.Int32,System.Int32);
System.DateTime ToDateTime(System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32);
System.Int32 get_TwoDigitYearMax();
System.Void set_TwoDigitYearMax(System.Int32);
System.Int32 ToFourDigitYear(System.Int32);
}
class ChineseLunisolarCalendar : System.Globalization.EastAsianLunisolarCalendar{
this ();
System.DateTime get_MinSupportedDateTime();
System.DateTime get_MaxSupportedDateTime();
System.Int32 GetEra(System.DateTime);
System.Int32[] get_Eras();
}
class EastAsianLunisolarCalendar : System.Globalization.Calendar{
System.Globalization.CalendarAlgorithmType get_AlgorithmType();
System.Int32 GetSexagenaryYear(System.DateTime);
System.Int32 GetCelestialStem(System.Int32);
System.Int32 GetTerrestrialBranch(System.Int32);
System.Int32 GetDaysInMonth(System.Int32,System.Int32,System.Int32);
System.DateTime ToDateTime(System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32);
System.DateTime AddMonths(System.DateTime,System.Int32);
System.DateTime AddYears(System.DateTime,System.Int32);
System.Int32 GetDayOfYear(System.DateTime);
System.Int32 GetDayOfMonth(System.DateTime);
System.Int32 GetDaysInYear(System.Int32,System.Int32);
System.Int32 GetMonth(System.DateTime);
System.Int32 GetYear(System.DateTime);
System.DayOfWeek GetDayOfWeek(System.DateTime);
System.Int32 GetMonthsInYear(System.Int32,System.Int32);
System.Boolean IsLeapDay(System.Int32,System.Int32,System.Int32,System.Int32);
System.Boolean IsLeapMonth(System.Int32,System.Int32,System.Int32);
System.Int32 GetLeapMonth(System.Int32,System.Int32);
System.Boolean IsLeapYear(System.Int32,System.Int32);
System.Int32 get_TwoDigitYearMax();
System.Void set_TwoDigitYearMax(System.Int32);
System.Int32 ToFourDigitYear(System.Int32);
}
class JapaneseLunisolarCalendar : System.Globalization.EastAsianLunisolarCalendar{
this ();
System.DateTime get_MinSupportedDateTime();
System.DateTime get_MaxSupportedDateTime();
System.Int32 GetEra(System.DateTime);
System.Int32[] get_Eras();
}
class JulianCalendar : System.Globalization.Calendar{
this ();
System.DateTime get_MinSupportedDateTime();
System.DateTime get_MaxSupportedDateTime();
System.Globalization.CalendarAlgorithmType get_AlgorithmType();
System.DateTime AddMonths(System.DateTime,System.Int32);
System.DateTime AddYears(System.DateTime,System.Int32);
System.Int32 GetDayOfMonth(System.DateTime);
System.DayOfWeek GetDayOfWeek(System.DateTime);
System.Int32 GetDayOfYear(System.DateTime);
System.Int32 GetDaysInMonth(System.Int32,System.Int32,System.Int32);
System.Int32 GetDaysInYear(System.Int32,System.Int32);
System.Int32 GetEra(System.DateTime);
System.Int32 GetMonth(System.DateTime);
System.Int32[] get_Eras();
System.Int32 GetMonthsInYear(System.Int32,System.Int32);
System.Int32 GetYear(System.DateTime);
System.Boolean IsLeapDay(System.Int32,System.Int32,System.Int32,System.Int32);
System.Int32 GetLeapMonth(System.Int32,System.Int32);
System.Boolean IsLeapMonth(System.Int32,System.Int32,System.Int32);
System.Boolean IsLeapYear(System.Int32,System.Int32);
System.DateTime ToDateTime(System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32);
System.Int32 get_TwoDigitYearMax();
System.Void set_TwoDigitYearMax(System.Int32);
System.Int32 ToFourDigitYear(System.Int32);
}
class KoreanLunisolarCalendar : System.Globalization.EastAsianLunisolarCalendar{
this ();
System.DateTime get_MinSupportedDateTime();
System.DateTime get_MaxSupportedDateTime();
System.Int32 GetEra(System.DateTime);
System.Int32[] get_Eras();
}
class PersianCalendar : System.Globalization.Calendar{
this ();
System.DateTime get_MinSupportedDateTime();
System.DateTime get_MaxSupportedDateTime();
System.Globalization.CalendarAlgorithmType get_AlgorithmType();
System.DateTime AddMonths(System.DateTime,System.Int32);
System.DateTime AddYears(System.DateTime,System.Int32);
System.Int32 GetDayOfMonth(System.DateTime);
System.DayOfWeek GetDayOfWeek(System.DateTime);
System.Int32 GetDayOfYear(System.DateTime);
System.Int32 GetDaysInMonth(System.Int32,System.Int32,System.Int32);
System.Int32 GetDaysInYear(System.Int32,System.Int32);
System.Int32 GetEra(System.DateTime);
System.Int32[] get_Eras();
System.Int32 GetMonth(System.DateTime);
System.Int32 GetMonthsInYear(System.Int32,System.Int32);
System.Int32 GetYear(System.DateTime);
System.Boolean IsLeapDay(System.Int32,System.Int32,System.Int32,System.Int32);
System.Int32 GetLeapMonth(System.Int32,System.Int32);
System.Boolean IsLeapMonth(System.Int32,System.Int32,System.Int32);
System.Boolean IsLeapYear(System.Int32,System.Int32);
System.DateTime ToDateTime(System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32);
System.Int32 get_TwoDigitYearMax();
System.Void set_TwoDigitYearMax(System.Int32);
System.Int32 ToFourDigitYear(System.Int32);
}
class TaiwanLunisolarCalendar : System.Globalization.EastAsianLunisolarCalendar{
this ();
System.DateTime get_MinSupportedDateTime();
System.DateTime get_MaxSupportedDateTime();
System.Int32 GetEra(System.DateTime);
System.Int32[] get_Eras();
}
class IdnMapping : System.__object{
this ();
System.Boolean get_AllowUnassigned();
System.Void set_AllowUnassigned(System.Boolean);
System.Boolean get_UseStd3AsciiRules();
System.Void set_UseStd3AsciiRules(System.Boolean);
System.String GetAscii(System.String);
System.String GetAscii(System.String,System.Int32);
System.String GetAscii(System.String,System.Int32,System.Int32);
System.String GetUnicode(System.String);
System.String GetUnicode(System.String,System.Int32);
System.String GetUnicode(System.String,System.Int32,System.Int32);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
}
class JapaneseCalendar : System.Globalization.Calendar{
this ();
System.DateTime get_MinSupportedDateTime();
System.DateTime get_MaxSupportedDateTime();
System.Globalization.CalendarAlgorithmType get_AlgorithmType();
System.DateTime AddMonths(System.DateTime,System.Int32);
System.DateTime AddYears(System.DateTime,System.Int32);
System.Int32 GetDaysInMonth(System.Int32,System.Int32,System.Int32);
System.Int32 GetDaysInYear(System.Int32,System.Int32);
System.Int32 GetDayOfMonth(System.DateTime);
System.DayOfWeek GetDayOfWeek(System.DateTime);
System.Int32 GetDayOfYear(System.DateTime);
System.Int32 GetMonthsInYear(System.Int32,System.Int32);
System.Int32 GetWeekOfYear(System.DateTime,System.Globalization.CalendarWeekRule,System.DayOfWeek);
System.Int32 GetEra(System.DateTime);
System.Int32 GetMonth(System.DateTime);
System.Int32 GetYear(System.DateTime);
System.Boolean IsLeapDay(System.Int32,System.Int32,System.Int32,System.Int32);
System.Boolean IsLeapYear(System.Int32,System.Int32);
System.Int32 GetLeapMonth(System.Int32,System.Int32);
System.Boolean IsLeapMonth(System.Int32,System.Int32,System.Int32);
System.DateTime ToDateTime(System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32);
System.Int32 ToFourDigitYear(System.Int32);
System.Int32[] get_Eras();
System.Int32 get_TwoDigitYearMax();
System.Void set_TwoDigitYearMax(System.Int32);
}
class KoreanCalendar : System.Globalization.Calendar{
this ();
System.DateTime get_MinSupportedDateTime();
System.DateTime get_MaxSupportedDateTime();
System.Globalization.CalendarAlgorithmType get_AlgorithmType();
System.DateTime AddMonths(System.DateTime,System.Int32);
System.DateTime AddYears(System.DateTime,System.Int32);
System.Int32 GetDaysInMonth(System.Int32,System.Int32,System.Int32);
System.Int32 GetDaysInYear(System.Int32,System.Int32);
System.Int32 GetDayOfMonth(System.DateTime);
System.DayOfWeek GetDayOfWeek(System.DateTime);
System.Int32 GetDayOfYear(System.DateTime);
System.Int32 GetMonthsInYear(System.Int32,System.Int32);
System.Int32 GetWeekOfYear(System.DateTime,System.Globalization.CalendarWeekRule,System.DayOfWeek);
System.Int32 GetEra(System.DateTime);
System.Int32 GetMonth(System.DateTime);
System.Int32 GetYear(System.DateTime);
System.Boolean IsLeapDay(System.Int32,System.Int32,System.Int32,System.Int32);
System.Boolean IsLeapYear(System.Int32,System.Int32);
System.Int32 GetLeapMonth(System.Int32,System.Int32);
System.Boolean IsLeapMonth(System.Int32,System.Int32,System.Int32);
System.DateTime ToDateTime(System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32);
System.Int32[] get_Eras();
System.Int32 get_TwoDigitYearMax();
System.Void set_TwoDigitYearMax(System.Int32);
System.Int32 ToFourDigitYear(System.Int32);
}
class RegionInfo : System.__object{
this (System.String);
this (System.Int32);
static System.Globalization.RegionInfo get_CurrentRegion();
System.String get_Name();
System.String get_EnglishName();
System.String get_DisplayName();
System.String get_NativeName();
System.String get_TwoLetterISORegionName();
System.String get_ThreeLetterISORegionName();
System.String get_ThreeLetterWindowsRegionName();
System.Boolean get_IsMetric();
System.Int32 get_GeoId();
System.String get_CurrencyEnglishName();
System.String get_CurrencyNativeName();
System.String get_CurrencySymbol();
System.String get_ISOCurrencySymbol();
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.String ToString();
}
class SortKey : System.__object{
System.String get_OriginalString();
System.Byte[] get_KeyData();
static System.Int32 Compare(System.Globalization.SortKey,System.Globalization.SortKey);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.String ToString();
}
class StringInfo : System.__object{
this ();
this (System.String);
static System.String GetNextTextElement(System.String,System.Int32);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.String get_String();
System.Void set_String(System.String);
System.Int32 get_LengthInTextElements();
System.String SubstringByTextElements(System.Int32);
System.String SubstringByTextElements(System.Int32,System.Int32);
static System.String GetNextTextElement(System.String);
static System.Globalization.TextElementEnumerator GetTextElementEnumerator(System.String);
static System.Globalization.TextElementEnumerator GetTextElementEnumerator(System.String,System.Int32);
static System.Int32[] ParseCombiningCharacters(System.String);
}
class TaiwanCalendar : System.Globalization.Calendar{
this ();
System.DateTime get_MinSupportedDateTime();
System.DateTime get_MaxSupportedDateTime();
System.Globalization.CalendarAlgorithmType get_AlgorithmType();
System.DateTime AddMonths(System.DateTime,System.Int32);
System.DateTime AddYears(System.DateTime,System.Int32);
System.Int32 GetDaysInMonth(System.Int32,System.Int32,System.Int32);
System.Int32 GetDaysInYear(System.Int32,System.Int32);
System.Int32 GetDayOfMonth(System.DateTime);
System.DayOfWeek GetDayOfWeek(System.DateTime);
System.Int32 GetDayOfYear(System.DateTime);
System.Int32 GetMonthsInYear(System.Int32,System.Int32);
System.Int32 GetWeekOfYear(System.DateTime,System.Globalization.CalendarWeekRule,System.DayOfWeek);
System.Int32 GetEra(System.DateTime);
System.Int32 GetMonth(System.DateTime);
System.Int32 GetYear(System.DateTime);
System.Boolean IsLeapDay(System.Int32,System.Int32,System.Int32,System.Int32);
System.Boolean IsLeapYear(System.Int32,System.Int32);
System.Int32 GetLeapMonth(System.Int32,System.Int32);
System.Boolean IsLeapMonth(System.Int32,System.Int32,System.Int32);
System.DateTime ToDateTime(System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32);
System.Int32[] get_Eras();
System.Int32 get_TwoDigitYearMax();
System.Void set_TwoDigitYearMax(System.Int32);
System.Int32 ToFourDigitYear(System.Int32);
}
class TextElementEnumerator : System.__object{
System.Boolean MoveNext();
System.__object get_Current();
System.String GetTextElement();
System.Int32 get_ElementIndex();
System.Void Reset();
}
class TextInfo : System.__object{
System.Int32 get_ANSICodePage();
System.Int32 get_OEMCodePage();
System.Int32 get_MacCodePage();
System.Int32 get_EBCDICCodePage();
System.Int32 get_LCID();
System.String get_CultureName();
System.Boolean get_IsReadOnly();
System.__object Clone();
static System.Globalization.TextInfo ReadOnly(System.Globalization.TextInfo);
System.String get_ListSeparator();
System.Void set_ListSeparator(System.String);
System.Char ToLower(System.Char);
System.String ToLower(System.String);
System.Char ToUpper(System.Char);
System.String ToUpper(System.String);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.String ToString();
System.String ToTitleCase(System.String);
System.Boolean get_IsRightToLeft();
}
class ThaiBuddhistCalendar : System.Globalization.Calendar{
this ();
System.DateTime get_MinSupportedDateTime();
System.DateTime get_MaxSupportedDateTime();
System.Globalization.CalendarAlgorithmType get_AlgorithmType();
System.DateTime AddMonths(System.DateTime,System.Int32);
System.DateTime AddYears(System.DateTime,System.Int32);
System.Int32 GetDaysInMonth(System.Int32,System.Int32,System.Int32);
System.Int32 GetDaysInYear(System.Int32,System.Int32);
System.Int32 GetDayOfMonth(System.DateTime);
System.DayOfWeek GetDayOfWeek(System.DateTime);
System.Int32 GetDayOfYear(System.DateTime);
System.Int32 GetMonthsInYear(System.Int32,System.Int32);
System.Int32 GetWeekOfYear(System.DateTime,System.Globalization.CalendarWeekRule,System.DayOfWeek);
System.Int32 GetEra(System.DateTime);
System.Int32 GetMonth(System.DateTime);
System.Int32 GetYear(System.DateTime);
System.Boolean IsLeapDay(System.Int32,System.Int32,System.Int32,System.Int32);
System.Boolean IsLeapYear(System.Int32,System.Int32);
System.Int32 GetLeapMonth(System.Int32,System.Int32);
System.Boolean IsLeapMonth(System.Int32,System.Int32,System.Int32);
System.DateTime ToDateTime(System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32,System.Int32);
System.Int32[] get_Eras();
System.Int32 get_TwoDigitYearMax();
System.Void set_TwoDigitYearMax(System.Int32);
System.Int32 ToFourDigitYear(System.Int32);
}
class TimeSpanStyles : System.Enum{
Int32 value__;
}
class NumberFormatInfo : System.__object{
this ();
static System.Globalization.NumberFormatInfo get_InvariantInfo();
static System.Globalization.NumberFormatInfo GetInstance(System.IFormatProvider);
System.__object Clone();
System.Int32 get_CurrencyDecimalDigits();
System.Void set_CurrencyDecimalDigits(System.Int32);
System.String get_CurrencyDecimalSeparator();
System.Void set_CurrencyDecimalSeparator(System.String);
System.Boolean get_IsReadOnly();
System.Int32[] get_CurrencyGroupSizes();
System.Void set_CurrencyGroupSizes(System.Int32[]);
System.Int32[] get_NumberGroupSizes();
System.Void set_NumberGroupSizes(System.Int32[]);
System.Int32[] get_PercentGroupSizes();
System.Void set_PercentGroupSizes(System.Int32[]);
System.String get_CurrencyGroupSeparator();
System.Void set_CurrencyGroupSeparator(System.String);
System.String get_CurrencySymbol();
System.Void set_CurrencySymbol(System.String);
static System.Globalization.NumberFormatInfo get_CurrentInfo();
System.String get_NaNSymbol();
System.Void set_NaNSymbol(System.String);
System.Int32 get_CurrencyNegativePattern();
System.Void set_CurrencyNegativePattern(System.Int32);
System.Int32 get_NumberNegativePattern();
System.Void set_NumberNegativePattern(System.Int32);
System.Int32 get_PercentPositivePattern();
System.Void set_PercentPositivePattern(System.Int32);
System.Int32 get_PercentNegativePattern();
System.Void set_PercentNegativePattern(System.Int32);
System.String get_NegativeInfinitySymbol();
System.Void set_NegativeInfinitySymbol(System.String);
System.String get_NegativeSign();
System.Void set_NegativeSign(System.String);
System.Int32 get_NumberDecimalDigits();
System.Void set_NumberDecimalDigits(System.Int32);
System.String get_NumberDecimalSeparator();
System.Void set_NumberDecimalSeparator(System.String);
System.String get_NumberGroupSeparator();
System.Void set_NumberGroupSeparator(System.String);
System.Int32 get_CurrencyPositivePattern();
System.Void set_CurrencyPositivePattern(System.Int32);
System.String get_PositiveInfinitySymbol();
System.Void set_PositiveInfinitySymbol(System.String);
System.String get_PositiveSign();
System.Void set_PositiveSign(System.String);
System.Int32 get_PercentDecimalDigits();
System.Void set_PercentDecimalDigits(System.Int32);
System.String get_PercentDecimalSeparator();
System.Void set_PercentDecimalSeparator(System.String);
System.String get_PercentGroupSeparator();
System.Void set_PercentGroupSeparator(System.String);
System.String get_PercentSymbol();
System.Void set_PercentSymbol(System.String);
System.String get_PerMilleSymbol();
System.Void set_PerMilleSymbol(System.String);
System.String[] get_NativeDigits();
System.Void set_NativeDigits(System.String[]);
System.Globalization.DigitShapes get_DigitSubstitution();
System.Void set_DigitSubstitution(System.Globalization.DigitShapes);
System.__object GetFormat(System.Type);
static System.Globalization.NumberFormatInfo ReadOnly(System.Globalization.NumberFormatInfo);
}
class NumberStyles : System.Enum{
Int32 value__;
}
class UnicodeCategory : System.Enum{
Int32 value__;
}
class SortVersion : System.__object{
this (System.Int32,System.Guid);
System.Int32 get_FullVersion();
System.Guid get_SortId();
System.Boolean Equals(System.__object);
System.Boolean Equals(System.Globalization.SortVersion);
System.Int32 GetHashCode();
static System.Boolean op_Equality(System.Globalization.SortVersion,System.Globalization.SortVersion);
static System.Boolean op_Inequality(System.Globalization.SortVersion,System.Globalization.SortVersion);
}
}
