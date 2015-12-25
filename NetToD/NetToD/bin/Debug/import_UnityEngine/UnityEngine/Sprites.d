module UnityEngine.Sprites;
import UnityEngine;
import System;
public:
pragma(assembly,"UnityEngine"){
class DataUtility : System.Object{
this ();
static Vector4 GetInnerUV(UnityEngine.Sprite);
static Vector4 GetOuterUV(UnityEngine.Sprite);
static Vector4 GetPadding(UnityEngine.Sprite);
static Vector2 GetMinSize(UnityEngine.Sprite);
}
}
