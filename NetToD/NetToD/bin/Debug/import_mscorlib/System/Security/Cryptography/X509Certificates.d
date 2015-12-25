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
class X509Certificate : System.Object{
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
static X509Certificate CreateFromCertFile(System.String);
static X509Certificate CreateFromSignedFile(System.String);
IntPtr get_Handle();
String GetName();
String GetIssuerName();
Byte[] GetSerialNumber();
String GetSerialNumberString();
Byte[] GetKeyAlgorithmParameters();
String GetKeyAlgorithmParametersString();
String GetKeyAlgorithm();
Byte[] GetPublicKey();
String GetPublicKeyString();
Byte[] GetRawCertData();
String GetRawCertDataString();
Byte[] GetCertHash();
String GetCertHashString();
String GetEffectiveDateString();
String GetExpirationDateString();
Boolean Equals(System.Object);
Boolean Equals(System.Security.Cryptography.X509Certificates.X509Certificate);
Int32 GetHashCode();
String ToString();
String ToString(System.Boolean);
String GetFormat();
String get_Issuer();
String get_Subject();
Void Import(System.Byte[]);
Void Import(System.Byte[],System.String,System.Security.Cryptography.X509Certificates.X509KeyStorageFlags);
Void Import(System.Byte[],System.Security.SecureString,System.Security.Cryptography.X509Certificates.X509KeyStorageFlags);
Void Import(System.String);
Void Import(System.String,System.String,System.Security.Cryptography.X509Certificates.X509KeyStorageFlags);
Void Import(System.String,System.Security.SecureString,System.Security.Cryptography.X509Certificates.X509KeyStorageFlags);
Byte[] Export(System.Security.Cryptography.X509Certificates.X509ContentType);
Byte[] Export(System.Security.Cryptography.X509Certificates.X509ContentType,System.String);
Byte[] Export(System.Security.Cryptography.X509Certificates.X509ContentType,System.Security.SecureString);
Void Reset();
Void Dispose();
}
}
