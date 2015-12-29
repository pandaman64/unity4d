module System.Deployment.Internal;
import System;
public:
pragma(assembly,"mscorlib"){
class InternalApplicationIdentityHelper : System.__object{
static System.__object GetInternalAppId(System.ApplicationIdentity);
}
class InternalActivationContextHelper : System.__object{
static System.__object GetActivationContextData(System.ActivationContext);
static System.__object GetApplicationComponentManifest(System.ActivationContext);
static System.__object GetDeploymentComponentManifest(System.ActivationContext);
static System.Void PrepareForExecution(System.ActivationContext);
static System.Boolean IsFirstRun(System.ActivationContext);
static System.Byte[] GetApplicationManifestBytes(System.ActivationContext);
static System.Byte[] GetDeploymentManifestBytes(System.ActivationContext);
}
}
