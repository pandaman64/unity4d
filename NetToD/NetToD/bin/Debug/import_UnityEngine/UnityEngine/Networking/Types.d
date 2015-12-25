module UnityEngine.Networking.Types;
import System;
public:
pragma(assembly,"UnityEngine"){
class NetworkAccessLevel : System.Enum{
}
class AppID : System.Enum{
}
class SourceID : System.Enum{
}
class NetworkID : System.Enum{
}
class NodeID : System.Enum{
}
class NetworkAccessToken : System.Object{
this ();
this (System.Byte[]);
this (System.String);
String GetByteString();
Boolean IsValid();
}
}
