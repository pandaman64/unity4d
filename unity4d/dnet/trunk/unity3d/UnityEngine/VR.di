module UnityEngine.VR;
import System;
import UnityEngine;
public:
pragma(assembly,"UnityEngine"){
class VRDeviceType : System.Enum{
Int32 value__;
}
class VRNode : System.Enum{
Int32 value__;
}
class VRSettings : System.__object{
this ();
static System.Boolean get_enabled();
static System.Void set_enabled(System.Boolean);
static System.Boolean get_showDeviceView();
static System.Void set_showDeviceView(System.Boolean);
static System.Single get_renderScale();
static System.Void set_renderScale(System.Single);
static UnityEngine.VR.VRDeviceType get_loadedDevice();
static System.Void set_loadedDevice(UnityEngine.VR.VRDeviceType);
}
class VRDevice : System.__object{
this ();
static System.Boolean get_isPresent();
static System.String get_family();
static System.String get_model();
static System.IntPtr GetNativePtr();
}
class InputTracking : System.__object{
this ();
static UnityEngine.Vector3 GetLocalPosition(UnityEngine.VR.VRNode);
static UnityEngine.Quaternion GetLocalRotation(UnityEngine.VR.VRNode);
static System.Void Recenter();
}
}
