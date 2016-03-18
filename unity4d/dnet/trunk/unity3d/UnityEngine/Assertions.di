module UnityEngine.Assertions;
import System;
import System.Runtime.Serialization;
import System.Collections;
import System.Reflection;
public:
pragma(assembly,"UnityEngine"){
class Assert : System.__object{
static System.Void IsTrue(System.Boolean);
static System.Void IsTrue(System.Boolean,System.String);
static System.Void IsFalse(System.Boolean);
static System.Void IsFalse(System.Boolean,System.String);
static System.Void AreApproximatelyEqual(System.Single,System.Single);
static System.Void AreApproximatelyEqual(System.Single,System.Single,System.String);
static System.Void AreApproximatelyEqual(System.Single,System.Single,System.Single);
static System.Void AreApproximatelyEqual(System.Single,System.Single,System.Single,System.String);
static System.Void AreNotApproximatelyEqual(System.Single,System.Single);
static System.Void AreNotApproximatelyEqual(System.Single,System.Single,System.String);
static System.Void AreNotApproximatelyEqual(System.Single,System.Single,System.Single);
static System.Void AreNotApproximatelyEqual(System.Single,System.Single,System.Single,System.String);
}
}
