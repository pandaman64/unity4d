module System.Runtime.Remoting.Channels;
import System;
import System.Runtime.Remoting.Messaging;
import System.Collections;
import System.IO;
public:
pragma(assembly,"mscorlib"){
class ChannelServices : System.Object{
static Void RegisterChannel(System.Runtime.Remoting.Channels.IChannel,System.Boolean);
static Void RegisterChannel(System.Runtime.Remoting.Channels.IChannel);
static Void UnregisterChannel(System.Runtime.Remoting.Channels.IChannel);
static IChannel[] get_RegisteredChannels();
static IChannel GetChannel(System.String);
static String[] GetUrlsForObject(System.MarshalByRefObject);
static IDictionary GetChannelSinkProperties(System.Object);
static IMessage SyncDispatchMessage(System.Runtime.Remoting.Messaging.IMessage);
static IMessageCtrl AsyncDispatchMessage(System.Runtime.Remoting.Messaging.IMessage,System.Runtime.Remoting.Messaging.IMessageSink);
static IServerChannelSink CreateServerChannelSinkChain(System.Runtime.Remoting.Channels.IServerChannelSinkProvider,System.Runtime.Remoting.Channels.IChannelReceiver);
}
interface IClientChannelSinkStack{
Void Push(System.Runtime.Remoting.Channels.IClientChannelSink,System.Object);
Object Pop(System.Runtime.Remoting.Channels.IClientChannelSink);
}
interface IClientResponseChannelSinkStack{
Void AsyncProcessResponse(System.Runtime.Remoting.Channels.ITransportHeaders,System.IO.Stream);
Void DispatchReplyMessage(System.Runtime.Remoting.Messaging.IMessage);
Void DispatchException(System.Exception);
}
class ClientChannelSinkStack : System.Object{
this ();
this (System.Runtime.Remoting.Messaging.IMessageSink);
Void Push(System.Runtime.Remoting.Channels.IClientChannelSink,System.Object);
Object Pop(System.Runtime.Remoting.Channels.IClientChannelSink);
Void AsyncProcessResponse(System.Runtime.Remoting.Channels.ITransportHeaders,System.IO.Stream);
Void DispatchReplyMessage(System.Runtime.Remoting.Messaging.IMessage);
Void DispatchException(System.Exception);
}
interface IServerChannelSinkStack{
Void Push(System.Runtime.Remoting.Channels.IServerChannelSink,System.Object);
Object Pop(System.Runtime.Remoting.Channels.IServerChannelSink);
Void Store(System.Runtime.Remoting.Channels.IServerChannelSink,System.Object);
Void StoreAndDispatch(System.Runtime.Remoting.Channels.IServerChannelSink,System.Object);
Void ServerCallback(System.IAsyncResult);
}
interface IServerResponseChannelSinkStack{
Void AsyncProcessResponse(System.Runtime.Remoting.Messaging.IMessage,System.Runtime.Remoting.Channels.ITransportHeaders,System.IO.Stream);
Stream GetResponseStream(System.Runtime.Remoting.Messaging.IMessage,System.Runtime.Remoting.Channels.ITransportHeaders);
}
class ServerChannelSinkStack : System.Object{
this ();
Void Push(System.Runtime.Remoting.Channels.IServerChannelSink,System.Object);
Object Pop(System.Runtime.Remoting.Channels.IServerChannelSink);
Void Store(System.Runtime.Remoting.Channels.IServerChannelSink,System.Object);
Void StoreAndDispatch(System.Runtime.Remoting.Channels.IServerChannelSink,System.Object);
Void AsyncProcessResponse(System.Runtime.Remoting.Messaging.IMessage,System.Runtime.Remoting.Channels.ITransportHeaders,System.IO.Stream);
Stream GetResponseStream(System.Runtime.Remoting.Messaging.IMessage,System.Runtime.Remoting.Channels.ITransportHeaders);
Void ServerCallback(System.IAsyncResult);
}
interface IChannel{
Int32 get_ChannelPriority();
String get_ChannelName();
}
interface IChannelSender{
}
interface IChannelReceiver{
Object get_ChannelData();
String[] GetUrlsForUri(System.String);
Void StartListening(System.Object);
Void StopListening(System.Object);
}
interface IChannelReceiverHook{
String get_ChannelScheme();
Boolean get_WantsToListen();
IServerChannelSink get_ChannelSinkChain();
Void AddHookChannelUri(System.String);
}
interface IClientChannelSinkProvider{
IClientChannelSink CreateSink(System.Runtime.Remoting.Channels.IChannelSender,System.String,System.Object);
IClientChannelSinkProvider get_Next();
Void set_Next(System.Runtime.Remoting.Channels.IClientChannelSinkProvider);
}
interface IServerChannelSinkProvider{
Void GetChannelData(System.Runtime.Remoting.Channels.IChannelDataStore);
IServerChannelSink CreateSink(System.Runtime.Remoting.Channels.IChannelReceiver);
IServerChannelSinkProvider get_Next();
Void set_Next(System.Runtime.Remoting.Channels.IServerChannelSinkProvider);
}
interface IClientFormatterSinkProvider{
}
interface IServerFormatterSinkProvider{
}
interface IClientChannelSink{
Void AsyncProcessRequest(System.Runtime.Remoting.Channels.IClientChannelSinkStack,System.Runtime.Remoting.Messaging.IMessage,System.Runtime.Remoting.Channels.ITransportHeaders,System.IO.Stream);
Void AsyncProcessResponse(System.Runtime.Remoting.Channels.IClientResponseChannelSinkStack,System.Object,System.Runtime.Remoting.Channels.ITransportHeaders,System.IO.Stream);
Stream GetRequestStream(System.Runtime.Remoting.Messaging.IMessage,System.Runtime.Remoting.Channels.ITransportHeaders);
IClientChannelSink get_NextChannelSink();
}
class ServerProcessing : System.Enum{
}
interface IServerChannelSink{
Void AsyncProcessResponse(System.Runtime.Remoting.Channels.IServerResponseChannelSinkStack,System.Object,System.Runtime.Remoting.Messaging.IMessage,System.Runtime.Remoting.Channels.ITransportHeaders,System.IO.Stream);
Stream GetResponseStream(System.Runtime.Remoting.Channels.IServerResponseChannelSinkStack,System.Object,System.Runtime.Remoting.Messaging.IMessage,System.Runtime.Remoting.Channels.ITransportHeaders);
IServerChannelSink get_NextChannelSink();
}
interface IChannelSinkBase{
IDictionary get_Properties();
}
interface IClientFormatterSink{
}
interface IChannelDataStore{
String[] get_ChannelUris();
Object get_Item(System.Object);
Void set_Item(System.Object,System.Object);
}
class ChannelDataStore : System.Object{
this (System.String[]);
String[] get_ChannelUris();
Void set_ChannelUris(System.String[]);
Object get_Item(System.Object);
Void set_Item(System.Object,System.Object);
}
interface ITransportHeaders{
Object get_Item(System.Object);
Void set_Item(System.Object,System.Object);
IEnumerator GetEnumerator();
}
class TransportHeaders : System.Object{
this ();
Object get_Item(System.Object);
Void set_Item(System.Object,System.Object);
IEnumerator GetEnumerator();
}
class SinkProviderData : System.Object{
this (System.String);
String get_Name();
IDictionary get_Properties();
IList get_Children();
}
class BaseChannelSinkWithProperties : System.Runtime.Remoting.Channels.BaseChannelObjectWithProperties{
}
class BaseChannelWithProperties : System.Runtime.Remoting.Channels.BaseChannelObjectWithProperties{
IDictionary get_Properties();
}
class BaseChannelObjectWithProperties : System.Object{
IDictionary get_Properties();
Object get_Item(System.Object);
Void set_Item(System.Object,System.Object);
ICollection get_Keys();
ICollection get_Values();
Boolean Contains(System.Object);
Boolean get_IsReadOnly();
Boolean get_IsFixedSize();
Void Add(System.Object,System.Object);
Void Clear();
Void Remove(System.Object);
IDictionaryEnumerator GetEnumerator();
Void CopyTo(System.Array,System.Int32);
Int32 get_Count();
Object get_SyncRoot();
Boolean get_IsSynchronized();
}
interface ISecurableChannel{
Boolean get_IsSecured();
Void set_IsSecured(System.Boolean);
}
}
