module UnityEngine.Internal;
import System;
public:
pragma(assembly,"UnityEngine"){
class DefaultValueAttribute : System.Attribute{
this (System.String);
System.__object get_Value();
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
}
class ExcludeFromDocsAttribute : System.Attribute{
this ();
}
}
