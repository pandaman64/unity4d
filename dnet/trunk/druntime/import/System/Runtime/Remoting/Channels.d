module System.Runtime.Remoting.Channels;
import System;
import System.Runtime.Remoting.Messaging;
import System.Collections;
import System.IO;
public:
pragma(assembly,"mscorlib"){
class ChannelServices : Object{
}
interface IClientChannelSinkStack{
}
interface IClientResponseChannelSinkStack{
}
class ClientChannelSinkStack : Object{
}
interface IServerChannelSinkStack{
}
interface IServerResponseChannelSinkStack{
}
class ServerChannelSinkStack : Object{
}
interface IChannel{
}
interface IChannelSender{
}
interface IChannelReceiver{
}
interface IChannelReceiverHook{
}
interface IClientChannelSinkProvider{
}
interface IServerChannelSinkProvider{
}
interface IClientFormatterSinkProvider{
}
interface IServerFormatterSinkProvider{
}
interface IClientChannelSink{
}
class ServerProcessing : Enum{
}
interface IServerChannelSink{
}
interface IChannelSinkBase{
}
interface IClientFormatterSink{
}
interface IChannelDataStore{
}
class ChannelDataStore : Object{
}
interface ITransportHeaders{
}
class TransportHeaders : Object{
}
class SinkProviderData : Object{
}
class BaseChannelSinkWithProperties : BaseChannelObjectWithProperties{
}
class BaseChannelWithProperties : BaseChannelObjectWithProperties{
}
class BaseChannelObjectWithProperties : Object{
}
interface ISecurableChannel{
}
}
