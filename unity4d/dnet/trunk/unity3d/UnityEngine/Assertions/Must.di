module UnityEngine.Assertions.Must;
import System;
public:
pragma(assembly,"UnityEngine"){
class MustExtensions : System.__object{
static System.Void MustBeTrue(System.Boolean);
static System.Void MustBeTrue(System.Boolean,System.String);
static System.Void MustBeFalse(System.Boolean);
static System.Void MustBeFalse(System.Boolean,System.String);
static System.Void MustBeApproximatelyEqual(System.Single,System.Single);
static System.Void MustBeApproximatelyEqual(System.Single,System.Single,System.String);
static System.Void MustBeApproximatelyEqual(System.Single,System.Single,System.Single);
static System.Void MustBeApproximatelyEqual(System.Single,System.Single,System.Single,System.String);
static System.Void MustNotBeApproximatelyEqual(System.Single,System.Single);
static System.Void MustNotBeApproximatelyEqual(System.Single,System.Single,System.String);
static System.Void MustNotBeApproximatelyEqual(System.Single,System.Single,System.Single);
static System.Void MustNotBeApproximatelyEqual(System.Single,System.Single,System.Single,System.String);
}
}
