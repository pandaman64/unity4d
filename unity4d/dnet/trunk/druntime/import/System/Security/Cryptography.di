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
class KeySizes : System.__object{
this (System.Int32,System.Int32,System.Int32);
System.Int32 get_MinSize();
System.Int32 get_MaxSize();
System.Int32 get_SkipSize();
}
interface ICryptoTransform{
System.Int32 get_InputBlockSize();
System.Int32 get_OutputBlockSize();
System.Boolean get_CanTransformMultipleBlocks();
System.Boolean get_CanReuseTransform();
System.Int32 TransformBlock(System.Byte[],System.Int32,System.Int32,System.Byte[],System.Int32);
System.Byte[] TransformFinalBlock(System.Byte[],System.Int32,System.Int32);
}
class RandomNumberGenerator : System.__object{
static System.Security.Cryptography.RandomNumberGenerator Create();
static System.Security.Cryptography.RandomNumberGenerator Create(System.String);
System.Void Dispose();
System.Void GetBytes(System.Byte[]);
System.Void GetBytes(System.Byte[],System.Int32,System.Int32);
System.Void GetNonZeroBytes(System.Byte[]);
}
class RNGCryptoServiceProvider : System.Security.Cryptography.RandomNumberGenerator{
this ();
this (System.String);
this (System.Byte[]);
this (System.Security.Cryptography.CspParameters);
System.Void GetBytes(System.Byte[]);
System.Void GetNonZeroBytes(System.Byte[]);
}
class Aes : System.Security.Cryptography.SymmetricAlgorithm{
static System.Security.Cryptography.Aes Create();
static System.Security.Cryptography.Aes Create(System.String);
}
class AsymmetricAlgorithm : System.__object{
System.Void Dispose();
System.Void Clear();
System.Int32 get_KeySize();
System.Void set_KeySize(System.Int32);
System.Security.Cryptography.KeySizes[] get_LegalKeySizes();
System.String get_SignatureAlgorithm();
System.String get_KeyExchangeAlgorithm();
static System.Security.Cryptography.AsymmetricAlgorithm Create();
static System.Security.Cryptography.AsymmetricAlgorithm Create(System.String);
System.Void FromXmlString(System.String);
System.String ToXmlString(System.Boolean);
}
class AsymmetricKeyExchangeDeformatter : System.__object{
System.String get_Parameters();
System.Void set_Parameters(System.String);
System.Void SetKey(System.Security.Cryptography.AsymmetricAlgorithm);
System.Byte[] DecryptKeyExchange(System.Byte[]);
}
class AsymmetricKeyExchangeFormatter : System.__object{
System.String get_Parameters();
System.Void SetKey(System.Security.Cryptography.AsymmetricAlgorithm);
System.Byte[] CreateKeyExchange(System.Byte[]);
System.Byte[] CreateKeyExchange(System.Byte[],System.Type);
}
class AsymmetricSignatureDeformatter : System.__object{
System.Void SetKey(System.Security.Cryptography.AsymmetricAlgorithm);
System.Void SetHashAlgorithm(System.String);
System.Boolean VerifySignature(System.Security.Cryptography.HashAlgorithm,System.Byte[]);
System.Boolean VerifySignature(System.Byte[],System.Byte[]);
}
class AsymmetricSignatureFormatter : System.__object{
System.Void SetKey(System.Security.Cryptography.AsymmetricAlgorithm);
System.Void SetHashAlgorithm(System.String);
System.Byte[] CreateSignature(System.Security.Cryptography.HashAlgorithm);
System.Byte[] CreateSignature(System.Byte[]);
}
class FromBase64TransformMode : System.Enum{
}
class ToBase64Transform : System.__object{
this ();
System.Int32 get_InputBlockSize();
System.Int32 get_OutputBlockSize();
System.Boolean get_CanTransformMultipleBlocks();
System.Boolean get_CanReuseTransform();
System.Int32 TransformBlock(System.Byte[],System.Int32,System.Int32,System.Byte[],System.Int32);
System.Byte[] TransformFinalBlock(System.Byte[],System.Int32,System.Int32);
System.Void Dispose();
System.Void Clear();
}
class FromBase64Transform : System.__object{
this ();
this (System.Security.Cryptography.FromBase64TransformMode);
System.Int32 get_InputBlockSize();
System.Int32 get_OutputBlockSize();
System.Boolean get_CanTransformMultipleBlocks();
System.Boolean get_CanReuseTransform();
System.Int32 TransformBlock(System.Byte[],System.Int32,System.Int32,System.Byte[],System.Int32);
System.Byte[] TransformFinalBlock(System.Byte[],System.Int32,System.Int32);
System.Void Dispose();
System.Void Clear();
}
class CryptoAPITransform : System.__object{
System.Void Dispose();
System.Void Clear();
System.IntPtr get_KeyHandle();
System.Int32 get_InputBlockSize();
System.Int32 get_OutputBlockSize();
System.Boolean get_CanTransformMultipleBlocks();
System.Boolean get_CanReuseTransform();
System.Void Reset();
System.Int32 TransformBlock(System.Byte[],System.Int32,System.Int32,System.Byte[],System.Int32);
System.Byte[] TransformFinalBlock(System.Byte[],System.Int32,System.Int32);
}
class CspProviderFlags : System.Enum{
}
class CspParameters : System.__object{
this ();
this (System.Int32);
this (System.Int32,System.String);
this (System.Int32,System.String,System.String);
this (System.Int32,System.String,System.String,System.Security.AccessControl.CryptoKeySecurity,System.Security.SecureString);
this (System.Int32,System.String,System.String,System.Security.AccessControl.CryptoKeySecurity,System.IntPtr);
System.Security.Cryptography.CspProviderFlags get_Flags();
System.Void set_Flags(System.Security.Cryptography.CspProviderFlags);
System.Security.AccessControl.CryptoKeySecurity get_CryptoKeySecurity();
System.Void set_CryptoKeySecurity(System.Security.AccessControl.CryptoKeySecurity);
System.Security.SecureString get_KeyPassword();
System.Void set_KeyPassword(System.Security.SecureString);
System.IntPtr get_ParentWindowHandle();
System.Void set_ParentWindowHandle(System.IntPtr);
}
class CryptoConfig : System.__object{
this ();
static System.__object CreateFromName(System.String,System.__object[]);
static System.Boolean get_AllowOnlyFipsAlgorithms();
static System.Void AddAlgorithm(System.Type,System.String[]);
static System.__object CreateFromName(System.String);
static System.Void AddOID(System.String,System.String[]);
static System.String MapNameToOID(System.String);
static System.Byte[] EncodeOID(System.String);
}
class CryptoStreamMode : System.Enum{
}
class CryptoStream : System.IO.Stream{
this (System.IO.Stream,System.Security.Cryptography.ICryptoTransform,System.Security.Cryptography.CryptoStreamMode);
System.Void FlushFinalBlock();
System.Boolean get_CanRead();
System.Boolean get_CanSeek();
System.Boolean get_CanWrite();
System.Int64 get_Length();
System.Int64 get_Position();
System.Void set_Position(System.Int64);
System.Boolean get_HasFlushedFinalBlock();
System.Void Flush();
System.Threading.Tasks.Task FlushAsync(System.Threading.CancellationToken);
System.Int64 Seek(System.Int64,System.IO.SeekOrigin);
System.Void SetLength(System.Int64);
System.Void Write(System.Byte[],System.Int32,System.Int32);
System.Threading.Tasks.Task WriteAsync(System.Byte[],System.Int32,System.Int32,System.Threading.CancellationToken);
System.Void Clear();
}
class DES : System.Security.Cryptography.SymmetricAlgorithm{
System.Byte[] get_Key();
System.Void set_Key(System.Byte[]);
static System.Security.Cryptography.DES Create();
static System.Security.Cryptography.DES Create(System.String);
static System.Boolean IsWeakKey(System.Byte[]);
static System.Boolean IsSemiWeakKey(System.Byte[]);
}
class DESCryptoServiceProvider : System.Security.Cryptography.DES{
this ();
System.Security.Cryptography.ICryptoTransform CreateEncryptor(System.Byte[],System.Byte[]);
System.Security.Cryptography.ICryptoTransform CreateDecryptor(System.Byte[],System.Byte[]);
System.Void GenerateKey();
System.Void GenerateIV();
}
class DeriveBytes : System.__object{
System.Byte[] GetBytes(System.Int32);
System.Void Reset();
System.Void Dispose();
}
class DSAParameters : System.ValueType{
}
class DSA : System.Security.Cryptography.AsymmetricAlgorithm{
static System.Security.Cryptography.DSA Create();
static System.Security.Cryptography.DSA Create(System.String);
System.Byte[] CreateSignature(System.Byte[]);
System.Boolean VerifySignature(System.Byte[],System.Byte[]);
System.Void FromXmlString(System.String);
System.String ToXmlString(System.Boolean);
System.Security.Cryptography.DSAParameters ExportParameters(System.Boolean);
System.Void ImportParameters(System.Security.Cryptography.DSAParameters);
}
class DSACryptoServiceProvider : System.Security.Cryptography.DSA{
this ();
this (System.Int32);
this (System.Security.Cryptography.CspParameters);
this (System.Int32,System.Security.Cryptography.CspParameters);
System.Boolean get_PublicOnly();
System.Security.Cryptography.CspKeyContainerInfo get_CspKeyContainerInfo();
System.Int32 get_KeySize();
System.String get_KeyExchangeAlgorithm();
System.String get_SignatureAlgorithm();
static System.Boolean get_UseMachineKeyStore();
static System.Void set_UseMachineKeyStore(System.Boolean);
System.Boolean get_PersistKeyInCsp();
System.Void set_PersistKeyInCsp(System.Boolean);
System.Security.Cryptography.DSAParameters ExportParameters(System.Boolean);
System.Byte[] ExportCspBlob(System.Boolean);
System.Void ImportParameters(System.Security.Cryptography.DSAParameters);
System.Void ImportCspBlob(System.Byte[]);
System.Byte[] SignData(System.IO.Stream);
System.Byte[] SignData(System.Byte[]);
System.Byte[] SignData(System.Byte[],System.Int32,System.Int32);
System.Boolean VerifyData(System.Byte[],System.Byte[]);
System.Byte[] CreateSignature(System.Byte[]);
System.Boolean VerifySignature(System.Byte[],System.Byte[]);
System.Byte[] SignHash(System.Byte[],System.String);
System.Boolean VerifyHash(System.Byte[],System.String,System.Byte[]);
}
class DSASignatureDeformatter : System.Security.Cryptography.AsymmetricSignatureDeformatter{
this ();
this (System.Security.Cryptography.AsymmetricAlgorithm);
System.Void SetKey(System.Security.Cryptography.AsymmetricAlgorithm);
System.Void SetHashAlgorithm(System.String);
System.Boolean VerifySignature(System.Byte[],System.Byte[]);
}
class DSASignatureFormatter : System.Security.Cryptography.AsymmetricSignatureFormatter{
this ();
this (System.Security.Cryptography.AsymmetricAlgorithm);
System.Void SetKey(System.Security.Cryptography.AsymmetricAlgorithm);
System.Void SetHashAlgorithm(System.String);
System.Byte[] CreateSignature(System.Byte[]);
}
class HMAC : System.Security.Cryptography.KeyedHashAlgorithm{
System.Byte[] get_Key();
System.Void set_Key(System.Byte[]);
System.String get_HashName();
System.Void set_HashName(System.String);
static System.Security.Cryptography.HMAC Create();
static System.Security.Cryptography.HMAC Create(System.String);
System.Void Initialize();
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
System.Boolean get_ProduceLegacyHmacValues();
System.Void set_ProduceLegacyHmacValues(System.Boolean);
}
class HMACSHA512 : System.Security.Cryptography.HMAC{
this ();
this (System.Byte[]);
System.Boolean get_ProduceLegacyHmacValues();
System.Void set_ProduceLegacyHmacValues(System.Boolean);
}
class HashAlgorithm : System.__object{
System.Int32 get_HashSize();
System.Byte[] get_Hash();
static System.Security.Cryptography.HashAlgorithm Create();
static System.Security.Cryptography.HashAlgorithm Create(System.String);
System.Byte[] ComputeHash(System.IO.Stream);
System.Byte[] ComputeHash(System.Byte[]);
System.Byte[] ComputeHash(System.Byte[],System.Int32,System.Int32);
System.Int32 get_InputBlockSize();
System.Int32 get_OutputBlockSize();
System.Boolean get_CanTransformMultipleBlocks();
System.Boolean get_CanReuseTransform();
System.Int32 TransformBlock(System.Byte[],System.Int32,System.Int32,System.Byte[],System.Int32);
System.Byte[] TransformFinalBlock(System.Byte[],System.Int32,System.Int32);
System.Void Dispose();
System.Void Clear();
System.Void Initialize();
}
class HashAlgorithmName : System.ValueType{
this (System.String);
static System.Security.Cryptography.HashAlgorithmName get_MD5();
static System.Security.Cryptography.HashAlgorithmName get_SHA1();
static System.Security.Cryptography.HashAlgorithmName get_SHA256();
static System.Security.Cryptography.HashAlgorithmName get_SHA384();
static System.Security.Cryptography.HashAlgorithmName get_SHA512();
System.String get_Name();
System.String ToString();
System.Boolean Equals(System.__object);
System.Boolean Equals(System.Security.Cryptography.HashAlgorithmName);
System.Int32 GetHashCode();
static System.Boolean op_Equality(System.Security.Cryptography.HashAlgorithmName,System.Security.Cryptography.HashAlgorithmName);
static System.Boolean op_Inequality(System.Security.Cryptography.HashAlgorithmName,System.Security.Cryptography.HashAlgorithmName);
}
class KeyNumber : System.Enum{
}
class CspKeyContainerInfo : System.__object{
this (System.Security.Cryptography.CspParameters);
System.Boolean get_MachineKeyStore();
System.String get_ProviderName();
System.Int32 get_ProviderType();
System.String get_KeyContainerName();
System.String get_UniqueKeyContainerName();
System.Security.Cryptography.KeyNumber get_KeyNumber();
System.Boolean get_Exportable();
System.Boolean get_HardwareDevice();
System.Boolean get_Removable();
System.Boolean get_Accessible();
System.Boolean get_Protected();
System.Security.AccessControl.CryptoKeySecurity get_CryptoKeySecurity();
System.Boolean get_RandomlyGenerated();
}
interface ICspAsymmetricAlgorithm{
System.Security.Cryptography.CspKeyContainerInfo get_CspKeyContainerInfo();
System.Byte[] ExportCspBlob(System.Boolean);
System.Void ImportCspBlob(System.Byte[]);
}
class KeyedHashAlgorithm : System.Security.Cryptography.HashAlgorithm{
System.Byte[] get_Key();
System.Void set_Key(System.Byte[]);
static System.Security.Cryptography.KeyedHashAlgorithm Create();
static System.Security.Cryptography.KeyedHashAlgorithm Create(System.String);
}
class MACTripleDES : System.Security.Cryptography.KeyedHashAlgorithm{
this ();
this (System.Byte[]);
this (System.String,System.Byte[]);
System.Void Initialize();
System.Security.Cryptography.PaddingMode get_Padding();
System.Void set_Padding(System.Security.Cryptography.PaddingMode);
}
class MD5 : System.Security.Cryptography.HashAlgorithm{
static System.Security.Cryptography.MD5 Create();
static System.Security.Cryptography.MD5 Create(System.String);
}
class MD5CryptoServiceProvider : System.Security.Cryptography.MD5{
this ();
System.Void Initialize();
}
class MaskGenerationMethod : System.__object{
System.Byte[] GenerateMask(System.Byte[],System.Int32);
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
System.String get_HashName();
System.Void set_HashName(System.String);
System.Int32 get_IterationCount();
System.Void set_IterationCount(System.Int32);
System.Byte[] get_Salt();
System.Void set_Salt(System.Byte[]);
System.Byte[] GetBytes(System.Int32);
System.Void Reset();
System.Byte[] CryptDeriveKey(System.String,System.String,System.Int32,System.Byte[]);
}
class PKCS1MaskGenerationMethod : System.Security.Cryptography.MaskGenerationMethod{
this ();
System.String get_HashName();
System.Void set_HashName(System.String);
System.Byte[] GenerateMask(System.Byte[],System.Int32);
}
class RC2 : System.Security.Cryptography.SymmetricAlgorithm{
System.Int32 get_EffectiveKeySize();
System.Void set_EffectiveKeySize(System.Int32);
System.Int32 get_KeySize();
System.Void set_KeySize(System.Int32);
static System.Security.Cryptography.RC2 Create();
static System.Security.Cryptography.RC2 Create(System.String);
}
class RC2CryptoServiceProvider : System.Security.Cryptography.RC2{
this ();
System.Int32 get_EffectiveKeySize();
System.Void set_EffectiveKeySize(System.Int32);
System.Boolean get_UseSalt();
System.Void set_UseSalt(System.Boolean);
System.Security.Cryptography.ICryptoTransform CreateEncryptor(System.Byte[],System.Byte[]);
System.Security.Cryptography.ICryptoTransform CreateDecryptor(System.Byte[],System.Byte[]);
System.Void GenerateKey();
System.Void GenerateIV();
}
class Rfc2898DeriveBytes : System.Security.Cryptography.DeriveBytes{
this (System.String,System.Int32);
this (System.String,System.Int32,System.Int32);
this (System.String,System.Byte[]);
this (System.String,System.Byte[],System.Int32);
this (System.Byte[],System.Byte[],System.Int32);
System.Int32 get_IterationCount();
System.Void set_IterationCount(System.Int32);
System.Byte[] get_Salt();
System.Void set_Salt(System.Byte[]);
System.Byte[] GetBytes(System.Int32);
System.Void Reset();
System.Byte[] CryptDeriveKey(System.String,System.String,System.Int32,System.Byte[]);
}
class RIPEMD160 : System.Security.Cryptography.HashAlgorithm{
static System.Security.Cryptography.RIPEMD160 Create();
static System.Security.Cryptography.RIPEMD160 Create(System.String);
}
class RIPEMD160Managed : System.Security.Cryptography.RIPEMD160{
this ();
System.Void Initialize();
}
class RSAParameters : System.ValueType{
}
class RSA : System.Security.Cryptography.AsymmetricAlgorithm{
static System.Security.Cryptography.RSA Create();
static System.Security.Cryptography.RSA Create(System.String);
System.Byte[] Encrypt(System.Byte[],System.Security.Cryptography.RSAEncryptionPadding);
System.Byte[] Decrypt(System.Byte[],System.Security.Cryptography.RSAEncryptionPadding);
System.Byte[] SignHash(System.Byte[],System.Security.Cryptography.HashAlgorithmName,System.Security.Cryptography.RSASignaturePadding);
System.Boolean VerifyHash(System.Byte[],System.Byte[],System.Security.Cryptography.HashAlgorithmName,System.Security.Cryptography.RSASignaturePadding);
System.Byte[] SignData(System.Byte[],System.Security.Cryptography.HashAlgorithmName,System.Security.Cryptography.RSASignaturePadding);
System.Byte[] SignData(System.Byte[],System.Int32,System.Int32,System.Security.Cryptography.HashAlgorithmName,System.Security.Cryptography.RSASignaturePadding);
System.Byte[] SignData(System.IO.Stream,System.Security.Cryptography.HashAlgorithmName,System.Security.Cryptography.RSASignaturePadding);
System.Boolean VerifyData(System.Byte[],System.Byte[],System.Security.Cryptography.HashAlgorithmName,System.Security.Cryptography.RSASignaturePadding);
System.Boolean VerifyData(System.Byte[],System.Int32,System.Int32,System.Byte[],System.Security.Cryptography.HashAlgorithmName,System.Security.Cryptography.RSASignaturePadding);
System.Boolean VerifyData(System.IO.Stream,System.Byte[],System.Security.Cryptography.HashAlgorithmName,System.Security.Cryptography.RSASignaturePadding);
System.Byte[] DecryptValue(System.Byte[]);
System.Byte[] EncryptValue(System.Byte[]);
System.String get_KeyExchangeAlgorithm();
System.String get_SignatureAlgorithm();
System.Void FromXmlString(System.String);
System.String ToXmlString(System.Boolean);
System.Security.Cryptography.RSAParameters ExportParameters(System.Boolean);
System.Void ImportParameters(System.Security.Cryptography.RSAParameters);
}
class RSASignaturePadding : System.__object{
static System.Security.Cryptography.RSASignaturePadding get_Pkcs1();
static System.Security.Cryptography.RSASignaturePadding get_Pss();
System.Security.Cryptography.RSASignaturePaddingMode get_Mode();
System.Int32 GetHashCode();
System.Boolean Equals(System.__object);
System.Boolean Equals(System.Security.Cryptography.RSASignaturePadding);
static System.Boolean op_Equality(System.Security.Cryptography.RSASignaturePadding,System.Security.Cryptography.RSASignaturePadding);
static System.Boolean op_Inequality(System.Security.Cryptography.RSASignaturePadding,System.Security.Cryptography.RSASignaturePadding);
System.String ToString();
}
class RSASignaturePaddingMode : System.Enum{
}
class RSACryptoServiceProvider : System.Security.Cryptography.RSA{
this ();
this (System.Int32);
this (System.Security.Cryptography.CspParameters);
this (System.Int32,System.Security.Cryptography.CspParameters);
System.Boolean get_PublicOnly();
System.Security.Cryptography.CspKeyContainerInfo get_CspKeyContainerInfo();
System.Int32 get_KeySize();
System.String get_KeyExchangeAlgorithm();
System.String get_SignatureAlgorithm();
static System.Boolean get_UseMachineKeyStore();
static System.Void set_UseMachineKeyStore(System.Boolean);
System.Boolean get_PersistKeyInCsp();
System.Void set_PersistKeyInCsp(System.Boolean);
System.Security.Cryptography.RSAParameters ExportParameters(System.Boolean);
System.Byte[] ExportCspBlob(System.Boolean);
System.Void ImportParameters(System.Security.Cryptography.RSAParameters);
System.Void ImportCspBlob(System.Byte[]);
System.Byte[] SignData(System.IO.Stream,System.__object);
System.Byte[] SignData(System.Byte[],System.__object);
System.Byte[] SignData(System.Byte[],System.Int32,System.Int32,System.__object);
System.Boolean VerifyData(System.Byte[],System.__object,System.Byte[]);
System.Byte[] SignHash(System.Byte[],System.String);
System.Boolean VerifyHash(System.Byte[],System.String,System.Byte[]);
System.Byte[] Encrypt(System.Byte[],System.Boolean);
System.Byte[] Decrypt(System.Byte[],System.Boolean);
System.Byte[] DecryptValue(System.Byte[]);
System.Byte[] EncryptValue(System.Byte[]);
System.Byte[] Encrypt(System.Byte[],System.Security.Cryptography.RSAEncryptionPadding);
System.Byte[] Decrypt(System.Byte[],System.Security.Cryptography.RSAEncryptionPadding);
System.Byte[] SignHash(System.Byte[],System.Security.Cryptography.HashAlgorithmName,System.Security.Cryptography.RSASignaturePadding);
System.Boolean VerifyHash(System.Byte[],System.Byte[],System.Security.Cryptography.HashAlgorithmName,System.Security.Cryptography.RSASignaturePadding);
}
class RSAEncryptionPadding : System.__object{
static System.Security.Cryptography.RSAEncryptionPadding get_Pkcs1();
static System.Security.Cryptography.RSAEncryptionPadding get_OaepSHA1();
static System.Security.Cryptography.RSAEncryptionPadding get_OaepSHA256();
static System.Security.Cryptography.RSAEncryptionPadding get_OaepSHA384();
static System.Security.Cryptography.RSAEncryptionPadding get_OaepSHA512();
static System.Security.Cryptography.RSAEncryptionPadding CreateOaep(System.Security.Cryptography.HashAlgorithmName);
System.Security.Cryptography.RSAEncryptionPaddingMode get_Mode();
System.Security.Cryptography.HashAlgorithmName get_OaepHashAlgorithm();
System.Int32 GetHashCode();
System.Boolean Equals(System.__object);
System.Boolean Equals(System.Security.Cryptography.RSAEncryptionPadding);
static System.Boolean op_Equality(System.Security.Cryptography.RSAEncryptionPadding,System.Security.Cryptography.RSAEncryptionPadding);
static System.Boolean op_Inequality(System.Security.Cryptography.RSAEncryptionPadding,System.Security.Cryptography.RSAEncryptionPadding);
System.String ToString();
}
class RSAEncryptionPaddingMode : System.Enum{
}
class RSAOAEPKeyExchangeDeformatter : System.Security.Cryptography.AsymmetricKeyExchangeDeformatter{
this ();
this (System.Security.Cryptography.AsymmetricAlgorithm);
System.String get_Parameters();
System.Void set_Parameters(System.String);
System.Byte[] DecryptKeyExchange(System.Byte[]);
System.Void SetKey(System.Security.Cryptography.AsymmetricAlgorithm);
}
class RSAOAEPKeyExchangeFormatter : System.Security.Cryptography.AsymmetricKeyExchangeFormatter{
this ();
this (System.Security.Cryptography.AsymmetricAlgorithm);
System.Byte[] get_Parameter();
System.Void set_Parameter(System.Byte[]);
System.String get_Parameters();
System.Security.Cryptography.RandomNumberGenerator get_Rng();
System.Void set_Rng(System.Security.Cryptography.RandomNumberGenerator);
System.Void SetKey(System.Security.Cryptography.AsymmetricAlgorithm);
System.Byte[] CreateKeyExchange(System.Byte[]);
System.Byte[] CreateKeyExchange(System.Byte[],System.Type);
}
class RSAPKCS1KeyExchangeDeformatter : System.Security.Cryptography.AsymmetricKeyExchangeDeformatter{
this ();
this (System.Security.Cryptography.AsymmetricAlgorithm);
System.Security.Cryptography.RandomNumberGenerator get_RNG();
System.Void set_RNG(System.Security.Cryptography.RandomNumberGenerator);
System.String get_Parameters();
System.Void set_Parameters(System.String);
System.Byte[] DecryptKeyExchange(System.Byte[]);
System.Void SetKey(System.Security.Cryptography.AsymmetricAlgorithm);
}
class RSAPKCS1KeyExchangeFormatter : System.Security.Cryptography.AsymmetricKeyExchangeFormatter{
this ();
this (System.Security.Cryptography.AsymmetricAlgorithm);
System.String get_Parameters();
System.Security.Cryptography.RandomNumberGenerator get_Rng();
System.Void set_Rng(System.Security.Cryptography.RandomNumberGenerator);
System.Void SetKey(System.Security.Cryptography.AsymmetricAlgorithm);
System.Byte[] CreateKeyExchange(System.Byte[]);
System.Byte[] CreateKeyExchange(System.Byte[],System.Type);
}
class RSAPKCS1SignatureDeformatter : System.Security.Cryptography.AsymmetricSignatureDeformatter{
this ();
this (System.Security.Cryptography.AsymmetricAlgorithm);
System.Void SetKey(System.Security.Cryptography.AsymmetricAlgorithm);
System.Void SetHashAlgorithm(System.String);
System.Boolean VerifySignature(System.Byte[],System.Byte[]);
}
class RSAPKCS1SignatureFormatter : System.Security.Cryptography.AsymmetricSignatureFormatter{
this ();
this (System.Security.Cryptography.AsymmetricAlgorithm);
System.Void SetKey(System.Security.Cryptography.AsymmetricAlgorithm);
System.Void SetHashAlgorithm(System.String);
System.Byte[] CreateSignature(System.Byte[]);
}
class Rijndael : System.Security.Cryptography.SymmetricAlgorithm{
static System.Security.Cryptography.Rijndael Create();
static System.Security.Cryptography.Rijndael Create(System.String);
}
class RijndaelManaged : System.Security.Cryptography.Rijndael{
this ();
System.Security.Cryptography.ICryptoTransform CreateEncryptor(System.Byte[],System.Byte[]);
System.Security.Cryptography.ICryptoTransform CreateDecryptor(System.Byte[],System.Byte[]);
System.Void GenerateKey();
System.Void GenerateIV();
}
class RijndaelManagedTransform : System.__object{
System.Void Dispose();
System.Void Clear();
System.Int32 get_BlockSizeValue();
System.Int32 get_InputBlockSize();
System.Int32 get_OutputBlockSize();
System.Boolean get_CanTransformMultipleBlocks();
System.Boolean get_CanReuseTransform();
System.Int32 TransformBlock(System.Byte[],System.Int32,System.Int32,System.Byte[],System.Int32);
System.Byte[] TransformFinalBlock(System.Byte[],System.Int32,System.Int32);
System.Void Reset();
}
class SHA1 : System.Security.Cryptography.HashAlgorithm{
static System.Security.Cryptography.SHA1 Create();
static System.Security.Cryptography.SHA1 Create(System.String);
}
class SHA1CryptoServiceProvider : System.Security.Cryptography.SHA1{
this ();
System.Void Initialize();
}
class SHA1Managed : System.Security.Cryptography.SHA1{
this ();
System.Void Initialize();
}
class SHA256 : System.Security.Cryptography.HashAlgorithm{
static System.Security.Cryptography.SHA256 Create();
static System.Security.Cryptography.SHA256 Create(System.String);
}
class SHA256Managed : System.Security.Cryptography.SHA256{
this ();
System.Void Initialize();
}
class SHA384 : System.Security.Cryptography.HashAlgorithm{
static System.Security.Cryptography.SHA384 Create();
static System.Security.Cryptography.SHA384 Create(System.String);
}
class SHA384Managed : System.Security.Cryptography.SHA384{
this ();
System.Void Initialize();
}
class SHA512 : System.Security.Cryptography.HashAlgorithm{
static System.Security.Cryptography.SHA512 Create();
static System.Security.Cryptography.SHA512 Create(System.String);
}
class SHA512Managed : System.Security.Cryptography.SHA512{
this ();
System.Void Initialize();
}
class SignatureDescription : System.__object{
this ();
this (System.Security.SecurityElement);
System.String get_KeyAlgorithm();
System.Void set_KeyAlgorithm(System.String);
System.String get_DigestAlgorithm();
System.Void set_DigestAlgorithm(System.String);
System.String get_FormatterAlgorithm();
System.Void set_FormatterAlgorithm(System.String);
System.String get_DeformatterAlgorithm();
System.Void set_DeformatterAlgorithm(System.String);
System.Security.Cryptography.AsymmetricSignatureDeformatter CreateDeformatter(System.Security.Cryptography.AsymmetricAlgorithm);
System.Security.Cryptography.AsymmetricSignatureFormatter CreateFormatter(System.Security.Cryptography.AsymmetricAlgorithm);
System.Security.Cryptography.HashAlgorithm CreateDigest();
}
class SymmetricAlgorithm : System.__object{
System.Boolean ValidKeySize(System.Int32);
System.Void Dispose();
System.Void Clear();
System.Int32 get_BlockSize();
System.Void set_BlockSize(System.Int32);
System.Int32 get_FeedbackSize();
System.Void set_FeedbackSize(System.Int32);
System.Byte[] get_IV();
System.Void set_IV(System.Byte[]);
System.Byte[] get_Key();
System.Void set_Key(System.Byte[]);
System.Security.Cryptography.KeySizes[] get_LegalBlockSizes();
System.Security.Cryptography.KeySizes[] get_LegalKeySizes();
System.Int32 get_KeySize();
System.Void set_KeySize(System.Int32);
System.Security.Cryptography.CipherMode get_Mode();
System.Void set_Mode(System.Security.Cryptography.CipherMode);
System.Security.Cryptography.PaddingMode get_Padding();
System.Void set_Padding(System.Security.Cryptography.PaddingMode);
static System.Security.Cryptography.SymmetricAlgorithm Create();
static System.Security.Cryptography.SymmetricAlgorithm Create(System.String);
System.Security.Cryptography.ICryptoTransform CreateEncryptor();
System.Security.Cryptography.ICryptoTransform CreateEncryptor(System.Byte[],System.Byte[]);
System.Security.Cryptography.ICryptoTransform CreateDecryptor();
System.Security.Cryptography.ICryptoTransform CreateDecryptor(System.Byte[],System.Byte[]);
System.Void GenerateKey();
System.Void GenerateIV();
}
class TripleDES : System.Security.Cryptography.SymmetricAlgorithm{
System.Byte[] get_Key();
System.Void set_Key(System.Byte[]);
static System.Security.Cryptography.TripleDES Create();
static System.Security.Cryptography.TripleDES Create(System.String);
static System.Boolean IsWeakKey(System.Byte[]);
}
class TripleDESCryptoServiceProvider : System.Security.Cryptography.TripleDES{
this ();
System.Security.Cryptography.ICryptoTransform CreateEncryptor(System.Byte[],System.Byte[]);
System.Security.Cryptography.ICryptoTransform CreateDecryptor(System.Byte[],System.Byte[]);
System.Void GenerateKey();
System.Void GenerateIV();
}
}
