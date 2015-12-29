module System.Security.Cryptography.X509Certificates;
import System;
import System.Security;
import System.Runtime.Serialization;
public:
pragma(assembly,"mscorlib"){
class X509ContentType : System.Enum{
}
class X509KeyStorageFlags : System.Enum{
}
class X509Certificate : System.__object{
this ();
this (System.Byte[]);
this (System.Byte[],System.String);
this (System.Byte[],System.Security.SecureString);
this (System.Byte[],System.String,System.Security.Cryptography.X509Certificates.X509KeyStorageFlags);
this (System.Byte[],System.Security.SecureString,System.Security.Cryptography.X509Certificates.X509KeyStorageFlags);
this (System.String);
this (System.String,System.String);
this (System.String,System.Security.SecureString);
this (System.String,System.String,System.Security.Cryptography.X509Certificates.X509KeyStorageFlags);
this (System.String,System.Security.SecureString,System.Security.Cryptography.X509Certificates.X509KeyStorageFlags);
this (System.IntPtr);
this (System.Security.Cryptography.X509Certificates.X509Certificate);
this (System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
static System.Security.Cryptography.X509Certificates.X509Certificate CreateFromCertFile(System.String);
static System.Security.Cryptography.X509Certificates.X509Certificate CreateFromSignedFile(System.String);
System.IntPtr get_Handle();
System.String GetName();
System.String GetIssuerName();
System.Byte[] GetSerialNumber();
System.String GetSerialNumberString();
System.Byte[] GetKeyAlgorithmParameters();
System.String GetKeyAlgorithmParametersString();
System.String GetKeyAlgorithm();
System.Byte[] GetPublicKey();
System.String GetPublicKeyString();
System.Byte[] GetRawCertData();
System.String GetRawCertDataString();
System.Byte[] GetCertHash();
System.String GetCertHashString();
System.String GetEffectiveDateString();
System.String GetExpirationDateString();
System.Boolean Equals(System.__object);
System.Boolean Equals(System.Security.Cryptography.X509Certificates.X509Certificate);
System.Int32 GetHashCode();
System.String ToString();
System.String ToString(System.Boolean);
System.String GetFormat();
System.String get_Issuer();
System.String get_Subject();
System.Void Import(System.Byte[]);
System.Void Import(System.Byte[],System.String,System.Security.Cryptography.X509Certificates.X509KeyStorageFlags);
System.Void Import(System.Byte[],System.Security.SecureString,System.Security.Cryptography.X509Certificates.X509KeyStorageFlags);
System.Void Import(System.String);
System.Void Import(System.String,System.String,System.Security.Cryptography.X509Certificates.X509KeyStorageFlags);
System.Void Import(System.String,System.Security.SecureString,System.Security.Cryptography.X509Certificates.X509KeyStorageFlags);
System.Byte[] Export(System.Security.Cryptography.X509Certificates.X509ContentType);
System.Byte[] Export(System.Security.Cryptography.X509Certificates.X509ContentType,System.String);
System.Byte[] Export(System.Security.Cryptography.X509Certificates.X509ContentType,System.Security.SecureString);
System.Void Reset();
System.Void Dispose();
}
}
