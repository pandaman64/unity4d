module UnityEngine.Assertions.Comparers;
import System;
public:
pragma(assembly,"UnityEngine"){
class FloatComparer : System.__object{
this ();
this (System.Boolean);
this (System.Single);
this (System.Single,System.Boolean);
System.Boolean Equals(System.Single,System.Single);
System.Int32 GetHashCode(System.Single);
static System.Boolean AreEqual(System.Single,System.Single,System.Single);
static System.Boolean AreEqualRelative(System.Single,System.Single,System.Single);
}
}
