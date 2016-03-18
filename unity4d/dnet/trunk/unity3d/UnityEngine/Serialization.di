module UnityEngine.Serialization;
import System;
import System.Runtime.Serialization;
public:
pragma(assembly,"UnityEngine"){
class FormerlySerializedAsAttribute : System.Attribute{
this (System.String);
System.String get_oldName();
}
class UnitySurrogateSelector : System.__object{
this ();
System.Void ChainSelector(System.Runtime.Serialization.ISurrogateSelector);
System.Runtime.Serialization.ISurrogateSelector GetNextSelector();
}
}
