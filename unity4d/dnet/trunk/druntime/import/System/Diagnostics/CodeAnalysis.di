module System.Diagnostics.CodeAnalysis;
import System;
public:
pragma(assembly,"mscorlib"){
class SuppressMessageAttribute : System.Attribute{
this (System.String,System.String);
System.String get_Category();
System.String get_CheckId();
System.String get_Scope();
System.Void set_Scope(System.String);
System.String get_Target();
System.Void set_Target(System.String);
System.String get_MessageId();
System.Void set_MessageId(System.String);
System.String get_Justification();
System.Void set_Justification(System.String);
}
}
