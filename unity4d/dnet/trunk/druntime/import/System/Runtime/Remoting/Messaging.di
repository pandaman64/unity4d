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
class AsyncResult : System.__object{
System.Runtime.Remoting.Messaging.IMessage SyncProcessMessage(System.Runtime.Remoting.Messaging.IMessage);
System.Boolean get_IsCompleted();
System.__object get_AsyncDelegate();
System.__object get_AsyncState();
System.Boolean get_CompletedSynchronously();
System.Boolean get_EndInvokeCalled();
System.Void set_EndInvokeCalled(System.Boolean);
System.Threading.WaitHandle get_AsyncWaitHandle();
System.Void SetMessageCtrl(System.Runtime.Remoting.Messaging.IMessageCtrl);
System.Runtime.Remoting.Messaging.IMessageCtrl AsyncProcessMessage(System.Runtime.Remoting.Messaging.IMessage,System.Runtime.Remoting.Messaging.IMessageSink);
System.Runtime.Remoting.Messaging.IMessageSink get_NextSink();
System.Runtime.Remoting.Messaging.IMessage GetReplyMessage();
}
interface IMessage{
System.Collections.IDictionary get_Properties();
}
interface IMessageCtrl{
System.Void Cancel(System.Int32);
}
interface IMessageSink{
System.Runtime.Remoting.Messaging.IMessage SyncProcessMessage(System.Runtime.Remoting.Messaging.IMessage);
System.Runtime.Remoting.Messaging.IMessageCtrl AsyncProcessMessage(System.Runtime.Remoting.Messaging.IMessage,System.Runtime.Remoting.Messaging.IMessageSink);
System.Runtime.Remoting.Messaging.IMessageSink get_NextSink();
}
interface IMethodMessage{
System.String get_Uri();
System.String get_MethodName();
System.String get_TypeName();
System.__object get_MethodSignature();
System.Int32 get_ArgCount();
System.String GetArgName(System.Int32);
System.__object GetArg(System.Int32);
System.__object[] get_Args();
System.Boolean get_HasVarArgs();
System.Runtime.Remoting.Messaging.LogicalCallContext get_LogicalCallContext();
System.Reflection.MethodBase get_MethodBase();
}
interface IMethodCallMessage{
System.__object[] get_InArgs();
System.Int32 get_InArgCount();
System.String GetInArgName(System.Int32);
System.__object GetInArg(System.Int32);
}
interface IMethodReturnMessage{
System.Int32 get_OutArgCount();
System.String GetOutArgName(System.Int32);
System.__object GetOutArg(System.Int32);
System.__object[] get_OutArgs();
System.__object get_ReturnValue();
}
interface IRemotingFormatter{
System.__object Deserialize(System.IO.Stream,System.Runtime.Remoting.Messaging.HeaderHandler);
System.Void Serialize(System.IO.Stream,System.__object,System.Runtime.Remoting.Messaging.Header[]);
}
class ReturnMessage : System.__object{
this (System.__object,System.__object[],System.Int32,System.Runtime.Remoting.Messaging.LogicalCallContext,System.Runtime.Remoting.Messaging.IMethodCallMessage);
System.String get_Uri();
System.Void set_Uri(System.String);
System.String get_MethodName();
System.String get_TypeName();
System.__object get_MethodSignature();
System.Reflection.MethodBase get_MethodBase();
System.Boolean get_HasVarArgs();
System.Int32 get_ArgCount();
System.__object GetArg(System.Int32);
System.String GetArgName(System.Int32);
System.__object[] get_Args();
System.Int32 get_OutArgCount();
System.__object GetOutArg(System.Int32);
System.String GetOutArgName(System.Int32);
System.__object[] get_OutArgs();
System.__object get_ReturnValue();
System.Collections.IDictionary get_Properties();
System.Runtime.Remoting.Messaging.LogicalCallContext get_LogicalCallContext();
}
class MethodCall : System.__object{
this (System.Runtime.Remoting.Messaging.Header[]);
this (System.Runtime.Remoting.Messaging.IMessage);
System.Void RootSetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
System.Void ResolveMethod();
System.Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
System.Void Init();
System.Int32 get_ArgCount();
System.__object GetArg(System.Int32);
System.String GetArgName(System.Int32);
System.__object[] get_Args();
System.Int32 get_InArgCount();
System.__object GetInArg(System.Int32);
System.String GetInArgName(System.Int32);
System.__object[] get_InArgs();
System.String get_MethodName();
System.String get_TypeName();
System.__object get_MethodSignature();
System.Reflection.MethodBase get_MethodBase();
System.String get_Uri();
System.Void set_Uri(System.String);
System.Boolean get_HasVarArgs();
System.Collections.IDictionary get_Properties();
System.Runtime.Remoting.Messaging.LogicalCallContext get_LogicalCallContext();
System.__object HeaderHandler(System.Runtime.Remoting.Messaging.Header[]);
}
class ConstructionCall : System.Runtime.Remoting.Messaging.MethodCall{
this (System.Runtime.Remoting.Messaging.Header[]);
this (System.Runtime.Remoting.Messaging.IMessage);
System.__object[] get_CallSiteActivationAttributes();
System.Type get_ActivationType();
System.String get_ActivationTypeName();
System.Collections.IList get_ContextProperties();
System.Collections.IDictionary get_Properties();
System.Runtime.Remoting.Activation.IActivator get_Activator();
System.Void set_Activator(System.Runtime.Remoting.Activation.IActivator);
}
class MethodResponse : System.__object{
this (System.Runtime.Remoting.Messaging.Header[],System.Runtime.Remoting.Messaging.IMethodCallMessage);
System.__object HeaderHandler(System.Runtime.Remoting.Messaging.Header[]);
System.Void RootSetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
System.Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
System.String get_Uri();
System.Void set_Uri(System.String);
System.String get_MethodName();
System.String get_TypeName();
System.__object get_MethodSignature();
System.Reflection.MethodBase get_MethodBase();
System.Boolean get_HasVarArgs();
System.Int32 get_ArgCount();
System.__object GetArg(System.Int32);
System.String GetArgName(System.Int32);
System.__object[] get_Args();
System.Int32 get_OutArgCount();
System.__object GetOutArg(System.Int32);
System.String GetOutArgName(System.Int32);
System.__object[] get_OutArgs();
System.__object get_ReturnValue();
System.Collections.IDictionary get_Properties();
System.Runtime.Remoting.Messaging.LogicalCallContext get_LogicalCallContext();
}
class ConstructionResponse : System.Runtime.Remoting.Messaging.MethodResponse{
this (System.Runtime.Remoting.Messaging.Header[],System.Runtime.Remoting.Messaging.IMethodCallMessage);
System.Collections.IDictionary get_Properties();
}
class InternalMessageWrapper : System.__object{
this (System.Runtime.Remoting.Messaging.IMessage);
}
class MethodCallMessageWrapper : System.Runtime.Remoting.Messaging.InternalMessageWrapper{
this (System.Runtime.Remoting.Messaging.IMethodCallMessage);
System.String get_Uri();
System.Void set_Uri(System.String);
System.String get_MethodName();
System.String get_TypeName();
System.__object get_MethodSignature();
System.Runtime.Remoting.Messaging.LogicalCallContext get_LogicalCallContext();
System.Reflection.MethodBase get_MethodBase();
System.Int32 get_ArgCount();
System.String GetArgName(System.Int32);
System.__object GetArg(System.Int32);
System.__object[] get_Args();
System.Void set_Args(System.__object[]);
System.Boolean get_HasVarArgs();
System.Int32 get_InArgCount();
System.__object GetInArg(System.Int32);
System.String GetInArgName(System.Int32);
System.__object[] get_InArgs();
System.Collections.IDictionary get_Properties();
}
class MethodReturnMessageWrapper : System.Runtime.Remoting.Messaging.InternalMessageWrapper{
this (System.Runtime.Remoting.Messaging.IMethodReturnMessage);
System.String get_Uri();
System.Void set_Uri(System.String);
System.String get_MethodName();
System.String get_TypeName();
System.__object get_MethodSignature();
System.Runtime.Remoting.Messaging.LogicalCallContext get_LogicalCallContext();
System.Reflection.MethodBase get_MethodBase();
System.Int32 get_ArgCount();
System.String GetArgName(System.Int32);
System.__object GetArg(System.Int32);
System.__object[] get_Args();
System.Void set_Args(System.__object[]);
System.Boolean get_HasVarArgs();
System.Int32 get_OutArgCount();
System.__object GetOutArg(System.Int32);
System.String GetOutArgName(System.Int32);
System.__object[] get_OutArgs();
System.__object get_ReturnValue();
System.Void set_ReturnValue(System.__object);
System.Collections.IDictionary get_Properties();
}
class OneWayAttribute : System.Attribute{
this ();
}
class MessageSurrogateFilter : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.Boolean Invoke(System.String,System.__object);
System.IAsyncResult BeginInvoke(System.String,System.__object,System.AsyncCallback,System.__object);
System.Boolean EndInvoke(System.IAsyncResult);
}
class RemotingSurrogateSelector : System.__object{
this ();
System.Void set_Filter(System.Runtime.Remoting.Messaging.MessageSurrogateFilter);
System.Runtime.Remoting.Messaging.MessageSurrogateFilter get_Filter();
System.Void SetRootObject(System.__object);
System.__object GetRootObject();
System.Void ChainSelector(System.Runtime.Serialization.ISurrogateSelector);
System.Runtime.Serialization.ISurrogateSelector GetNextSelector();
System.Void UseSoapFormat();
}
class Header : System.__object{
String Name;
__object Value;
Boolean MustUnderstand;
String HeaderNamespace;
this (System.String,System.__object);
this (System.String,System.__object,System.Boolean);
this (System.String,System.__object,System.Boolean,System.String);
}
class HeaderHandler : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.__object Invoke(System.Runtime.Remoting.Messaging.Header[]);
System.IAsyncResult BeginInvoke(System.Runtime.Remoting.Messaging.Header[],System.AsyncCallback,System.__object);
System.__object EndInvoke(System.IAsyncResult);
}
class CallContext : System.__object{
static System.Void FreeNamedDataSlot(System.String);
static System.__object LogicalGetData(System.String);
static System.__object get_HostContext();
static System.Void set_HostContext(System.__object);
static System.__object GetData(System.String);
static System.Void SetData(System.String,System.__object);
static System.Void LogicalSetData(System.String,System.__object);
static System.Runtime.Remoting.Messaging.Header[] GetHeaders();
static System.Void SetHeaders(System.Runtime.Remoting.Messaging.Header[]);
}
interface ILogicalThreadAffinative{
}
class LogicalCallContext : System.__object{
System.Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
System.__object Clone();
System.Boolean get_HasInfo();
System.Void FreeNamedDataSlot(System.String);
System.__object GetData(System.String);
System.Void SetData(System.String,System.__object);
}
}
