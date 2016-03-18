module UnityEngine.Events;
import System;
import UnityEngine;
import System.Reflection;
import System.Runtime.Serialization;
public:
pragma(assembly,"UnityEngine"){
class PersistentListenerMode : System.Enum{
Int32 value__;
}
class UnityEventCallState : System.Enum{
Int32 value__;
}
class UnityEventBase : System.__object{
System.Int32 GetPersistentEventCount();
UnityEngine.__UnityObject GetPersistentTarget(System.Int32);
System.String GetPersistentMethodName(System.Int32);
System.Void SetPersistentListenerState(System.Int32,UnityEngine.Events.UnityEventCallState);
System.Void RemoveAllListeners();
System.String ToString();
static System.Reflection.MethodInfo GetValidMethodInfo(System.__object,System.String,System.Type[]);
}
class UnityEvent : UnityEngine.Events.UnityEventBase{
this ();
System.Void AddListener(UnityEngine.Events.UnityAction);
System.Void RemoveListener(UnityEngine.Events.UnityAction);
System.Void Invoke();
}
class UnityAction : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.Void Invoke();
System.IAsyncResult BeginInvoke(System.AsyncCallback,System.__object);
System.Void EndInvoke(System.IAsyncResult);
}
}
