module UnityEngine.Events;
import System;
import UnityEngine;
import System.Reflection;
import System.Runtime.Serialization;
public:
pragma(assembly,"UnityEngine"){
class PersistentListenerMode : Enum{
}
class UnityEventCallState : Enum{
}
class UnityEventBase : Object{
}
class UnityEvent : UnityEventBase{
}
class UnityAction : MulticastDelegate{
}
}
