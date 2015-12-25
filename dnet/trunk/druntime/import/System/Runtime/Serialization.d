module System.Runtime.Serialization;
import System;
import System.Runtime.Serialization.Formatters;
import System.Reflection;
import System.IO;
import System.Collections;
public:
pragma(assembly,"mscorlib"){
class FormatterConverter : Object{
}
class FormatterServices : Object{
}
interface IDeserializationCallback{
}
interface IFormatter{
}
interface IFormatterConverter{
}
interface IObjectReference{
}
interface ISerializable{
}
interface ISerializationSurrogate{
}
interface ISurrogateSelector{
}
class OptionalFieldAttribute : Attribute{
}
class OnSerializingAttribute : Attribute{
}
class OnSerializedAttribute : Attribute{
}
class OnDeserializingAttribute : Attribute{
}
class OnDeserializedAttribute : Attribute{
}
class SerializationBinder : Object{
}
class SerializationException : SystemException{
}
class SerializationInfo : Object{
}
class SerializationEntry : ValueType{
}
class SerializationInfoEnumerator : Object{
}
class StreamingContext : ValueType{
}
class StreamingContextStates : Enum{
}
class Formatter : Object{
}
class ObjectIDGenerator : Object{
}
class ObjectManager : Object{
}
class SafeSerializationEventArgs : EventArgs{
}
interface ISafeSerializationData{
}
class SerializationObjectManager : Object{
}
class SurrogateSelector : Object{
}
}
