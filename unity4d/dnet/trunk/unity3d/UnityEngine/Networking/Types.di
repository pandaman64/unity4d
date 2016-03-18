module UnityEngine.Networking.Types;
import System;
public:
pragma(assembly,"UnityEngine"){
class NetworkAccessLevel : System.Enum{
UInt64 value__;
}
class AppID : System.Enum{
UInt64 value__;
}
class SourceID : System.Enum{
UInt64 value__;
}
class NetworkID : System.Enum{
UInt64 value__;
}
class NodeID : System.Enum{
UInt16 value__;
}
class NetworkAccessToken : System.__object{
Byte[] array;
this ();
this (System.Byte[]);
this (System.String);
System.String GetByteString();
System.Boolean IsValid();
}
}
