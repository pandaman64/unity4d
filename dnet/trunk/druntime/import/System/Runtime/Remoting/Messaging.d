module System.Runtime.Remoting.Messaging;
import System;
import System.Threading;
import System.Collections;
import System.Reflection;
import System.IO;
import System.Runtime.Serialization;
import System.Runtime.Remoting.Activation;
public:
pragma(assembly,"mscorlib"){
class AsyncResult : Object{
}
interface IMessage{
}
interface IMessageCtrl{
}
interface IMessageSink{
}
interface IMethodMessage{
}
interface IMethodCallMessage{
}
interface IMethodReturnMessage{
}
interface IRemotingFormatter{
}
class ReturnMessage : Object{
}
class MethodCall : Object{
}
class ConstructionCall : MethodCall{
}
class MethodResponse : Object{
}
class ConstructionResponse : MethodResponse{
}
class InternalMessageWrapper : Object{
}
class MethodCallMessageWrapper : InternalMessageWrapper{
}
class MethodReturnMessageWrapper : InternalMessageWrapper{
}
class OneWayAttribute : Attribute{
}
class MessageSurrogateFilter : MulticastDelegate{
}
class RemotingSurrogateSelector : Object{
}
class Header : Object{
}
class HeaderHandler : MulticastDelegate{
}
class CallContext : Object{
}
interface ILogicalThreadAffinative{
}
class LogicalCallContext : Object{
}
}
