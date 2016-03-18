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
Int32 value__;
}
class GITextureType : System.Enum{
Int32 value__;
}
class GIDebugVisualisation : System.__object{
this ();
static System.Void ResetRuntimeInputTextures();
static System.Void PlayCycleMode();
static System.Void PauseCycleMode();
static System.Void StopCycleMode();
static System.Boolean get_cycleMode();
static System.Boolean get_pauseCycleMode();
static UnityEngineInternal.GITextureType get_texType();
static System.Void set_texType(UnityEngineInternal.GITextureType);
static System.Void CycleSkipInstances(System.Int32);
static System.Void CycleSkipSystems(System.Int32);
}
class APIUpdaterRuntimeServices : System.__object{
this ();
static UnityEngine.Component AddComponent(UnityEngine.GameObject,System.String,System.String);
}
class TypeInferenceRules : System.Enum{
Int32 value__;
}
class TypeInferenceRuleAttribute : System.Attribute{
this (UnityEngineInternal.TypeInferenceRules);
this (System.String);
System.String ToString();
}
class GenericStack : System.Collections.Stack{
this ();
}
class FastCallExceptionHandler : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.Void EndInvoke(System.IAsyncResult);
}
class GetMethodDelegate : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.Reflection.MethodInfo Invoke(System.Type,System.String,System.Boolean,System.Boolean,System.Type[]);
System.IAsyncResult BeginInvoke(System.Type,System.String,System.Boolean,System.Boolean,System.Type[],System.AsyncCallback,System.__object);
System.Reflection.MethodInfo EndInvoke(System.IAsyncResult);
}
}
