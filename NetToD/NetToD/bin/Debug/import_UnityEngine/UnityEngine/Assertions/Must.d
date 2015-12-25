module UnityEngine.Assertions.Must;
import System;
public:
pragma(assembly,"UnityEngine"){
class MustExtensions : System.Object{
static Void MustBeTrue(System.Boolean);
static Void MustBeTrue(System.Boolean,System.String);
static Void MustBeFalse(System.Boolean);
static Void MustBeFalse(System.Boolean,System.String);
static Void MustBeApproximatelyEqual(System.Single,System.Single);
static Void MustBeApproximatelyEqual(System.Single,System.Single,System.String);
static Void MustBeApproximatelyEqual(System.Single,System.Single,System.Single);
static Void MustBeApproximatelyEqual(System.Single,System.Single,System.Single,System.String);
static Void MustNotBeApproximatelyEqual(System.Single,System.Single);
static Void MustNotBeApproximatelyEqual(System.Single,System.Single,System.String);
static Void MustNotBeApproximatelyEqual(System.Single,System.Single,System.Single);
static Void MustNotBeApproximatelyEqual(System.Single,System.Single,System.Single,System.String);
}
}
