module UnityEngine.Serialization;
import System;
import System.Runtime.Serialization;
public:
pragma(assembly,"UnityEngine"){
class FormerlySerializedAsAttribute : System.Attribute{
this (System.String);
String get_oldName();
}
class UnitySurrogateSelector : System.Object{
this ();
Void ChainSelector(System.Runtime.Serialization.ISurrogateSelector);
ISurrogateSelector GetNextSelector();
}
}
