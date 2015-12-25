module System.Diagnostics.CodeAnalysis;
import System;
public:
pragma(assembly,"mscorlib"){
class SuppressMessageAttribute : System.Attribute{
this (System.String,System.String);
String get_Category();
String get_CheckId();
String get_Scope();
Void set_Scope(System.String);
String get_Target();
Void set_Target(System.String);
String get_MessageId();
Void set_MessageId(System.String);
String get_Justification();
Void set_Justification(System.String);
}
}
