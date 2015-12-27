//
// Copyright (c) 2008, 2009 Cristian L. Vlasceanu
//
// This file is by no means complete: it is just to boostrap the compiler.
// Eventually all import files for mscorlib and other assemblies will be
// generated automatically.
//

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

pragma (assembly, "mscorlib"){

public class __object{}

alias void Void;
/*
alias short Int16;
alias int Int32;
alias ushort UInt16;
alias uint UInt32;
alias long Int64;
alias ulong UInt64;
alias float Single;
alias double Double;
//alias void Void;
alias byte SByte;
alias ubyte Byte;
alias bool Boolean;
alias wchar Char;
public class ValueType;
public class Enum;
public struct IntPtr;
*/

public class String : __object
{
public:
    this(wchar[]);
    this(wchar, int);
    int get_Length();

    static int Compare(String, String);
    static int Compare(String, String, bool ignoreCase);
}


/*public class Console
{
    static public void WriteLine();
    static public void WriteLine(Object);
    static public void WriteLine(String);
    static public void WriteLine(String, ...);
    //static public void WriteLine(String, Object);
    static public void WriteLine(wstring);

    //static public void WriteLine(char);
    static public void WriteLine(bool);
    static public void WriteLine(int);
    static public void WriteLine(uint);
    static public void WriteLine(long);
    static public void WriteLine(float);
    static public void WriteLine(double);

    //static public void Write(char);
    static public void Write(String);
    static public void Write(String, ...);

    static public void Write(bool);
    static public void Write(int);
    static public void Write(long);
    static public void Write(float);
    static public void Write(double);
    static public void Write(wstring);
}


public class GC
{
    static public void Collect();
    static public void WaitForPendingFinalizers();
}
*/

public class Reflection
{
    public enum MemberTypes
    {
        Constructor = 0x01,
        Event = 0x02,
        Field = 0x04,
        Method = 0x08,
        Property = 0x10,
        TypeInfo = 0x20,
        Custom = 0x40,
        NestedType,
        All
    }

    public enum MethodAttributes
    {
        MemberAccessMask,
        PrivateScope,
        Private,
        FamANDAssem,
        Assembly,
        Family,
        FamORAssem,
        Public,
        Static,
        Final,
        Virtual,
        HideBySig,
        CheckAccessOnOverride,
        VtableLayoutMask,
        ReuseSlot,
        NewSlot,
        Abstract,
        SpecialName,
        PinvokeImpl,
        UnmanagedExport,
        RTSpecialName,
        ReservedMask,
        HasSecurity,
        RequireSecObject
    }


    public class Assembly
    {
    public:
        static Assembly LoadFile(String);
        static Assembly LoadFrom(String);

        Type[] GetExportedTypes();
        Type[] GetTypes();

        Module[] GetModules(bool resourceModules);
        Module[] GetModules();
    }


    public class Module
    {
    public:
        String ToString();
    }


    public abstract class MemberInfo
    {
    public:
        String ToString();
        String get_Name();
        MemberTypes get_MemberType();
    }


    public class MethodBase : MemberInfo
    {
    }


    public class MethodInfo : MethodBase
    {
    public:
        MethodAttributes get_Attributes();
        bool get_IsPublic();
        Type get_ReturnType();
        Reflection.ParameterInfo get_ReturnParameter();
        Reflection.ParameterInfo[] GetParameters();
    }


    public class ParameterInfo
    {
    public:
        Type GetType();
        String ToString();
        String get_Name();
        Type get_ParameterType();
    }
}

/*
public class Type
{
public:
    String ToString();
    String get_Name();
    String get_Namespace();
    Reflection.MemberInfo[] GetMembers();
    Reflection.MethodInfo[] GetMethods();
    Type[] GetInterfaces();
}
*/
} // pragma (assembly)

//auto-generated
pragma(assembly,"mscorlib"){
class AggregateException : Exception{
}
class AppContext : Object{
}
//Conflict with D.NET's
/*
class Object{
}
*/
interface ICloneable{
}
class Action : MulticastDelegate{
}
class Array : Object{
}
interface IComparable{
}
class Tuple : Object{
}
//Conflict with D.NET's
/*class String : Object{
}*/
class StringSplitOptions : Enum{
}
class StringComparer : Object{
}
class StringComparison : Enum{
}
//Conflict with D.NET's
/*
class Exception : Object{
}
*/
class DateTime : ValueType{
}
class DateTimeKind : Enum{
}
class DateTimeOffset : ValueType{
}
class SystemException : Exception{
}
class OutOfMemoryException : SystemException{
}
class StackOverflowException : SystemException{
}
class DataMisalignedException : SystemException{
}
class ExecutionEngineException : SystemException{
}
class Delegate : Object{
}
class MulticastDelegate : Delegate{
}
class MemberAccessException : SystemException{
}
class Activator : Object{
}
class AccessViolationException : SystemException{
}
class ApplicationException : Exception{
}
class ResolveEventArgs : EventArgs{
}
class AssemblyLoadEventArgs : EventArgs{
}
class ResolveEventHandler : MulticastDelegate{
}
class AssemblyLoadEventHandler : MulticastDelegate{
}
class AppDomainInitializer : MulticastDelegate{
}
class AppDomain : MarshalByRefObject{
}
class CrossAppDomainDelegate : MulticastDelegate{
}
class AppDomainManagerInitializationOptions : Enum{
}
class AppDomainManager : MarshalByRefObject{
}
interface _AppDomain{
}
class AppDomainSetup : Object{
}
interface IAppDomainSetup{
}
class LoaderOptimization : Enum{
}
class LoaderOptimizationAttribute : Attribute{
}
class AppDomainUnloadedException : SystemException{
}
class ActivationContext : Object{
class ContextForm : Enum{
}
}
class ApplicationIdentity : Object{
}
class ApplicationId : Object{
}
class ArgumentException : SystemException{
}
class ArgumentNullException : ArgumentException{
}
class ArgumentOutOfRangeException : ArgumentException{
}
class ArgIterator : ValueType{
}
class ArithmeticException : SystemException{
}
class ArrayTypeMismatchException : SystemException{
}
class AsyncCallback : MulticastDelegate{
}
class Attribute : Object{
}
class AttributeTargets : Enum{
}
class AttributeUsageAttribute : Attribute{
}
class BadImageFormatException : SystemException{
}
class BitConverter : Object{
}
class Boolean : ValueType{
}
class Buffer : Object{
}
class Byte : ValueType{
}
class CannotUnloadAppDomainException : SystemException{
}
class Char : ValueType{
}
class CharEnumerator : Object{
}
class CLSCompliantAttribute : Attribute{
}
class TypeUnloadedException : SystemException{
}
class Console : Object{
}
class ConsoleCancelEventHandler : MulticastDelegate{
}
class ConsoleCancelEventArgs : EventArgs{
}
class ConsoleColor : Enum{
}
class ConsoleKey : Enum{
}
class ConsoleKeyInfo : ValueType{
}
class ConsoleModifiers : Enum{
}
class ConsoleSpecialKey : Enum{
}
class ContextMarshalException : SystemException{
}
class Base64FormattingOptions : Enum{
}
class Convert : Object{
}
class ContextBoundObject : MarshalByRefObject{
}
class ContextStaticAttribute : Attribute{
}
class DayOfWeek : Enum{
}
class DBNull : Object{
}
class Decimal : ValueType{
}
class DivideByZeroException : ArithmeticException{
}
class Double : ValueType{
}
class DuplicateWaitObjectException : ArgumentException{
}
class Enum : ValueType{
}
class EntryPointNotFoundException : TypeLoadException{
}
class DllNotFoundException : TypeLoadException{
}
class EnvironmentVariableTarget : Enum{
}
class Environment : Object{
class SpecialFolderOption : Enum{
}
class SpecialFolder : Enum{
}
}
class EventArgs : Object{
}
class EventHandler : MulticastDelegate{
}
class FieldAccessException : MemberAccessException{
}
class FlagsAttribute : Attribute{
}
class FormatException : SystemException{
}
class FormattableString : Object{
}
class GCCollectionMode : Enum{
}
class GCNotificationStatus : Enum{
}
class GC : Object{
}
class Guid : ValueType{
}
interface IAsyncResult{
}
interface ICustomFormatter{
}
interface IDisposable{
}
interface IFormatProvider{
}
interface IFormattable{
}
class IndexOutOfRangeException : SystemException{
}
class InsufficientMemoryException : OutOfMemoryException{
}
class InsufficientExecutionStackException : SystemException{
}
class Int16 : ValueType{
}
class Int32 : ValueType{
}
class Int64 : ValueType{
}
class IntPtr : ValueType{
}
class InvalidCastException : SystemException{
}
class InvalidOperationException : SystemException{
}
class InvalidProgramException : SystemException{
}
class InvalidTimeZoneException : Exception{
}
interface IConvertible{
}
interface IServiceProvider{
}
class LocalDataStoreSlot : Object{
}
class MarshalByRefObject : Object{
}
class Math : Object{
}
class MethodAccessException : MemberAccessException{
}
class MidpointRounding : Enum{
}
class MissingFieldException : MissingMemberException{
}
class MissingMemberException : MemberAccessException{
}
class MissingMethodException : MissingMemberException{
}
class MulticastNotSupportedException : SystemException{
}
class NonSerializedAttribute : Attribute{
}
class NotFiniteNumberException : ArithmeticException{
}
class NotImplementedException : SystemException{
}
class NotSupportedException : SystemException{
}
class NullReferenceException : SystemException{
}
class ObjectDisposedException : InvalidOperationException{
}
class ObsoleteAttribute : Attribute{
}
class OperatingSystem : Object{
}
class OperationCanceledException : SystemException{
}
class OverflowException : ArithmeticException{
}
class ParamArrayAttribute : Attribute{
}
class PlatformID : Enum{
}
class PlatformNotSupportedException : NotSupportedException{
}
class Random : Object{
}
class RankException : SystemException{
}
class RuntimeArgumentHandle : ValueType{
}
class RuntimeTypeHandle : ValueType{
}
class RuntimeMethodHandle : ValueType{
}
class RuntimeFieldHandle : ValueType{
}
class ModuleHandle : ValueType{
}
class SByte : ValueType{
}
class SerializableAttribute : Attribute{
}
class Single : ValueType{
}
class STAThreadAttribute : Attribute{
}
class MTAThreadAttribute : Attribute{
}
class TimeoutException : SystemException{
}
class TimeSpan : ValueType{
}
class TimeZone : Object{
}
class TimeZoneInfo : Object{
class AdjustmentRule : Object{
}
class TransitionTime : ValueType{
}
}
class TimeZoneNotFoundException : Exception{
}
class Type : MemberInfo{
}
class TypeAccessException : TypeLoadException{
}
class TypeCode : Enum{
}
class TypedReference : ValueType{
}
class TypeInitializationException : SystemException{
}
class TypeLoadException : SystemException{
}
class UInt16 : ValueType{
}
class UInt32 : ValueType{
}
class UInt64 : ValueType{
}
class UIntPtr : ValueType{
}
class UnauthorizedAccessException : SystemException{
}
class UnhandledExceptionEventArgs : EventArgs{
}
class UnhandledExceptionEventHandler : MulticastDelegate{
}
class ValueType : Object{
}
class Version : Object{
}
class Void : ValueType{
}
class WeakReference : Object{
}
class ThreadStaticAttribute : Attribute{
}
class Nullable : Object{
}
}
