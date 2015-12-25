module UnityEngine.Events;
import System;
import UnityEngine;
import System.Reflection;
import System.Runtime.Serialization;
public:
pragma(assembly,"UnityEngine"){
class PersistentListenerMode : System.Enum{
}
class UnityEventCallState : System.Enum{
}
class UnityEventBase : System.Object{
Int32 GetPersistentEventCount();
__UnityObject GetPersistentTarget(System.Int32);
String GetPersistentMethodName(System.Int32);
Void SetPersistentListenerState(System.Int32,UnityEngine.Events.UnityEventCallState);
Void RemoveAllListeners();
String ToString();
static MethodInfo GetValidMethodInfo(System.Object,System.String,System.Type[]);
}
class UnityEvent : UnityEngine.Events.UnityEventBase{
this ();
Void AddListener(UnityEngine.Events.UnityAction);
Void RemoveListener(UnityEngine.Events.UnityAction);
Void Invoke();
}
class UnityAction : System.MulticastDelegate{
this (System.Object,System.IntPtr);
Void Invoke();
IAsyncResult BeginInvoke(System.AsyncCallback,System.Object);
Void EndInvoke(System.IAsyncResult);
}
}
