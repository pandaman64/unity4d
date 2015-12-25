module UnityEngine.Assertions.Comparers;
import System;
public:
pragma(assembly,"UnityEngine"){
class FloatComparer : System.Object{
this ();
this (System.Boolean);
this (System.Single);
this (System.Single,System.Boolean);
Boolean Equals(System.Single,System.Single);
Int32 GetHashCode(System.Single);
static Boolean AreEqual(System.Single,System.Single,System.Single);
static Boolean AreEqualRelative(System.Single,System.Single,System.Single);
}
}
