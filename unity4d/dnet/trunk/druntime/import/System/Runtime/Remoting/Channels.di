module System.Runtime.Remoting.Channels;
import System;
import System.Runtime.Remoting.Messaging;
import System.Collections;
import System.IO;
public:
pragma(assembly,"mscorlib"){
class ChannelServices : System.__object{
static System.Void RegisterChannel(System.Runtime.Remoting.Channels.IChannel,System.Boolean);
static System.Void RegisterChannel(System.Runtime.Remoting.Channels.IChannel);
static System.Void UnregisterChannel(System.Runtime.Remoting.Channels.IChannel);
static System.Runtime.Remoting.Channels.IChannel[] get_RegisteredChannels();
static System.Runtime.Remoting.Channels.IChannel GetChannel(System.String);
static System.String[] GetUrlsForObject(System.MarshalByRefObject);
static System.Collections.IDictionary GetChannelSinkProperties(System.__object);
static System.Runtime.Remoting.Messaging.IMessage SyncDispatchMessage(System.Runtime.Remoting.Messaging.IMessage);
static System.Runtime.Remoting.Messaging.IMessageCtrl AsyncDispatchMessage(System.Runtime.Remoting.Messaging.IMessage,System.Runtime.Remoting.Messaging.IMessageSink);
static System.Runtime.Remoting.Channels.IServerChannelSink CreateServerChannelSinkChain(System.Runtime.Remoting.Channels.IServerChannelSinkProvider,System.Runtime.Remoting.Channels.IChannelReceiver);
}
interface IClientChannelSinkStack{
System.Void Push(System.Runtime.Remoting.Channels.IClientChannelSink,System.__object);
System.__object Pop(System.Runtime.Remoting.Channels.IClientChannelSink);
}
interface IClientResponseChannelSinkStack{
System.Void AsyncProcessResponse(System.Runtime.Remoting.Channels.ITransportHeaders,System.IO.Stream);
System.Void DispatchReplyMessage(System.Runtime.Remoting.Messaging.IMessage);
}
class ClientChannelSinkStack : System.__object{
this ();
this (System.Runtime.Remoting.Messaging.IMessageSink);
System.Void Push(System.Runtime.Remoting.Channels.IClientChannelSink,System.__object);
System.__object Pop(System.Runtime.Remoting.Channels.IClientChannelSink);
System.Void AsyncProcessResponse(System.Runtime.Remoting.Channels.ITransportHeaders,System.IO.Stream);
System.Void DispatchReplyMessage(System.Runtime.Remoting.Messaging.IMessage);
}
interface IServerChannelSinkStack{
System.Void Push(System.Runtime.Remoting.Channels.IServerChannelSink,System.__object);
System.__object Pop(System.Runtime.Remoting.Channels.IServerChannelSink);
System.Void Store(System.Runtime.Remoting.Channels.IServerChannelSink,System.__object);
System.Void StoreAndDispatch(System.Runtime.Remoting.Channels.IServerChannelSink,System.__object);
System.Void ServerCallback(System.IAsyncResult);
}
interface IServerResponseChannelSinkStack{
System.Void AsyncProcessResponse(System.Runtime.Remoting.Messaging.IMessage,System.Runtime.Remoting.Channels.ITransportHeaders,System.IO.Stream);
System.IO.Stream GetResponseStream(System.Runtime.Remoting.Messaging.IMessage,System.Runtime.Remoting.Channels.ITransportHeaders);
}
class ServerChannelSinkStack : System.__object{
this ();
System.Void Push(System.Runtime.Remoting.Channels.IServerChannelSink,System.__object);
System.__object Pop(System.Runtime.Remoting.Channels.IServerChannelSink);
System.Void Store(System.Runtime.Remoting.Channels.IServerChannelSink,System.__object);
System.Void StoreAndDispatch(System.Runtime.Remoting.Channels.IServerChannelSink,System.__object);
System.Void AsyncProcessResponse(System.Runtime.Remoting.Messaging.IMessage,System.Runtime.Remoting.Channels.ITransportHeaders,System.IO.Stream);
System.IO.Stream GetResponseStream(System.Runtime.Remoting.Messaging.IMessage,System.Runtime.Remoting.Channels.ITransportHeaders);
System.Void ServerCallback(System.IAsyncResult);
}
interface IChannel{
System.Int32 get_ChannelPriority();
System.String get_ChannelName();
}
interface IChannelSender{
}
interface IChannelReceiver{
System.__object get_ChannelData();
System.String[] GetUrlsForUri(System.String);
System.Void StartListening(System.__object);
System.Void StopListening(System.__object);
}
interface IChannelReceiverHook{
System.String get_ChannelScheme();
System.Boolean get_WantsToListen();
System.Runtime.Remoting.Channels.IServerChannelSink get_ChannelSinkChain();
System.Void AddHookChannelUri(System.String);
}
interface IClientChannelSinkProvider{
System.Runtime.Remoting.Channels.IClientChannelSink CreateSink(System.Runtime.Remoting.Channels.IChannelSender,System.String,System.__object);
System.Runtime.Remoting.Channels.IClientChannelSinkProvider get_Next();
System.Void set_Next(System.Runtime.Remoting.Channels.IClientChannelSinkProvider);
}
interface IServerChannelSinkProvider{
System.Void GetChannelData(System.Runtime.Remoting.Channels.IChannelDataStore);
System.Runtime.Remoting.Channels.IServerChannelSink CreateSink(System.Runtime.Remoting.Channels.IChannelReceiver);
System.Runtime.Remoting.Channels.IServerChannelSinkProvider get_Next();
System.Void set_Next(System.Runtime.Remoting.Channels.IServerChannelSinkProvider);
}
interface IClientFormatterSinkProvider{
}
interface IServerFormatterSinkProvider{
}
interface IClientChannelSink{
System.Void AsyncProcessRequest(System.Runtime.Remoting.Channels.IClientChannelSinkStack,System.Runtime.Remoting.Messaging.IMessage,System.Runtime.Remoting.Channels.ITransportHeaders,System.IO.Stream);
System.Void AsyncProcessResponse(System.Runtime.Remoting.Channels.IClientResponseChannelSinkStack,System.__object,System.Runtime.Remoting.Channels.ITransportHeaders,System.IO.Stream);
System.IO.Stream GetRequestStream(System.Runtime.Remoting.Messaging.IMessage,System.Runtime.Remoting.Channels.ITransportHeaders);
System.Runtime.Remoting.Channels.IClientChannelSink get_NextChannelSink();
}
class ServerProcessing : System.Enum{
}
interface IServerChannelSink{
System.Void AsyncProcessResponse(System.Runtime.Remoting.Channels.IServerResponseChannelSinkStack,System.__object,System.Runtime.Remoting.Messaging.IMessage,System.Runtime.Remoting.Channels.ITransportHeaders,System.IO.Stream);
System.IO.Stream GetResponseStream(System.Runtime.Remoting.Channels.IServerResponseChannelSinkStack,System.__object,System.Runtime.Remoting.Messaging.IMessage,System.Runtime.Remoting.Channels.ITransportHeaders);
System.Runtime.Remoting.Channels.IServerChannelSink get_NextChannelSink();
}
interface IChannelSinkBase{
System.Collections.IDictionary get_Properties();
}
interface IClientFormatterSink{
}
interface IChannelDataStore{
System.String[] get_ChannelUris();
System.__object get_Item(System.__object);
System.Void set_Item(System.__object,System.__object);
}
class ChannelDataStore : System.__object{
this (System.String[]);
System.String[] get_ChannelUris();
System.Void set_ChannelUris(System.String[]);
System.__object get_Item(System.__object);
System.Void set_Item(System.__object,System.__object);
}
interface ITransportHeaders{
System.__object get_Item(System.__object);
System.Void set_Item(System.__object,System.__object);
System.Collections.IEnumerator GetEnumerator();
}
class TransportHeaders : System.__object{
this ();
System.__object get_Item(System.__object);
System.Void set_Item(System.__object,System.__object);
System.Collections.IEnumerator GetEnumerator();
}
class SinkProviderData : System.__object{
this (System.String);
System.String get_Name();
System.Collections.IDictionary get_Properties();
System.Collections.IList get_Children();
}
class BaseChannelSinkWithProperties : System.Runtime.Remoting.Channels.BaseChannelObjectWithProperties{
}
class BaseChannelWithProperties : System.Runtime.Remoting.Channels.BaseChannelObjectWithProperties{
System.Collections.IDictionary get_Properties();
}
class BaseChannelObjectWithProperties : System.__object{
System.Collections.IDictionary get_Properties();
System.__object get_Item(System.__object);
System.Void set_Item(System.__object,System.__object);
System.Collections.ICollection get_Keys();
System.Collections.ICollection get_Values();
System.Boolean Contains(System.__object);
System.Boolean get_IsReadOnly();
System.Boolean get_IsFixedSize();
System.Void Add(System.__object,System.__object);
System.Void Clear();
System.Void Remove(System.__object);
System.Collections.IDictionaryEnumerator GetEnumerator();
System.Void CopyTo(System.Array,System.Int32);
System.Int32 get_Count();
System.__object get_SyncRoot();
System.Boolean get_IsSynchronized();
}
interface ISecurableChannel{
System.Boolean get_IsSecured();
System.Void set_IsSecured(System.Boolean);
}
}
