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
class CipherMode : Enum{
}
class PaddingMode : Enum{
}
class KeySizes : Object{
}
class CryptographicException : SystemException{
}
class CryptographicUnexpectedOperationException : CryptographicException{
}
interface ICryptoTransform{
}
class RandomNumberGenerator : Object{
}
class RNGCryptoServiceProvider : RandomNumberGenerator{
}
class Aes : SymmetricAlgorithm{
}
class AsymmetricAlgorithm : Object{
}
class AsymmetricKeyExchangeDeformatter : Object{
}
class AsymmetricKeyExchangeFormatter : Object{
}
class AsymmetricSignatureDeformatter : Object{
}
class AsymmetricSignatureFormatter : Object{
}
class FromBase64TransformMode : Enum{
}
class ToBase64Transform : Object{
}
class FromBase64Transform : Object{
}
class CryptoAPITransform : Object{
}
class CspProviderFlags : Enum{
}
class CspParameters : Object{
}
class CryptoConfig : Object{
}
class CryptoStreamMode : Enum{
}
class CryptoStream : Stream{
}
class DES : SymmetricAlgorithm{
}
class DESCryptoServiceProvider : DES{
}
class DeriveBytes : Object{
}
class DSAParameters : ValueType{
}
class DSA : AsymmetricAlgorithm{
}
class DSACryptoServiceProvider : DSA{
}
class DSASignatureDeformatter : AsymmetricSignatureDeformatter{
}
class DSASignatureFormatter : AsymmetricSignatureFormatter{
}
class HMAC : KeyedHashAlgorithm{
}
class HMACMD5 : HMAC{
}
class HMACRIPEMD160 : HMAC{
}
class HMACSHA1 : HMAC{
}
class HMACSHA256 : HMAC{
}
class HMACSHA384 : HMAC{
}
class HMACSHA512 : HMAC{
}
class HashAlgorithm : Object{
}
class HashAlgorithmName : ValueType{
}
class KeyNumber : Enum{
}
class CspKeyContainerInfo : Object{
}
interface ICspAsymmetricAlgorithm{
}
class KeyedHashAlgorithm : HashAlgorithm{
}
class MACTripleDES : KeyedHashAlgorithm{
}
class MD5 : HashAlgorithm{
}
class MD5CryptoServiceProvider : MD5{
}
class MaskGenerationMethod : Object{
}
class PasswordDeriveBytes : DeriveBytes{
}
class PKCS1MaskGenerationMethod : MaskGenerationMethod{
}
class RC2 : SymmetricAlgorithm{
}
class RC2CryptoServiceProvider : RC2{
}
class Rfc2898DeriveBytes : DeriveBytes{
}
class RIPEMD160 : HashAlgorithm{
}
class RIPEMD160Managed : RIPEMD160{
}
class RSAParameters : ValueType{
}
class RSA : AsymmetricAlgorithm{
}
class RSASignaturePadding : Object{
}
class RSASignaturePaddingMode : Enum{
}
class RSACryptoServiceProvider : RSA{
}
class RSAEncryptionPadding : Object{
}
class RSAEncryptionPaddingMode : Enum{
}
class RSAOAEPKeyExchangeDeformatter : AsymmetricKeyExchangeDeformatter{
}
class RSAOAEPKeyExchangeFormatter : AsymmetricKeyExchangeFormatter{
}
class RSAPKCS1KeyExchangeDeformatter : AsymmetricKeyExchangeDeformatter{
}
class RSAPKCS1KeyExchangeFormatter : AsymmetricKeyExchangeFormatter{
}
class RSAPKCS1SignatureDeformatter : AsymmetricSignatureDeformatter{
}
class RSAPKCS1SignatureFormatter : AsymmetricSignatureFormatter{
}
class Rijndael : SymmetricAlgorithm{
}
class RijndaelManaged : Rijndael{
}
class RijndaelManagedTransform : Object{
}
class SHA1 : HashAlgorithm{
}
class SHA1CryptoServiceProvider : SHA1{
}
class SHA1Managed : SHA1{
}
class SHA256 : HashAlgorithm{
}
class SHA256Managed : SHA256{
}
class SHA384 : HashAlgorithm{
}
class SHA384Managed : SHA384{
}
class SHA512 : HashAlgorithm{
}
class SHA512Managed : SHA512{
}
class SignatureDescription : Object{
}
class SymmetricAlgorithm : Object{
}
class TripleDES : SymmetricAlgorithm{
}
class TripleDESCryptoServiceProvider : TripleDES{
}
}
