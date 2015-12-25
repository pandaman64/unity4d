module UnityEngineInternal;
import System;
import UnityEngine;
import System.Collections;
import System.Runtime.Serialization;
import System.Reflection;
public:
pragma(assembly,"UnityEngine"){
class MathfInternal : System.ValueType{
}
class LightmapType : System.Enum{
}
class GITextureType : System.Enum{
}
class GIDebugVisualisation : System.Object{
this ();
static Void ResetRuntimeInputTextures();
static Void PlayCycleMode();
static Void PauseCycleMode();
static Void StopCycleMode();
static Boolean get_cycleMode();
static Boolean get_pauseCycleMode();
static GITextureType get_texType();
static Void set_texType(UnityEngineInternal.GITextureType);
static Void CycleSkipInstances(System.Int32);
static Void CycleSkipSystems(System.Int32);
}
class APIUpdaterRuntimeServices : System.Object{
this ();
static Component AddComponent(UnityEngine.GameObject,System.String,System.String);
}
class TypeInferenceRules : System.Enum{
}
class TypeInferenceRuleAttribute : System.Attribute{
this (UnityEngineInternal.TypeInferenceRules);
this (System.String);
String ToString();
}
class GenericStack : System.Collections.Stack{
this ();
}
class FastCallExceptionHandler : System.MulticastDelegate{
this (System.Object,System.IntPtr);
Void Invoke(System.Exception);
IAsyncResult BeginInvoke(System.Exception,System.AsyncCallback,System.Object);
Void EndInvoke(System.IAsyncResult);
}
class GetMethodDelegate : System.MulticastDelegate{
this (System.Object,System.IntPtr);
MethodInfo Invoke(System.Type,System.String,System.Boolean,System.Boolean,System.Type[]);
IAsyncResult BeginInvoke(System.Type,System.String,System.Boolean,System.Boolean,System.Type[],System.AsyncCallback,System.Object);
MethodInfo EndInvoke(System.IAsyncResult);
}
}
