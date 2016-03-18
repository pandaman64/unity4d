module System.Runtime.Serialization;
import System;
import System.Runtime.Serialization.Formatters;
import System.Reflection;
import System.IO;
import System.Collections;
public:
pragma(assembly,"mscorlib"){
class FormatterConverter : System.__object{
this ();
System.__object Convert(System.__object,System.Type);
System.__object Convert(System.__object,System.TypeCode);
System.Boolean ToBoolean(System.__object);
System.Char ToChar(System.__object);
System.SByte ToSByte(System.__object);
System.Byte ToByte(System.__object);
System.Int16 ToInt16(System.__object);
System.UInt16 ToUInt16(System.__object);
System.Int32 ToInt32(System.__object);
System.UInt32 ToUInt32(System.__object);
System.Int64 ToInt64(System.__object);
System.UInt64 ToUInt64(System.__object);
System.Single ToSingle(System.__object);
System.Double ToDouble(System.__object);
System.Decimal ToDecimal(System.__object);
System.DateTime ToDateTime(System.__object);
System.String ToString(System.__object);
}
class FormatterServices : System.__object{
static System.Reflection.MemberInfo[] GetSerializableMembers(System.Type);
static System.Reflection.MemberInfo[] GetSerializableMembers(System.Type,System.Runtime.Serialization.StreamingContext);
static System.Void CheckTypeSecurity(System.Type,System.Runtime.Serialization.Formatters.TypeFilterLevel);
static System.__object GetUninitializedObject(System.Type);
static System.__object GetSafeUninitializedObject(System.Type);
static System.__object PopulateObjectMembers(System.__object,System.Reflection.MemberInfo[],System.__object[]);
static System.__object[] GetObjectData(System.__object,System.Reflection.MemberInfo[]);
static System.Runtime.Serialization.ISerializationSurrogate GetSurrogateForCyclicalReference(System.Runtime.Serialization.ISerializationSurrogate);
static System.Type GetTypeFromAssembly(System.Reflection.Assembly,System.String);
}
interface IDeserializationCallback{
System.Void OnDeserialization(System.__object);
}
interface IFormatter{
System.__object Deserialize(System.IO.Stream);
System.Void Serialize(System.IO.Stream,System.__object);
System.Runtime.Serialization.ISurrogateSelector get_SurrogateSelector();
System.Void set_SurrogateSelector(System.Runtime.Serialization.ISurrogateSelector);
System.Runtime.Serialization.SerializationBinder get_Binder();
System.Void set_Binder(System.Runtime.Serialization.SerializationBinder);
System.Runtime.Serialization.StreamingContext get_Context();
System.Void set_Context(System.Runtime.Serialization.StreamingContext);
}
interface IFormatterConverter{
System.__object Convert(System.__object,System.Type);
System.__object Convert(System.__object,System.TypeCode);
System.Boolean ToBoolean(System.__object);
System.Char ToChar(System.__object);
System.SByte ToSByte(System.__object);
System.Byte ToByte(System.__object);
System.Int16 ToInt16(System.__object);
System.UInt16 ToUInt16(System.__object);
System.Int32 ToInt32(System.__object);
System.UInt32 ToUInt32(System.__object);
System.Int64 ToInt64(System.__object);
System.UInt64 ToUInt64(System.__object);
System.Single ToSingle(System.__object);
System.Double ToDouble(System.__object);
System.Decimal ToDecimal(System.__object);
System.DateTime ToDateTime(System.__object);
System.String ToString(System.__object);
}
interface IObjectReference{
System.__object GetRealObject(System.Runtime.Serialization.StreamingContext);
}
interface ISerializable{
System.Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
}
interface ISerializationSurrogate{
System.Void GetObjectData(System.__object,System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
System.__object SetObjectData(System.__object,System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext,System.Runtime.Serialization.ISurrogateSelector);
}
interface ISurrogateSelector{
System.Void ChainSelector(System.Runtime.Serialization.ISurrogateSelector);
System.Runtime.Serialization.ISurrogateSelector GetNextSelector();
}
class OptionalFieldAttribute : System.Attribute{
this ();
System.Int32 get_VersionAdded();
System.Void set_VersionAdded(System.Int32);
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
class SerializationBinder : System.__object{
System.Type BindToType(System.String,System.String);
}
class SerializationInfo : System.__object{
this (System.Type,System.Runtime.Serialization.IFormatterConverter);
this (System.Type,System.Runtime.Serialization.IFormatterConverter,System.Boolean);
System.String get_FullTypeName();
System.Void set_FullTypeName(System.String);
System.String get_AssemblyName();
System.Void set_AssemblyName(System.String);
System.Void SetType(System.Type);
System.Int32 get_MemberCount();
System.Type get_ObjectType();
System.Boolean get_IsFullTypeNameSetExplicit();
System.Boolean get_IsAssemblyNameSetExplicit();
System.Runtime.Serialization.SerializationInfoEnumerator GetEnumerator();
System.Void AddValue(System.String,System.__object,System.Type);
System.Void AddValue(System.String,System.__object);
System.Void AddValue(System.String,System.Boolean);
System.Void AddValue(System.String,System.Char);
System.Void AddValue(System.String,System.SByte);
System.Void AddValue(System.String,System.Byte);
System.Void AddValue(System.String,System.Int16);
System.Void AddValue(System.String,System.UInt16);
System.Void AddValue(System.String,System.Int32);
System.Void AddValue(System.String,System.UInt32);
System.Void AddValue(System.String,System.Int64);
System.Void AddValue(System.String,System.UInt64);
System.Void AddValue(System.String,System.Single);
System.Void AddValue(System.String,System.Double);
System.Void AddValue(System.String,System.Decimal);
System.Void AddValue(System.String,System.DateTime);
System.__object GetValue(System.String,System.Type);
System.Boolean GetBoolean(System.String);
System.Char GetChar(System.String);
System.SByte GetSByte(System.String);
System.Byte GetByte(System.String);
System.Int16 GetInt16(System.String);
System.UInt16 GetUInt16(System.String);
System.Int32 GetInt32(System.String);
System.UInt32 GetUInt32(System.String);
System.Int64 GetInt64(System.String);
System.UInt64 GetUInt64(System.String);
System.Single GetSingle(System.String);
System.Double GetDouble(System.String);
System.Decimal GetDecimal(System.String);
System.DateTime GetDateTime(System.String);
System.String GetString(System.String);
}
class SerializationEntry : System.ValueType{
System.__object get_Value();
System.String get_Name();
System.Type get_ObjectType();
}
class SerializationInfoEnumerator : System.__object{
System.Boolean MoveNext();
System.String get_Name();
System.__object get_Value();
System.Runtime.Serialization.SerializationEntry get_Current();
System.Void Reset();
System.Type get_ObjectType();
}
class StreamingContext : System.ValueType{
this (System.Runtime.Serialization.StreamingContextStates);
this (System.Runtime.Serialization.StreamingContextStates,System.__object);
System.__object get_Context();
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.Runtime.Serialization.StreamingContextStates get_State();
}
class StreamingContextStates : System.Enum{
Int32 value__;
}
class Formatter : System.__object{
System.__object Deserialize(System.IO.Stream);
System.Void Serialize(System.IO.Stream,System.__object);
System.Runtime.Serialization.ISurrogateSelector get_SurrogateSelector();
System.Void set_SurrogateSelector(System.Runtime.Serialization.ISurrogateSelector);
System.Runtime.Serialization.SerializationBinder get_Binder();
System.Void set_Binder(System.Runtime.Serialization.SerializationBinder);
System.Runtime.Serialization.StreamingContext get_Context();
System.Void set_Context(System.Runtime.Serialization.StreamingContext);
}
class ObjectIDGenerator : System.__object{
this ();
}
class ObjectManager : System.__object{
this (System.Runtime.Serialization.ISurrogateSelector,System.Runtime.Serialization.StreamingContext);
System.Void RecordFixup(System.Int64,System.Reflection.MemberInfo,System.Int64);
System.Void RecordDelayedFixup(System.Int64,System.String,System.Int64);
System.Void RecordArrayElementFixup(System.Int64,System.Int32[],System.Int64);
System.__object GetObject(System.Int64);
System.Void RegisterObject(System.__object,System.Int64);
System.Void RegisterObject(System.__object,System.Int64,System.Runtime.Serialization.SerializationInfo);
System.Void RegisterObject(System.__object,System.Int64,System.Runtime.Serialization.SerializationInfo,System.Int64,System.Reflection.MemberInfo);
System.Void RegisterObject(System.__object,System.Int64,System.Runtime.Serialization.SerializationInfo,System.Int64,System.Reflection.MemberInfo,System.Int32[]);
System.Void DoFixups();
System.Void RecordArrayElementFixup(System.Int64,System.Int32,System.Int64);
System.Void RaiseDeserializationEvent();
System.Void RaiseOnDeserializingEvent(System.__object);
}
class SafeSerializationEventArgs : System.EventArgs{
System.Void AddSerializedState(System.Runtime.Serialization.ISafeSerializationData);
System.Runtime.Serialization.StreamingContext get_StreamingContext();
}
interface ISafeSerializationData{
System.Void CompleteDeserialization(System.__object);
}
class SerializationObjectManager : System.__object{
this (System.Runtime.Serialization.StreamingContext);
System.Void RegisterObject(System.__object);
System.Void RaiseOnSerializedEvent();
}
class SurrogateSelector : System.__object{
this ();
System.Void AddSurrogate(System.Type,System.Runtime.Serialization.StreamingContext,System.Runtime.Serialization.ISerializationSurrogate);
System.Void ChainSelector(System.Runtime.Serialization.ISurrogateSelector);
System.Runtime.Serialization.ISurrogateSelector GetNextSelector();
System.Void RemoveSurrogate(System.Type,System.Runtime.Serialization.StreamingContext);
}
}
