module UnityEngine.Sprites;
import UnityEngine;
import System;
public:
pragma(assembly,"UnityEngine"){
class DataUtility : System.__object{
this ();
static UnityEngine.Vector4 GetInnerUV(UnityEngine.Sprite);
static UnityEngine.Vector4 GetOuterUV(UnityEngine.Sprite);
static UnityEngine.Vector4 GetPadding(UnityEngine.Sprite);
static UnityEngine.Vector2 GetMinSize(UnityEngine.Sprite);
}
}
