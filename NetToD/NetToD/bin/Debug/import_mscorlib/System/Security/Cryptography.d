module System.Security.Cryptography;
import System;
import System.Runtime.Serialization;
import System.Collections;
import System.Reflection;
import System.Security.AccessControl;
import System.Security;
import System.IO;
import System.Threading;
import System.Threading.Tasks;
import System.Runtime.Remoting;
public:
pragma(assembly,"mscorlib"){
class CipherMode : System.Enum{
}
class PaddingMode : System.Enum{
}
class KeySizes : System.Object{
this (System.Int32,System.Int32,System.Int32);
Int32 get_MinSize();
Int32 get_MaxSize();
Int32 get_SkipSize();
}
class CryptographicException : System.SystemException{
this ();
this (System.String);
this (System.String,System.String);
this (System.String,System.Exception);
this (System.Int32);
}
class CryptographicUnexpectedOperationException : System.Security.Cryptography.CryptographicException{
this ();
this (System.String);
this (System.String,System.String);
this (System.String,System.Exception);
}
interface ICryptoTransform{
Int32 get_InputBlockSize();
Int32 get_OutputBlockSize();
Boolean get_CanTransformMultipleBlocks();
Boolean get_CanReuseTransform();
Int32 TransformBlock(System.Byte[],System.Int32,System.Int32,System.Byte[],System.Int32);
Byte[] TransformFinalBlock(System.Byte[],System.Int32,System.Int32);
}
class RandomNumberGenerator : System.Object{
static RandomNumberGenerator Create();
static RandomNumberGenerator Create(System.String);
Void Dispose();
Void GetBytes(System.Byte[]);
Void GetBytes(System.Byte[],System.Int32,System.Int32);
Void GetNonZeroBytes(System.Byte[]);
}
class RNGCryptoServiceProvider : System.Security.Cryptography.RandomNumberGenerator{
this ();
this (System.String);
this (System.Byte[]);
this (System.Security.Cryptography.CspParameters);
Void GetBytes(System.Byte[]);
Void GetNonZeroBytes(System.Byte[]);
}
class Aes : System.Security.Cryptography.SymmetricAlgorithm{
static Aes Create();
static Aes Create(System.String);
}
class AsymmetricAlgorithm : System.Object{
Void Dispose();
Void Clear();
Int32 get_KeySize();
Void set_KeySize(System.Int32);
KeySizes[] get_LegalKeySizes();
String get_SignatureAlgorithm();
String get_KeyExchangeAlgorithm();
static AsymmetricAlgorithm Create();
static AsymmetricAlgorithm Create(System.String);
Void FromXmlString(System.String);
String ToXmlString(System.Boolean);
}
class AsymmetricKeyExchangeDeformatter : System.Object{
String get_Parameters();
Void set_Parameters(System.String);
Void SetKey(System.Security.Cryptography.AsymmetricAlgorithm);
Byte[] DecryptKeyExchange(System.Byte[]);
}
class AsymmetricKeyExchangeFormatter : System.Object{
String get_Parameters();
Void SetKey(System.Security.Cryptography.AsymmetricAlgorithm);
Byte[] CreateKeyExchange(System.Byte[]);
Byte[] CreateKeyExchange(System.Byte[],System.Type);
}
class AsymmetricSignatureDeformatter : System.Object{
Void SetKey(System.Security.Cryptography.AsymmetricAlgorithm);
Void SetHashAlgorithm(System.String);
Boolean VerifySignature(System.Security.Cryptography.HashAlgorithm,System.Byte[]);
Boolean VerifySignature(System.Byte[],System.Byte[]);
}
class AsymmetricSignatureFormatter : System.Object{
Void SetKey(System.Security.Cryptography.AsymmetricAlgorithm);
Void SetHashAlgorithm(System.String);
Byte[] CreateSignature(System.Security.Cryptography.HashAlgorithm);
Byte[] CreateSignature(System.Byte[]);
}
class FromBase64TransformMode : System.Enum{
}
class ToBase64Transform : System.Object{
this ();
Int32 get_InputBlockSize();
Int32 get_OutputBlockSize();
Boolean get_CanTransformMultipleBlocks();
Boolean get_CanReuseTransform();
Int32 TransformBlock(System.Byte[],System.Int32,System.Int32,System.Byte[],System.Int32);
Byte[] TransformFinalBlock(System.Byte[],System.Int32,System.Int32);
Void Dispose();
Void Clear();
}
class FromBase64Transform : System.Object{
this ();
this (System.Security.Cryptography.FromBase64TransformMode);
Int32 get_InputBlockSize();
Int32 get_OutputBlockSize();
Boolean get_CanTransformMultipleBlocks();
Boolean get_CanReuseTransform();
Int32 TransformBlock(System.Byte[],System.Int32,System.Int32,System.Byte[],System.Int32);
Byte[] TransformFinalBlock(System.Byte[],System.Int32,System.Int32);
Void Dispose();
Void Clear();
}
class CryptoAPITransform : System.Object{
Void Dispose();
Void Clear();
IntPtr get_KeyHandle();
Int32 get_InputBlockSize();
Int32 get_OutputBlockSize();
Boolean get_CanTransformMultipleBlocks();
Boolean get_CanReuseTransform();
Void Reset();
Int32 TransformBlock(System.Byte[],System.Int32,System.Int32,System.Byte[],System.Int32);
Byte[] TransformFinalBlock(System.Byte[],System.Int32,System.Int32);
}
class CspProviderFlags : System.Enum{
}
class CspParameters : System.Object{
this ();
this (System.Int32);
this (System.Int32,System.String);
this (System.Int32,System.String,System.String);
this (System.Int32,System.String,System.String,System.Security.AccessControl.CryptoKeySecurity,System.Security.SecureString);
this (System.Int32,System.String,System.String,System.Security.AccessControl.CryptoKeySecurity,System.IntPtr);
CspProviderFlags get_Flags();
Void set_Flags(System.Security.Cryptography.CspProviderFlags);
CryptoKeySecurity get_CryptoKeySecurity();
Void set_CryptoKeySecurity(System.Security.AccessControl.CryptoKeySecurity);
SecureString get_KeyPassword();
Void set_KeyPassword(System.Security.SecureString);
IntPtr get_ParentWindowHandle();
Void set_ParentWindowHandle(System.IntPtr);
}
class CryptoConfig : System.Object{
this ();
static Object CreateFromName(System.String,System.Object[]);
static Boolean get_AllowOnlyFipsAlgorithms();
static Void AddAlgorithm(System.Type,System.String[]);
static Object CreateFromName(System.String);
static Void AddOID(System.String,System.String[]);
static String MapNameToOID(System.String);
static Byte[] EncodeOID(System.String);
}
class CryptoStreamMode : System.Enum{
}
class CryptoStream : System.IO.Stream{
this (System.IO.Stream,System.Security.Cryptography.ICryptoTransform,System.Security.Cryptography.CryptoStreamMode);
Void FlushFinalBlock();
Boolean get_CanRead();
Boolean get_CanSeek();
Boolean get_CanWrite();
Int64 get_Length();
Int64 get_Position();
Void set_Position(System.Int64);
Boolean get_HasFlushedFinalBlock();
Void Flush();
Task FlushAsync(System.Threading.CancellationToken);
Int64 Seek(System.Int64,System.IO.SeekOrigin);
Void SetLength(System.Int64);
Void Write(System.Byte[],System.Int32,System.Int32);
Task WriteAsync(System.Byte[],System.Int32,System.Int32,System.Threading.CancellationToken);
Void Clear();
}
class DES : System.Security.Cryptography.SymmetricAlgorithm{
Byte[] get_Key();
Void set_Key(System.Byte[]);
static DES Create();
static DES Create(System.String);
static Boolean IsWeakKey(System.Byte[]);
static Boolean IsSemiWeakKey(System.Byte[]);
}
class DESCryptoServiceProvider : System.Security.Cryptography.DES{
this ();
ICryptoTransform CreateEncryptor(System.Byte[],System.Byte[]);
ICryptoTransform CreateDecryptor(System.Byte[],System.Byte[]);
Void GenerateKey();
Void GenerateIV();
}
class DeriveBytes : System.Object{
Byte[] GetBytes(System.Int32);
Void Reset();
Void Dispose();
}
class DSAParameters : System.ValueType{
}
class DSA : System.Security.Cryptography.AsymmetricAlgorithm{
static DSA Create();
static DSA Create(System.String);
Byte[] CreateSignature(System.Byte[]);
Boolean VerifySignature(System.Byte[],System.Byte[]);
Void FromXmlString(System.String);
String ToXmlString(System.Boolean);
DSAParameters ExportParameters(System.Boolean);
Void ImportParameters(System.Security.Cryptography.DSAParameters);
}
class DSACryptoServiceProvider : System.Security.Cryptography.DSA{
this ();
this (System.Int32);
this (System.Security.Cryptography.CspParameters);
this (System.Int32,System.Security.Cryptography.CspParameters);
Boolean get_PublicOnly();
CspKeyContainerInfo get_CspKeyContainerInfo();
Int32 get_KeySize();
String get_KeyExchangeAlgorithm();
String get_SignatureAlgorithm();
static Boolean get_UseMachineKeyStore();
static Void set_UseMachineKeyStore(System.Boolean);
Boolean get_PersistKeyInCsp();
Void set_PersistKeyInCsp(System.Boolean);
DSAParameters ExportParameters(System.Boolean);
Byte[] ExportCspBlob(System.Boolean);
Void ImportParameters(System.Security.Cryptography.DSAParameters);
Void ImportCspBlob(System.Byte[]);
Byte[] SignData(System.IO.Stream);
Byte[] SignData(System.Byte[]);
Byte[] SignData(System.Byte[],System.Int32,System.Int32);
Boolean VerifyData(System.Byte[],System.Byte[]);
Byte[] CreateSignature(System.Byte[]);
Boolean VerifySignature(System.Byte[],System.Byte[]);
Byte[] SignHash(System.Byte[],System.String);
Boolean VerifyHash(System.Byte[],System.String,System.Byte[]);
}
class DSASignatureDeformatter : System.Security.Cryptography.AsymmetricSignatureDeformatter{
this ();
this (System.Security.Cryptography.AsymmetricAlgorithm);
Void SetKey(System.Security.Cryptography.AsymmetricAlgorithm);
Void SetHashAlgorithm(System.String);
Boolean VerifySignature(System.Byte[],System.Byte[]);
}
class DSASignatureFormatter : System.Security.Cryptography.AsymmetricSignatureFormatter{
this ();
this (System.Security.Cryptography.AsymmetricAlgorithm);
Void SetKey(System.Security.Cryptography.AsymmetricAlgorithm);
Void SetHashAlgorithm(System.String);
Byte[] CreateSignature(System.Byte[]);
}
class HMAC : System.Security.Cryptography.KeyedHashAlgorithm{
Byte[] get_Key();
Void set_Key(System.Byte[]);
String get_HashName();
Void set_HashName(System.String);
static HMAC Create();
static HMAC Create(System.String);
Void Initialize();
}
class HMACMD5 : System.Security.Cryptography.HMAC{
this ();
this (System.Byte[]);
}
class HMACRIPEMD160 : System.Security.Cryptography.HMAC{
this ();
this (System.Byte[]);
}
class HMACSHA1 : System.Security.Cryptography.HMAC{
this ();
this (System.Byte[]);
this (System.Byte[],System.Boolean);
}
class HMACSHA256 : System.Security.Cryptography.HMAC{
this ();
this (System.Byte[]);
}
class HMACSHA384 : System.Security.Cryptography.HMAC{
this ();
this (System.Byte[]);
Boolean get_ProduceLegacyHmacValues();
Void set_ProduceLegacyHmacValues(System.Boolean);
}
class HMACSHA512 : System.Security.Cryptography.HMAC{
this ();
this (System.Byte[]);
Boolean get_ProduceLegacyHmacValues();
Void set_ProduceLegacyHmacValues(System.Boolean);
}
class HashAlgorithm : System.Object{
Int32 get_HashSize();
Byte[] get_Hash();
static HashAlgorithm Create();
static HashAlgorithm Create(System.String);
Byte[] ComputeHash(System.IO.Stream);
Byte[] ComputeHash(System.Byte[]);
Byte[] ComputeHash(System.Byte[],System.Int32,System.Int32);
Int32 get_InputBlockSize();
Int32 get_OutputBlockSize();
Boolean get_CanTransformMultipleBlocks();
Boolean get_CanReuseTransform();
Int32 TransformBlock(System.Byte[],System.Int32,System.Int32,System.Byte[],System.Int32);
Byte[] TransformFinalBlock(System.Byte[],System.Int32,System.Int32);
Void Dispose();
Void Clear();
Void Initialize();
}
class HashAlgorithmName : System.ValueType{
this (System.String);
static HashAlgorithmName get_MD5();
static HashAlgorithmName get_SHA1();
static HashAlgorithmName get_SHA256();
static HashAlgorithmName get_SHA384();
static HashAlgorithmName get_SHA512();
String get_Name();
String ToString();
Boolean Equals(System.Object);
Boolean Equals(System.Security.Cryptography.HashAlgorithmName);
Int32 GetHashCode();
static Boolean op_Equality(System.Security.Cryptography.HashAlgorithmName,System.Security.Cryptography.HashAlgorithmName);
static Boolean op_Inequality(System.Security.Cryptography.HashAlgorithmName,System.Security.Cryptography.HashAlgorithmName);
}
class KeyNumber : System.Enum{
}
class CspKeyContainerInfo : System.Object{
this (System.Security.Cryptography.CspParameters);
Boolean get_MachineKeyStore();
String get_ProviderName();
Int32 get_ProviderType();
String get_KeyContainerName();
String get_UniqueKeyContainerName();
KeyNumber get_KeyNumber();
Boolean get_Exportable();
Boolean get_HardwareDevice();
Boolean get_Removable();
Boolean get_Accessible();
Boolean get_Protected();
CryptoKeySecurity get_CryptoKeySecurity();
Boolean get_RandomlyGenerated();
}
interface ICspAsymmetricAlgorithm{
CspKeyContainerInfo get_CspKeyContainerInfo();
Byte[] ExportCspBlob(System.Boolean);
Void ImportCspBlob(System.Byte[]);
}
class KeyedHashAlgorithm : System.Security.Cryptography.HashAlgorithm{
Byte[] get_Key();
Void set_Key(System.Byte[]);
static KeyedHashAlgorithm Create();
static KeyedHashAlgorithm Create(System.String);
}
class MACTripleDES : System.Security.Cryptography.KeyedHashAlgorithm{
this ();
this (System.Byte[]);
this (System.String,System.Byte[]);
Void Initialize();
PaddingMode get_Padding();
Void set_Padding(System.Security.Cryptography.PaddingMode);
}
class MD5 : System.Security.Cryptography.HashAlgorithm{
static MD5 Create();
static MD5 Create(System.String);
}
class MD5CryptoServiceProvider : System.Security.Cryptography.MD5{
this ();
Void Initialize();
}
class MaskGenerationMethod : System.Object{
Byte[] GenerateMask(System.Byte[],System.Int32);
}
class PasswordDeriveBytes : System.Security.Cryptography.DeriveBytes{
this (System.String,System.Byte[]);
this (System.Byte[],System.Byte[]);
this (System.String,System.Byte[],System.String,System.Int32);
this (System.Byte[],System.Byte[],System.String,System.Int32);
this (System.String,System.Byte[],System.Security.Cryptography.CspParameters);
this (System.Byte[],System.Byte[],System.Security.Cryptography.CspParameters);
this (System.String,System.Byte[],System.String,System.Int32,System.Security.Cryptography.CspParameters);
this (System.Byte[],System.Byte[],System.String,System.Int32,System.Security.Cryptography.CspParameters);
String get_HashName();
Void set_HashName(System.String);
Int32 get_IterationCount();
Void set_IterationCount(System.Int32);
Byte[] get_Salt();
Void set_Salt(System.Byte[]);
Byte[] GetBytes(System.Int32);
Void Reset();
Byte[] CryptDeriveKey(System.String,System.String,System.Int32,System.Byte[]);
}
class PKCS1MaskGenerationMethod : System.Security.Cryptography.MaskGenerationMethod{
this ();
String get_HashName();
Void set_HashName(System.String);
Byte[] GenerateMask(System.Byte[],System.Int32);
}
class RC2 : System.Security.Cryptography.SymmetricAlgorithm{
Int32 get_EffectiveKeySize();
Void set_EffectiveKeySize(System.Int32);
Int32 get_KeySize();
Void set_KeySize(System.Int32);
static RC2 Create();
static RC2 Create(System.String);
}
class RC2CryptoServiceProvider : System.Security.Cryptography.RC2{
this ();
Int32 get_EffectiveKeySize();
Void set_EffectiveKeySize(System.Int32);
Boolean get_UseSalt();
Void set_UseSalt(System.Boolean);
ICryptoTransform CreateEncryptor(System.Byte[],System.Byte[]);
ICryptoTransform CreateDecryptor(System.Byte[],System.Byte[]);
Void GenerateKey();
Void GenerateIV();
}
class Rfc2898DeriveBytes : System.Security.Cryptography.DeriveBytes{
this (System.String,System.Int32);
this (System.String,System.Int32,System.Int32);
this (System.String,System.Byte[]);
this (System.String,System.Byte[],System.Int32);
this (System.Byte[],System.Byte[],System.Int32);
Int32 get_IterationCount();
Void set_IterationCount(System.Int32);
Byte[] get_Salt();
Void set_Salt(System.Byte[]);
Byte[] GetBytes(System.Int32);
Void Reset();
Byte[] CryptDeriveKey(System.String,System.String,System.Int32,System.Byte[]);
}
class RIPEMD160 : System.Security.Cryptography.HashAlgorithm{
static RIPEMD160 Create();
static RIPEMD160 Create(System.String);
}
class RIPEMD160Managed : System.Security.Cryptography.RIPEMD160{
this ();
Void Initialize();
}
class RSAParameters : System.ValueType{
}
class RSA : System.Security.Cryptography.AsymmetricAlgorithm{
static RSA Create();
static RSA Create(System.String);
Byte[] Encrypt(System.Byte[],System.Security.Cryptography.RSAEncryptionPadding);
Byte[] Decrypt(System.Byte[],System.Security.Cryptography.RSAEncryptionPadding);
Byte[] SignHash(System.Byte[],System.Security.Cryptography.HashAlgorithmName,System.Security.Cryptography.RSASignaturePadding);
Boolean VerifyHash(System.Byte[],System.Byte[],System.Security.Cryptography.HashAlgorithmName,System.Security.Cryptography.RSASignaturePadding);
Byte[] SignData(System.Byte[],System.Security.Cryptography.HashAlgorithmName,System.Security.Cryptography.RSASignaturePadding);
Byte[] SignData(System.Byte[],System.Int32,System.Int32,System.Security.Cryptography.HashAlgorithmName,System.Security.Cryptography.RSASignaturePadding);
Byte[] SignData(System.IO.Stream,System.Security.Cryptography.HashAlgorithmName,System.Security.Cryptography.RSASignaturePadding);
Boolean VerifyData(System.Byte[],System.Byte[],System.Security.Cryptography.HashAlgorithmName,System.Security.Cryptography.RSASignaturePadding);
Boolean VerifyData(System.Byte[],System.Int32,System.Int32,System.Byte[],System.Security.Cryptography.HashAlgorithmName,System.Security.Cryptography.RSASignaturePadding);
Boolean VerifyData(System.IO.Stream,System.Byte[],System.Security.Cryptography.HashAlgorithmName,System.Security.Cryptography.RSASignaturePadding);
Byte[] DecryptValue(System.Byte[]);
Byte[] EncryptValue(System.Byte[]);
String get_KeyExchangeAlgorithm();
String get_SignatureAlgorithm();
Void FromXmlString(System.String);
String ToXmlString(System.Boolean);
RSAParameters ExportParameters(System.Boolean);
Void ImportParameters(System.Security.Cryptography.RSAParameters);
}
class RSASignaturePadding : System.Object{
static RSASignaturePadding get_Pkcs1();
static RSASignaturePadding get_Pss();
RSASignaturePaddingMode get_Mode();
Int32 GetHashCode();
Boolean Equals(System.Object);
Boolean Equals(System.Security.Cryptography.RSASignaturePadding);
static Boolean op_Equality(System.Security.Cryptography.RSASignaturePadding,System.Security.Cryptography.RSASignaturePadding);
static Boolean op_Inequality(System.Security.Cryptography.RSASignaturePadding,System.Security.Cryptography.RSASignaturePadding);
String ToString();
}
class RSASignaturePaddingMode : System.Enum{
}
class RSACryptoServiceProvider : System.Security.Cryptography.RSA{
this ();
this (System.Int32);
this (System.Security.Cryptography.CspParameters);
this (System.Int32,System.Security.Cryptography.CspParameters);
Boolean get_PublicOnly();
CspKeyContainerInfo get_CspKeyContainerInfo();
Int32 get_KeySize();
String get_KeyExchangeAlgorithm();
String get_SignatureAlgorithm();
static Boolean get_UseMachineKeyStore();
static Void set_UseMachineKeyStore(System.Boolean);
Boolean get_PersistKeyInCsp();
Void set_PersistKeyInCsp(System.Boolean);
RSAParameters ExportParameters(System.Boolean);
Byte[] ExportCspBlob(System.Boolean);
Void ImportParameters(System.Security.Cryptography.RSAParameters);
Void ImportCspBlob(System.Byte[]);
Byte[] SignData(System.IO.Stream,System.Object);
Byte[] SignData(System.Byte[],System.Object);
Byte[] SignData(System.Byte[],System.Int32,System.Int32,System.Object);
Boolean VerifyData(System.Byte[],System.Object,System.Byte[]);
Byte[] SignHash(System.Byte[],System.String);
Boolean VerifyHash(System.Byte[],System.String,System.Byte[]);
Byte[] Encrypt(System.Byte[],System.Boolean);
Byte[] Decrypt(System.Byte[],System.Boolean);
Byte[] DecryptValue(System.Byte[]);
Byte[] EncryptValue(System.Byte[]);
Byte[] Encrypt(System.Byte[],System.Security.Cryptography.RSAEncryptionPadding);
Byte[] Decrypt(System.Byte[],System.Security.Cryptography.RSAEncryptionPadding);
Byte[] SignHash(System.Byte[],System.Security.Cryptography.HashAlgorithmName,System.Security.Cryptography.RSASignaturePadding);
Boolean VerifyHash(System.Byte[],System.Byte[],System.Security.Cryptography.HashAlgorithmName,System.Security.Cryptography.RSASignaturePadding);
}
class RSAEncryptionPadding : System.Object{
static RSAEncryptionPadding get_Pkcs1();
static RSAEncryptionPadding get_OaepSHA1();
static RSAEncryptionPadding get_OaepSHA256();
static RSAEncryptionPadding get_OaepSHA384();
static RSAEncryptionPadding get_OaepSHA512();
static RSAEncryptionPadding CreateOaep(System.Security.Cryptography.HashAlgorithmName);
RSAEncryptionPaddingMode get_Mode();
HashAlgorithmName get_OaepHashAlgorithm();
Int32 GetHashCode();
Boolean Equals(System.Object);
Boolean Equals(System.Security.Cryptography.RSAEncryptionPadding);
static Boolean op_Equality(System.Security.Cryptography.RSAEncryptionPadding,System.Security.Cryptography.RSAEncryptionPadding);
static Boolean op_Inequality(System.Security.Cryptography.RSAEncryptionPadding,System.Security.Cryptography.RSAEncryptionPadding);
String ToString();
}
class RSAEncryptionPaddingMode : System.Enum{
}
class RSAOAEPKeyExchangeDeformatter : System.Security.Cryptography.AsymmetricKeyExchangeDeformatter{
this ();
this (System.Security.Cryptography.AsymmetricAlgorithm);
String get_Parameters();
Void set_Parameters(System.String);
Byte[] DecryptKeyExchange(System.Byte[]);
Void SetKey(System.Security.Cryptography.AsymmetricAlgorithm);
}
class RSAOAEPKeyExchangeFormatter : System.Security.Cryptography.AsymmetricKeyExchangeFormatter{
this ();
this (System.Security.Cryptography.AsymmetricAlgorithm);
Byte[] get_Parameter();
Void set_Parameter(System.Byte[]);
String get_Parameters();
RandomNumberGenerator get_Rng();
Void set_Rng(System.Security.Cryptography.RandomNumberGenerator);
Void SetKey(System.Security.Cryptography.AsymmetricAlgorithm);
Byte[] CreateKeyExchange(System.Byte[]);
Byte[] CreateKeyExchange(System.Byte[],System.Type);
}
class RSAPKCS1KeyExchangeDeformatter : System.Security.Cryptography.AsymmetricKeyExchangeDeformatter{
this ();
this (System.Security.Cryptography.AsymmetricAlgorithm);
RandomNumberGenerator get_RNG();
Void set_RNG(System.Security.Cryptography.RandomNumberGenerator);
String get_Parameters();
Void set_Parameters(System.String);
Byte[] DecryptKeyExchange(System.Byte[]);
Void SetKey(System.Security.Cryptography.AsymmetricAlgorithm);
}
class RSAPKCS1KeyExchangeFormatter : System.Security.Cryptography.AsymmetricKeyExchangeFormatter{
this ();
this (System.Security.Cryptography.AsymmetricAlgorithm);
String get_Parameters();
RandomNumberGenerator get_Rng();
Void set_Rng(System.Security.Cryptography.RandomNumberGenerator);
Void SetKey(System.Security.Cryptography.AsymmetricAlgorithm);
Byte[] CreateKeyExchange(System.Byte[]);
Byte[] CreateKeyExchange(System.Byte[],System.Type);
}
class RSAPKCS1SignatureDeformatter : System.Security.Cryptography.AsymmetricSignatureDeformatter{
this ();
this (System.Security.Cryptography.AsymmetricAlgorithm);
Void SetKey(System.Security.Cryptography.AsymmetricAlgorithm);
Void SetHashAlgorithm(System.String);
Boolean VerifySignature(System.Byte[],System.Byte[]);
}
class RSAPKCS1SignatureFormatter : System.Security.Cryptography.AsymmetricSignatureFormatter{
this ();
this (System.Security.Cryptography.AsymmetricAlgorithm);
Void SetKey(System.Security.Cryptography.AsymmetricAlgorithm);
Void SetHashAlgorithm(System.String);
Byte[] CreateSignature(System.Byte[]);
}
class Rijndael : System.Security.Cryptography.SymmetricAlgorithm{
static Rijndael Create();
static Rijndael Create(System.String);
}
class RijndaelManaged : System.Security.Cryptography.Rijndael{
this ();
ICryptoTransform CreateEncryptor(System.Byte[],System.Byte[]);
ICryptoTransform CreateDecryptor(System.Byte[],System.Byte[]);
Void GenerateKey();
Void GenerateIV();
}
class RijndaelManagedTransform : System.Object{
Void Dispose();
Void Clear();
Int32 get_BlockSizeValue();
Int32 get_InputBlockSize();
Int32 get_OutputBlockSize();
Boolean get_CanTransformMultipleBlocks();
Boolean get_CanReuseTransform();
Int32 TransformBlock(System.Byte[],System.Int32,System.Int32,System.Byte[],System.Int32);
Byte[] TransformFinalBlock(System.Byte[],System.Int32,System.Int32);
Void Reset();
}
class SHA1 : System.Security.Cryptography.HashAlgorithm{
static SHA1 Create();
static SHA1 Create(System.String);
}
class SHA1CryptoServiceProvider : System.Security.Cryptography.SHA1{
this ();
Void Initialize();
}
class SHA1Managed : System.Security.Cryptography.SHA1{
this ();
Void Initialize();
}
class SHA256 : System.Security.Cryptography.HashAlgorithm{
static SHA256 Create();
static SHA256 Create(System.String);
}
class SHA256Managed : System.Security.Cryptography.SHA256{
this ();
Void Initialize();
}
class SHA384 : System.Security.Cryptography.HashAlgorithm{
static SHA384 Create();
static SHA384 Create(System.String);
}
class SHA384Managed : System.Security.Cryptography.SHA384{
this ();
Void Initialize();
}
class SHA512 : System.Security.Cryptography.HashAlgorithm{
static SHA512 Create();
static SHA512 Create(System.String);
}
class SHA512Managed : System.Security.Cryptography.SHA512{
this ();
Void Initialize();
}
class SignatureDescription : System.Object{
this ();
this (System.Security.SecurityElement);
String get_KeyAlgorithm();
Void set_KeyAlgorithm(System.String);
String get_DigestAlgorithm();
Void set_DigestAlgorithm(System.String);
String get_FormatterAlgorithm();
Void set_FormatterAlgorithm(System.String);
String get_DeformatterAlgorithm();
Void set_DeformatterAlgorithm(System.String);
AsymmetricSignatureDeformatter CreateDeformatter(System.Security.Cryptography.AsymmetricAlgorithm);
AsymmetricSignatureFormatter CreateFormatter(System.Security.Cryptography.AsymmetricAlgorithm);
HashAlgorithm CreateDigest();
}
class SymmetricAlgorithm : System.Object{
Boolean ValidKeySize(System.Int32);
Void Dispose();
Void Clear();
Int32 get_BlockSize();
Void set_BlockSize(System.Int32);
Int32 get_FeedbackSize();
Void set_FeedbackSize(System.Int32);
Byte[] get_IV();
Void set_IV(System.Byte[]);
Byte[] get_Key();
Void set_Key(System.Byte[]);
KeySizes[] get_LegalBlockSizes();
KeySizes[] get_LegalKeySizes();
Int32 get_KeySize();
Void set_KeySize(System.Int32);
CipherMode get_Mode();
Void set_Mode(System.Security.Cryptography.CipherMode);
PaddingMode get_Padding();
Void set_Padding(System.Security.Cryptography.PaddingMode);
static SymmetricAlgorithm Create();
static SymmetricAlgorithm Create(System.String);
ICryptoTransform CreateEncryptor();
ICryptoTransform CreateEncryptor(System.Byte[],System.Byte[]);
ICryptoTransform CreateDecryptor();
ICryptoTransform CreateDecryptor(System.Byte[],System.Byte[]);
Void GenerateKey();
Void GenerateIV();
}
class TripleDES : System.Security.Cryptography.SymmetricAlgorithm{
Byte[] get_Key();
Void set_Key(System.Byte[]);
static TripleDES Create();
static TripleDES Create(System.String);
static Boolean IsWeakKey(System.Byte[]);
}
class TripleDESCryptoServiceProvider : System.Security.Cryptography.TripleDES{
this ();
ICryptoTransform CreateEncryptor(System.Byte[],System.Byte[]);
ICryptoTransform CreateDecryptor(System.Byte[],System.Byte[]);
Void GenerateKey();
Void GenerateIV();
}
}
