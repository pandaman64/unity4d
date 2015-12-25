module UnityEngine.VR;
import System;
import UnityEngine;
public:
pragma(assembly,"UnityEngine"){
class VRDeviceType : System.Enum{
}
class VRNode : System.Enum{
}
class VRSettings : System.Object{
this ();
static Boolean get_enabled();
static Void set_enabled(System.Boolean);
static Boolean get_showDeviceView();
static Void set_showDeviceView(System.Boolean);
static Single get_renderScale();
static Void set_renderScale(System.Single);
static VRDeviceType get_loadedDevice();
static Void set_loadedDevice(UnityEngine.VR.VRDeviceType);
}
class VRDevice : System.Object{
this ();
static Boolean get_isPresent();
static String get_family();
static String get_model();
static IntPtr GetNativePtr();
}
class InputTracking : System.Object{
this ();
static Vector3 GetLocalPosition(UnityEngine.VR.VRNode);
static Quaternion GetLocalRotation(UnityEngine.VR.VRNode);
static Void Recenter();
}
}
