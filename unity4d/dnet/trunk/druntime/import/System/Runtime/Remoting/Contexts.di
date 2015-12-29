module System.Runtime.Remoting.Contexts;
import System;
import System.Runtime.Serialization;
import System.Reflection;
import System.Runtime.Remoting.Activation;
import System.Runtime.Remoting.Messaging;
public:
pragma(assembly,"mscorlib"){
class CrossContextDelegate : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.Void Invoke();
System.IAsyncResult BeginInvoke(System.AsyncCallback,System.__object);
System.Void EndInvoke(System.IAsyncResult);
}
class Context : System.__object{
this ();
System.Void SetProperty(System.Runtime.Remoting.Contexts.IContextProperty);
System.Int32 get_ContextID();
static System.Runtime.Remoting.Contexts.Context get_DefaultContext();
System.Runtime.Remoting.Contexts.IContextProperty GetProperty(System.String);
System.Void Freeze();
System.Runtime.Remoting.Contexts.IContextProperty[] get_ContextProperties();
System.String ToString();
System.Void DoCallBack(System.Runtime.Remoting.Contexts.CrossContextDelegate);
static System.LocalDataStoreSlot AllocateDataSlot();
static System.LocalDataStoreSlot AllocateNamedDataSlot(System.String);
static System.LocalDataStoreSlot GetNamedDataSlot(System.String);
static System.Void FreeNamedDataSlot(System.String);
static System.Void SetData(System.LocalDataStoreSlot,System.__object);
static System.__object GetData(System.LocalDataStoreSlot);
static System.Boolean RegisterDynamicProperty(System.Runtime.Remoting.Contexts.IDynamicProperty,System.ContextBoundObject,System.Runtime.Remoting.Contexts.Context);
static System.Boolean UnregisterDynamicProperty(System.String,System.ContextBoundObject,System.Runtime.Remoting.Contexts.Context);
}
class ContextProperty : System.__object{
System.String get_Name();
System.__object get_Property();
}
interface IContextAttribute{
System.Boolean IsContextOK(System.Runtime.Remoting.Contexts.Context,System.Runtime.Remoting.Activation.IConstructionCallMessage);
System.Void GetPropertiesForNewContext(System.Runtime.Remoting.Activation.IConstructionCallMessage);
}
interface IContextProperty{
System.String get_Name();
System.Boolean IsNewContextOK(System.Runtime.Remoting.Contexts.Context);
System.Void Freeze(System.Runtime.Remoting.Contexts.Context);
}
interface IContextPropertyActivator{
System.Boolean IsOKToActivate(System.Runtime.Remoting.Activation.IConstructionCallMessage);
System.Void CollectFromClientContext(System.Runtime.Remoting.Activation.IConstructionCallMessage);
System.Boolean DeliverClientContextToServerContext(System.Runtime.Remoting.Activation.IConstructionCallMessage);
System.Void CollectFromServerContext(System.Runtime.Remoting.Activation.IConstructionReturnMessage);
System.Boolean DeliverServerContextToClientContext(System.Runtime.Remoting.Activation.IConstructionReturnMessage);
}
class ContextAttribute : System.Attribute{
this (System.String);
System.String get_Name();
System.Boolean IsNewContextOK(System.Runtime.Remoting.Contexts.Context);
System.Void Freeze(System.Runtime.Remoting.Contexts.Context);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.Boolean IsContextOK(System.Runtime.Remoting.Contexts.Context,System.Runtime.Remoting.Activation.IConstructionCallMessage);
System.Void GetPropertiesForNewContext(System.Runtime.Remoting.Activation.IConstructionCallMessage);
}
interface IContributeClientContextSink{
System.Runtime.Remoting.Messaging.IMessageSink GetClientContextSink(System.Runtime.Remoting.Messaging.IMessageSink);
}
interface IContributeDynamicSink{
System.Runtime.Remoting.Contexts.IDynamicMessageSink GetDynamicSink();
}
interface IContributeEnvoySink{
System.Runtime.Remoting.Messaging.IMessageSink GetEnvoySink(System.MarshalByRefObject,System.Runtime.Remoting.Messaging.IMessageSink);
}
interface IContributeObjectSink{
System.Runtime.Remoting.Messaging.IMessageSink GetObjectSink(System.MarshalByRefObject,System.Runtime.Remoting.Messaging.IMessageSink);
}
interface IContributeServerContextSink{
System.Runtime.Remoting.Messaging.IMessageSink GetServerContextSink(System.Runtime.Remoting.Messaging.IMessageSink);
}
interface IDynamicProperty{
System.String get_Name();
}
interface IDynamicMessageSink{
System.Void ProcessMessageStart(System.Runtime.Remoting.Messaging.IMessage,System.Boolean,System.Boolean);
System.Void ProcessMessageFinish(System.Runtime.Remoting.Messaging.IMessage,System.Boolean,System.Boolean);
}
class SynchronizationAttribute : System.Runtime.Remoting.Contexts.ContextAttribute{
this ();
this (System.Boolean);
this (System.Int32);
this (System.Int32,System.Boolean);
System.Boolean get_Locked();
System.Void set_Locked(System.Boolean);
System.Boolean get_IsReEntrant();
System.Boolean IsContextOK(System.Runtime.Remoting.Contexts.Context,System.Runtime.Remoting.Activation.IConstructionCallMessage);
System.Void GetPropertiesForNewContext(System.Runtime.Remoting.Activation.IConstructionCallMessage);
System.Runtime.Remoting.Messaging.IMessageSink GetServerContextSink(System.Runtime.Remoting.Messaging.IMessageSink);
System.Runtime.Remoting.Messaging.IMessageSink GetClientContextSink(System.Runtime.Remoting.Messaging.IMessageSink);
}
}
