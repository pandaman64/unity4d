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
class AsyncResult : System.Object{
IMessage SyncProcessMessage(System.Runtime.Remoting.Messaging.IMessage);
Boolean get_IsCompleted();
Object get_AsyncDelegate();
Object get_AsyncState();
Boolean get_CompletedSynchronously();
Boolean get_EndInvokeCalled();
Void set_EndInvokeCalled(System.Boolean);
WaitHandle get_AsyncWaitHandle();
Void SetMessageCtrl(System.Runtime.Remoting.Messaging.IMessageCtrl);
IMessageCtrl AsyncProcessMessage(System.Runtime.Remoting.Messaging.IMessage,System.Runtime.Remoting.Messaging.IMessageSink);
IMessageSink get_NextSink();
IMessage GetReplyMessage();
}
interface IMessage{
IDictionary get_Properties();
}
interface IMessageCtrl{
Void Cancel(System.Int32);
}
interface IMessageSink{
IMessage SyncProcessMessage(System.Runtime.Remoting.Messaging.IMessage);
IMessageCtrl AsyncProcessMessage(System.Runtime.Remoting.Messaging.IMessage,System.Runtime.Remoting.Messaging.IMessageSink);
IMessageSink get_NextSink();
}
interface IMethodMessage{
String get_Uri();
String get_MethodName();
String get_TypeName();
Object get_MethodSignature();
Int32 get_ArgCount();
String GetArgName(System.Int32);
Object GetArg(System.Int32);
Object[] get_Args();
Boolean get_HasVarArgs();
LogicalCallContext get_LogicalCallContext();
MethodBase get_MethodBase();
}
interface IMethodCallMessage{
Object[] get_InArgs();
Int32 get_InArgCount();
String GetInArgName(System.Int32);
Object GetInArg(System.Int32);
}
interface IMethodReturnMessage{
Int32 get_OutArgCount();
String GetOutArgName(System.Int32);
Object GetOutArg(System.Int32);
Object[] get_OutArgs();
Exception get_Exception();
Object get_ReturnValue();
}
interface IRemotingFormatter{
Object Deserialize(System.IO.Stream,System.Runtime.Remoting.Messaging.HeaderHandler);
Void Serialize(System.IO.Stream,System.Object,System.Runtime.Remoting.Messaging.Header[]);
}
class ReturnMessage : System.Object{
this (System.Object,System.Object[],System.Int32,System.Runtime.Remoting.Messaging.LogicalCallContext,System.Runtime.Remoting.Messaging.IMethodCallMessage);
this (System.Exception,System.Runtime.Remoting.Messaging.IMethodCallMessage);
String get_Uri();
Void set_Uri(System.String);
String get_MethodName();
String get_TypeName();
Object get_MethodSignature();
MethodBase get_MethodBase();
Boolean get_HasVarArgs();
Int32 get_ArgCount();
Object GetArg(System.Int32);
String GetArgName(System.Int32);
Object[] get_Args();
Int32 get_OutArgCount();
Object GetOutArg(System.Int32);
String GetOutArgName(System.Int32);
Object[] get_OutArgs();
Exception get_Exception();
Object get_ReturnValue();
IDictionary get_Properties();
LogicalCallContext get_LogicalCallContext();
}
class MethodCall : System.Object{
this (System.Runtime.Remoting.Messaging.Header[]);
this (System.Runtime.Remoting.Messaging.IMessage);
Void RootSetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
Void ResolveMethod();
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
Void Init();
Int32 get_ArgCount();
Object GetArg(System.Int32);
String GetArgName(System.Int32);
Object[] get_Args();
Int32 get_InArgCount();
Object GetInArg(System.Int32);
String GetInArgName(System.Int32);
Object[] get_InArgs();
String get_MethodName();
String get_TypeName();
Object get_MethodSignature();
MethodBase get_MethodBase();
String get_Uri();
Void set_Uri(System.String);
Boolean get_HasVarArgs();
IDictionary get_Properties();
LogicalCallContext get_LogicalCallContext();
Object HeaderHandler(System.Runtime.Remoting.Messaging.Header[]);
}
class ConstructionCall : System.Runtime.Remoting.Messaging.MethodCall{
this (System.Runtime.Remoting.Messaging.Header[]);
this (System.Runtime.Remoting.Messaging.IMessage);
Object[] get_CallSiteActivationAttributes();
Type get_ActivationType();
String get_ActivationTypeName();
IList get_ContextProperties();
IDictionary get_Properties();
IActivator get_Activator();
Void set_Activator(System.Runtime.Remoting.Activation.IActivator);
}
class MethodResponse : System.Object{
this (System.Runtime.Remoting.Messaging.Header[],System.Runtime.Remoting.Messaging.IMethodCallMessage);
Object HeaderHandler(System.Runtime.Remoting.Messaging.Header[]);
Void RootSetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
String get_Uri();
Void set_Uri(System.String);
String get_MethodName();
String get_TypeName();
Object get_MethodSignature();
MethodBase get_MethodBase();
Boolean get_HasVarArgs();
Int32 get_ArgCount();
Object GetArg(System.Int32);
String GetArgName(System.Int32);
Object[] get_Args();
Int32 get_OutArgCount();
Object GetOutArg(System.Int32);
String GetOutArgName(System.Int32);
Object[] get_OutArgs();
Exception get_Exception();
Object get_ReturnValue();
IDictionary get_Properties();
LogicalCallContext get_LogicalCallContext();
}
class ConstructionResponse : System.Runtime.Remoting.Messaging.MethodResponse{
this (System.Runtime.Remoting.Messaging.Header[],System.Runtime.Remoting.Messaging.IMethodCallMessage);
IDictionary get_Properties();
}
class InternalMessageWrapper : System.Object{
this (System.Runtime.Remoting.Messaging.IMessage);
}
class MethodCallMessageWrapper : System.Runtime.Remoting.Messaging.InternalMessageWrapper{
this (System.Runtime.Remoting.Messaging.IMethodCallMessage);
String get_Uri();
Void set_Uri(System.String);
String get_MethodName();
String get_TypeName();
Object get_MethodSignature();
LogicalCallContext get_LogicalCallContext();
MethodBase get_MethodBase();
Int32 get_ArgCount();
String GetArgName(System.Int32);
Object GetArg(System.Int32);
Object[] get_Args();
Void set_Args(System.Object[]);
Boolean get_HasVarArgs();
Int32 get_InArgCount();
Object GetInArg(System.Int32);
String GetInArgName(System.Int32);
Object[] get_InArgs();
IDictionary get_Properties();
}
class MethodReturnMessageWrapper : System.Runtime.Remoting.Messaging.InternalMessageWrapper{
this (System.Runtime.Remoting.Messaging.IMethodReturnMessage);
String get_Uri();
Void set_Uri(System.String);
String get_MethodName();
String get_TypeName();
Object get_MethodSignature();
LogicalCallContext get_LogicalCallContext();
MethodBase get_MethodBase();
Int32 get_ArgCount();
String GetArgName(System.Int32);
Object GetArg(System.Int32);
Object[] get_Args();
Void set_Args(System.Object[]);
Boolean get_HasVarArgs();
Int32 get_OutArgCount();
Object GetOutArg(System.Int32);
String GetOutArgName(System.Int32);
Object[] get_OutArgs();
Exception get_Exception();
Void set_Exception(System.Exception);
Object get_ReturnValue();
Void set_ReturnValue(System.Object);
IDictionary get_Properties();
}
class OneWayAttribute : System.Attribute{
this ();
}
class MessageSurrogateFilter : System.MulticastDelegate{
this (System.Object,System.IntPtr);
Boolean Invoke(System.String,System.Object);
IAsyncResult BeginInvoke(System.String,System.Object,System.AsyncCallback,System.Object);
Boolean EndInvoke(System.IAsyncResult);
}
class RemotingSurrogateSelector : System.Object{
this ();
Void set_Filter(System.Runtime.Remoting.Messaging.MessageSurrogateFilter);
MessageSurrogateFilter get_Filter();
Void SetRootObject(System.Object);
Object GetRootObject();
Void ChainSelector(System.Runtime.Serialization.ISurrogateSelector);
ISurrogateSelector GetNextSelector();
Void UseSoapFormat();
}
class Header : System.Object{
this (System.String,System.Object);
this (System.String,System.Object,System.Boolean);
this (System.String,System.Object,System.Boolean,System.String);
}
class HeaderHandler : System.MulticastDelegate{
this (System.Object,System.IntPtr);
Object Invoke(System.Runtime.Remoting.Messaging.Header[]);
IAsyncResult BeginInvoke(System.Runtime.Remoting.Messaging.Header[],System.AsyncCallback,System.Object);
Object EndInvoke(System.IAsyncResult);
}
class CallContext : System.Object{
static Void FreeNamedDataSlot(System.String);
static Object LogicalGetData(System.String);
static Object get_HostContext();
static Void set_HostContext(System.Object);
static Object GetData(System.String);
static Void SetData(System.String,System.Object);
static Void LogicalSetData(System.String,System.Object);
static Header[] GetHeaders();
static Void SetHeaders(System.Runtime.Remoting.Messaging.Header[]);
}
interface ILogicalThreadAffinative{
}
class LogicalCallContext : System.Object{
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
Object Clone();
Boolean get_HasInfo();
Void FreeNamedDataSlot(System.String);
Object GetData(System.String);
Void SetData(System.String,System.Object);
}
}
