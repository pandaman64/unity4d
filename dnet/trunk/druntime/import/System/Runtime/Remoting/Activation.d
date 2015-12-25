module System.Runtime.Remoting.Activation;
import System;
import System.Collections;
import System.Runtime.Remoting.Contexts;
public:
pragma(assembly,"mscorlib"){
interface IActivator{
}
class ActivatorLevel : Enum{
}
interface IConstructionCallMessage{
}
interface IConstructionReturnMessage{
}
class UrlAttribute : ContextAttribute{
}
}
