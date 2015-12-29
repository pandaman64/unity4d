module System.Runtime.Serialization.Formatters.Binary;
import System.Runtime.Serialization;
import System.Runtime.Serialization.Formatters;
import System.IO;
import System.Runtime.Remoting.Messaging;
import System;
public:
pragma(assembly,"mscorlib"){
class BinaryFormatter : System.__object{
this ();
this (System.Runtime.Serialization.ISurrogateSelector,System.Runtime.Serialization.StreamingContext);
System.Runtime.Serialization.Formatters.FormatterTypeStyle get_TypeFormat();
System.Void set_TypeFormat(System.Runtime.Serialization.Formatters.FormatterTypeStyle);
System.Runtime.Serialization.Formatters.FormatterAssemblyStyle get_AssemblyFormat();
System.Void set_AssemblyFormat(System.Runtime.Serialization.Formatters.FormatterAssemblyStyle);
System.Runtime.Serialization.Formatters.TypeFilterLevel get_FilterLevel();
System.Void set_FilterLevel(System.Runtime.Serialization.Formatters.TypeFilterLevel);
System.Runtime.Serialization.ISurrogateSelector get_SurrogateSelector();
System.Void set_SurrogateSelector(System.Runtime.Serialization.ISurrogateSelector);
System.Runtime.Serialization.SerializationBinder get_Binder();
System.Void set_Binder(System.Runtime.Serialization.SerializationBinder);
System.Runtime.Serialization.StreamingContext get_Context();
System.Void set_Context(System.Runtime.Serialization.StreamingContext);
System.__object Deserialize(System.IO.Stream);
System.__object Deserialize(System.IO.Stream,System.Runtime.Remoting.Messaging.HeaderHandler);
System.__object DeserializeMethodResponse(System.IO.Stream,System.Runtime.Remoting.Messaging.HeaderHandler,System.Runtime.Remoting.Messaging.IMethodCallMessage);
System.__object UnsafeDeserialize(System.IO.Stream,System.Runtime.Remoting.Messaging.HeaderHandler);
System.__object UnsafeDeserializeMethodResponse(System.IO.Stream,System.Runtime.Remoting.Messaging.HeaderHandler,System.Runtime.Remoting.Messaging.IMethodCallMessage);
System.Void Serialize(System.IO.Stream,System.__object);
System.Void Serialize(System.IO.Stream,System.__object,System.Runtime.Remoting.Messaging.Header[]);
}
}
