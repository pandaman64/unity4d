module System.Runtime.Serialization.Formatters.Binary;
import System.Runtime.Serialization;
import System.Runtime.Serialization.Formatters;
import System.IO;
import System.Runtime.Remoting.Messaging;
import System;
public:
pragma(assembly,"mscorlib"){
class BinaryFormatter : System.Object{
this ();
this (System.Runtime.Serialization.ISurrogateSelector,System.Runtime.Serialization.StreamingContext);
FormatterTypeStyle get_TypeFormat();
Void set_TypeFormat(System.Runtime.Serialization.Formatters.FormatterTypeStyle);
FormatterAssemblyStyle get_AssemblyFormat();
Void set_AssemblyFormat(System.Runtime.Serialization.Formatters.FormatterAssemblyStyle);
TypeFilterLevel get_FilterLevel();
Void set_FilterLevel(System.Runtime.Serialization.Formatters.TypeFilterLevel);
ISurrogateSelector get_SurrogateSelector();
Void set_SurrogateSelector(System.Runtime.Serialization.ISurrogateSelector);
SerializationBinder get_Binder();
Void set_Binder(System.Runtime.Serialization.SerializationBinder);
StreamingContext get_Context();
Void set_Context(System.Runtime.Serialization.StreamingContext);
Object Deserialize(System.IO.Stream);
Object Deserialize(System.IO.Stream,System.Runtime.Remoting.Messaging.HeaderHandler);
Object DeserializeMethodResponse(System.IO.Stream,System.Runtime.Remoting.Messaging.HeaderHandler,System.Runtime.Remoting.Messaging.IMethodCallMessage);
Object UnsafeDeserialize(System.IO.Stream,System.Runtime.Remoting.Messaging.HeaderHandler);
Object UnsafeDeserializeMethodResponse(System.IO.Stream,System.Runtime.Remoting.Messaging.HeaderHandler,System.Runtime.Remoting.Messaging.IMethodCallMessage);
Void Serialize(System.IO.Stream,System.Object);
Void Serialize(System.IO.Stream,System.Object,System.Runtime.Remoting.Messaging.Header[]);
}
}
