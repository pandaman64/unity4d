module UnityEngine.Assertions;
import System;
import System.Runtime.Serialization;
import System.Collections;
import System.Reflection;
public:
pragma(assembly,"UnityEngine"){
class Assert : System.Object{
static Void IsTrue(System.Boolean);
static Void IsTrue(System.Boolean,System.String);
static Void IsFalse(System.Boolean);
static Void IsFalse(System.Boolean,System.String);
static Void AreApproximatelyEqual(System.Single,System.Single);
static Void AreApproximatelyEqual(System.Single,System.Single,System.String);
static Void AreApproximatelyEqual(System.Single,System.Single,System.Single);
static Void AreApproximatelyEqual(System.Single,System.Single,System.Single,System.String);
static Void AreNotApproximatelyEqual(System.Single,System.Single);
static Void AreNotApproximatelyEqual(System.Single,System.Single,System.String);
static Void AreNotApproximatelyEqual(System.Single,System.Single,System.Single);
static Void AreNotApproximatelyEqual(System.Single,System.Single,System.Single,System.String);
}
class AssertionException : System.Exception{
this (System.String,System.String);
String get_Message();
}
}
