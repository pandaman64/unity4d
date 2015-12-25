module System.Runtime.Remoting.Contexts;
import System;
import System.Runtime.Serialization;
import System.Reflection;
import System.Runtime.Remoting.Activation;
import System.Runtime.Remoting.Messaging;
public:
pragma(assembly,"mscorlib"){
class CrossContextDelegate : System.MulticastDelegate{
this (System.Object,System.IntPtr);
Void Invoke();
IAsyncResult BeginInvoke(System.AsyncCallback,System.Object);
Void EndInvoke(System.IAsyncResult);
}
class Context : System.Object{
this ();
Void SetProperty(System.Runtime.Remoting.Contexts.IContextProperty);
Int32 get_ContextID();
static Context get_DefaultContext();
IContextProperty GetProperty(System.String);
Void Freeze();
IContextProperty[] get_ContextProperties();
String ToString();
Void DoCallBack(System.Runtime.Remoting.Contexts.CrossContextDelegate);
static LocalDataStoreSlot AllocateDataSlot();
static LocalDataStoreSlot AllocateNamedDataSlot(System.String);
static LocalDataStoreSlot GetNamedDataSlot(System.String);
static Void FreeNamedDataSlot(System.String);
static Void SetData(System.LocalDataStoreSlot,System.Object);
static Object GetData(System.LocalDataStoreSlot);
static Boolean RegisterDynamicProperty(System.Runtime.Remoting.Contexts.IDynamicProperty,System.ContextBoundObject,System.Runtime.Remoting.Contexts.Context);
static Boolean UnregisterDynamicProperty(System.String,System.ContextBoundObject,System.Runtime.Remoting.Contexts.Context);
}
class ContextProperty : System.Object{
String get_Name();
Object get_Property();
}
interface IContextAttribute{
Boolean IsContextOK(System.Runtime.Remoting.Contexts.Context,System.Runtime.Remoting.Activation.IConstructionCallMessage);
Void GetPropertiesForNewContext(System.Runtime.Remoting.Activation.IConstructionCallMessage);
}
interface IContextProperty{
String get_Name();
Boolean IsNewContextOK(System.Runtime.Remoting.Contexts.Context);
Void Freeze(System.Runtime.Remoting.Contexts.Context);
}
interface IContextPropertyActivator{
Boolean IsOKToActivate(System.Runtime.Remoting.Activation.IConstructionCallMessage);
Void CollectFromClientContext(System.Runtime.Remoting.Activation.IConstructionCallMessage);
Boolean DeliverClientContextToServerContext(System.Runtime.Remoting.Activation.IConstructionCallMessage);
Void CollectFromServerContext(System.Runtime.Remoting.Activation.IConstructionReturnMessage);
Boolean DeliverServerContextToClientContext(System.Runtime.Remoting.Activation.IConstructionReturnMessage);
}
class ContextAttribute : System.Attribute{
this (System.String);
String get_Name();
Boolean IsNewContextOK(System.Runtime.Remoting.Contexts.Context);
Void Freeze(System.Runtime.Remoting.Contexts.Context);
Boolean Equals(System.Object);
Int32 GetHashCode();
Boolean IsContextOK(System.Runtime.Remoting.Contexts.Context,System.Runtime.Remoting.Activation.IConstructionCallMessage);
Void GetPropertiesForNewContext(System.Runtime.Remoting.Activation.IConstructionCallMessage);
}
interface IContributeClientContextSink{
IMessageSink GetClientContextSink(System.Runtime.Remoting.Messaging.IMessageSink);
}
interface IContributeDynamicSink{
IDynamicMessageSink GetDynamicSink();
}
interface IContributeEnvoySink{
IMessageSink GetEnvoySink(System.MarshalByRefObject,System.Runtime.Remoting.Messaging.IMessageSink);
}
interface IContributeObjectSink{
IMessageSink GetObjectSink(System.MarshalByRefObject,System.Runtime.Remoting.Messaging.IMessageSink);
}
interface IContributeServerContextSink{
IMessageSink GetServerContextSink(System.Runtime.Remoting.Messaging.IMessageSink);
}
interface IDynamicProperty{
String get_Name();
}
interface IDynamicMessageSink{
Void ProcessMessageStart(System.Runtime.Remoting.Messaging.IMessage,System.Boolean,System.Boolean);
Void ProcessMessageFinish(System.Runtime.Remoting.Messaging.IMessage,System.Boolean,System.Boolean);
}
class SynchronizationAttribute : System.Runtime.Remoting.Contexts.ContextAttribute{
this ();
this (System.Boolean);
this (System.Int32);
this (System.Int32,System.Boolean);
Boolean get_Locked();
Void set_Locked(System.Boolean);
Boolean get_IsReEntrant();
Boolean IsContextOK(System.Runtime.Remoting.Contexts.Context,System.Runtime.Remoting.Activation.IConstructionCallMessage);
Void GetPropertiesForNewContext(System.Runtime.Remoting.Activation.IConstructionCallMessage);
IMessageSink GetServerContextSink(System.Runtime.Remoting.Messaging.IMessageSink);
IMessageSink GetClientContextSink(System.Runtime.Remoting.Messaging.IMessageSink);
}
}
