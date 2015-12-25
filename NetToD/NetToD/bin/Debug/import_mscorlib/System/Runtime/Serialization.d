module System.Runtime.Serialization;
import System;
import System.Runtime.Serialization.Formatters;
import System.Reflection;
import System.IO;
import System.Collections;
public:
pragma(assembly,"mscorlib"){
class FormatterConverter : System.Object{
this ();
Object Convert(System.Object,System.Type);
Object Convert(System.Object,System.TypeCode);
Boolean ToBoolean(System.Object);
Char ToChar(System.Object);
SByte ToSByte(System.Object);
Byte ToByte(System.Object);
Int16 ToInt16(System.Object);
UInt16 ToUInt16(System.Object);
Int32 ToInt32(System.Object);
UInt32 ToUInt32(System.Object);
Int64 ToInt64(System.Object);
UInt64 ToUInt64(System.Object);
Single ToSingle(System.Object);
Double ToDouble(System.Object);
Decimal ToDecimal(System.Object);
DateTime ToDateTime(System.Object);
String ToString(System.Object);
}
class FormatterServices : System.Object{
static MemberInfo[] GetSerializableMembers(System.Type);
static MemberInfo[] GetSerializableMembers(System.Type,System.Runtime.Serialization.StreamingContext);
static Void CheckTypeSecurity(System.Type,System.Runtime.Serialization.Formatters.TypeFilterLevel);
static Object GetUninitializedObject(System.Type);
static Object GetSafeUninitializedObject(System.Type);
static Object PopulateObjectMembers(System.Object,System.Reflection.MemberInfo[],System.Object[]);
static Object[] GetObjectData(System.Object,System.Reflection.MemberInfo[]);
static ISerializationSurrogate GetSurrogateForCyclicalReference(System.Runtime.Serialization.ISerializationSurrogate);
static Type GetTypeFromAssembly(System.Reflection.Assembly,System.String);
}
interface IDeserializationCallback{
Void OnDeserialization(System.Object);
}
interface IFormatter{
Object Deserialize(System.IO.Stream);
Void Serialize(System.IO.Stream,System.Object);
ISurrogateSelector get_SurrogateSelector();
Void set_SurrogateSelector(System.Runtime.Serialization.ISurrogateSelector);
SerializationBinder get_Binder();
Void set_Binder(System.Runtime.Serialization.SerializationBinder);
StreamingContext get_Context();
Void set_Context(System.Runtime.Serialization.StreamingContext);
}
interface IFormatterConverter{
Object Convert(System.Object,System.Type);
Object Convert(System.Object,System.TypeCode);
Boolean ToBoolean(System.Object);
Char ToChar(System.Object);
SByte ToSByte(System.Object);
Byte ToByte(System.Object);
Int16 ToInt16(System.Object);
UInt16 ToUInt16(System.Object);
Int32 ToInt32(System.Object);
UInt32 ToUInt32(System.Object);
Int64 ToInt64(System.Object);
UInt64 ToUInt64(System.Object);
Single ToSingle(System.Object);
Double ToDouble(System.Object);
Decimal ToDecimal(System.Object);
DateTime ToDateTime(System.Object);
String ToString(System.Object);
}
interface IObjectReference{
Object GetRealObject(System.Runtime.Serialization.StreamingContext);
}
interface ISerializable{
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
}
interface ISerializationSurrogate{
Void GetObjectData(System.Object,System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
Object SetObjectData(System.Object,System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext,System.Runtime.Serialization.ISurrogateSelector);
}
interface ISurrogateSelector{
Void ChainSelector(System.Runtime.Serialization.ISurrogateSelector);
ISurrogateSelector GetNextSelector();
}
class OptionalFieldAttribute : System.Attribute{
this ();
Int32 get_VersionAdded();
Void set_VersionAdded(System.Int32);
}
class OnSerializingAttribute : System.Attribute{
this ();
}
class OnSerializedAttribute : System.Attribute{
this ();
}
class OnDeserializingAttribute : System.Attribute{
this ();
}
class OnDeserializedAttribute : System.Attribute{
this ();
}
class SerializationBinder : System.Object{
Type BindToType(System.String,System.String);
}
class SerializationException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class SerializationInfo : System.Object{
this (System.Type,System.Runtime.Serialization.IFormatterConverter);
this (System.Type,System.Runtime.Serialization.IFormatterConverter,System.Boolean);
String get_FullTypeName();
Void set_FullTypeName(System.String);
String get_AssemblyName();
Void set_AssemblyName(System.String);
Void SetType(System.Type);
Int32 get_MemberCount();
Type get_ObjectType();
Boolean get_IsFullTypeNameSetExplicit();
Boolean get_IsAssemblyNameSetExplicit();
SerializationInfoEnumerator GetEnumerator();
Void AddValue(System.String,System.Object,System.Type);
Void AddValue(System.String,System.Object);
Void AddValue(System.String,System.Boolean);
Void AddValue(System.String,System.Char);
Void AddValue(System.String,System.SByte);
Void AddValue(System.String,System.Byte);
Void AddValue(System.String,System.Int16);
Void AddValue(System.String,System.UInt16);
Void AddValue(System.String,System.Int32);
Void AddValue(System.String,System.UInt32);
Void AddValue(System.String,System.Int64);
Void AddValue(System.String,System.UInt64);
Void AddValue(System.String,System.Single);
Void AddValue(System.String,System.Double);
Void AddValue(System.String,System.Decimal);
Void AddValue(System.String,System.DateTime);
Object GetValue(System.String,System.Type);
Boolean GetBoolean(System.String);
Char GetChar(System.String);
SByte GetSByte(System.String);
Byte GetByte(System.String);
Int16 GetInt16(System.String);
UInt16 GetUInt16(System.String);
Int32 GetInt32(System.String);
UInt32 GetUInt32(System.String);
Int64 GetInt64(System.String);
UInt64 GetUInt64(System.String);
Single GetSingle(System.String);
Double GetDouble(System.String);
Decimal GetDecimal(System.String);
DateTime GetDateTime(System.String);
String GetString(System.String);
}
class SerializationEntry : System.ValueType{
Object get_Value();
String get_Name();
Type get_ObjectType();
}
class SerializationInfoEnumerator : System.Object{
Boolean MoveNext();
String get_Name();
Object get_Value();
SerializationEntry get_Current();
Void Reset();
Type get_ObjectType();
}
class StreamingContext : System.ValueType{
this (System.Runtime.Serialization.StreamingContextStates);
this (System.Runtime.Serialization.StreamingContextStates,System.Object);
Object get_Context();
Boolean Equals(System.Object);
Int32 GetHashCode();
StreamingContextStates get_State();
}
class StreamingContextStates : System.Enum{
}
class Formatter : System.Object{
Object Deserialize(System.IO.Stream);
Void Serialize(System.IO.Stream,System.Object);
ISurrogateSelector get_SurrogateSelector();
Void set_SurrogateSelector(System.Runtime.Serialization.ISurrogateSelector);
SerializationBinder get_Binder();
Void set_Binder(System.Runtime.Serialization.SerializationBinder);
StreamingContext get_Context();
Void set_Context(System.Runtime.Serialization.StreamingContext);
}
class ObjectIDGenerator : System.Object{
this ();
}
class ObjectManager : System.Object{
this (System.Runtime.Serialization.ISurrogateSelector,System.Runtime.Serialization.StreamingContext);
Void RecordFixup(System.Int64,System.Reflection.MemberInfo,System.Int64);
Void RecordDelayedFixup(System.Int64,System.String,System.Int64);
Void RecordArrayElementFixup(System.Int64,System.Int32[],System.Int64);
Object GetObject(System.Int64);
Void RegisterObject(System.Object,System.Int64);
Void RegisterObject(System.Object,System.Int64,System.Runtime.Serialization.SerializationInfo);
Void RegisterObject(System.Object,System.Int64,System.Runtime.Serialization.SerializationInfo,System.Int64,System.Reflection.MemberInfo);
Void RegisterObject(System.Object,System.Int64,System.Runtime.Serialization.SerializationInfo,System.Int64,System.Reflection.MemberInfo,System.Int32[]);
Void DoFixups();
Void RecordArrayElementFixup(System.Int64,System.Int32,System.Int64);
Void RaiseDeserializationEvent();
Void RaiseOnDeserializingEvent(System.Object);
}
class SafeSerializationEventArgs : System.EventArgs{
Void AddSerializedState(System.Runtime.Serialization.ISafeSerializationData);
StreamingContext get_StreamingContext();
}
interface ISafeSerializationData{
Void CompleteDeserialization(System.Object);
}
class SerializationObjectManager : System.Object{
this (System.Runtime.Serialization.StreamingContext);
Void RegisterObject(System.Object);
Void RaiseOnSerializedEvent();
}
class SurrogateSelector : System.Object{
this ();
Void AddSurrogate(System.Type,System.Runtime.Serialization.StreamingContext,System.Runtime.Serialization.ISerializationSurrogate);
Void ChainSelector(System.Runtime.Serialization.ISurrogateSelector);
ISurrogateSelector GetNextSelector();
Void RemoveSurrogate(System.Type,System.Runtime.Serialization.StreamingContext);
}
}
