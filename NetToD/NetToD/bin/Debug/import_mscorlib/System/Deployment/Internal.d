module System.Deployment.Internal;
import System;
public:
pragma(assembly,"mscorlib"){
class InternalApplicationIdentityHelper : System.Object{
static Object GetInternalAppId(System.ApplicationIdentity);
}
class InternalActivationContextHelper : System.Object{
static Object GetActivationContextData(System.ActivationContext);
static Object GetApplicationComponentManifest(System.ActivationContext);
static Object GetDeploymentComponentManifest(System.ActivationContext);
static Void PrepareForExecution(System.ActivationContext);
static Boolean IsFirstRun(System.ActivationContext);
static Byte[] GetApplicationManifestBytes(System.ActivationContext);
static Byte[] GetDeploymentManifestBytes(System.ActivationContext);
}
}
