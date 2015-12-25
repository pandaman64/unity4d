module UnityEngine.Internal;
import System;
public:
pragma(assembly,"UnityEngine"){
class DefaultValueAttribute : System.Attribute{
this (System.String);
Object get_Value();
Boolean Equals(System.Object);
Int32 GetHashCode();
}
class ExcludeFromDocsAttribute : System.Attribute{
this ();
}
}
