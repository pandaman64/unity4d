module UnityEngine;

import System;

public:
pragma(assembly,"UnityEngine"){
class AssetBundleCreateRequest : AsyncOperation{
public:
}
class AssetBundleRequest : AsyncOperation{
public:
}
class AssetBundle : __UnityObject{
public:
}
class AssetBundleManifest : __UnityObject{
public:
}
class SendMessageOptions : Enum{
public:
}
class PrimitiveType : Enum{
public:
}
class Space : Enum{
public:
}
class LayerMask : ValueType{
public:
}
class RuntimePlatform : Enum{
public:
}
class SystemLanguage : Enum{
public:
}
class LogType : Enum{
public:
}
class DeviceType : Enum{
public:
}
class SystemInfo : Object{
public:
}
class WaitForSeconds : YieldInstruction{
public:
}
class WaitForFixedUpdate : YieldInstruction{
public:
}
class WaitForEndOfFrame : YieldInstruction{
public:
}
class Coroutine : YieldInstruction{
public:
}
class ScriptableObject : __UnityObject{
public:
}
class ThreadPriority : Enum{
public:
}
class Profiler : Object{
public:
}
class CrashReport : Object{
public:
}
class CursorMode : Enum{
public:
}
class CursorLockMode : Enum{
public:
}
class Cursor : Object{
public:
}
class OcclusionArea : Component{
public:
}
class OcclusionPortal : Component{
public:
}
class RenderSettings : __UnityObject{
public:
}
class QualitySettings : __UnityObject{
public:
}
class TextureCompressionQuality : Enum{
public:
}
class MeshFilter : Component{
public:
}
class CombineInstance : ValueType{
public:
}
class Mesh : __UnityObject{
public:
}
class BoneWeight : ValueType{
public:
}
class SkinnedMeshRenderer : Renderer{
public:
}
class Flare : __UnityObject{
public:
}
class LensFlare : Behaviour{
public:
}
class Renderer : Component{
public:
}
class Projector : Behaviour{
public:
}
class Skybox : Behaviour{
public:
}
class TrailRenderer : Renderer{
public:
}
class LineRenderer : Renderer{
public:
}
class MaterialPropertyBlock : Object{
public:
}
class Graphics : Object{
public:
}
class LightmapData : Object{
public:
}
class LightmapsModeLegacy : Enum{
public:
}
class LightProbes : __UnityObject{
public:
}
class LightmapSettings : __UnityObject{
public:
}
class GeometryUtility : Object{
public:
}
class Screen : Object{
public:
}
class SleepTimeout : Object{
public:
}
class GL : Object{
public:
}
class MeshRenderer : Renderer{
public:
}
class StaticBatchingUtility : Object{
public:
}
class ImageEffectTransformsToLDR : Attribute{
public:
}
class ImageEffectOpaque : Attribute{
public:
}
class Texture : __UnityObject{
public:
}
class Texture2D : Texture{
public:
}
class Cubemap : Texture{
public:
}
class Texture3D : Texture{
public:
}
class SparseTexture : Texture{
public:
}
class RenderTexture : Texture{
public:
}
class ReflectionProbe : Behaviour{
public:
}
class GUIElement : Behaviour{
public:
}
class GUITexture : GUIElement{
public:
}
class GUILayer : Behaviour{
public:
}
class LODFadeMode : Enum{
public:
}
class LOD : ValueType{
public:
}
class LODGroup : Component{
public:
}
class GradientColorKey : ValueType{
public:
}
class GradientAlphaKey : ValueType{
public:
}
class Gradient : Object{
public:
}
class ScaleMode : Enum{
public:
}
class GUI : Object{
public:
static class Scope : Object{
public:
}
class GroupScope : GUI.Scope{
public:
}
class ScrollViewScope : GUI.Scope{
public:
}
class ClipScope : GUI.Scope{
public:
}
class WindowFunction : MulticastDelegate{
public:
}
}
class GUILayout : Object{
public:
static class HorizontalScope : GUI.Scope{
public:
}
static class VerticalScope : GUI.Scope{
public:
}
static class AreaScope : GUI.Scope{
public:
}
static class ScrollViewScope : GUI.Scope{
public:
}
}
class GUILayoutUtility : Object{
public:
}
class GUILayoutOption : Object{
public:
}
class ExitGUIException : Exception{
public:
}
class FocusType : Enum{
public:
}
class GUIUtility : Object{
public:
}
class GUISettings : Object{
public:
}
class GUISkin : ScriptableObject{
public:
}
class GUIContent : Object{
public:
}
class GUIStyleState : Object{
public:
}
class RectOffset : Object{
public:
}
class FontStyle : Enum{
public:
}
class ImagePosition : Enum{
public:
}
class GUIStyle : Object{
public:
}
class TextClipping : Enum{
public:
}
class FullScreenMovieControlMode : Enum{
public:
}
class FullScreenMovieScalingMode : Enum{
public:
}
class AndroidActivityIndicatorStyle : Enum{
public:
}
class Handheld : Object{
public:
}
class TouchScreenKeyboardType : Enum{
public:
}
class TouchScreenKeyboard : Object{
public:
}
class Event : Object{
public:
}
class KeyCode : Enum{
public:
}
class EventType : Enum{
public:
}
class EventModifiers : Enum{
public:
}
class Gizmos : Object{
public:
}
class FlareLayer : Behaviour{
public:
}
class LightProbeGroup : Component{
public:
}
class Vector2 : ValueType{
public:
}
class Vector3 : ValueType{
public:
}
class Color : ValueType{
public:
}
class Color32 : ValueType{
public:
}
class Quaternion : ValueType{
public:
}
class Rect : ValueType{
public:
}
class Matrix4x4 : ValueType{
public:
}
class Bounds : ValueType{
public:
}
class Vector4 : ValueType{
public:
}
class Ray : ValueType{
public:
}
class Ray2D : ValueType{
public:
}
class Plane : ValueType{
public:
}
class Mathf : ValueType{
public:
}
class RPCMode : Enum{
public:
}
class ConnectionTesterStatus : Enum{
public:
}
class NetworkConnectionError : Enum{
public:
}
class NetworkDisconnection : Enum{
public:
}
class MasterServerEvent : Enum{
public:
}
class NetworkStateSynchronization : Enum{
public:
}
class NetworkPeerType : Enum{
public:
}
class NetworkLogLevel : Enum{
public:
}
class NetworkPlayer : ValueType{
public:
}
class NetworkViewID : ValueType{
public:
}
class Ping : Object{
public:
}
class NetworkView : Behaviour{
public:
}
class Network : Object{
public:
}
class BitStream : Object{
public:
}
class RPC : Attribute{
public:
}
class HostData : Object{
public:
}
class MasterServer : Object{
public:
}
class NetworkMessageInfo : ValueType{
public:
}
class DrivenTransformProperties : Enum{
public:
}
class DrivenRectTransformTracker : ValueType{
public:
}
class RectTransform : Transform{
public:
class Edge : Enum{
public:
}
class Axis : Enum{
public:
}
class ReapplyDrivenProperties : MulticastDelegate{
public:
}
}
class ResourceRequest : AsyncOperation{
public:
}
class Resources : Object{
public:
}
class TextAsset : __UnityObject{
public:
}
class SerializePrivateVariables : Attribute{
public:
}
class SerializeField : Attribute{
public:
}
interface ISerializationCallbackReceiver{
public:
}
class Security : Object{
public:
}
class Shader : __UnityObject{
public:
}
class Material : __UnityObject{
public:
}
class ShaderVariantCollection : __UnityObject{
public:
class ShaderVariant : ValueType{
public:
}
}
class ProceduralProcessorUsage : Enum{
public:
}
class ProceduralCacheSize : Enum{
public:
}
class ProceduralLoadingBehavior : Enum{
public:
}
class ProceduralPropertyType : Enum{
public:
}
class ProceduralOutputType : Enum{
public:
}
class ProceduralPropertyDescription : Object{
public:
}
class ProceduralMaterial : Material{
public:
}
class ProceduralTexture : Texture{
public:
}
class SpriteAlignment : Enum{
public:
}
class SpritePackingMode : Enum{
public:
}
class SpritePackingRotation : Enum{
public:
}
class SpriteMeshType : Enum{
public:
}
class Sprite : __UnityObject{
public:
}
class SpriteRenderer : Renderer{
public:
}
class Hash128 : ValueType{
public:
}
class WWW : Object{
public:
}
class WWWForm : Object{
public:
}
class CacheIndex : ValueType{
public:
}
class Caching : Object{
public:
}
class UnityEventQueueSystem : Object{
public:
}
class AsyncOperation : YieldInstruction{
public:
}
class NetworkReachability : Enum{
public:
}
class Application : Object{
public:
class LogCallback : MulticastDelegate{
public:
}
}
class UserAuthorization : Enum{
public:
}
class ApplicationInstallMode : Enum{
public:
}
class ApplicationSandboxType : Enum{
public:
}
class Behaviour : Component{
public:
}
class RenderingPath : Enum{
public:
}
class TransparencySortMode : Enum{
public:
}
class Camera : Behaviour{
public:
class CameraCallback : MulticastDelegate{
public:
}
}
class ComputeShader : __UnityObject{
public:
}
class ComputeBufferType : Enum{
public:
}
class ComputeBuffer : Object{
public:
}
class Debug : Object{
public:
}
class Display : Object{
public:
class DisplaysUpdatedDelegate : MulticastDelegate{
public:
}
}
class NotConvertedAttribute : Attribute{
public:
}
class NotFlashValidatedAttribute : Attribute{
public:
}
class NotRenamedAttribute : Attribute{
public:
}
class MonoBehaviour : Behaviour{
public:
}
class TouchPhase : Enum{
public:
}
class IMECompositionMode : Enum{
public:
}
class Touch : ValueType{
public:
}
class DeviceOrientation : Enum{
public:
}
class AccelerationEvent : ValueType{
public:
}
class Gyroscope : Object{
public:
}
class LocationInfo : ValueType{
public:
}
class LocationServiceStatus : Enum{
public:
}
class LocationService : Object{
public:
}
class Compass : Object{
public:
}
class Input : Object{
public:
}
class HideFlags : Enum{
public:
}
class __UnityObject : Object{
public:
}
class Component : __UnityObject{
public:
}
class Light : Behaviour{
public:
}
class GameObject : __UnityObject{
public:
}
class Transform : Component{
public:
}
class Time : Object{
public:
}
class Random : Object{
public:
}
class YieldInstruction : Object{
public:
}
class PlayerPrefsException : Exception{
public:
}
class PlayerPrefs : Object{
public:
}
class AndroidJavaObject : Object{
public:
}
class AndroidJavaClass : AndroidJavaObject{
public:
}
class jvalue : ValueType{
public:
}
class AndroidJNIHelper : Object{
public:
}
class AndroidJNI : Object{
public:
}
class AndroidInput : Object{
public:
}
class Motion : __UnityObject{
public:
}
class ADBannerView : Object{
public:
}
class ADInterstitialAd : Object{
public:
}
class iPhoneGeneration : Enum{
public:
}
class iPhone : Object{
public:
}
class iOSActivityIndicatorStyle : Enum{
public:
}
class iPhoneTouchPhase : Enum{
public:
}
class iPhoneTouch : ValueType{
public:
}
class iPhoneAccelerationEvent : ValueType{
public:
}
class iPhoneOrientation : Enum{
public:
}
class iPhoneInput : Object{
public:
}
class iPhoneScreenOrientation : Enum{
public:
}
class iPhoneSettings : Object{
public:
}
class iPhoneKeyboardType : Enum{
public:
}
class iPhoneKeyboard : Object{
public:
}
class iPhoneMovieControlMode : Enum{
public:
}
class iPhoneMovieScalingMode : Enum{
public:
}
class iPhoneNetworkReachability : Enum{
public:
}
class iPhoneUtils : Object{
public:
}
class CalendarIdentifier : Enum{
public:
}
class CalendarUnit : Enum{
public:
}
class LocalNotification : Object{
public:
}
class RemoteNotification : Object{
public:
}
class RemoteNotificationType : Enum{
public:
}
class NotificationServices : Object{
public:
}
class SamsungTV : Object{
public:
class TouchPadMode : Enum{
public:
}
class GestureMode : Enum{
public:
}
class GamePadMode : Enum{
public:
}
class OpenAPI : Object{
public:
class OpenAPIServerType : Enum{
public:
}
}
}
class BillboardAsset : __UnityObject{
public:
}
class BillboardRenderer : Renderer{
public:
}
class WindZoneMode : Enum{
public:
}
class WindZone : Component{
public:
}
class DynamicGI : Object{
public:
}
class ParticleSystemRenderMode : Enum{
public:
}
class ParticleSystemSimulationSpace : Enum{
public:
}
class ParticleSystem : Component{
public:
class CollisionEvent : ValueType{
public:
}
class Particle : ValueType{
public:
}
}
class ParticleSystemRenderer : Renderer{
public:
}
class ParticleCollisionEvent : ValueType{
public:
}
class ParticlePhysicsExtensions : Object{
public:
}
class Particle : ValueType{
public:
}
class ParticleEmitter : Component{
public:
}
class EllipsoidParticleEmitter : ParticleEmitter{
public:
}
class MeshParticleEmitter : ParticleEmitter{
public:
}
class ParticleAnimator : Component{
public:
}
class ParticleRenderMode : Enum{
public:
}
class ParticleRenderer : Renderer{
public:
}
class ForceMode : Enum{
public:
}
class Physics : Object{
public:
}
class RigidbodyConstraints : Enum{
public:
}
class Rigidbody : Component{
public:
}
class RigidbodyInterpolation : Enum{
public:
}
class JointMotor : ValueType{
public:
}
class JointSpring : ValueType{
public:
}
class JointLimits : ValueType{
public:
}
class Joint : Component{
public:
}
class HingeJoint : Joint{
public:
}
class SpringJoint : Joint{
public:
}
class FixedJoint : Joint{
public:
}
class SoftJointLimit : ValueType{
public:
}
class SoftJointLimitSpring : ValueType{
public:
}
class JointDriveMode : Enum{
public:
}
class JointProjectionMode : Enum{
public:
}
class JointDrive : ValueType{
public:
}
class CharacterJoint : Joint{
public:
}
class ConfigurableJointMotion : Enum{
public:
}
class RotationDriveMode : Enum{
public:
}
class ConfigurableJoint : Joint{
public:
}
class ConstantForce : Behaviour{
public:
}
class CollisionDetectionMode : Enum{
public:
}
class Collider : Component{
public:
}
class BoxCollider : Collider{
public:
}
class SphereCollider : Collider{
public:
}
class MeshCollider : Collider{
public:
}
class CapsuleCollider : Collider{
public:
}
class WheelFrictionCurve : ValueType{
public:
}
class WheelHit : ValueType{
public:
}
class WheelCollider : Collider{
public:
}
class RaycastHit : ValueType{
public:
}
class PhysicMaterialCombine : Enum{
public:
}
class PhysicMaterial : __UnityObject{
public:
}
class ContactPoint : ValueType{
public:
}
class Collision : Object{
public:
}
class CollisionFlags : Enum{
public:
}
class ControllerColliderHit : Object{
public:
}
class CharacterController : Collider{
public:
}
class ClothSkinningCoefficient : ValueType{
public:
}
class ClothSphereColliderPair : ValueType{
public:
}
class Cloth : Component{
public:
}
class Physics2D : Object{
public:
}
class RaycastHit2D : ValueType{
public:
}
class RigidbodyInterpolation2D : Enum{
public:
}
class RigidbodySleepMode2D : Enum{
public:
}
class CollisionDetectionMode2D : Enum{
public:
}
class ForceMode2D : Enum{
public:
}
class RigidbodyConstraints2D : Enum{
public:
}
class Rigidbody2D : Component{
public:
}
class Collider2D : Behaviour{
public:
}
class CircleCollider2D : Collider2D{
public:
}
class BoxCollider2D : Collider2D{
public:
}
class EdgeCollider2D : Collider2D{
public:
}
class PolygonCollider2D : Collider2D{
public:
}
class ContactPoint2D : ValueType{
public:
}
class Collision2D : Object{
public:
}
class JointLimitState2D : Enum{
public:
}
class JointAngleLimits2D : ValueType{
public:
}
class JointTranslationLimits2D : ValueType{
public:
}
class JointMotor2D : ValueType{
public:
}
class JointSuspension2D : ValueType{
public:
}
class Joint2D : Behaviour{
public:
}
class AnchoredJoint2D : Joint2D{
public:
}
class SpringJoint2D : AnchoredJoint2D{
public:
}
class DistanceJoint2D : AnchoredJoint2D{
public:
}
class HingeJoint2D : AnchoredJoint2D{
public:
}
class SliderJoint2D : AnchoredJoint2D{
public:
}
class WheelJoint2D : AnchoredJoint2D{
public:
}
class PhysicsMaterial2D : __UnityObject{
public:
}
class PhysicsUpdateBehaviour2D : Behaviour{
public:
}
class ConstantForce2D : PhysicsUpdateBehaviour2D{
public:
}
class EffectorSelection2D : Enum{
public:
}
class EffectorForceMode2D : Enum{
public:
}
class Effector2D : Behaviour{
public:
}
class AreaEffector2D : Effector2D{
public:
}
class PointEffector2D : Effector2D{
public:
}
class PlatformEffector2D : Effector2D{
public:
}
class SurfaceEffector2D : Effector2D{
public:
}
class ObstacleAvoidanceType : Enum{
public:
}
class NavMeshAgent : Behaviour{
public:
}
class NavMeshHit : ValueType{
public:
}
class NavMeshTriangulation : ValueType{
public:
}
class NavMesh : Object{
public:
}
class NavMeshObstacleShape : Enum{
public:
}
class NavMeshObstacle : Behaviour{
public:
}
class NavMeshPathStatus : Enum{
public:
}
class NavMeshPath : Object{
public:
}
class OffMeshLinkType : Enum{
public:
}
class OffMeshLinkData : ValueType{
public:
}
class OffMeshLink : Component{
public:
}
class AudioSpeakerMode : Enum{
public:
}
class AudioDataLoadState : Enum{
public:
}
class AudioConfiguration : ValueType{
public:
}
class AudioSettings : Object{
public:
class AudioConfigurationChangeHandler : MulticastDelegate{
public:
}
}
class AudioType : Enum{
public:
}
class AudioCompressionFormat : Enum{
public:
}
class AudioClipLoadType : Enum{
public:
}
class AudioClip : __UnityObject{
public:
class PCMReaderCallback : MulticastDelegate{
public:
}
class PCMSetPositionCallback : MulticastDelegate{
public:
}
}
class AudioVelocityUpdateMode : Enum{
public:
}
class AudioListener : Behaviour{
public:
}
class FFTWindow : Enum{
public:
}
class AudioRolloffMode : Enum{
public:
}
class AudioSource : Behaviour{
public:
}
class AudioReverbPreset : Enum{
public:
}
class AudioReverbZone : Behaviour{
public:
}
class AudioLowPassFilter : Behaviour{
public:
}
class AudioHighPassFilter : Behaviour{
public:
}
class AudioDistortionFilter : Behaviour{
public:
}
class AudioEchoFilter : Behaviour{
public:
}
class AudioChorusFilter : Behaviour{
public:
}
class AudioReverbFilter : Behaviour{
public:
}
class Microphone : Object{
public:
}
class MovieTexture : Texture{
public:
}
class WebCamFlags : Enum{
public:
}
class WebCamDevice : ValueType{
public:
}
class WebCamTexture : Texture{
public:
}
class AnimationClipPair : Object{
public:
}
class AnimatorOverrideController : RuntimeAnimatorController{
public:
}
class WrapMode : Enum{
public:
}
class AnimationEvent : Object{
public:
}
class AnimationClip : Motion{
public:
}
class Keyframe : ValueType{
public:
}
class AnimationCurve : Object{
public:
}
class PlayMode : Enum{
public:
}
class QueueMode : Enum{
public:
}
class AnimationBlendMode : Enum{
public:
}
class AnimationPlayMode : Enum{
public:
}
class AnimationCullingType : Enum{
public:
}
class Animation : Behaviour{
public:
}
class AnimationState : TrackedReference{
public:
}
class AvatarTarget : Enum{
public:
}
class AvatarIKGoal : Enum{
public:
}
class AvatarIKHint : Enum{
public:
}
class AnimatorControllerParameterType : Enum{
public:
}
class AnimatorRecorderMode : Enum{
public:
}
class AnimationInfo : ValueType{
public:
}
class AnimatorClipInfo : ValueType{
public:
}
class AnimatorCullingMode : Enum{
public:
}
class AnimatorUpdateMode : Enum{
public:
}
class AnimatorStateInfo : ValueType{
public:
}
class AnimatorTransitionInfo : ValueType{
public:
}
class MatchTargetWeightMask : ValueType{
public:
}
class Animator : Behaviour{
public:
}
class AnimatorControllerParameter : Object{
public:
}
class AnimatorUtility : Object{
public:
}
class SkeletonBone : ValueType{
public:
}
class HumanLimit : ValueType{
public:
}
class HumanBone : ValueType{
public:
}
class HumanDescription : ValueType{
public:
}
class AvatarBuilder : Object{
public:
}
class RuntimeAnimatorController : __UnityObject{
public:
}
class HumanBodyBones : Enum{
public:
}
class Avatar : __UnityObject{
public:
}
class HumanTrait : __UnityObject{
public:
}
class TreePrototype : Object{
public:
}
class DetailRenderMode : Enum{
public:
}
class DetailPrototype : Object{
public:
}
class SplatPrototype : Object{
public:
}
class TreeInstance : ValueType{
public:
}
class TerrainData : __UnityObject{
public:
}
class TerrainRenderFlags : Enum{
public:
}
class Terrain : Behaviour{
public:
class MaterialType : Enum{
public:
}
}
class Tree : Component{
public:
}
class TextAlignment : Enum{
public:
}
class TextAnchor : Enum{
public:
}
class HorizontalWrapMode : Enum{
public:
}
class VerticalWrapMode : Enum{
public:
}
class GUIText : GUIElement{
public:
}
class TextMesh : Component{
public:
}
class CharacterInfo : ValueType{
public:
}
class Font : __UnityObject{
public:
class FontTextureRebuildCallback : MulticastDelegate{
public:
}
}
class UICharInfo : ValueType{
public:
}
class UILineInfo : ValueType{
public:
}
class TextGenerator : Object{
public:
}
class RenderMode : Enum{
public:
}
class Canvas : Behaviour{
public:
class WillRenderCanvases : MulticastDelegate{
public:
}
}
interface ICanvasRaycastFilter{
public:
}
class CanvasGroup : Component{
public:
}
class UIVertex : ValueType{
public:
}
class CanvasRenderer : Component{
public:
class OnRequestRebuild : MulticastDelegate{
public:
}
}
class RectTransformUtility : Object{
public:
}
class TerrainCollider : Collider{
public:
}
class AndroidJavaException : Exception{
public:
}
class AndroidJavaProxy : Object{
public:
}
class DisallowMultipleComponent : Attribute{
public:
}
class RequireComponent : Attribute{
public:
}
class AddComponentMenu : Attribute{
public:
}
class CreateAssetMenuAttribute : Attribute{
public:
}
class ContextMenu : Attribute{
public:
}
class ExecuteInEditMode : Attribute{
public:
}
class HideInInspector : Attribute{
public:
}
class HelpURLAttribute : Attribute{
public:
}
class ThreadSafeAttribute : Attribute{
public:
}
class ConstructorSafeAttribute : Attribute{
public:
}
class AssemblyIsEditorAssembly : Attribute{
public:
}
class Resolution : ValueType{
public:
}
class RenderBuffer : ValueType{
public:
}
class LightType : Enum{
public:
}
class LightRenderMode : Enum{
public:
}
class LightShadows : Enum{
public:
}
class FogMode : Enum{
public:
}
class QualityLevel : Enum{
public:
}
class ShadowProjection : Enum{
public:
}
class CameraClearFlags : Enum{
public:
}
class DepthTextureMode : Enum{
public:
}
class TexGenMode : Enum{
public:
}
class AnisotropicFiltering : Enum{
public:
}
class BlendWeights : Enum{
public:
}
class MeshTopology : Enum{
public:
}
class SkinQuality : Enum{
public:
}
class ColorSpace : Enum{
public:
}
class ScreenOrientation : Enum{
public:
}
class FilterMode : Enum{
public:
}
class TextureWrapMode : Enum{
public:
}
class NPOTSupport : Enum{
public:
}
class TextureFormat : Enum{
public:
}
class CubemapFace : Enum{
public:
}
class RenderTextureFormat : Enum{
public:
}
class RenderTextureReadWrite : Enum{
public:
}
class LightmapsMode : Enum{
public:
}
class MaterialGlobalIlluminationFlags : Enum{
public:
}
class ImplementedInActionScriptAttribute : Attribute{
public:
}
class Social : Object{
public:
}
class PropertyAttribute : Attribute{
public:
}
class ContextMenuItemAttribute : PropertyAttribute{
public:
}
class TooltipAttribute : PropertyAttribute{
public:
}
class SpaceAttribute : PropertyAttribute{
public:
}
class HeaderAttribute : PropertyAttribute{
public:
}
class RangeAttribute : PropertyAttribute{
public:
}
class MultilineAttribute : PropertyAttribute{
public:
}
class TextAreaAttribute : PropertyAttribute{
public:
}
class ColorUsageAttribute : PropertyAttribute{
public:
}
class RuntimeInitializeOnLoadMethodAttribute : Attribute{
public:
}
class Types : Object{
public:
}
class SelectionBaseAttribute : Attribute{
public:
}
class StackTraceUtility : Object{
public:
}
class UnityException : SystemException{
public:
}
class MissingComponentException : SystemException{
public:
}
class UnassignedReferenceException : SystemException{
public:
}
class MissingReferenceException : SystemException{
public:
}
class SharedBetweenAnimatorsAttribute : Attribute{
public:
}
class StateMachineBehaviour : ScriptableObject{
public:
}
class TextEditor : Object{
public:
class DblClickSnapping : Enum{
public:
}
}
class TextGenerationSettings : ValueType{
public:
}
class TrackedReference : Object{
public:
}
class UnityAPICompatibilityVersionAttribute : Attribute{
public:
}
class AndroidJavaRunnable : MulticastDelegate{
public:
}
}
