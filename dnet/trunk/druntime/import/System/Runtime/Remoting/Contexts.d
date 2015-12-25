module System.Runtime.Remoting.Contexts;
import System;
import System.Runtime.Serialization;
import System.Reflection;
import System.Runtime.Remoting.Activation;
import System.Runtime.Remoting.Messaging;
public:
pragma(assembly,"mscorlib"){
class CrossContextDelegate : MulticastDelegate{
}
class Context : Object{
}
class ContextProperty : Object{
}
interface IContextAttribute{
}
interface IContextProperty{
}
interface IContextPropertyActivator{
}
class ContextAttribute : Attribute{
}
interface IContributeClientContextSink{
}
interface IContributeDynamicSink{
}
interface IContributeEnvoySink{
}
interface IContributeObjectSink{
}
interface IContributeServerContextSink{
}
interface IDynamicProperty{
}
interface IDynamicMessageSink{
}
class SynchronizationAttribute : ContextAttribute{
}
}
