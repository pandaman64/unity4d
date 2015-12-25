module UnityEngine;
import System;
import UnityEngine.Rendering;
import System.Runtime.Serialization;
import System.Collections;
import System.Reflection;
import UnityEngine.iOS;
import System.Text;
import UnityEngine.Audio;
import UnityEngine.SocialPlatforms;
public:
pragma(assembly,"UnityEngine"){
class AssetBundleCreateRequest : UnityEngine.AsyncOperation{
this ();
AssetBundle get_assetBundle();
}
class AssetBundleRequest : UnityEngine.AsyncOperation{
this ();
__UnityObject get_asset();
Object[] get_allAssets();
}
class AssetBundle : UnityEngine.__UnityObject{
this ();
static AssetBundleCreateRequest CreateFromMemory(System.Byte[]);
static AssetBundle CreateFromMemoryImmediate(System.Byte[]);
static AssetBundle CreateFromFile(System.String);
__UnityObject get_mainAsset();
Boolean Contains(System.String);
__UnityObject Load(System.String);
__UnityObject Load(System.String,System.Type);
AssetBundleRequest LoadAsync(System.String,System.Type);
Object[] LoadAll(System.Type);
Object[] LoadAll();
__UnityObject LoadAsset(System.String);
__UnityObject LoadAsset(System.String,System.Type);
AssetBundleRequest LoadAssetAsync(System.String);
AssetBundleRequest LoadAssetAsync(System.String,System.Type);
Object[] LoadAssetWithSubAssets(System.String);
Object[] LoadAssetWithSubAssets(System.String,System.Type);
AssetBundleRequest LoadAssetWithSubAssetsAsync(System.String);
AssetBundleRequest LoadAssetWithSubAssetsAsync(System.String,System.Type);
Object[] LoadAllAssets();
Object[] LoadAllAssets(System.Type);
AssetBundleRequest LoadAllAssetsAsync();
AssetBundleRequest LoadAllAssetsAsync(System.Type);
Void Unload(System.Boolean);
String[] AllAssetNames();
String[] GetAllAssetNames();
String[] GetAllScenePaths();
}
class AssetBundleManifest : UnityEngine.__UnityObject{
this ();
String[] GetAllAssetBundles();
String[] GetAllAssetBundlesWithVariant();
Hash128 GetAssetBundleHash(System.String);
String[] GetDirectDependencies(System.String);
String[] GetAllDependencies(System.String);
}
class SendMessageOptions : System.Enum{
}
class PrimitiveType : System.Enum{
}
class Space : System.Enum{
}
class LayerMask : System.ValueType{
Int32 get_value();
Void set_value(System.Int32);
static String LayerToName(System.Int32);
static Int32 NameToLayer(System.String);
static Int32 GetMask(System.String[]);
static Int32 op_Implicit(UnityEngine.LayerMask);
static LayerMask op_Implicit(System.Int32);
}
class RuntimePlatform : System.Enum{
}
class SystemLanguage : System.Enum{
}
class LogType : System.Enum{
}
class DeviceType : System.Enum{
}
class SystemInfo : System.Object{
this ();
static String get_operatingSystem();
static String get_processorType();
static Int32 get_processorCount();
static Int32 get_systemMemorySize();
static Int32 get_graphicsMemorySize();
static String get_graphicsDeviceName();
static String get_graphicsDeviceVendor();
static Int32 get_graphicsDeviceID();
static Int32 get_graphicsDeviceVendorID();
static GraphicsDeviceType get_graphicsDeviceType();
static String get_graphicsDeviceVersion();
static Int32 get_graphicsShaderLevel();
static Int32 get_graphicsPixelFillrate();
static Boolean get_supportsVertexPrograms();
static Boolean get_graphicsMultiThreaded();
static Boolean get_supportsShadows();
static Boolean get_supportsRenderTextures();
static Boolean get_supportsRenderToCubemap();
static Boolean get_supportsImageEffects();
static Boolean get_supports3DTextures();
static Boolean get_supportsComputeShaders();
static Boolean get_supportsInstancing();
static Boolean get_supportsSparseTextures();
static Int32 get_supportedRenderTargetCount();
static Int32 get_supportsStencil();
static Boolean SupportsRenderTextureFormat(UnityEngine.RenderTextureFormat);
static Boolean SupportsTextureFormat(UnityEngine.TextureFormat);
static NPOTSupport get_npotSupport();
static String get_deviceUniqueIdentifier();
static String get_deviceName();
static String get_deviceModel();
static Boolean get_supportsAccelerometer();
static Boolean get_supportsGyroscope();
static Boolean get_supportsLocationService();
static Boolean get_supportsVibration();
static DeviceType get_deviceType();
static Int32 get_maxTextureSize();
}
class WaitForSeconds : UnityEngine.YieldInstruction{
this (System.Single);
}
class WaitForFixedUpdate : UnityEngine.YieldInstruction{
this ();
}
class WaitForEndOfFrame : UnityEngine.YieldInstruction{
this ();
}
class Coroutine : UnityEngine.YieldInstruction{
}
class ScriptableObject : UnityEngine.__UnityObject{
this ();
Void SetDirty();
static ScriptableObject CreateInstance(System.String);
static ScriptableObject CreateInstance(System.Type);
}
class ThreadPriority : System.Enum{
}
class Profiler : System.Object{
this ();
static Boolean get_supported();
static String get_logFile();
static Void set_logFile(System.String);
static Boolean get_enableBinaryLog();
static Void set_enableBinaryLog(System.Boolean);
static Boolean get_enabled();
static Void set_enabled(System.Boolean);
static Void AddFramesFromFile(System.String);
static Void BeginSample(System.String);
static Void BeginSample(System.String,UnityEngine.__UnityObject);
static Void EndSample();
static Int32 get_maxNumberOfSamplesPerFrame();
static Void set_maxNumberOfSamplesPerFrame(System.Int32);
static UInt32 get_usedHeapSize();
static Int32 GetRuntimeMemorySize(UnityEngine.__UnityObject);
static UInt32 GetMonoHeapSize();
static UInt32 GetMonoUsedSize();
static UInt32 GetTotalAllocatedMemory();
static UInt32 GetTotalUnusedReservedMemory();
static UInt32 GetTotalReservedMemory();
}
class CrashReport : System.Object{
static CrashReport[] get_reports();
static CrashReport get_lastReport();
static Void RemoveAll();
Void Remove();
}
class CursorMode : System.Enum{
}
class CursorLockMode : System.Enum{
}
class Cursor : System.Object{
this ();
static Void SetCursor(UnityEngine.Texture2D,UnityEngine.Vector2,UnityEngine.CursorMode);
static Boolean get_visible();
static Void set_visible(System.Boolean);
static CursorLockMode get_lockState();
static Void set_lockState(UnityEngine.CursorLockMode);
}
class OcclusionArea : UnityEngine.Component{
this ();
Vector3 get_center();
Void set_center(UnityEngine.Vector3);
Vector3 get_size();
Void set_size(UnityEngine.Vector3);
}
class OcclusionPortal : UnityEngine.Component{
this ();
Boolean get_open();
Void set_open(System.Boolean);
}
class RenderSettings : UnityEngine.__UnityObject{
this ();
static Boolean get_fog();
static Void set_fog(System.Boolean);
static FogMode get_fogMode();
static Void set_fogMode(UnityEngine.FogMode);
static Color get_fogColor();
static Void set_fogColor(UnityEngine.Color);
static Single get_fogDensity();
static Void set_fogDensity(System.Single);
static Single get_fogStartDistance();
static Void set_fogStartDistance(System.Single);
static Single get_fogEndDistance();
static Void set_fogEndDistance(System.Single);
static AmbientMode get_ambientMode();
static Void set_ambientMode(UnityEngine.Rendering.AmbientMode);
static Color get_ambientSkyColor();
static Void set_ambientSkyColor(UnityEngine.Color);
static Color get_ambientEquatorColor();
static Void set_ambientEquatorColor(UnityEngine.Color);
static Color get_ambientGroundColor();
static Void set_ambientGroundColor(UnityEngine.Color);
static Color get_ambientLight();
static Void set_ambientLight(UnityEngine.Color);
static Single get_ambientSkyboxAmount();
static Void set_ambientSkyboxAmount(System.Single);
static Single get_ambientIntensity();
static Void set_ambientIntensity(System.Single);
static SphericalHarmonicsL2 get_ambientProbe();
static Void set_ambientProbe(UnityEngine.Rendering.SphericalHarmonicsL2);
static Single get_reflectionIntensity();
static Void set_reflectionIntensity(System.Single);
static Int32 get_reflectionBounces();
static Void set_reflectionBounces(System.Int32);
static Single get_haloStrength();
static Void set_haloStrength(System.Single);
static Single get_flareStrength();
static Void set_flareStrength(System.Single);
static Single get_flareFadeSpeed();
static Void set_flareFadeSpeed(System.Single);
static Material get_skybox();
static Void set_skybox(UnityEngine.Material);
static DefaultReflectionMode get_defaultReflectionMode();
static Void set_defaultReflectionMode(UnityEngine.Rendering.DefaultReflectionMode);
static Int32 get_defaultReflectionResolution();
static Void set_defaultReflectionResolution(System.Int32);
static Cubemap get_customReflection();
static Void set_customReflection(UnityEngine.Cubemap);
}
class QualitySettings : UnityEngine.__UnityObject{
this ();
static String[] get_names();
static Int32 GetQualityLevel();
static Void SetQualityLevel(System.Int32,System.Boolean);
static Void SetQualityLevel(System.Int32);
static QualityLevel get_currentLevel();
static Void set_currentLevel(UnityEngine.QualityLevel);
static Void IncreaseLevel(System.Boolean);
static Void IncreaseLevel();
static Void DecreaseLevel(System.Boolean);
static Void DecreaseLevel();
static Int32 get_pixelLightCount();
static Void set_pixelLightCount(System.Int32);
static ShadowProjection get_shadowProjection();
static Void set_shadowProjection(UnityEngine.ShadowProjection);
static Int32 get_shadowCascades();
static Void set_shadowCascades(System.Int32);
static Single get_shadowDistance();
static Void set_shadowDistance(System.Single);
static Single get_shadowCascade2Split();
static Void set_shadowCascade2Split(System.Single);
static Vector3 get_shadowCascade4Split();
static Void set_shadowCascade4Split(UnityEngine.Vector3);
static Int32 get_masterTextureLimit();
static Void set_masterTextureLimit(System.Int32);
static AnisotropicFiltering get_anisotropicFiltering();
static Void set_anisotropicFiltering(UnityEngine.AnisotropicFiltering);
static Single get_lodBias();
static Void set_lodBias(System.Single);
static Int32 get_maximumLODLevel();
static Void set_maximumLODLevel(System.Int32);
static Int32 get_particleRaycastBudget();
static Void set_particleRaycastBudget(System.Int32);
static Boolean get_softVegetation();
static Void set_softVegetation(System.Boolean);
static Boolean get_realtimeReflectionProbes();
static Void set_realtimeReflectionProbes(System.Boolean);
static Boolean get_billboardsFaceCameraPosition();
static Void set_billboardsFaceCameraPosition(System.Boolean);
static Int32 get_maxQueuedFrames();
static Void set_maxQueuedFrames(System.Int32);
static Int32 get_vSyncCount();
static Void set_vSyncCount(System.Int32);
static Int32 get_antiAliasing();
static Void set_antiAliasing(System.Int32);
static ColorSpace get_desiredColorSpace();
static ColorSpace get_activeColorSpace();
static BlendWeights get_blendWeights();
static Void set_blendWeights(UnityEngine.BlendWeights);
}
class TextureCompressionQuality : System.Enum{
}
class MeshFilter : UnityEngine.Component{
this ();
Mesh get_mesh();
Void set_mesh(UnityEngine.Mesh);
Mesh get_sharedMesh();
Void set_sharedMesh(UnityEngine.Mesh);
}
class CombineInstance : System.ValueType{
Mesh get_mesh();
Void set_mesh(UnityEngine.Mesh);
Int32 get_subMeshIndex();
Void set_subMeshIndex(System.Int32);
Matrix4x4 get_transform();
Void set_transform(UnityEngine.Matrix4x4);
}
class Mesh : UnityEngine.__UnityObject{
this ();
Void Clear(System.Boolean);
Void Clear();
Boolean get_isReadable();
Vector3[] get_vertices();
Void set_vertices(UnityEngine.Vector3[]);
Vector3[] get_normals();
Void set_normals(UnityEngine.Vector3[]);
Vector4[] get_tangents();
Void set_tangents(UnityEngine.Vector4[]);
Vector2[] get_uv();
Void set_uv(UnityEngine.Vector2[]);
Vector2[] get_uv1();
Void set_uv1(UnityEngine.Vector2[]);
Vector2[] get_uv2();
Void set_uv2(UnityEngine.Vector2[]);
Vector2[] get_uv3();
Void set_uv3(UnityEngine.Vector2[]);
Vector2[] get_uv4();
Void set_uv4(UnityEngine.Vector2[]);
Bounds get_bounds();
Void set_bounds(UnityEngine.Bounds);
Color[] get_colors();
Void set_colors(UnityEngine.Color[]);
Color32[] get_colors32();
Void set_colors32(UnityEngine.Color32[]);
Void RecalculateBounds();
Void RecalculateNormals();
Void Optimize();
Int32[] get_triangles();
Void set_triangles(System.Int32[]);
Int32[] GetTriangles(System.Int32);
Void SetTriangles(System.Int32[],System.Int32);
Int32[] GetIndices(System.Int32);
Void SetIndices(System.Int32[],UnityEngine.MeshTopology,System.Int32);
MeshTopology GetTopology(System.Int32);
Int32 get_vertexCount();
Int32 get_subMeshCount();
Void set_subMeshCount(System.Int32);
Void CombineMeshes(UnityEngine.CombineInstance[],System.Boolean,System.Boolean);
Void CombineMeshes(UnityEngine.CombineInstance[],System.Boolean);
Void CombineMeshes(UnityEngine.CombineInstance[]);
BoneWeight[] get_boneWeights();
Void set_boneWeights(UnityEngine.BoneWeight[]);
Matrix4x4[] get_bindposes();
Void set_bindposes(UnityEngine.Matrix4x4[]);
Void MarkDynamic();
Void UploadMeshData(System.Boolean);
Int32 get_blendShapeCount();
String GetBlendShapeName(System.Int32);
Int32 GetBlendShapeIndex(System.String);
}
class BoneWeight : System.ValueType{
Single get_weight0();
Void set_weight0(System.Single);
Single get_weight1();
Void set_weight1(System.Single);
Single get_weight2();
Void set_weight2(System.Single);
Single get_weight3();
Void set_weight3(System.Single);
Int32 get_boneIndex0();
Void set_boneIndex0(System.Int32);
Int32 get_boneIndex1();
Void set_boneIndex1(System.Int32);
Int32 get_boneIndex2();
Void set_boneIndex2(System.Int32);
Int32 get_boneIndex3();
Void set_boneIndex3(System.Int32);
Int32 GetHashCode();
Boolean Equals(System.Object);
static Boolean op_Equality(UnityEngine.BoneWeight,UnityEngine.BoneWeight);
static Boolean op_Inequality(UnityEngine.BoneWeight,UnityEngine.BoneWeight);
}
class SkinnedMeshRenderer : UnityEngine.Renderer{
this ();
Transform[] get_bones();
Void set_bones(UnityEngine.Transform[]);
Transform get_rootBone();
Void set_rootBone(UnityEngine.Transform);
SkinQuality get_quality();
Void set_quality(UnityEngine.SkinQuality);
Mesh get_sharedMesh();
Void set_sharedMesh(UnityEngine.Mesh);
Boolean get_updateWhenOffscreen();
Void set_updateWhenOffscreen(System.Boolean);
Bounds get_localBounds();
Void set_localBounds(UnityEngine.Bounds);
Void BakeMesh(UnityEngine.Mesh);
Single GetBlendShapeWeight(System.Int32);
Void SetBlendShapeWeight(System.Int32,System.Single);
}
class Flare : UnityEngine.__UnityObject{
this ();
}
class LensFlare : UnityEngine.Behaviour{
this ();
Flare get_flare();
Void set_flare(UnityEngine.Flare);
Single get_brightness();
Void set_brightness(System.Single);
Single get_fadeSpeed();
Void set_fadeSpeed(System.Single);
Color get_color();
Void set_color(UnityEngine.Color);
}
class Renderer : UnityEngine.Component{
this ();
Boolean get_isPartOfStaticBatch();
Matrix4x4 get_worldToLocalMatrix();
Matrix4x4 get_localToWorldMatrix();
Boolean get_enabled();
Void set_enabled(System.Boolean);
ShadowCastingMode get_shadowCastingMode();
Void set_shadowCastingMode(UnityEngine.Rendering.ShadowCastingMode);
Boolean get_castShadows();
Void set_castShadows(System.Boolean);
Boolean get_receiveShadows();
Void set_receiveShadows(System.Boolean);
Material get_material();
Void set_material(UnityEngine.Material);
Material get_sharedMaterial();
Void set_sharedMaterial(UnityEngine.Material);
Material[] get_materials();
Void set_materials(UnityEngine.Material[]);
Material[] get_sharedMaterials();
Void set_sharedMaterials(UnityEngine.Material[]);
Bounds get_bounds();
Int32 get_lightmapIndex();
Void set_lightmapIndex(System.Int32);
Int32 get_realtimeLightmapIndex();
Vector4 get_lightmapTilingOffset();
Void set_lightmapTilingOffset(UnityEngine.Vector4);
Vector4 get_lightmapScaleOffset();
Void set_lightmapScaleOffset(UnityEngine.Vector4);
Vector4 get_realtimeLightmapScaleOffset();
Void set_realtimeLightmapScaleOffset(UnityEngine.Vector4);
Boolean get_isVisible();
Boolean get_useLightProbes();
Void set_useLightProbes(System.Boolean);
Transform get_lightProbeAnchor();
Void set_lightProbeAnchor(UnityEngine.Transform);
Transform get_probeAnchor();
Void set_probeAnchor(UnityEngine.Transform);
ReflectionProbeUsage get_reflectionProbeUsage();
Void set_reflectionProbeUsage(UnityEngine.Rendering.ReflectionProbeUsage);
Void SetPropertyBlock(UnityEngine.MaterialPropertyBlock);
Void GetPropertyBlock(UnityEngine.MaterialPropertyBlock);
String get_sortingLayerName();
Void set_sortingLayerName(System.String);
Int32 get_sortingLayerID();
Void set_sortingLayerID(System.Int32);
Int32 get_sortingOrder();
Void set_sortingOrder(System.Int32);
}
class Projector : UnityEngine.Behaviour{
this ();
Single get_nearClipPlane();
Void set_nearClipPlane(System.Single);
Single get_farClipPlane();
Void set_farClipPlane(System.Single);
Single get_fieldOfView();
Void set_fieldOfView(System.Single);
Single get_aspectRatio();
Void set_aspectRatio(System.Single);
Boolean get_isOrthoGraphic();
Void set_isOrthoGraphic(System.Boolean);
Single get_orthoGraphicSize();
Void set_orthoGraphicSize(System.Single);
Boolean get_orthographic();
Void set_orthographic(System.Boolean);
Single get_orthographicSize();
Void set_orthographicSize(System.Single);
Int32 get_ignoreLayers();
Void set_ignoreLayers(System.Int32);
Material get_material();
Void set_material(UnityEngine.Material);
}
class Skybox : UnityEngine.Behaviour{
this ();
Material get_material();
Void set_material(UnityEngine.Material);
}
class TrailRenderer : UnityEngine.Renderer{
this ();
Single get_time();
Void set_time(System.Single);
Single get_startWidth();
Void set_startWidth(System.Single);
Single get_endWidth();
Void set_endWidth(System.Single);
Boolean get_autodestruct();
Void set_autodestruct(System.Boolean);
}
class LineRenderer : UnityEngine.Renderer{
this ();
Void SetWidth(System.Single,System.Single);
Void SetColors(UnityEngine.Color,UnityEngine.Color);
Void SetVertexCount(System.Int32);
Void SetPosition(System.Int32,UnityEngine.Vector3);
Boolean get_useWorldSpace();
Void set_useWorldSpace(System.Boolean);
}
class MaterialPropertyBlock : System.Object{
this ();
Void SetFloat(System.String,System.Single);
Void SetFloat(System.Int32,System.Single);
Void SetVector(System.String,UnityEngine.Vector4);
Void SetVector(System.Int32,UnityEngine.Vector4);
Void SetColor(System.String,UnityEngine.Color);
Void SetColor(System.Int32,UnityEngine.Color);
Void SetMatrix(System.String,UnityEngine.Matrix4x4);
Void SetMatrix(System.Int32,UnityEngine.Matrix4x4);
Void SetTexture(System.String,UnityEngine.Texture);
Void SetTexture(System.Int32,UnityEngine.Texture);
Void AddFloat(System.String,System.Single);
Void AddFloat(System.Int32,System.Single);
Void AddVector(System.String,UnityEngine.Vector4);
Void AddVector(System.Int32,UnityEngine.Vector4);
Void AddColor(System.String,UnityEngine.Color);
Void AddColor(System.Int32,UnityEngine.Color);
Void AddMatrix(System.String,UnityEngine.Matrix4x4);
Void AddMatrix(System.Int32,UnityEngine.Matrix4x4);
Void AddTexture(System.String,UnityEngine.Texture);
Void AddTexture(System.Int32,UnityEngine.Texture);
Single GetFloat(System.String);
Single GetFloat(System.Int32);
Vector4 GetVector(System.String);
Vector4 GetVector(System.Int32);
Matrix4x4 GetMatrix(System.String);
Matrix4x4 GetMatrix(System.Int32);
Texture GetTexture(System.String);
Texture GetTexture(System.Int32);
Void Clear();
}
class Graphics : System.Object{
this ();
static Void SetRenderTarget(UnityEngine.RenderTexture);
static Void SetRenderTarget(UnityEngine.RenderTexture,System.Int32);
static Void SetRenderTarget(UnityEngine.RenderTexture,System.Int32,UnityEngine.CubemapFace);
static Void SetRenderTarget(UnityEngine.RenderBuffer,UnityEngine.RenderBuffer);
static Void SetRenderTarget(UnityEngine.RenderBuffer,UnityEngine.RenderBuffer,System.Int32);
static Void SetRenderTarget(UnityEngine.RenderBuffer,UnityEngine.RenderBuffer,System.Int32,UnityEngine.CubemapFace);
static Void SetRenderTarget(UnityEngine.RenderBuffer[],UnityEngine.RenderBuffer);
static Void DrawMesh(UnityEngine.Mesh,UnityEngine.Vector3,UnityEngine.Quaternion,UnityEngine.Material,System.Int32,UnityEngine.Camera,System.Int32,UnityEngine.MaterialPropertyBlock,System.Boolean);
static Void DrawMesh(UnityEngine.Mesh,UnityEngine.Vector3,UnityEngine.Quaternion,UnityEngine.Material,System.Int32,UnityEngine.Camera,System.Int32,UnityEngine.MaterialPropertyBlock);
static Void DrawMesh(UnityEngine.Mesh,UnityEngine.Vector3,UnityEngine.Quaternion,UnityEngine.Material,System.Int32,UnityEngine.Camera,System.Int32);
static Void DrawMesh(UnityEngine.Mesh,UnityEngine.Vector3,UnityEngine.Quaternion,UnityEngine.Material,System.Int32,UnityEngine.Camera);
static Void DrawMesh(UnityEngine.Mesh,UnityEngine.Vector3,UnityEngine.Quaternion,UnityEngine.Material,System.Int32);
static Void DrawMesh(UnityEngine.Mesh,UnityEngine.Vector3,UnityEngine.Quaternion,UnityEngine.Material,System.Int32,UnityEngine.Camera,System.Int32,UnityEngine.MaterialPropertyBlock,System.Boolean,System.Boolean);
static Void DrawMesh(UnityEngine.Mesh,UnityEngine.Vector3,UnityEngine.Quaternion,UnityEngine.Material,System.Int32,UnityEngine.Camera,System.Int32,UnityEngine.MaterialPropertyBlock,UnityEngine.Rendering.ShadowCastingMode,System.Boolean);
static Void DrawMesh(UnityEngine.Mesh,UnityEngine.Vector3,UnityEngine.Quaternion,UnityEngine.Material,System.Int32,UnityEngine.Camera,System.Int32,UnityEngine.MaterialPropertyBlock,UnityEngine.Rendering.ShadowCastingMode);
static Void DrawMesh(UnityEngine.Mesh,UnityEngine.Vector3,UnityEngine.Quaternion,UnityEngine.Material,System.Int32,UnityEngine.Camera,System.Int32,UnityEngine.MaterialPropertyBlock,UnityEngine.Rendering.ShadowCastingMode,System.Boolean,UnityEngine.Transform);
static Void DrawMesh(UnityEngine.Mesh,UnityEngine.Matrix4x4,UnityEngine.Material,System.Int32,UnityEngine.Camera,System.Int32,UnityEngine.MaterialPropertyBlock,System.Boolean);
static Void DrawMesh(UnityEngine.Mesh,UnityEngine.Matrix4x4,UnityEngine.Material,System.Int32,UnityEngine.Camera,System.Int32,UnityEngine.MaterialPropertyBlock);
static Void DrawMesh(UnityEngine.Mesh,UnityEngine.Matrix4x4,UnityEngine.Material,System.Int32,UnityEngine.Camera,System.Int32);
static Void DrawMesh(UnityEngine.Mesh,UnityEngine.Matrix4x4,UnityEngine.Material,System.Int32,UnityEngine.Camera);
static Void DrawMesh(UnityEngine.Mesh,UnityEngine.Matrix4x4,UnityEngine.Material,System.Int32);
static Void DrawMesh(UnityEngine.Mesh,UnityEngine.Matrix4x4,UnityEngine.Material,System.Int32,UnityEngine.Camera,System.Int32,UnityEngine.MaterialPropertyBlock,System.Boolean,System.Boolean);
static Void DrawMesh(UnityEngine.Mesh,UnityEngine.Matrix4x4,UnityEngine.Material,System.Int32,UnityEngine.Camera,System.Int32,UnityEngine.MaterialPropertyBlock,UnityEngine.Rendering.ShadowCastingMode,System.Boolean);
static Void DrawMesh(UnityEngine.Mesh,UnityEngine.Matrix4x4,UnityEngine.Material,System.Int32,UnityEngine.Camera,System.Int32,UnityEngine.MaterialPropertyBlock,UnityEngine.Rendering.ShadowCastingMode);
static Void DrawMesh(UnityEngine.Mesh,UnityEngine.Matrix4x4,UnityEngine.Material,System.Int32,UnityEngine.Camera,System.Int32,UnityEngine.MaterialPropertyBlock,UnityEngine.Rendering.ShadowCastingMode,System.Boolean,UnityEngine.Transform);
static Void DrawMeshNow(UnityEngine.Mesh,UnityEngine.Vector3,UnityEngine.Quaternion);
static Void DrawMeshNow(UnityEngine.Mesh,UnityEngine.Vector3,UnityEngine.Quaternion,System.Int32);
static Void DrawMeshNow(UnityEngine.Mesh,UnityEngine.Matrix4x4);
static Void DrawMeshNow(UnityEngine.Mesh,UnityEngine.Matrix4x4,System.Int32);
static Void DrawProcedural(UnityEngine.MeshTopology,System.Int32,System.Int32);
static Void DrawProcedural(UnityEngine.MeshTopology,System.Int32);
static Void DrawProceduralIndirect(UnityEngine.MeshTopology,UnityEngine.ComputeBuffer,System.Int32);
static Void DrawProceduralIndirect(UnityEngine.MeshTopology,UnityEngine.ComputeBuffer);
static Void DrawTexture(UnityEngine.Rect,UnityEngine.Texture);
static Void DrawTexture(UnityEngine.Rect,UnityEngine.Texture,UnityEngine.Material);
static Void DrawTexture(UnityEngine.Rect,UnityEngine.Texture,System.Int32,System.Int32,System.Int32,System.Int32);
static Void DrawTexture(UnityEngine.Rect,UnityEngine.Texture,System.Int32,System.Int32,System.Int32,System.Int32,UnityEngine.Material);
static Void DrawTexture(UnityEngine.Rect,UnityEngine.Texture,UnityEngine.Rect,System.Int32,System.Int32,System.Int32,System.Int32);
static Void DrawTexture(UnityEngine.Rect,UnityEngine.Texture,UnityEngine.Rect,System.Int32,System.Int32,System.Int32,System.Int32,UnityEngine.Material);
static Void DrawTexture(UnityEngine.Rect,UnityEngine.Texture,UnityEngine.Rect,System.Int32,System.Int32,System.Int32,System.Int32,UnityEngine.Color);
static Void DrawTexture(UnityEngine.Rect,UnityEngine.Texture,UnityEngine.Rect,System.Int32,System.Int32,System.Int32,System.Int32,UnityEngine.Color,UnityEngine.Material);
static Void ExecuteCommandBuffer(UnityEngine.Rendering.CommandBuffer);
static Void Blit(UnityEngine.Texture,UnityEngine.RenderTexture);
static Void Blit(UnityEngine.Texture,UnityEngine.RenderTexture,UnityEngine.Material);
static Void Blit(UnityEngine.Texture,UnityEngine.RenderTexture,UnityEngine.Material,System.Int32);
static Void Blit(UnityEngine.Texture,UnityEngine.Material);
static Void Blit(UnityEngine.Texture,UnityEngine.Material,System.Int32);
static Void BlitMultiTap(UnityEngine.Texture,UnityEngine.RenderTexture,UnityEngine.Material,UnityEngine.Vector2[]);
static RenderBuffer get_activeColorBuffer();
static RenderBuffer get_activeDepthBuffer();
static Void SetRandomWriteTarget(System.Int32,UnityEngine.RenderTexture);
static Void SetRandomWriteTarget(System.Int32,UnityEngine.ComputeBuffer);
static Void ClearRandomWriteTargets();
static Void DrawMesh(UnityEngine.Mesh,UnityEngine.Vector3,UnityEngine.Quaternion);
static Void DrawMesh(UnityEngine.Mesh,UnityEngine.Vector3,UnityEngine.Quaternion,System.Int32);
static Void DrawMesh(UnityEngine.Mesh,UnityEngine.Matrix4x4);
static Void DrawMesh(UnityEngine.Mesh,UnityEngine.Matrix4x4,System.Int32);
static String get_deviceName();
static String get_deviceVendor();
static String get_deviceVersion();
}
class LightmapData : System.Object{
this ();
Texture2D get_lightmapFar();
Void set_lightmapFar(UnityEngine.Texture2D);
Texture2D get_lightmap();
Void set_lightmap(UnityEngine.Texture2D);
Texture2D get_lightmapNear();
Void set_lightmapNear(UnityEngine.Texture2D);
}
class LightmapsModeLegacy : System.Enum{
}
class LightProbes : UnityEngine.__UnityObject{
this ();
Vector3[] get_positions();
SphericalHarmonicsL2[] get_bakedProbes();
Void set_bakedProbes(UnityEngine.Rendering.SphericalHarmonicsL2[]);
Int32 get_count();
Int32 get_cellCount();
Void GetInterpolatedLightProbe(UnityEngine.Vector3,UnityEngine.Renderer,System.Single[]);
Single[] get_coefficients();
Void set_coefficients(System.Single[]);
}
class LightmapSettings : UnityEngine.__UnityObject{
this ();
static LightmapData[] get_lightmaps();
static Void set_lightmaps(UnityEngine.LightmapData[]);
static LightmapsModeLegacy get_lightmapsModeLegacy();
static Void set_lightmapsModeLegacy(UnityEngine.LightmapsModeLegacy);
static LightmapsMode get_lightmapsMode();
static Void set_lightmapsMode(UnityEngine.LightmapsMode);
static ColorSpace get_bakedColorSpace();
static Void set_bakedColorSpace(UnityEngine.ColorSpace);
static LightProbes get_lightProbes();
static Void set_lightProbes(UnityEngine.LightProbes);
}
class GeometryUtility : System.Object{
this ();
static Plane[] CalculateFrustumPlanes(UnityEngine.Camera);
static Plane[] CalculateFrustumPlanes(UnityEngine.Matrix4x4);
static Boolean TestPlanesAABB(UnityEngine.Plane[],UnityEngine.Bounds);
}
class Screen : System.Object{
this ();
static Resolution[] get_resolutions();
static Resolution[] get_GetResolution();
static Boolean get_showCursor();
static Void set_showCursor(System.Boolean);
static Boolean get_lockCursor();
static Void set_lockCursor(System.Boolean);
static Resolution get_currentResolution();
static Void SetResolution(System.Int32,System.Int32,System.Boolean,System.Int32);
static Void SetResolution(System.Int32,System.Int32,System.Boolean);
static Int32 get_width();
static Int32 get_height();
static Single get_dpi();
static Boolean get_fullScreen();
static Void set_fullScreen(System.Boolean);
static Boolean get_autorotateToPortrait();
static Void set_autorotateToPortrait(System.Boolean);
static Boolean get_autorotateToPortraitUpsideDown();
static Void set_autorotateToPortraitUpsideDown(System.Boolean);
static Boolean get_autorotateToLandscapeLeft();
static Void set_autorotateToLandscapeLeft(System.Boolean);
static Boolean get_autorotateToLandscapeRight();
static Void set_autorotateToLandscapeRight(System.Boolean);
static ScreenOrientation get_orientation();
static Void set_orientation(UnityEngine.ScreenOrientation);
static Int32 get_sleepTimeout();
static Void set_sleepTimeout(System.Int32);
}
class SleepTimeout : System.Object{
this ();
}
class GL : System.Object{
this ();
static Void Vertex3(System.Single,System.Single,System.Single);
static Void Vertex(UnityEngine.Vector3);
static Void Color(UnityEngine.Color);
static Void TexCoord(UnityEngine.Vector3);
static Void TexCoord2(System.Single,System.Single);
static Void TexCoord3(System.Single,System.Single,System.Single);
static Void MultiTexCoord2(System.Int32,System.Single,System.Single);
static Void MultiTexCoord3(System.Int32,System.Single,System.Single,System.Single);
static Void MultiTexCoord(System.Int32,UnityEngine.Vector3);
static Void Begin(System.Int32);
static Void End();
static Void LoadOrtho();
static Void LoadPixelMatrix();
static Void LoadPixelMatrix(System.Single,System.Single,System.Single,System.Single);
static Void Viewport(UnityEngine.Rect);
static Void LoadProjectionMatrix(UnityEngine.Matrix4x4);
static Void LoadIdentity();
static Matrix4x4 get_modelview();
static Void set_modelview(UnityEngine.Matrix4x4);
static Void MultMatrix(UnityEngine.Matrix4x4);
static Void PushMatrix();
static Void PopMatrix();
static Matrix4x4 GetGPUProjectionMatrix(UnityEngine.Matrix4x4,System.Boolean);
static Boolean get_wireframe();
static Void set_wireframe(System.Boolean);
static Boolean get_sRGBWrite();
static Void set_sRGBWrite(System.Boolean);
static Boolean get_invertCulling();
static Void set_invertCulling(System.Boolean);
static Void SetRevertBackfacing(System.Boolean);
static Void Clear(System.Boolean,System.Boolean,UnityEngine.Color);
static Void Clear(System.Boolean,System.Boolean,UnityEngine.Color,System.Single);
static Void ClearWithSkybox(System.Boolean,UnityEngine.Camera);
static Void InvalidateState();
static Void IssuePluginEvent(System.Int32);
static Void RenderTargetBarrier();
}
class MeshRenderer : UnityEngine.Renderer{
this ();
Mesh get_additionalVertexStreams();
Void set_additionalVertexStreams(UnityEngine.Mesh);
}
class StaticBatchingUtility : System.Object{
this ();
static Void Combine(UnityEngine.GameObject);
static Void Combine(UnityEngine.GameObject[],UnityEngine.GameObject);
}
class ImageEffectTransformsToLDR : System.Attribute{
this ();
}
class ImageEffectOpaque : System.Attribute{
this ();
}
class Texture : UnityEngine.__UnityObject{
this ();
static Int32 get_masterTextureLimit();
static Void set_masterTextureLimit(System.Int32);
static AnisotropicFiltering get_anisotropicFiltering();
static Void set_anisotropicFiltering(UnityEngine.AnisotropicFiltering);
static Void SetGlobalAnisotropicFilteringLimits(System.Int32,System.Int32);
Int32 get_width();
Void set_width(System.Int32);
Int32 get_height();
Void set_height(System.Int32);
FilterMode get_filterMode();
Void set_filterMode(UnityEngine.FilterMode);
Int32 get_anisoLevel();
Void set_anisoLevel(System.Int32);
TextureWrapMode get_wrapMode();
Void set_wrapMode(UnityEngine.TextureWrapMode);
Single get_mipMapBias();
Void set_mipMapBias(System.Single);
Vector2 get_texelSize();
IntPtr GetNativeTexturePtr();
Int32 GetNativeTextureID();
}
class Texture2D : UnityEngine.Texture{
this (System.Int32,System.Int32);
this (System.Int32,System.Int32,UnityEngine.TextureFormat,System.Boolean);
this (System.Int32,System.Int32,UnityEngine.TextureFormat,System.Boolean,System.Boolean);
Int32 get_mipmapCount();
static Texture2D CreateExternalTexture(System.Int32,System.Int32,UnityEngine.TextureFormat,System.Boolean,System.Boolean,System.IntPtr);
Void UpdateExternalTexture(System.IntPtr);
TextureFormat get_format();
static Texture2D get_whiteTexture();
static Texture2D get_blackTexture();
Void SetPixel(System.Int32,System.Int32,UnityEngine.Color);
Color GetPixel(System.Int32,System.Int32);
Color GetPixelBilinear(System.Single,System.Single);
Void SetPixels(UnityEngine.Color[]);
Void SetPixels(UnityEngine.Color[],System.Int32);
Void SetPixels(System.Int32,System.Int32,System.Int32,System.Int32,UnityEngine.Color[],System.Int32);
Void SetPixels(System.Int32,System.Int32,System.Int32,System.Int32,UnityEngine.Color[]);
Void SetPixels32(UnityEngine.Color32[]);
Void SetPixels32(UnityEngine.Color32[],System.Int32);
Void SetPixels32(System.Int32,System.Int32,System.Int32,System.Int32,UnityEngine.Color32[]);
Void SetPixels32(System.Int32,System.Int32,System.Int32,System.Int32,UnityEngine.Color32[],System.Int32);
Boolean LoadImage(System.Byte[]);
Void LoadRawTextureData(System.Byte[]);
Byte[] GetRawTextureData();
Color[] GetPixels();
Color[] GetPixels(System.Int32);
Color[] GetPixels(System.Int32,System.Int32,System.Int32,System.Int32,System.Int32);
Color[] GetPixels(System.Int32,System.Int32,System.Int32,System.Int32);
Color32[] GetPixels32(System.Int32);
Color32[] GetPixels32();
Void Apply(System.Boolean,System.Boolean);
Void Apply(System.Boolean);
Void Apply();
Boolean Resize(System.Int32,System.Int32,UnityEngine.TextureFormat,System.Boolean);
Boolean Resize(System.Int32,System.Int32);
Void Compress(System.Boolean);
Rect[] PackTextures(UnityEngine.Texture2D[],System.Int32,System.Int32,System.Boolean);
Rect[] PackTextures(UnityEngine.Texture2D[],System.Int32,System.Int32);
Rect[] PackTextures(UnityEngine.Texture2D[],System.Int32);
Void ReadPixels(UnityEngine.Rect,System.Int32,System.Int32,System.Boolean);
Void ReadPixels(UnityEngine.Rect,System.Int32,System.Int32);
Byte[] EncodeToPNG();
Byte[] EncodeToJPG(System.Int32);
Byte[] EncodeToJPG();
Boolean get_alphaIsTransparency();
Void set_alphaIsTransparency(System.Boolean);
}
class Cubemap : UnityEngine.Texture{
this (System.Int32,UnityEngine.TextureFormat,System.Boolean);
Void SetPixel(UnityEngine.CubemapFace,System.Int32,System.Int32,UnityEngine.Color);
Color GetPixel(UnityEngine.CubemapFace,System.Int32,System.Int32);
Color[] GetPixels(UnityEngine.CubemapFace,System.Int32);
Color[] GetPixels(UnityEngine.CubemapFace);
Void SetPixels(UnityEngine.Color[],UnityEngine.CubemapFace,System.Int32);
Void SetPixels(UnityEngine.Color[],UnityEngine.CubemapFace);
Void Apply(System.Boolean,System.Boolean);
Void Apply(System.Boolean);
Void Apply();
TextureFormat get_format();
Void SmoothEdges(System.Int32);
Void SmoothEdges();
}
class Texture3D : UnityEngine.Texture{
this (System.Int32,System.Int32,System.Int32,UnityEngine.TextureFormat,System.Boolean);
Int32 get_depth();
Color[] GetPixels(System.Int32);
Color[] GetPixels();
Color32[] GetPixels32(System.Int32);
Color32[] GetPixels32();
Void SetPixels(UnityEngine.Color[],System.Int32);
Void SetPixels(UnityEngine.Color[]);
Void SetPixels32(UnityEngine.Color32[],System.Int32);
Void SetPixels32(UnityEngine.Color32[]);
Void Apply(System.Boolean);
Void Apply();
TextureFormat get_format();
}
class SparseTexture : UnityEngine.Texture{
this (System.Int32,System.Int32,UnityEngine.TextureFormat,System.Int32);
this (System.Int32,System.Int32,UnityEngine.TextureFormat,System.Int32,System.Boolean);
Int32 get_tileWidth();
Int32 get_tileHeight();
Boolean get_isCreated();
Void UpdateTile(System.Int32,System.Int32,System.Int32,UnityEngine.Color32[]);
Void UpdateTileRaw(System.Int32,System.Int32,System.Int32,System.Byte[]);
Void UnloadTile(System.Int32,System.Int32,System.Int32);
}
class RenderTexture : UnityEngine.Texture{
this (System.Int32,System.Int32,System.Int32,UnityEngine.RenderTextureFormat,UnityEngine.RenderTextureReadWrite);
this (System.Int32,System.Int32,System.Int32,UnityEngine.RenderTextureFormat);
this (System.Int32,System.Int32,System.Int32);
static RenderTexture GetTemporary(System.Int32,System.Int32,System.Int32,UnityEngine.RenderTextureFormat,UnityEngine.RenderTextureReadWrite,System.Int32);
static RenderTexture GetTemporary(System.Int32,System.Int32,System.Int32,UnityEngine.RenderTextureFormat,UnityEngine.RenderTextureReadWrite);
static RenderTexture GetTemporary(System.Int32,System.Int32,System.Int32,UnityEngine.RenderTextureFormat);
static RenderTexture GetTemporary(System.Int32,System.Int32,System.Int32);
static RenderTexture GetTemporary(System.Int32,System.Int32);
static Void ReleaseTemporary(UnityEngine.RenderTexture);
Int32 get_width();
Void set_width(System.Int32);
Int32 get_height();
Void set_height(System.Int32);
Int32 get_depth();
Void set_depth(System.Int32);
Boolean get_isPowerOfTwo();
Void set_isPowerOfTwo(System.Boolean);
Boolean get_sRGB();
RenderTextureFormat get_format();
Void set_format(UnityEngine.RenderTextureFormat);
Boolean get_useMipMap();
Void set_useMipMap(System.Boolean);
Boolean get_generateMips();
Void set_generateMips(System.Boolean);
Boolean get_isCubemap();
Void set_isCubemap(System.Boolean);
Boolean get_isVolume();
Void set_isVolume(System.Boolean);
Int32 get_volumeDepth();
Void set_volumeDepth(System.Int32);
Int32 get_antiAliasing();
Void set_antiAliasing(System.Int32);
Boolean get_enableRandomWrite();
Void set_enableRandomWrite(System.Boolean);
Boolean Create();
Void Release();
Boolean IsCreated();
Void DiscardContents();
Void DiscardContents(System.Boolean,System.Boolean);
Void MarkRestoreExpected();
RenderBuffer get_colorBuffer();
RenderBuffer get_depthBuffer();
Void SetGlobalShaderProperty(System.String);
static RenderTexture get_active();
static Void set_active(UnityEngine.RenderTexture);
static Boolean get_enabled();
static Void set_enabled(System.Boolean);
Vector2 GetTexelOffset();
static Boolean SupportsStencil(UnityEngine.RenderTexture);
Void SetBorderColor(UnityEngine.Color);
}
class ReflectionProbe : UnityEngine.Behaviour{
this ();
ReflectionProbeType get_type();
Void set_type(UnityEngine.Rendering.ReflectionProbeType);
Boolean get_hdr();
Void set_hdr(System.Boolean);
Vector3 get_size();
Void set_size(UnityEngine.Vector3);
Vector3 get_center();
Void set_center(UnityEngine.Vector3);
Single get_nearClipPlane();
Void set_nearClipPlane(System.Single);
Single get_farClipPlane();
Void set_farClipPlane(System.Single);
Single get_shadowDistance();
Void set_shadowDistance(System.Single);
Int32 get_resolution();
Void set_resolution(System.Int32);
Int32 get_cullingMask();
Void set_cullingMask(System.Int32);
ReflectionProbeClearFlags get_clearFlags();
Void set_clearFlags(UnityEngine.Rendering.ReflectionProbeClearFlags);
Color get_backgroundColor();
Void set_backgroundColor(UnityEngine.Color);
Single get_intensity();
Void set_intensity(System.Single);
Boolean get_boxProjection();
Void set_boxProjection(System.Boolean);
Bounds get_bounds();
ReflectionProbeMode get_mode();
Void set_mode(UnityEngine.Rendering.ReflectionProbeMode);
Int32 get_importance();
Void set_importance(System.Int32);
ReflectionProbeRefreshMode get_refreshMode();
Void set_refreshMode(UnityEngine.Rendering.ReflectionProbeRefreshMode);
ReflectionProbeTimeSlicingMode get_timeSlicingMode();
Void set_timeSlicingMode(UnityEngine.Rendering.ReflectionProbeTimeSlicingMode);
Texture get_bakedTexture();
Void set_bakedTexture(UnityEngine.Texture);
Texture get_customBakedTexture();
Void set_customBakedTexture(UnityEngine.Texture);
Texture get_texture();
Int32 RenderProbe(UnityEngine.RenderTexture);
Int32 RenderProbe();
Boolean IsFinishedRendering(System.Int32);
static Boolean BlendCubemap(UnityEngine.Texture,UnityEngine.Texture,System.Single,UnityEngine.RenderTexture);
}
class GUIElement : UnityEngine.Behaviour{
this ();
Boolean HitTest(UnityEngine.Vector3,UnityEngine.Camera);
Boolean HitTest(UnityEngine.Vector3);
Rect GetScreenRect(UnityEngine.Camera);
Rect GetScreenRect();
}
class GUITexture : UnityEngine.GUIElement{
this ();
Color get_color();
Void set_color(UnityEngine.Color);
Texture get_texture();
Void set_texture(UnityEngine.Texture);
Rect get_pixelInset();
Void set_pixelInset(UnityEngine.Rect);
RectOffset get_border();
Void set_border(UnityEngine.RectOffset);
}
class GUILayer : UnityEngine.Behaviour{
this ();
GUIElement HitTest(UnityEngine.Vector3);
}
class LODFadeMode : System.Enum{
}
class LOD : System.ValueType{
this (System.Single,UnityEngine.Renderer[]);
}
class LODGroup : UnityEngine.Component{
this ();
Vector3 get_localReferencePoint();
Void set_localReferencePoint(UnityEngine.Vector3);
Single get_size();
Void set_size(System.Single);
Int32 get_lodCount();
LODFadeMode get_fadeMode();
Void set_fadeMode(UnityEngine.LODFadeMode);
Boolean get_animateCrossFading();
Void set_animateCrossFading(System.Boolean);
Boolean get_enabled();
Void set_enabled(System.Boolean);
Void RecalculateBounds();
LOD[] GetLODs();
Void SetLODS(UnityEngine.LOD[]);
Void SetLODs(UnityEngine.LOD[]);
Void ForceLOD(System.Int32);
static Single get_crossFadeAnimationDuration();
static Void set_crossFadeAnimationDuration(System.Single);
}
class GradientColorKey : System.ValueType{
this (UnityEngine.Color,System.Single);
}
class GradientAlphaKey : System.ValueType{
this (System.Single,System.Single);
}
class Gradient : System.Object{
this ();
Color Evaluate(System.Single);
GradientColorKey[] get_colorKeys();
Void set_colorKeys(UnityEngine.GradientColorKey[]);
GradientAlphaKey[] get_alphaKeys();
Void set_alphaKeys(UnityEngine.GradientAlphaKey[]);
Void SetKeys(UnityEngine.GradientColorKey[],UnityEngine.GradientAlphaKey[]);
}
class ScaleMode : System.Enum{
}
class GUI : System.Object{
static class Scope : System.Object{
Void Dispose();
}
static class GroupScope : UnityEngine.GUI.Scope{
this (UnityEngine.Rect);
this (UnityEngine.Rect,System.String);
this (UnityEngine.Rect,UnityEngine.Texture);
this (UnityEngine.Rect,UnityEngine.GUIContent);
this (UnityEngine.Rect,UnityEngine.GUIStyle);
this (UnityEngine.Rect,System.String,UnityEngine.GUIStyle);
this (UnityEngine.Rect,UnityEngine.Texture,UnityEngine.GUIStyle);
}
static class ScrollViewScope : UnityEngine.GUI.Scope{
this (UnityEngine.Rect,UnityEngine.Vector2,UnityEngine.Rect);
this (UnityEngine.Rect,UnityEngine.Vector2,UnityEngine.Rect,System.Boolean,System.Boolean);
this (UnityEngine.Rect,UnityEngine.Vector2,UnityEngine.Rect,UnityEngine.GUIStyle,UnityEngine.GUIStyle);
this (UnityEngine.Rect,UnityEngine.Vector2,UnityEngine.Rect,System.Boolean,System.Boolean,UnityEngine.GUIStyle,UnityEngine.GUIStyle);
Vector2 get_scrollPosition();
Boolean get_handleScrollWheel();
Void set_handleScrollWheel(System.Boolean);
}
static class ClipScope : UnityEngine.GUI.Scope{
this (UnityEngine.Rect);
}
static class WindowFunction : System.MulticastDelegate{
this (System.Object,System.IntPtr);
Void Invoke(System.Int32);
IAsyncResult BeginInvoke(System.Int32,System.AsyncCallback,System.Object);
Void EndInvoke(System.IAsyncResult);
}
this ();
static Rect ModalWindow(System.Int32,UnityEngine.Rect,UnityEngine.GUI.WindowFunction,UnityEngine.Texture);
static Rect ModalWindow(System.Int32,UnityEngine.Rect,UnityEngine.GUI.WindowFunction,UnityEngine.GUIContent);
static Rect ModalWindow(System.Int32,UnityEngine.Rect,UnityEngine.GUI.WindowFunction,System.String,UnityEngine.GUIStyle);
static Rect ModalWindow(System.Int32,UnityEngine.Rect,UnityEngine.GUI.WindowFunction,UnityEngine.Texture,UnityEngine.GUIStyle);
static Rect ModalWindow(System.Int32,UnityEngine.Rect,UnityEngine.GUI.WindowFunction,UnityEngine.GUIContent,UnityEngine.GUIStyle);
static Void DragWindow(UnityEngine.Rect);
static Void DragWindow();
static Void BringWindowToFront(System.Int32);
static Void BringWindowToBack(System.Int32);
static Void FocusWindow(System.Int32);
static Void UnfocusWindow();
static String PasswordField(UnityEngine.Rect,System.String,System.Char);
static String PasswordField(UnityEngine.Rect,System.String,System.Char,System.Int32);
static String PasswordField(UnityEngine.Rect,System.String,System.Char,UnityEngine.GUIStyle);
static String PasswordField(UnityEngine.Rect,System.String,System.Char,System.Int32,UnityEngine.GUIStyle);
static String TextArea(UnityEngine.Rect,System.String);
static String TextArea(UnityEngine.Rect,System.String,System.Int32);
static String TextArea(UnityEngine.Rect,System.String,UnityEngine.GUIStyle);
static String TextArea(UnityEngine.Rect,System.String,System.Int32,UnityEngine.GUIStyle);
static Void SetNextControlName(System.String);
static String GetNameOfFocusedControl();
static Void FocusControl(System.String);
static Boolean Toggle(UnityEngine.Rect,System.Boolean,System.String);
static Boolean Toggle(UnityEngine.Rect,System.Boolean,UnityEngine.Texture);
static Boolean Toggle(UnityEngine.Rect,System.Boolean,UnityEngine.GUIContent);
static Boolean Toggle(UnityEngine.Rect,System.Boolean,System.String,UnityEngine.GUIStyle);
static Boolean Toggle(UnityEngine.Rect,System.Boolean,UnityEngine.Texture,UnityEngine.GUIStyle);
static Boolean Toggle(UnityEngine.Rect,System.Boolean,UnityEngine.GUIContent,UnityEngine.GUIStyle);
static Boolean Toggle(UnityEngine.Rect,System.Int32,System.Boolean,UnityEngine.GUIContent,UnityEngine.GUIStyle);
static Int32 Toolbar(UnityEngine.Rect,System.Int32,System.String[]);
static Int32 Toolbar(UnityEngine.Rect,System.Int32,UnityEngine.Texture[]);
static Int32 Toolbar(UnityEngine.Rect,System.Int32,UnityEngine.GUIContent[]);
static Int32 Toolbar(UnityEngine.Rect,System.Int32,System.String[],UnityEngine.GUIStyle);
static Int32 Toolbar(UnityEngine.Rect,System.Int32,UnityEngine.Texture[],UnityEngine.GUIStyle);
static Int32 Toolbar(UnityEngine.Rect,System.Int32,UnityEngine.GUIContent[],UnityEngine.GUIStyle);
static Int32 SelectionGrid(UnityEngine.Rect,System.Int32,System.String[],System.Int32);
static Int32 SelectionGrid(UnityEngine.Rect,System.Int32,UnityEngine.Texture[],System.Int32);
static Int32 SelectionGrid(UnityEngine.Rect,System.Int32,UnityEngine.GUIContent[],System.Int32);
static Int32 SelectionGrid(UnityEngine.Rect,System.Int32,System.String[],System.Int32,UnityEngine.GUIStyle);
static Int32 SelectionGrid(UnityEngine.Rect,System.Int32,UnityEngine.Texture[],System.Int32,UnityEngine.GUIStyle);
static Int32 SelectionGrid(UnityEngine.Rect,System.Int32,UnityEngine.GUIContent[],System.Int32,UnityEngine.GUIStyle);
static Single HorizontalSlider(UnityEngine.Rect,System.Single,System.Single,System.Single);
static Single HorizontalSlider(UnityEngine.Rect,System.Single,System.Single,System.Single,UnityEngine.GUIStyle,UnityEngine.GUIStyle);
static Single VerticalSlider(UnityEngine.Rect,System.Single,System.Single,System.Single);
static Single VerticalSlider(UnityEngine.Rect,System.Single,System.Single,System.Single,UnityEngine.GUIStyle,UnityEngine.GUIStyle);
static Single Slider(UnityEngine.Rect,System.Single,System.Single,System.Single,System.Single,UnityEngine.GUIStyle,UnityEngine.GUIStyle,System.Boolean,System.Int32);
static Single HorizontalScrollbar(UnityEngine.Rect,System.Single,System.Single,System.Single,System.Single);
static Single HorizontalScrollbar(UnityEngine.Rect,System.Single,System.Single,System.Single,System.Single,UnityEngine.GUIStyle);
static Single VerticalScrollbar(UnityEngine.Rect,System.Single,System.Single,System.Single,System.Single);
static Single VerticalScrollbar(UnityEngine.Rect,System.Single,System.Single,System.Single,System.Single,UnityEngine.GUIStyle);
static Void BeginGroup(UnityEngine.Rect);
static Void BeginGroup(UnityEngine.Rect,System.String);
static Void BeginGroup(UnityEngine.Rect,UnityEngine.Texture);
static Void BeginGroup(UnityEngine.Rect,UnityEngine.GUIContent);
static Void BeginGroup(UnityEngine.Rect,UnityEngine.GUIStyle);
static Void BeginGroup(UnityEngine.Rect,System.String,UnityEngine.GUIStyle);
static Void BeginGroup(UnityEngine.Rect,UnityEngine.Texture,UnityEngine.GUIStyle);
static Void BeginGroup(UnityEngine.Rect,UnityEngine.GUIContent,UnityEngine.GUIStyle);
static Void EndGroup();
static Void BeginClip(UnityEngine.Rect);
static Void EndClip();
static Vector2 BeginScrollView(UnityEngine.Rect,UnityEngine.Vector2,UnityEngine.Rect);
static Vector2 BeginScrollView(UnityEngine.Rect,UnityEngine.Vector2,UnityEngine.Rect,System.Boolean,System.Boolean);
static Vector2 BeginScrollView(UnityEngine.Rect,UnityEngine.Vector2,UnityEngine.Rect,UnityEngine.GUIStyle,UnityEngine.GUIStyle);
static Vector2 BeginScrollView(UnityEngine.Rect,UnityEngine.Vector2,UnityEngine.Rect,System.Boolean,System.Boolean,UnityEngine.GUIStyle,UnityEngine.GUIStyle);
static Void EndScrollView();
static Void EndScrollView(System.Boolean);
static Void ScrollTo(UnityEngine.Rect);
static Boolean ScrollTowards(UnityEngine.Rect,System.Single);
static Rect Window(System.Int32,UnityEngine.Rect,UnityEngine.GUI.WindowFunction,System.String);
static Rect Window(System.Int32,UnityEngine.Rect,UnityEngine.GUI.WindowFunction,UnityEngine.Texture);
static Rect Window(System.Int32,UnityEngine.Rect,UnityEngine.GUI.WindowFunction,UnityEngine.GUIContent);
static Rect Window(System.Int32,UnityEngine.Rect,UnityEngine.GUI.WindowFunction,System.String,UnityEngine.GUIStyle);
static Rect Window(System.Int32,UnityEngine.Rect,UnityEngine.GUI.WindowFunction,UnityEngine.Texture,UnityEngine.GUIStyle);
static Rect Window(System.Int32,UnityEngine.Rect,UnityEngine.GUI.WindowFunction,UnityEngine.GUIContent,UnityEngine.GUIStyle);
static Rect ModalWindow(System.Int32,UnityEngine.Rect,UnityEngine.GUI.WindowFunction,System.String);
static Void set_skin(UnityEngine.GUISkin);
static GUISkin get_skin();
static Color get_color();
static Void set_color(UnityEngine.Color);
static Color get_backgroundColor();
static Void set_backgroundColor(UnityEngine.Color);
static Color get_contentColor();
static Void set_contentColor(UnityEngine.Color);
static Boolean get_changed();
static Void set_changed(System.Boolean);
static Boolean get_enabled();
static Void set_enabled(System.Boolean);
static Matrix4x4 get_matrix();
static Void set_matrix(UnityEngine.Matrix4x4);
static String get_tooltip();
static Void set_tooltip(System.String);
static Int32 get_depth();
static Void set_depth(System.Int32);
static Void Label(UnityEngine.Rect,System.String);
static Void Label(UnityEngine.Rect,UnityEngine.Texture);
static Void Label(UnityEngine.Rect,UnityEngine.GUIContent);
static Void Label(UnityEngine.Rect,System.String,UnityEngine.GUIStyle);
static Void Label(UnityEngine.Rect,UnityEngine.Texture,UnityEngine.GUIStyle);
static Void Label(UnityEngine.Rect,UnityEngine.GUIContent,UnityEngine.GUIStyle);
static Void DrawTexture(UnityEngine.Rect,UnityEngine.Texture,UnityEngine.ScaleMode,System.Boolean);
static Void DrawTexture(UnityEngine.Rect,UnityEngine.Texture,UnityEngine.ScaleMode);
static Void DrawTexture(UnityEngine.Rect,UnityEngine.Texture);
static Void DrawTexture(UnityEngine.Rect,UnityEngine.Texture,UnityEngine.ScaleMode,System.Boolean,System.Single);
static Void DrawTextureWithTexCoords(UnityEngine.Rect,UnityEngine.Texture,UnityEngine.Rect);
static Void DrawTextureWithTexCoords(UnityEngine.Rect,UnityEngine.Texture,UnityEngine.Rect,System.Boolean);
static Void Box(UnityEngine.Rect,System.String);
static Void Box(UnityEngine.Rect,UnityEngine.Texture);
static Void Box(UnityEngine.Rect,UnityEngine.GUIContent);
static Void Box(UnityEngine.Rect,System.String,UnityEngine.GUIStyle);
static Void Box(UnityEngine.Rect,UnityEngine.Texture,UnityEngine.GUIStyle);
static Void Box(UnityEngine.Rect,UnityEngine.GUIContent,UnityEngine.GUIStyle);
static Boolean Button(UnityEngine.Rect,System.String);
static Boolean Button(UnityEngine.Rect,UnityEngine.Texture);
static Boolean Button(UnityEngine.Rect,UnityEngine.GUIContent);
static Boolean Button(UnityEngine.Rect,System.String,UnityEngine.GUIStyle);
static Boolean Button(UnityEngine.Rect,UnityEngine.Texture,UnityEngine.GUIStyle);
static Boolean Button(UnityEngine.Rect,UnityEngine.GUIContent,UnityEngine.GUIStyle);
static Boolean RepeatButton(UnityEngine.Rect,System.String);
static Boolean RepeatButton(UnityEngine.Rect,UnityEngine.Texture);
static Boolean RepeatButton(UnityEngine.Rect,UnityEngine.GUIContent);
static Boolean RepeatButton(UnityEngine.Rect,System.String,UnityEngine.GUIStyle);
static Boolean RepeatButton(UnityEngine.Rect,UnityEngine.Texture,UnityEngine.GUIStyle);
static Boolean RepeatButton(UnityEngine.Rect,UnityEngine.GUIContent,UnityEngine.GUIStyle);
static String TextField(UnityEngine.Rect,System.String);
static String TextField(UnityEngine.Rect,System.String,System.Int32);
static String TextField(UnityEngine.Rect,System.String,UnityEngine.GUIStyle);
static String TextField(UnityEngine.Rect,System.String,System.Int32,UnityEngine.GUIStyle);
}
class GUILayout : System.Object{
static class HorizontalScope : UnityEngine.GUI.Scope{
this (UnityEngine.GUILayoutOption[]);
this (UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
this (System.String,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
this (UnityEngine.Texture,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
this (UnityEngine.GUIContent,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
}
static class VerticalScope : UnityEngine.GUI.Scope{
this (UnityEngine.GUILayoutOption[]);
this (UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
this (System.String,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
this (UnityEngine.Texture,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
this (UnityEngine.GUIContent,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
}
static class AreaScope : UnityEngine.GUI.Scope{
this (UnityEngine.Rect);
this (UnityEngine.Rect,System.String);
this (UnityEngine.Rect,UnityEngine.Texture);
this (UnityEngine.Rect,UnityEngine.GUIContent);
this (UnityEngine.Rect,System.String,UnityEngine.GUIStyle);
this (UnityEngine.Rect,UnityEngine.Texture,UnityEngine.GUIStyle);
this (UnityEngine.Rect,UnityEngine.GUIContent,UnityEngine.GUIStyle);
}
static class ScrollViewScope : UnityEngine.GUI.Scope{
this (UnityEngine.Vector2,UnityEngine.GUILayoutOption[]);
this (UnityEngine.Vector2,System.Boolean,System.Boolean,UnityEngine.GUILayoutOption[]);
this (UnityEngine.Vector2,UnityEngine.GUIStyle,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
this (UnityEngine.Vector2,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
this (UnityEngine.Vector2,System.Boolean,System.Boolean,UnityEngine.GUIStyle,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
this (UnityEngine.Vector2,System.Boolean,System.Boolean,UnityEngine.GUIStyle,UnityEngine.GUIStyle,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
Vector2 get_scrollPosition();
Boolean get_handleScrollWheel();
Void set_handleScrollWheel(System.Boolean);
}
this ();
static Void BeginArea(UnityEngine.Rect);
static Void BeginArea(UnityEngine.Rect,System.String);
static Void BeginArea(UnityEngine.Rect,UnityEngine.Texture);
static Void BeginArea(UnityEngine.Rect,UnityEngine.GUIContent);
static Void BeginArea(UnityEngine.Rect,UnityEngine.GUIStyle);
static Void BeginArea(UnityEngine.Rect,System.String,UnityEngine.GUIStyle);
static Void BeginArea(UnityEngine.Rect,UnityEngine.Texture,UnityEngine.GUIStyle);
static Void BeginArea(UnityEngine.Rect,UnityEngine.GUIContent,UnityEngine.GUIStyle);
static Void EndArea();
static Vector2 BeginScrollView(UnityEngine.Vector2,UnityEngine.GUILayoutOption[]);
static Vector2 BeginScrollView(UnityEngine.Vector2,System.Boolean,System.Boolean,UnityEngine.GUILayoutOption[]);
static Vector2 BeginScrollView(UnityEngine.Vector2,UnityEngine.GUIStyle,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static Vector2 BeginScrollView(UnityEngine.Vector2,UnityEngine.GUIStyle);
static Vector2 BeginScrollView(UnityEngine.Vector2,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static Vector2 BeginScrollView(UnityEngine.Vector2,System.Boolean,System.Boolean,UnityEngine.GUIStyle,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static Vector2 BeginScrollView(UnityEngine.Vector2,System.Boolean,System.Boolean,UnityEngine.GUIStyle,UnityEngine.GUIStyle,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static Void EndScrollView();
static Rect Window(System.Int32,UnityEngine.Rect,UnityEngine.GUI.WindowFunction,System.String,UnityEngine.GUILayoutOption[]);
static Rect Window(System.Int32,UnityEngine.Rect,UnityEngine.GUI.WindowFunction,UnityEngine.Texture,UnityEngine.GUILayoutOption[]);
static Rect Window(System.Int32,UnityEngine.Rect,UnityEngine.GUI.WindowFunction,UnityEngine.GUIContent,UnityEngine.GUILayoutOption[]);
static Rect Window(System.Int32,UnityEngine.Rect,UnityEngine.GUI.WindowFunction,System.String,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static Rect Window(System.Int32,UnityEngine.Rect,UnityEngine.GUI.WindowFunction,UnityEngine.Texture,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static Rect Window(System.Int32,UnityEngine.Rect,UnityEngine.GUI.WindowFunction,UnityEngine.GUIContent,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static GUILayoutOption Width(System.Single);
static GUILayoutOption MinWidth(System.Single);
static GUILayoutOption MaxWidth(System.Single);
static GUILayoutOption Height(System.Single);
static GUILayoutOption MinHeight(System.Single);
static GUILayoutOption MaxHeight(System.Single);
static GUILayoutOption ExpandWidth(System.Boolean);
static GUILayoutOption ExpandHeight(System.Boolean);
static Void Label(UnityEngine.Texture,UnityEngine.GUILayoutOption[]);
static Void Label(System.String,UnityEngine.GUILayoutOption[]);
static Void Label(UnityEngine.GUIContent,UnityEngine.GUILayoutOption[]);
static Void Label(UnityEngine.Texture,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static Void Label(System.String,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static Void Label(UnityEngine.GUIContent,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static Void Box(UnityEngine.Texture,UnityEngine.GUILayoutOption[]);
static Void Box(System.String,UnityEngine.GUILayoutOption[]);
static Void Box(UnityEngine.GUIContent,UnityEngine.GUILayoutOption[]);
static Void Box(UnityEngine.Texture,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static Void Box(System.String,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static Void Box(UnityEngine.GUIContent,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static Boolean Button(UnityEngine.Texture,UnityEngine.GUILayoutOption[]);
static Boolean Button(System.String,UnityEngine.GUILayoutOption[]);
static Boolean Button(UnityEngine.GUIContent,UnityEngine.GUILayoutOption[]);
static Boolean Button(UnityEngine.Texture,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static Boolean Button(System.String,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static Boolean Button(UnityEngine.GUIContent,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static Boolean RepeatButton(UnityEngine.Texture,UnityEngine.GUILayoutOption[]);
static Boolean RepeatButton(System.String,UnityEngine.GUILayoutOption[]);
static Boolean RepeatButton(UnityEngine.GUIContent,UnityEngine.GUILayoutOption[]);
static Boolean RepeatButton(UnityEngine.Texture,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static Boolean RepeatButton(System.String,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static Boolean RepeatButton(UnityEngine.GUIContent,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static String TextField(System.String,UnityEngine.GUILayoutOption[]);
static String TextField(System.String,System.Int32,UnityEngine.GUILayoutOption[]);
static String TextField(System.String,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static String TextField(System.String,System.Int32,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static String PasswordField(System.String,System.Char,UnityEngine.GUILayoutOption[]);
static String PasswordField(System.String,System.Char,System.Int32,UnityEngine.GUILayoutOption[]);
static String PasswordField(System.String,System.Char,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static String PasswordField(System.String,System.Char,System.Int32,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static String TextArea(System.String,UnityEngine.GUILayoutOption[]);
static String TextArea(System.String,System.Int32,UnityEngine.GUILayoutOption[]);
static String TextArea(System.String,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static String TextArea(System.String,System.Int32,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static Boolean Toggle(System.Boolean,UnityEngine.Texture,UnityEngine.GUILayoutOption[]);
static Boolean Toggle(System.Boolean,System.String,UnityEngine.GUILayoutOption[]);
static Boolean Toggle(System.Boolean,UnityEngine.GUIContent,UnityEngine.GUILayoutOption[]);
static Boolean Toggle(System.Boolean,UnityEngine.Texture,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static Boolean Toggle(System.Boolean,System.String,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static Boolean Toggle(System.Boolean,UnityEngine.GUIContent,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static Int32 Toolbar(System.Int32,System.String[],UnityEngine.GUILayoutOption[]);
static Int32 Toolbar(System.Int32,UnityEngine.Texture[],UnityEngine.GUILayoutOption[]);
static Int32 Toolbar(System.Int32,UnityEngine.GUIContent[],UnityEngine.GUILayoutOption[]);
static Int32 Toolbar(System.Int32,System.String[],UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static Int32 Toolbar(System.Int32,UnityEngine.Texture[],UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static Int32 Toolbar(System.Int32,UnityEngine.GUIContent[],UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static Int32 SelectionGrid(System.Int32,System.String[],System.Int32,UnityEngine.GUILayoutOption[]);
static Int32 SelectionGrid(System.Int32,UnityEngine.Texture[],System.Int32,UnityEngine.GUILayoutOption[]);
static Int32 SelectionGrid(System.Int32,UnityEngine.GUIContent[],System.Int32,UnityEngine.GUILayoutOption[]);
static Int32 SelectionGrid(System.Int32,System.String[],System.Int32,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static Int32 SelectionGrid(System.Int32,UnityEngine.Texture[],System.Int32,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static Int32 SelectionGrid(System.Int32,UnityEngine.GUIContent[],System.Int32,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static Single HorizontalSlider(System.Single,System.Single,System.Single,UnityEngine.GUILayoutOption[]);
static Single HorizontalSlider(System.Single,System.Single,System.Single,UnityEngine.GUIStyle,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static Single VerticalSlider(System.Single,System.Single,System.Single,UnityEngine.GUILayoutOption[]);
static Single VerticalSlider(System.Single,System.Single,System.Single,UnityEngine.GUIStyle,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static Single HorizontalScrollbar(System.Single,System.Single,System.Single,System.Single,UnityEngine.GUILayoutOption[]);
static Single HorizontalScrollbar(System.Single,System.Single,System.Single,System.Single,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static Single VerticalScrollbar(System.Single,System.Single,System.Single,System.Single,UnityEngine.GUILayoutOption[]);
static Single VerticalScrollbar(System.Single,System.Single,System.Single,System.Single,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static Void Space(System.Single);
static Void FlexibleSpace();
static Void BeginHorizontal(UnityEngine.GUILayoutOption[]);
static Void BeginHorizontal(UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static Void BeginHorizontal(System.String,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static Void BeginHorizontal(UnityEngine.Texture,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static Void BeginHorizontal(UnityEngine.GUIContent,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static Void EndHorizontal();
static Void BeginVertical(UnityEngine.GUILayoutOption[]);
static Void BeginVertical(UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static Void BeginVertical(System.String,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static Void BeginVertical(UnityEngine.Texture,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static Void BeginVertical(UnityEngine.GUIContent,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static Void EndVertical();
}
class GUILayoutUtility : System.Object{
this ();
static Void BeginGroup(System.String);
static Void EndGroup(System.String);
static Rect GetRect(UnityEngine.GUIContent,UnityEngine.GUIStyle);
static Rect GetRect(UnityEngine.GUIContent,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static Rect GetRect(System.Single,System.Single);
static Rect GetRect(System.Single,System.Single,UnityEngine.GUIStyle);
static Rect GetRect(System.Single,System.Single,UnityEngine.GUILayoutOption[]);
static Rect GetRect(System.Single,System.Single,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static Rect GetRect(System.Single,System.Single,System.Single,System.Single);
static Rect GetRect(System.Single,System.Single,System.Single,System.Single,UnityEngine.GUIStyle);
static Rect GetRect(System.Single,System.Single,System.Single,System.Single,UnityEngine.GUILayoutOption[]);
static Rect GetRect(System.Single,System.Single,System.Single,System.Single,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static Rect GetLastRect();
static Rect GetAspectRect(System.Single);
static Rect GetAspectRect(System.Single,UnityEngine.GUIStyle);
static Rect GetAspectRect(System.Single,UnityEngine.GUILayoutOption[]);
static Rect GetAspectRect(System.Single,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
}
class GUILayoutOption : System.Object{
}
class ExitGUIException : System.Exception{
this ();
}
class FocusType : System.Enum{
}
class GUIUtility : System.Object{
this ();
static Int32 GetControlID(UnityEngine.FocusType);
static Int32 GetControlID(System.Int32,UnityEngine.FocusType);
static Int32 GetControlID(UnityEngine.GUIContent,UnityEngine.FocusType);
static Int32 GetControlID(UnityEngine.FocusType,UnityEngine.Rect);
static Int32 GetControlID(System.Int32,UnityEngine.FocusType,UnityEngine.Rect);
static Int32 GetControlID(UnityEngine.GUIContent,UnityEngine.FocusType,UnityEngine.Rect);
static Object GetStateObject(System.Type,System.Int32);
static Object QueryStateObject(System.Type,System.Int32);
static Int32 get_hotControl();
static Void set_hotControl(System.Int32);
static Int32 get_keyboardControl();
static Void set_keyboardControl(System.Int32);
static Void ExitGUI();
static Vector2 GUIToScreenPoint(UnityEngine.Vector2);
static Vector2 ScreenToGUIPoint(UnityEngine.Vector2);
static Rect ScreenToGUIRect(UnityEngine.Rect);
static Void RotateAroundPivot(System.Single,UnityEngine.Vector2);
static Void ScaleAroundPivot(UnityEngine.Vector2,UnityEngine.Vector2);
static Boolean get_hasModalWindow();
}
class GUISettings : System.Object{
this ();
Boolean get_doubleClickSelectsWord();
Void set_doubleClickSelectsWord(System.Boolean);
Boolean get_tripleClickSelectsLine();
Void set_tripleClickSelectsLine(System.Boolean);
Color get_cursorColor();
Void set_cursorColor(UnityEngine.Color);
Single get_cursorFlashSpeed();
Void set_cursorFlashSpeed(System.Single);
Color get_selectionColor();
Void set_selectionColor(UnityEngine.Color);
}
class GUISkin : UnityEngine.ScriptableObject{
this ();
Font get_font();
Void set_font(UnityEngine.Font);
GUIStyle get_box();
Void set_box(UnityEngine.GUIStyle);
GUIStyle get_label();
Void set_label(UnityEngine.GUIStyle);
GUIStyle get_textField();
Void set_textField(UnityEngine.GUIStyle);
GUIStyle get_textArea();
Void set_textArea(UnityEngine.GUIStyle);
GUIStyle get_button();
Void set_button(UnityEngine.GUIStyle);
GUIStyle get_toggle();
Void set_toggle(UnityEngine.GUIStyle);
GUIStyle get_window();
Void set_window(UnityEngine.GUIStyle);
GUIStyle get_horizontalSlider();
Void set_horizontalSlider(UnityEngine.GUIStyle);
GUIStyle get_horizontalSliderThumb();
Void set_horizontalSliderThumb(UnityEngine.GUIStyle);
GUIStyle get_verticalSlider();
Void set_verticalSlider(UnityEngine.GUIStyle);
GUIStyle get_verticalSliderThumb();
Void set_verticalSliderThumb(UnityEngine.GUIStyle);
GUIStyle get_horizontalScrollbar();
Void set_horizontalScrollbar(UnityEngine.GUIStyle);
GUIStyle get_horizontalScrollbarThumb();
Void set_horizontalScrollbarThumb(UnityEngine.GUIStyle);
GUIStyle get_horizontalScrollbarLeftButton();
Void set_horizontalScrollbarLeftButton(UnityEngine.GUIStyle);
GUIStyle get_horizontalScrollbarRightButton();
Void set_horizontalScrollbarRightButton(UnityEngine.GUIStyle);
GUIStyle get_verticalScrollbar();
Void set_verticalScrollbar(UnityEngine.GUIStyle);
GUIStyle get_verticalScrollbarThumb();
Void set_verticalScrollbarThumb(UnityEngine.GUIStyle);
GUIStyle get_verticalScrollbarUpButton();
Void set_verticalScrollbarUpButton(UnityEngine.GUIStyle);
GUIStyle get_verticalScrollbarDownButton();
Void set_verticalScrollbarDownButton(UnityEngine.GUIStyle);
GUIStyle get_scrollView();
Void set_scrollView(UnityEngine.GUIStyle);
GUIStyle[] get_customStyles();
Void set_customStyles(UnityEngine.GUIStyle[]);
GUISettings get_settings();
GUIStyle GetStyle(System.String);
GUIStyle FindStyle(System.String);
IEnumerator GetEnumerator();
}
class GUIContent : System.Object{
this ();
this (System.String);
this (UnityEngine.Texture);
this (System.String,UnityEngine.Texture);
this (System.String,System.String);
this (UnityEngine.Texture,System.String);
this (System.String,UnityEngine.Texture,System.String);
this (UnityEngine.GUIContent);
String get_text();
Void set_text(System.String);
Texture get_image();
Void set_image(UnityEngine.Texture);
String get_tooltip();
Void set_tooltip(System.String);
}
class GUIStyleState : System.Object{
this ();
Texture2D get_background();
Void set_background(UnityEngine.Texture2D);
Color get_textColor();
Void set_textColor(UnityEngine.Color);
}
class RectOffset : System.Object{
this ();
this (System.Int32,System.Int32,System.Int32,System.Int32);
Int32 get_left();
Void set_left(System.Int32);
Int32 get_right();
Void set_right(System.Int32);
Int32 get_top();
Void set_top(System.Int32);
Int32 get_bottom();
Void set_bottom(System.Int32);
Int32 get_horizontal();
Int32 get_vertical();
Rect Add(UnityEngine.Rect);
Rect Remove(UnityEngine.Rect);
String ToString();
}
class FontStyle : System.Enum{
}
class ImagePosition : System.Enum{
}
class GUIStyle : System.Object{
this ();
this (UnityEngine.GUIStyle);
Void set_richText(System.Boolean);
Single get_lineHeight();
Void Draw(UnityEngine.Rect,System.Boolean,System.Boolean,System.Boolean,System.Boolean);
Void Draw(UnityEngine.Rect,System.String,System.Boolean,System.Boolean,System.Boolean,System.Boolean);
Void Draw(UnityEngine.Rect,UnityEngine.Texture,System.Boolean,System.Boolean,System.Boolean,System.Boolean);
Void Draw(UnityEngine.Rect,UnityEngine.GUIContent,System.Boolean,System.Boolean,System.Boolean,System.Boolean);
Void Draw(UnityEngine.Rect,UnityEngine.GUIContent,System.Int32);
Void Draw(UnityEngine.Rect,UnityEngine.GUIContent,System.Int32,System.Boolean);
Void DrawCursor(UnityEngine.Rect,UnityEngine.GUIContent,System.Int32,System.Int32);
Void DrawWithTextSelection(UnityEngine.Rect,UnityEngine.GUIContent,System.Int32,System.Int32,System.Int32);
static GUIStyle get_none();
Vector2 GetCursorPixelPosition(UnityEngine.Rect,UnityEngine.GUIContent,System.Int32);
Int32 GetCursorStringIndex(UnityEngine.Rect,UnityEngine.GUIContent,UnityEngine.Vector2);
Vector2 CalcSize(UnityEngine.GUIContent);
Vector2 CalcScreenSize(UnityEngine.Vector2);
Single CalcHeight(UnityEngine.GUIContent,System.Single);
Boolean get_isHeightDependantOnWidth();
String ToString();
static GUIStyle op_Implicit(System.String);
String get_name();
Void set_name(System.String);
GUIStyleState get_normal();
Void set_normal(UnityEngine.GUIStyleState);
GUIStyleState get_hover();
Void set_hover(UnityEngine.GUIStyleState);
GUIStyleState get_active();
Void set_active(UnityEngine.GUIStyleState);
GUIStyleState get_onNormal();
Void set_onNormal(UnityEngine.GUIStyleState);
GUIStyleState get_onHover();
Void set_onHover(UnityEngine.GUIStyleState);
GUIStyleState get_onActive();
Void set_onActive(UnityEngine.GUIStyleState);
GUIStyleState get_focused();
Void set_focused(UnityEngine.GUIStyleState);
GUIStyleState get_onFocused();
Void set_onFocused(UnityEngine.GUIStyleState);
RectOffset get_border();
Void set_border(UnityEngine.RectOffset);
RectOffset get_margin();
Void set_margin(UnityEngine.RectOffset);
RectOffset get_padding();
Void set_padding(UnityEngine.RectOffset);
RectOffset get_overflow();
Void set_overflow(UnityEngine.RectOffset);
ImagePosition get_imagePosition();
Void set_imagePosition(UnityEngine.ImagePosition);
TextAnchor get_alignment();
Void set_alignment(UnityEngine.TextAnchor);
Boolean get_wordWrap();
Void set_wordWrap(System.Boolean);
TextClipping get_clipping();
Void set_clipping(UnityEngine.TextClipping);
Vector2 get_contentOffset();
Void set_contentOffset(UnityEngine.Vector2);
Vector2 get_clipOffset();
Void set_clipOffset(UnityEngine.Vector2);
Single get_fixedWidth();
Void set_fixedWidth(System.Single);
Single get_fixedHeight();
Void set_fixedHeight(System.Single);
Boolean get_stretchWidth();
Void set_stretchWidth(System.Boolean);
Boolean get_stretchHeight();
Void set_stretchHeight(System.Boolean);
Font get_font();
Void set_font(UnityEngine.Font);
Int32 get_fontSize();
Void set_fontSize(System.Int32);
FontStyle get_fontStyle();
Void set_fontStyle(UnityEngine.FontStyle);
Boolean get_richText();
}
class TextClipping : System.Enum{
}
class FullScreenMovieControlMode : System.Enum{
}
class FullScreenMovieScalingMode : System.Enum{
}
class AndroidActivityIndicatorStyle : System.Enum{
}
class Handheld : System.Object{
this ();
static Boolean PlayFullScreenMovie(System.String,UnityEngine.Color,UnityEngine.FullScreenMovieControlMode,UnityEngine.FullScreenMovieScalingMode);
static Boolean PlayFullScreenMovie(System.String,UnityEngine.Color,UnityEngine.FullScreenMovieControlMode);
static Boolean PlayFullScreenMovie(System.String,UnityEngine.Color);
static Boolean PlayFullScreenMovie(System.String);
static Void Vibrate();
static Boolean get_use32BitDisplayBuffer();
static Void set_use32BitDisplayBuffer(System.Boolean);
static Void SetActivityIndicatorStyle(UnityEngine.iOS.ActivityIndicatorStyle);
static Void SetActivityIndicatorStyle(UnityEngine.AndroidActivityIndicatorStyle);
static Int32 GetActivityIndicatorStyle();
static Void StartActivityIndicator();
static Void StopActivityIndicator();
static Void ClearShaderCache();
}
class TouchScreenKeyboardType : System.Enum{
}
class TouchScreenKeyboard : System.Object{
this (System.String,UnityEngine.TouchScreenKeyboardType,System.Boolean,System.Boolean,System.Boolean,System.Boolean,System.String);
static Boolean get_isSupported();
static TouchScreenKeyboard Open(System.String,UnityEngine.TouchScreenKeyboardType,System.Boolean,System.Boolean,System.Boolean,System.Boolean);
static TouchScreenKeyboard Open(System.String,UnityEngine.TouchScreenKeyboardType,System.Boolean,System.Boolean,System.Boolean);
static TouchScreenKeyboard Open(System.String,UnityEngine.TouchScreenKeyboardType,System.Boolean,System.Boolean);
static TouchScreenKeyboard Open(System.String,UnityEngine.TouchScreenKeyboardType,System.Boolean);
static TouchScreenKeyboard Open(System.String,UnityEngine.TouchScreenKeyboardType);
static TouchScreenKeyboard Open(System.String);
static TouchScreenKeyboard Open(System.String,UnityEngine.TouchScreenKeyboardType,System.Boolean,System.Boolean,System.Boolean,System.Boolean,System.String);
String get_text();
Void set_text(System.String);
static Boolean get_hideInput();
static Void set_hideInput(System.Boolean);
Boolean get_active();
Void set_active(System.Boolean);
Boolean get_done();
Boolean get_wasCanceled();
static Rect get_area();
static Boolean get_visible();
}
class Event : System.Object{
this ();
this (UnityEngine.Event);
EventType get_rawType();
EventType get_type();
Void set_type(UnityEngine.EventType);
EventType GetTypeForControl(System.Int32);
Vector2 get_mousePosition();
Void set_mousePosition(UnityEngine.Vector2);
Vector2 get_delta();
Void set_delta(UnityEngine.Vector2);
Ray get_mouseRay();
Void set_mouseRay(UnityEngine.Ray);
Int32 get_button();
Void set_button(System.Int32);
EventModifiers get_modifiers();
Void set_modifiers(UnityEngine.EventModifiers);
Single get_pressure();
Void set_pressure(System.Single);
Int32 get_clickCount();
Void set_clickCount(System.Int32);
Char get_character();
Void set_character(System.Char);
String get_commandName();
Void set_commandName(System.String);
KeyCode get_keyCode();
Void set_keyCode(UnityEngine.KeyCode);
Boolean get_shift();
Void set_shift(System.Boolean);
Boolean get_control();
Void set_control(System.Boolean);
Boolean get_alt();
Void set_alt(System.Boolean);
Boolean get_command();
Void set_command(System.Boolean);
Boolean get_capsLock();
Void set_capsLock(System.Boolean);
Boolean get_numeric();
Void set_numeric(System.Boolean);
Boolean get_functionKey();
static Event get_current();
static Void set_current(UnityEngine.Event);
Void Use();
static Boolean PopEvent(UnityEngine.Event);
static Int32 GetEventCount();
Boolean get_isKey();
Boolean get_isMouse();
static Event KeyboardEvent(System.String);
Int32 GetHashCode();
Boolean Equals(System.Object);
String ToString();
}
class KeyCode : System.Enum{
}
class EventType : System.Enum{
}
class EventModifiers : System.Enum{
}
class Gizmos : System.Object{
this ();
static Void DrawRay(UnityEngine.Ray);
static Void DrawRay(UnityEngine.Vector3,UnityEngine.Vector3);
static Void DrawLine(UnityEngine.Vector3,UnityEngine.Vector3);
static Void DrawWireSphere(UnityEngine.Vector3,System.Single);
static Void DrawSphere(UnityEngine.Vector3,System.Single);
static Void DrawWireCube(UnityEngine.Vector3,UnityEngine.Vector3);
static Void DrawCube(UnityEngine.Vector3,UnityEngine.Vector3);
static Void DrawMesh(UnityEngine.Mesh,UnityEngine.Vector3,UnityEngine.Quaternion);
static Void DrawMesh(UnityEngine.Mesh,UnityEngine.Vector3);
static Void DrawMesh(UnityEngine.Mesh);
static Void DrawMesh(UnityEngine.Mesh,UnityEngine.Vector3,UnityEngine.Quaternion,UnityEngine.Vector3);
static Void DrawMesh(UnityEngine.Mesh,System.Int32,UnityEngine.Vector3,UnityEngine.Quaternion,UnityEngine.Vector3);
static Void DrawMesh(UnityEngine.Mesh,System.Int32,UnityEngine.Vector3,UnityEngine.Quaternion);
static Void DrawMesh(UnityEngine.Mesh,System.Int32,UnityEngine.Vector3);
static Void DrawMesh(UnityEngine.Mesh,System.Int32);
static Void DrawWireMesh(UnityEngine.Mesh,UnityEngine.Vector3,UnityEngine.Quaternion);
static Void DrawWireMesh(UnityEngine.Mesh,UnityEngine.Vector3);
static Void DrawWireMesh(UnityEngine.Mesh);
static Void DrawWireMesh(UnityEngine.Mesh,UnityEngine.Vector3,UnityEngine.Quaternion,UnityEngine.Vector3);
static Void DrawWireMesh(UnityEngine.Mesh,System.Int32,UnityEngine.Vector3,UnityEngine.Quaternion,UnityEngine.Vector3);
static Void DrawWireMesh(UnityEngine.Mesh,System.Int32,UnityEngine.Vector3,UnityEngine.Quaternion);
static Void DrawWireMesh(UnityEngine.Mesh,System.Int32,UnityEngine.Vector3);
static Void DrawWireMesh(UnityEngine.Mesh,System.Int32);
static Void DrawIcon(UnityEngine.Vector3,System.String,System.Boolean);
static Void DrawIcon(UnityEngine.Vector3,System.String);
static Void DrawGUITexture(UnityEngine.Rect,UnityEngine.Texture);
static Void DrawGUITexture(UnityEngine.Rect,UnityEngine.Texture,UnityEngine.Material);
static Void DrawGUITexture(UnityEngine.Rect,UnityEngine.Texture,System.Int32,System.Int32,System.Int32,System.Int32,UnityEngine.Material);
static Void DrawGUITexture(UnityEngine.Rect,UnityEngine.Texture,System.Int32,System.Int32,System.Int32,System.Int32);
static Color get_color();
static Void set_color(UnityEngine.Color);
static Matrix4x4 get_matrix();
static Void set_matrix(UnityEngine.Matrix4x4);
static Void DrawFrustum(UnityEngine.Vector3,System.Single,System.Single,System.Single,System.Single);
}
class FlareLayer : UnityEngine.Behaviour{
}
class LightProbeGroup : UnityEngine.Component{
this ();
Vector3[] get_probePositions();
Void set_probePositions(UnityEngine.Vector3[]);
}
class Vector2 : System.ValueType{
this (System.Single,System.Single);
Single get_Item(System.Int32);
Void set_Item(System.Int32,System.Single);
Void Set(System.Single,System.Single);
static Vector2 Lerp(UnityEngine.Vector2,UnityEngine.Vector2,System.Single);
static Vector2 MoveTowards(UnityEngine.Vector2,UnityEngine.Vector2,System.Single);
static Vector2 Scale(UnityEngine.Vector2,UnityEngine.Vector2);
Void Scale(UnityEngine.Vector2);
Void Normalize();
Vector2 get_normalized();
String ToString();
String ToString(System.String);
Int32 GetHashCode();
Boolean Equals(System.Object);
static Vector2 Reflect(UnityEngine.Vector2,UnityEngine.Vector2);
static Single Dot(UnityEngine.Vector2,UnityEngine.Vector2);
Single get_magnitude();
Single get_sqrMagnitude();
static Single Angle(UnityEngine.Vector2,UnityEngine.Vector2);
static Single Distance(UnityEngine.Vector2,UnityEngine.Vector2);
static Vector2 ClampMagnitude(UnityEngine.Vector2,System.Single);
static Single SqrMagnitude(UnityEngine.Vector2);
Single SqrMagnitude();
static Vector2 Min(UnityEngine.Vector2,UnityEngine.Vector2);
static Vector2 Max(UnityEngine.Vector2,UnityEngine.Vector2);
static Vector2 get_zero();
static Vector2 get_one();
static Vector2 get_up();
static Vector2 get_down();
static Vector2 get_left();
static Vector2 get_right();
static Vector2 op_Addition(UnityEngine.Vector2,UnityEngine.Vector2);
static Vector2 op_Subtraction(UnityEngine.Vector2,UnityEngine.Vector2);
static Vector2 op_UnaryNegation(UnityEngine.Vector2);
static Vector2 op_Multiply(UnityEngine.Vector2,System.Single);
static Vector2 op_Multiply(System.Single,UnityEngine.Vector2);
static Vector2 op_Division(UnityEngine.Vector2,System.Single);
static Boolean op_Equality(UnityEngine.Vector2,UnityEngine.Vector2);
static Boolean op_Inequality(UnityEngine.Vector2,UnityEngine.Vector2);
static Vector2 op_Implicit(UnityEngine.Vector3);
static Vector3 op_Implicit(UnityEngine.Vector2);
}
class Vector3 : System.ValueType{
this (System.Single,System.Single,System.Single);
this (System.Single,System.Single);
static Vector3 Lerp(UnityEngine.Vector3,UnityEngine.Vector3,System.Single);
static Vector3 Slerp(UnityEngine.Vector3,UnityEngine.Vector3,System.Single);
static Vector3 MoveTowards(UnityEngine.Vector3,UnityEngine.Vector3,System.Single);
static Vector3 RotateTowards(UnityEngine.Vector3,UnityEngine.Vector3,System.Single,System.Single);
Single get_Item(System.Int32);
Void set_Item(System.Int32,System.Single);
Void Set(System.Single,System.Single,System.Single);
static Vector3 Scale(UnityEngine.Vector3,UnityEngine.Vector3);
Void Scale(UnityEngine.Vector3);
static Vector3 Cross(UnityEngine.Vector3,UnityEngine.Vector3);
Int32 GetHashCode();
Boolean Equals(System.Object);
static Vector3 Reflect(UnityEngine.Vector3,UnityEngine.Vector3);
static Vector3 Normalize(UnityEngine.Vector3);
Void Normalize();
Vector3 get_normalized();
String ToString();
String ToString(System.String);
static Single Dot(UnityEngine.Vector3,UnityEngine.Vector3);
static Vector3 Project(UnityEngine.Vector3,UnityEngine.Vector3);
static Vector3 ProjectOnPlane(UnityEngine.Vector3,UnityEngine.Vector3);
static Vector3 Exclude(UnityEngine.Vector3,UnityEngine.Vector3);
static Single Angle(UnityEngine.Vector3,UnityEngine.Vector3);
static Single Distance(UnityEngine.Vector3,UnityEngine.Vector3);
static Vector3 ClampMagnitude(UnityEngine.Vector3,System.Single);
static Single Magnitude(UnityEngine.Vector3);
Single get_magnitude();
static Single SqrMagnitude(UnityEngine.Vector3);
Single get_sqrMagnitude();
static Vector3 Min(UnityEngine.Vector3,UnityEngine.Vector3);
static Vector3 Max(UnityEngine.Vector3,UnityEngine.Vector3);
static Vector3 get_zero();
static Vector3 get_one();
static Vector3 get_forward();
static Vector3 get_back();
static Vector3 get_up();
static Vector3 get_down();
static Vector3 get_left();
static Vector3 get_right();
static Vector3 get_fwd();
static Single AngleBetween(UnityEngine.Vector3,UnityEngine.Vector3);
static Vector3 op_Addition(UnityEngine.Vector3,UnityEngine.Vector3);
static Vector3 op_Subtraction(UnityEngine.Vector3,UnityEngine.Vector3);
static Vector3 op_UnaryNegation(UnityEngine.Vector3);
static Vector3 op_Multiply(UnityEngine.Vector3,System.Single);
static Vector3 op_Multiply(System.Single,UnityEngine.Vector3);
static Vector3 op_Division(UnityEngine.Vector3,System.Single);
static Boolean op_Equality(UnityEngine.Vector3,UnityEngine.Vector3);
static Boolean op_Inequality(UnityEngine.Vector3,UnityEngine.Vector3);
}
class Color : System.ValueType{
this (System.Single,System.Single,System.Single,System.Single);
this (System.Single,System.Single,System.Single);
String ToString();
String ToString(System.String);
String ToHexStringRGB();
String ToHexStringRGBA();
Int32 GetHashCode();
Boolean Equals(System.Object);
static Color Lerp(UnityEngine.Color,UnityEngine.Color,System.Single);
static Color get_red();
static Color get_green();
static Color get_blue();
static Color get_white();
static Color get_black();
static Color get_yellow();
static Color get_cyan();
static Color get_magenta();
static Color get_gray();
static Color get_grey();
static Color get_clear();
Single get_grayscale();
Color get_linear();
Color get_gamma();
Single get_maxColorComponent();
Single get_Item(System.Int32);
Void set_Item(System.Int32,System.Single);
static Color op_Addition(UnityEngine.Color,UnityEngine.Color);
static Color op_Subtraction(UnityEngine.Color,UnityEngine.Color);
static Color op_Multiply(UnityEngine.Color,UnityEngine.Color);
static Color op_Multiply(UnityEngine.Color,System.Single);
static Color op_Multiply(System.Single,UnityEngine.Color);
static Color op_Division(UnityEngine.Color,System.Single);
static Boolean op_Equality(UnityEngine.Color,UnityEngine.Color);
static Boolean op_Inequality(UnityEngine.Color,UnityEngine.Color);
static Vector4 op_Implicit(UnityEngine.Color);
static Color op_Implicit(UnityEngine.Vector4);
}
class Color32 : System.ValueType{
this (System.Byte,System.Byte,System.Byte,System.Byte);
String ToString();
String ToString(System.String);
static Color32 Lerp(UnityEngine.Color32,UnityEngine.Color32,System.Single);
static Color32 op_Implicit(UnityEngine.Color);
static Color op_Implicit(UnityEngine.Color32);
}
class Quaternion : System.ValueType{
this (System.Single,System.Single,System.Single,System.Single);
Single get_Item(System.Int32);
Void set_Item(System.Int32,System.Single);
Void Set(System.Single,System.Single,System.Single,System.Single);
static Quaternion get_identity();
static Single Dot(UnityEngine.Quaternion,UnityEngine.Quaternion);
static Quaternion AngleAxis(System.Single,UnityEngine.Vector3);
static Quaternion FromToRotation(UnityEngine.Vector3,UnityEngine.Vector3);
Void SetFromToRotation(UnityEngine.Vector3,UnityEngine.Vector3);
static Quaternion LookRotation(UnityEngine.Vector3,UnityEngine.Vector3);
static Quaternion LookRotation(UnityEngine.Vector3);
Void SetLookRotation(UnityEngine.Vector3);
Void SetLookRotation(UnityEngine.Vector3,UnityEngine.Vector3);
static Quaternion Slerp(UnityEngine.Quaternion,UnityEngine.Quaternion,System.Single);
static Quaternion Lerp(UnityEngine.Quaternion,UnityEngine.Quaternion,System.Single);
static Quaternion RotateTowards(UnityEngine.Quaternion,UnityEngine.Quaternion,System.Single);
static Quaternion Inverse(UnityEngine.Quaternion);
String ToString();
String ToString(System.String);
static Single Angle(UnityEngine.Quaternion,UnityEngine.Quaternion);
Vector3 get_eulerAngles();
Void set_eulerAngles(UnityEngine.Vector3);
static Quaternion Euler(System.Single,System.Single,System.Single);
static Quaternion Euler(UnityEngine.Vector3);
static Quaternion EulerRotation(System.Single,System.Single,System.Single);
static Quaternion EulerRotation(UnityEngine.Vector3);
Void SetEulerRotation(System.Single,System.Single,System.Single);
Void SetEulerRotation(UnityEngine.Vector3);
Vector3 ToEuler();
static Quaternion EulerAngles(System.Single,System.Single,System.Single);
static Quaternion EulerAngles(UnityEngine.Vector3);
Void SetEulerAngles(System.Single,System.Single,System.Single);
Void SetEulerAngles(UnityEngine.Vector3);
static Vector3 ToEulerAngles(UnityEngine.Quaternion);
Vector3 ToEulerAngles();
static Quaternion AxisAngle(UnityEngine.Vector3,System.Single);
Void SetAxisAngle(UnityEngine.Vector3,System.Single);
Int32 GetHashCode();
Boolean Equals(System.Object);
static Quaternion op_Multiply(UnityEngine.Quaternion,UnityEngine.Quaternion);
static Vector3 op_Multiply(UnityEngine.Quaternion,UnityEngine.Vector3);
static Boolean op_Equality(UnityEngine.Quaternion,UnityEngine.Quaternion);
static Boolean op_Inequality(UnityEngine.Quaternion,UnityEngine.Quaternion);
}
class Rect : System.ValueType{
this (System.Single,System.Single,System.Single,System.Single);
this (UnityEngine.Vector2,UnityEngine.Vector2);
this (UnityEngine.Rect);
static Rect MinMaxRect(System.Single,System.Single,System.Single,System.Single);
Void Set(System.Single,System.Single,System.Single,System.Single);
Single get_x();
Void set_x(System.Single);
Single get_y();
Void set_y(System.Single);
Vector2 get_position();
Void set_position(UnityEngine.Vector2);
Vector2 get_center();
Void set_center(UnityEngine.Vector2);
Vector2 get_min();
Void set_min(UnityEngine.Vector2);
Vector2 get_max();
Void set_max(UnityEngine.Vector2);
Single get_width();
Void set_width(System.Single);
Single get_height();
Void set_height(System.Single);
Vector2 get_size();
Void set_size(UnityEngine.Vector2);
Single get_left();
Single get_right();
Single get_top();
Single get_bottom();
Single get_xMin();
Void set_xMin(System.Single);
Single get_yMin();
Void set_yMin(System.Single);
Single get_xMax();
Void set_xMax(System.Single);
Single get_yMax();
Void set_yMax(System.Single);
String ToString();
String ToString(System.String);
Boolean Contains(UnityEngine.Vector2);
Boolean Contains(UnityEngine.Vector3);
Boolean Contains(UnityEngine.Vector3,System.Boolean);
Boolean Overlaps(UnityEngine.Rect);
Boolean Overlaps(UnityEngine.Rect,System.Boolean);
static Vector2 NormalizedToPoint(UnityEngine.Rect,UnityEngine.Vector2);
static Vector2 PointToNormalized(UnityEngine.Rect,UnityEngine.Vector2);
Int32 GetHashCode();
Boolean Equals(System.Object);
static Boolean op_Inequality(UnityEngine.Rect,UnityEngine.Rect);
static Boolean op_Equality(UnityEngine.Rect,UnityEngine.Rect);
}
class Matrix4x4 : System.ValueType{
Single get_Item(System.Int32,System.Int32);
Void set_Item(System.Int32,System.Int32,System.Single);
Single get_Item(System.Int32);
Void set_Item(System.Int32,System.Single);
Int32 GetHashCode();
Boolean Equals(System.Object);
static Matrix4x4 Inverse(UnityEngine.Matrix4x4);
static Matrix4x4 Transpose(UnityEngine.Matrix4x4);
Matrix4x4 get_inverse();
Matrix4x4 get_transpose();
Boolean get_isIdentity();
Vector4 GetColumn(System.Int32);
Vector4 GetRow(System.Int32);
Void SetColumn(System.Int32,UnityEngine.Vector4);
Void SetRow(System.Int32,UnityEngine.Vector4);
Vector3 MultiplyPoint(UnityEngine.Vector3);
Vector3 MultiplyPoint3x4(UnityEngine.Vector3);
Vector3 MultiplyVector(UnityEngine.Vector3);
static Matrix4x4 Scale(UnityEngine.Vector3);
static Matrix4x4 get_zero();
static Matrix4x4 get_identity();
Void SetTRS(UnityEngine.Vector3,UnityEngine.Quaternion,UnityEngine.Vector3);
static Matrix4x4 TRS(UnityEngine.Vector3,UnityEngine.Quaternion,UnityEngine.Vector3);
String ToString();
String ToString(System.String);
static Matrix4x4 Ortho(System.Single,System.Single,System.Single,System.Single,System.Single,System.Single);
static Matrix4x4 Perspective(System.Single,System.Single,System.Single,System.Single);
static Matrix4x4 op_Multiply(UnityEngine.Matrix4x4,UnityEngine.Matrix4x4);
static Vector4 op_Multiply(UnityEngine.Matrix4x4,UnityEngine.Vector4);
static Boolean op_Equality(UnityEngine.Matrix4x4,UnityEngine.Matrix4x4);
static Boolean op_Inequality(UnityEngine.Matrix4x4,UnityEngine.Matrix4x4);
}
class Bounds : System.ValueType{
this (UnityEngine.Vector3,UnityEngine.Vector3);
Int32 GetHashCode();
Boolean Equals(System.Object);
Vector3 get_center();
Void set_center(UnityEngine.Vector3);
Vector3 get_size();
Void set_size(UnityEngine.Vector3);
Vector3 get_extents();
Void set_extents(UnityEngine.Vector3);
Vector3 get_min();
Void set_min(UnityEngine.Vector3);
Vector3 get_max();
Void set_max(UnityEngine.Vector3);
Void SetMinMax(UnityEngine.Vector3,UnityEngine.Vector3);
Void Encapsulate(UnityEngine.Vector3);
Void Encapsulate(UnityEngine.Bounds);
Void Expand(System.Single);
Void Expand(UnityEngine.Vector3);
Boolean Intersects(UnityEngine.Bounds);
Boolean Contains(UnityEngine.Vector3);
Single SqrDistance(UnityEngine.Vector3);
Boolean IntersectRay(UnityEngine.Ray);
Vector3 ClosestPoint(UnityEngine.Vector3);
String ToString();
String ToString(System.String);
static Boolean op_Equality(UnityEngine.Bounds,UnityEngine.Bounds);
static Boolean op_Inequality(UnityEngine.Bounds,UnityEngine.Bounds);
}
class Vector4 : System.ValueType{
this (System.Single,System.Single,System.Single,System.Single);
this (System.Single,System.Single,System.Single);
this (System.Single,System.Single);
Single get_Item(System.Int32);
Void set_Item(System.Int32,System.Single);
Void Set(System.Single,System.Single,System.Single,System.Single);
static Vector4 Lerp(UnityEngine.Vector4,UnityEngine.Vector4,System.Single);
static Vector4 MoveTowards(UnityEngine.Vector4,UnityEngine.Vector4,System.Single);
static Vector4 Scale(UnityEngine.Vector4,UnityEngine.Vector4);
Void Scale(UnityEngine.Vector4);
Int32 GetHashCode();
Boolean Equals(System.Object);
static Vector4 Normalize(UnityEngine.Vector4);
Void Normalize();
Vector4 get_normalized();
String ToString();
String ToString(System.String);
static Single Dot(UnityEngine.Vector4,UnityEngine.Vector4);
static Vector4 Project(UnityEngine.Vector4,UnityEngine.Vector4);
static Single Distance(UnityEngine.Vector4,UnityEngine.Vector4);
static Single Magnitude(UnityEngine.Vector4);
Single get_magnitude();
static Single SqrMagnitude(UnityEngine.Vector4);
Single SqrMagnitude();
Single get_sqrMagnitude();
static Vector4 Min(UnityEngine.Vector4,UnityEngine.Vector4);
static Vector4 Max(UnityEngine.Vector4,UnityEngine.Vector4);
static Vector4 get_zero();
static Vector4 get_one();
static Vector4 op_Addition(UnityEngine.Vector4,UnityEngine.Vector4);
static Vector4 op_Subtraction(UnityEngine.Vector4,UnityEngine.Vector4);
static Vector4 op_UnaryNegation(UnityEngine.Vector4);
static Vector4 op_Multiply(UnityEngine.Vector4,System.Single);
static Vector4 op_Multiply(System.Single,UnityEngine.Vector4);
static Vector4 op_Division(UnityEngine.Vector4,System.Single);
static Boolean op_Equality(UnityEngine.Vector4,UnityEngine.Vector4);
static Boolean op_Inequality(UnityEngine.Vector4,UnityEngine.Vector4);
static Vector4 op_Implicit(UnityEngine.Vector3);
static Vector3 op_Implicit(UnityEngine.Vector4);
static Vector4 op_Implicit(UnityEngine.Vector2);
static Vector2 op_Implicit(UnityEngine.Vector4);
}
class Ray : System.ValueType{
this (UnityEngine.Vector3,UnityEngine.Vector3);
Vector3 get_origin();
Void set_origin(UnityEngine.Vector3);
Vector3 get_direction();
Void set_direction(UnityEngine.Vector3);
Vector3 GetPoint(System.Single);
String ToString();
String ToString(System.String);
}
class Ray2D : System.ValueType{
this (UnityEngine.Vector2,UnityEngine.Vector2);
Vector2 get_origin();
Void set_origin(UnityEngine.Vector2);
Vector2 get_direction();
Void set_direction(UnityEngine.Vector2);
Vector2 GetPoint(System.Single);
String ToString();
String ToString(System.String);
}
class Plane : System.ValueType{
this (UnityEngine.Vector3,UnityEngine.Vector3);
this (UnityEngine.Vector3,System.Single);
this (UnityEngine.Vector3,UnityEngine.Vector3,UnityEngine.Vector3);
Vector3 get_normal();
Void set_normal(UnityEngine.Vector3);
Single get_distance();
Void set_distance(System.Single);
Void SetNormalAndPosition(UnityEngine.Vector3,UnityEngine.Vector3);
Void Set3Points(UnityEngine.Vector3,UnityEngine.Vector3,UnityEngine.Vector3);
Single GetDistanceToPoint(UnityEngine.Vector3);
Boolean GetSide(UnityEngine.Vector3);
Boolean SameSide(UnityEngine.Vector3,UnityEngine.Vector3);
}
class Mathf : System.ValueType{
static Single Sin(System.Single);
static Single Cos(System.Single);
static Single Tan(System.Single);
static Single Asin(System.Single);
static Single Acos(System.Single);
static Single Atan(System.Single);
static Single Atan2(System.Single,System.Single);
static Single Sqrt(System.Single);
static Single Abs(System.Single);
static Int32 Abs(System.Int32);
static Single Min(System.Single,System.Single);
static Single Min(System.Single[]);
static Int32 Min(System.Int32,System.Int32);
static Int32 Min(System.Int32[]);
static Single Max(System.Single,System.Single);
static Single Max(System.Single[]);
static Int32 Max(System.Int32,System.Int32);
static Int32 Max(System.Int32[]);
static Single Pow(System.Single,System.Single);
static Single Exp(System.Single);
static Single Log(System.Single,System.Single);
static Single Log(System.Single);
static Single Log10(System.Single);
static Single Ceil(System.Single);
static Single Floor(System.Single);
static Single Round(System.Single);
static Int32 CeilToInt(System.Single);
static Int32 FloorToInt(System.Single);
static Int32 RoundToInt(System.Single);
static Single Sign(System.Single);
static Single Clamp(System.Single,System.Single,System.Single);
static Int32 Clamp(System.Int32,System.Int32,System.Int32);
static Single Clamp01(System.Single);
static Single Lerp(System.Single,System.Single,System.Single);
static Single LerpAngle(System.Single,System.Single,System.Single);
static Single MoveTowards(System.Single,System.Single,System.Single);
static Single MoveTowardsAngle(System.Single,System.Single,System.Single);
static Single SmoothStep(System.Single,System.Single,System.Single);
static Single Gamma(System.Single,System.Single,System.Single);
static Boolean Approximately(System.Single,System.Single);
static Single Repeat(System.Single,System.Single);
static Single PingPong(System.Single,System.Single);
static Single InverseLerp(System.Single,System.Single,System.Single);
static Int32 ClosestPowerOfTwo(System.Int32);
static Single GammaToLinearSpace(System.Single);
static Single LinearToGammaSpace(System.Single);
static Boolean IsPowerOfTwo(System.Int32);
static Int32 NextPowerOfTwo(System.Int32);
static Single DeltaAngle(System.Single,System.Single);
static Single PerlinNoise(System.Single,System.Single);
static UInt16 FloatToHalf(System.Single);
static Single HalfToFloat(System.UInt16);
}
class RPCMode : System.Enum{
}
class ConnectionTesterStatus : System.Enum{
}
class NetworkConnectionError : System.Enum{
}
class NetworkDisconnection : System.Enum{
}
class MasterServerEvent : System.Enum{
}
class NetworkStateSynchronization : System.Enum{
}
class NetworkPeerType : System.Enum{
}
class NetworkLogLevel : System.Enum{
}
class NetworkPlayer : System.ValueType{
this (System.String,System.Int32);
Int32 GetHashCode();
Boolean Equals(System.Object);
String get_ipAddress();
Int32 get_port();
String get_guid();
String ToString();
String get_externalIP();
Int32 get_externalPort();
static Boolean op_Equality(UnityEngine.NetworkPlayer,UnityEngine.NetworkPlayer);
static Boolean op_Inequality(UnityEngine.NetworkPlayer,UnityEngine.NetworkPlayer);
}
class NetworkViewID : System.ValueType{
static NetworkViewID get_unassigned();
Int32 GetHashCode();
Boolean Equals(System.Object);
Boolean get_isMine();
NetworkPlayer get_owner();
String ToString();
static Boolean op_Equality(UnityEngine.NetworkViewID,UnityEngine.NetworkViewID);
static Boolean op_Inequality(UnityEngine.NetworkViewID,UnityEngine.NetworkViewID);
}
class Ping : System.Object{
this (System.String);
Void DestroyPing();
Boolean get_isDone();
Int32 get_time();
String get_ip();
}
class NetworkView : UnityEngine.Behaviour{
this ();
Void RPC(System.String,UnityEngine.RPCMode,System.Object[]);
Void RPC(System.String,UnityEngine.NetworkPlayer,System.Object[]);
Component get_observed();
Void set_observed(UnityEngine.Component);
NetworkStateSynchronization get_stateSynchronization();
Void set_stateSynchronization(UnityEngine.NetworkStateSynchronization);
NetworkViewID get_viewID();
Void set_viewID(UnityEngine.NetworkViewID);
Int32 get_group();
Void set_group(System.Int32);
Boolean get_isMine();
NetworkPlayer get_owner();
Boolean SetScope(UnityEngine.NetworkPlayer,System.Boolean);
static NetworkView Find(UnityEngine.NetworkViewID);
}
class Network : System.Object{
this ();
static String get_connectionTesterIP();
static Void set_connectionTesterIP(System.String);
static Int32 get_connectionTesterPort();
static Void set_connectionTesterPort(System.Int32);
static Boolean HavePublicAddress();
static Int32 get_maxConnections();
static Void set_maxConnections(System.Int32);
static String get_proxyIP();
static Void set_proxyIP(System.String);
static Int32 get_proxyPort();
static Void set_proxyPort(System.Int32);
static Boolean get_useProxy();
static Void set_useProxy(System.Boolean);
static String get_proxyPassword();
static Void set_proxyPassword(System.String);
static NetworkConnectionError InitializeServer(System.Int32,System.Int32,System.Boolean);
static NetworkConnectionError InitializeServer(System.Int32,System.Int32);
static String get_incomingPassword();
static Void set_incomingPassword(System.String);
static NetworkLogLevel get_logLevel();
static Void set_logLevel(UnityEngine.NetworkLogLevel);
static Void InitializeSecurity();
static NetworkConnectionError Connect(System.String,System.Int32);
static NetworkConnectionError Connect(System.String,System.Int32,System.String);
static NetworkConnectionError Connect(System.String[],System.Int32);
static NetworkConnectionError Connect(System.String[],System.Int32,System.String);
static NetworkConnectionError Connect(System.String);
static NetworkConnectionError Connect(System.String,System.String);
static NetworkConnectionError Connect(UnityEngine.HostData);
static NetworkConnectionError Connect(UnityEngine.HostData,System.String);
static Void Disconnect(System.Int32);
static Void Disconnect();
static Void CloseConnection(UnityEngine.NetworkPlayer,System.Boolean);
static NetworkPlayer[] get_connections();
static NetworkPlayer get_player();
static NetworkViewID AllocateViewID();
static __UnityObject Instantiate(UnityEngine.__UnityObject,UnityEngine.Vector3,UnityEngine.Quaternion,System.Int32);
static Void Destroy(UnityEngine.NetworkViewID);
static Void Destroy(UnityEngine.GameObject);
static Void DestroyPlayerObjects(UnityEngine.NetworkPlayer);
static Void RemoveRPCs(UnityEngine.NetworkPlayer);
static Void RemoveRPCs(UnityEngine.NetworkPlayer,System.Int32);
static Void RemoveRPCs(UnityEngine.NetworkViewID);
static Void RemoveRPCsInGroup(System.Int32);
static Boolean get_isClient();
static Boolean get_isServer();
static NetworkPeerType get_peerType();
static Void SetLevelPrefix(System.Int32);
static Int32 GetLastPing(UnityEngine.NetworkPlayer);
static Int32 GetAveragePing(UnityEngine.NetworkPlayer);
static Single get_sendRate();
static Void set_sendRate(System.Single);
static Boolean get_isMessageQueueRunning();
static Void set_isMessageQueueRunning(System.Boolean);
static Void SetReceivingEnabled(UnityEngine.NetworkPlayer,System.Int32,System.Boolean);
static Void SetSendingEnabled(System.Int32,System.Boolean);
static Void SetSendingEnabled(UnityEngine.NetworkPlayer,System.Int32,System.Boolean);
static Double get_time();
static Int32 get_minimumAllocatableViewIDs();
static Void set_minimumAllocatableViewIDs(System.Int32);
static Boolean get_useNat();
static Void set_useNat(System.Boolean);
static String get_natFacilitatorIP();
static Void set_natFacilitatorIP(System.String);
static Int32 get_natFacilitatorPort();
static Void set_natFacilitatorPort(System.Int32);
static ConnectionTesterStatus TestConnection(System.Boolean);
static ConnectionTesterStatus TestConnection();
static ConnectionTesterStatus TestConnectionNAT(System.Boolean);
static ConnectionTesterStatus TestConnectionNAT();
}
class BitStream : System.Object{
this ();
Boolean get_isReading();
Boolean get_isWriting();
}
class RPC : System.Attribute{
this ();
}
class HostData : System.Object{
this ();
Boolean get_useNat();
Void set_useNat(System.Boolean);
String get_gameType();
Void set_gameType(System.String);
String get_gameName();
Void set_gameName(System.String);
Int32 get_connectedPlayers();
Void set_connectedPlayers(System.Int32);
Int32 get_playerLimit();
Void set_playerLimit(System.Int32);
String[] get_ip();
Void set_ip(System.String[]);
Int32 get_port();
Void set_port(System.Int32);
Boolean get_passwordProtected();
Void set_passwordProtected(System.Boolean);
String get_comment();
Void set_comment(System.String);
String get_guid();
Void set_guid(System.String);
}
class MasterServer : System.Object{
this ();
static String get_ipAddress();
static Void set_ipAddress(System.String);
static Int32 get_port();
static Void set_port(System.Int32);
static Void RequestHostList(System.String);
static HostData[] PollHostList();
static Void RegisterHost(System.String,System.String,System.String);
static Void RegisterHost(System.String,System.String);
static Void UnregisterHost();
static Void ClearHostList();
static Int32 get_updateRate();
static Void set_updateRate(System.Int32);
static Boolean get_dedicatedServer();
static Void set_dedicatedServer(System.Boolean);
}
class NetworkMessageInfo : System.ValueType{
Double get_timestamp();
NetworkPlayer get_sender();
NetworkView get_networkView();
}
class DrivenTransformProperties : System.Enum{
}
class DrivenRectTransformTracker : System.ValueType{
Void Add(UnityEngine.__UnityObject,UnityEngine.RectTransform,UnityEngine.DrivenTransformProperties);
Void Clear();
}
class RectTransform : UnityEngine.Transform{
static class Edge : System.Enum{
}
static class Axis : System.Enum{
}
static class ReapplyDrivenProperties : System.MulticastDelegate{
this (System.Object,System.IntPtr);
Void Invoke(UnityEngine.RectTransform);
IAsyncResult BeginInvoke(UnityEngine.RectTransform,System.AsyncCallback,System.Object);
Void EndInvoke(System.IAsyncResult);
}
this ();
static Void add_reapplyDrivenProperties(UnityEngine.RectTransform.ReapplyDrivenProperties);
static Void remove_reapplyDrivenProperties(UnityEngine.RectTransform.ReapplyDrivenProperties);
Rect get_rect();
Vector2 get_anchorMin();
Void set_anchorMin(UnityEngine.Vector2);
Vector2 get_anchorMax();
Void set_anchorMax(UnityEngine.Vector2);
Vector3 get_anchoredPosition3D();
Void set_anchoredPosition3D(UnityEngine.Vector3);
Vector2 get_anchoredPosition();
Void set_anchoredPosition(UnityEngine.Vector2);
Vector2 get_sizeDelta();
Void set_sizeDelta(UnityEngine.Vector2);
Vector2 get_pivot();
Void set_pivot(UnityEngine.Vector2);
Void GetLocalCorners(UnityEngine.Vector3[]);
Void GetWorldCorners(UnityEngine.Vector3[]);
Vector2 get_offsetMin();
Void set_offsetMin(UnityEngine.Vector2);
Vector2 get_offsetMax();
Void set_offsetMax(UnityEngine.Vector2);
Void SetInsetAndSizeFromParentEdge(UnityEngine.RectTransform.Edge,System.Single,System.Single);
Void SetSizeWithCurrentAnchors(UnityEngine.RectTransform.Axis,System.Single);
}
class ResourceRequest : UnityEngine.AsyncOperation{
this ();
__UnityObject get_asset();
}
class Resources : System.Object{
this ();
static Object[] FindObjectsOfTypeAll(System.Type);
static __UnityObject Load(System.String);
static __UnityObject Load(System.String,System.Type);
static ResourceRequest LoadAsync(System.String);
static ResourceRequest LoadAsync(System.String,System.Type);
static Object[] LoadAll(System.String,System.Type);
static Object[] LoadAll(System.String);
static __UnityObject GetBuiltinResource(System.Type,System.String);
static __UnityObject LoadAssetAtPath(System.String,System.Type);
static Void UnloadAsset(UnityEngine.__UnityObject);
static AsyncOperation UnloadUnusedAssets();
}
class TextAsset : UnityEngine.__UnityObject{
this ();
String get_text();
Byte[] get_bytes();
String ToString();
}
class SerializePrivateVariables : System.Attribute{
this ();
}
class SerializeField : System.Attribute{
this ();
}
interface ISerializationCallbackReceiver{
Void OnBeforeSerialize();
Void OnAfterDeserialize();
}
class Security : System.Object{
this ();
static Boolean PrefetchSocketPolicy(System.String,System.Int32);
static Boolean PrefetchSocketPolicy(System.String,System.Int32,System.Int32);
static String GetChainOfTrustValue(System.String);
static Assembly LoadAndVerifyAssembly(System.Byte[],System.String);
static Assembly LoadAndVerifyAssembly(System.Byte[]);
}
class Shader : UnityEngine.__UnityObject{
this ();
static Shader Find(System.String);
Boolean get_isSupported();
static Void EnableKeyword(System.String);
static Void DisableKeyword(System.String);
static Boolean IsKeywordEnabled(System.String);
Int32 get_maximumLOD();
Void set_maximumLOD(System.Int32);
static Int32 get_globalMaximumLOD();
static Void set_globalMaximumLOD(System.Int32);
Int32 get_renderQueue();
static Void SetGlobalColor(System.String,UnityEngine.Color);
static Void SetGlobalColor(System.Int32,UnityEngine.Color);
static Void SetGlobalVector(System.String,UnityEngine.Vector4);
static Void SetGlobalVector(System.Int32,UnityEngine.Vector4);
static Void SetGlobalFloat(System.String,System.Single);
static Void SetGlobalFloat(System.Int32,System.Single);
static Void SetGlobalInt(System.String,System.Int32);
static Void SetGlobalInt(System.Int32,System.Int32);
static Void SetGlobalTexture(System.String,UnityEngine.Texture);
static Void SetGlobalTexture(System.Int32,UnityEngine.Texture);
static Void SetGlobalMatrix(System.String,UnityEngine.Matrix4x4);
static Void SetGlobalMatrix(System.Int32,UnityEngine.Matrix4x4);
static Void SetGlobalTexGenMode(System.String,UnityEngine.TexGenMode);
static Void SetGlobalTextureMatrixName(System.String,System.String);
static Void SetGlobalBuffer(System.String,UnityEngine.ComputeBuffer);
static Int32 PropertyToID(System.String);
static Void WarmupAllShaders();
}
class Material : UnityEngine.__UnityObject{
this (System.String);
this (UnityEngine.Shader);
this (UnityEngine.Material);
Shader get_shader();
Void set_shader(UnityEngine.Shader);
Color get_color();
Void set_color(UnityEngine.Color);
Texture get_mainTexture();
Void set_mainTexture(UnityEngine.Texture);
Vector2 get_mainTextureOffset();
Void set_mainTextureOffset(UnityEngine.Vector2);
Vector2 get_mainTextureScale();
Void set_mainTextureScale(UnityEngine.Vector2);
Void SetColor(System.String,UnityEngine.Color);
Void SetColor(System.Int32,UnityEngine.Color);
Color GetColor(System.String);
Color GetColor(System.Int32);
Void SetVector(System.String,UnityEngine.Vector4);
Void SetVector(System.Int32,UnityEngine.Vector4);
Vector4 GetVector(System.String);
Vector4 GetVector(System.Int32);
Void SetTexture(System.String,UnityEngine.Texture);
Void SetTexture(System.Int32,UnityEngine.Texture);
Texture GetTexture(System.String);
Texture GetTexture(System.Int32);
Void SetTextureOffset(System.String,UnityEngine.Vector2);
Vector2 GetTextureOffset(System.String);
Void SetTextureScale(System.String,UnityEngine.Vector2);
Vector2 GetTextureScale(System.String);
Void SetMatrix(System.String,UnityEngine.Matrix4x4);
Void SetMatrix(System.Int32,UnityEngine.Matrix4x4);
Matrix4x4 GetMatrix(System.String);
Matrix4x4 GetMatrix(System.Int32);
Void SetFloat(System.String,System.Single);
Void SetFloat(System.Int32,System.Single);
Single GetFloat(System.String);
Single GetFloat(System.Int32);
Void SetInt(System.String,System.Int32);
Void SetInt(System.Int32,System.Int32);
Int32 GetInt(System.String);
Int32 GetInt(System.Int32);
Void SetBuffer(System.String,UnityEngine.ComputeBuffer);
Boolean HasProperty(System.String);
Boolean HasProperty(System.Int32);
String GetTag(System.String,System.Boolean,System.String);
String GetTag(System.String,System.Boolean);
Void SetOverrideTag(System.String,System.String);
Void Lerp(UnityEngine.Material,UnityEngine.Material,System.Single);
Int32 get_passCount();
Boolean SetPass(System.Int32);
Int32 get_renderQueue();
Void set_renderQueue(System.Int32);
static Material Create(System.String);
Void CopyPropertiesFromMaterial(UnityEngine.Material);
Void EnableKeyword(System.String);
Void DisableKeyword(System.String);
Boolean IsKeywordEnabled(System.String);
String[] get_shaderKeywords();
Void set_shaderKeywords(System.String[]);
MaterialGlobalIlluminationFlags get_globalIlluminationFlags();
Void set_globalIlluminationFlags(UnityEngine.MaterialGlobalIlluminationFlags);
}
class ShaderVariantCollection : UnityEngine.__UnityObject{
static class ShaderVariant : System.ValueType{
this (UnityEngine.Shader,UnityEngine.Rendering.PassType,System.String[]);
}
this ();
Int32 get_shaderCount();
Int32 get_variantCount();
Boolean Add(UnityEngine.ShaderVariantCollection.ShaderVariant);
Boolean Remove(UnityEngine.ShaderVariantCollection.ShaderVariant);
Boolean Contains(UnityEngine.ShaderVariantCollection.ShaderVariant);
Void Clear();
Boolean get_isWarmedUp();
Void WarmUp();
}
class ProceduralProcessorUsage : System.Enum{
}
class ProceduralCacheSize : System.Enum{
}
class ProceduralLoadingBehavior : System.Enum{
}
class ProceduralPropertyType : System.Enum{
}
class ProceduralOutputType : System.Enum{
}
class ProceduralPropertyDescription : System.Object{
this ();
}
class ProceduralMaterial : UnityEngine.Material{
ProceduralPropertyDescription[] GetProceduralPropertyDescriptions();
Boolean HasProceduralProperty(System.String);
Boolean GetProceduralBoolean(System.String);
Void SetProceduralBoolean(System.String,System.Boolean);
Single GetProceduralFloat(System.String);
Void SetProceduralFloat(System.String,System.Single);
Vector4 GetProceduralVector(System.String);
Void SetProceduralVector(System.String,UnityEngine.Vector4);
Color GetProceduralColor(System.String);
Void SetProceduralColor(System.String,UnityEngine.Color);
Int32 GetProceduralEnum(System.String);
Void SetProceduralEnum(System.String,System.Int32);
Texture2D GetProceduralTexture(System.String);
Void SetProceduralTexture(System.String,UnityEngine.Texture2D);
Boolean IsProceduralPropertyCached(System.String);
Void CacheProceduralProperty(System.String,System.Boolean);
Void ClearCache();
ProceduralCacheSize get_cacheSize();
Void set_cacheSize(UnityEngine.ProceduralCacheSize);
Int32 get_animationUpdateRate();
Void set_animationUpdateRate(System.Int32);
Void RebuildTextures();
Void RebuildTexturesImmediately();
Boolean get_isProcessing();
static Void StopRebuilds();
Boolean get_isCachedDataAvailable();
Boolean get_isLoadTimeGenerated();
Void set_isLoadTimeGenerated(System.Boolean);
ProceduralLoadingBehavior get_loadingBehavior();
static Boolean get_isSupported();
static ProceduralProcessorUsage get_substanceProcessorUsage();
static Void set_substanceProcessorUsage(UnityEngine.ProceduralProcessorUsage);
String get_preset();
Void set_preset(System.String);
Texture[] GetGeneratedTextures();
ProceduralTexture GetGeneratedTexture(System.String);
Boolean get_isReadable();
Void set_isReadable(System.Boolean);
}
class ProceduralTexture : UnityEngine.Texture{
this ();
ProceduralOutputType GetProceduralOutputType();
Boolean get_hasAlpha();
TextureFormat get_format();
Color32[] GetPixels32(System.Int32,System.Int32,System.Int32,System.Int32);
}
class SpriteAlignment : System.Enum{
}
class SpritePackingMode : System.Enum{
}
class SpritePackingRotation : System.Enum{
}
class SpriteMeshType : System.Enum{
}
class Sprite : UnityEngine.__UnityObject{
this ();
static Sprite Create(UnityEngine.Texture2D,UnityEngine.Rect,UnityEngine.Vector2,System.Single,System.UInt32,UnityEngine.SpriteMeshType,UnityEngine.Vector4);
static Sprite Create(UnityEngine.Texture2D,UnityEngine.Rect,UnityEngine.Vector2,System.Single,System.UInt32,UnityEngine.SpriteMeshType);
static Sprite Create(UnityEngine.Texture2D,UnityEngine.Rect,UnityEngine.Vector2,System.Single,System.UInt32);
static Sprite Create(UnityEngine.Texture2D,UnityEngine.Rect,UnityEngine.Vector2,System.Single);
static Sprite Create(UnityEngine.Texture2D,UnityEngine.Rect,UnityEngine.Vector2);
Bounds get_bounds();
Rect get_rect();
Single get_pixelsPerUnit();
Texture2D get_texture();
Rect get_textureRect();
Vector2 get_textureRectOffset();
Boolean get_packed();
SpritePackingMode get_packingMode();
SpritePackingRotation get_packingRotation();
Vector2 get_pivot();
Vector4 get_border();
Vector2[] get_vertices();
UInt16[] get_triangles();
Vector2[] get_uv();
Void OverrideGeometry(UnityEngine.Vector2[],System.UInt16[]);
}
class SpriteRenderer : UnityEngine.Renderer{
this ();
Sprite get_sprite();
Void set_sprite(UnityEngine.Sprite);
Color get_color();
Void set_color(UnityEngine.Color);
}
class Hash128 : System.ValueType{
this (System.UInt32,System.UInt32,System.UInt32,System.UInt32);
String ToString();
static Hash128 Parse(System.String);
}
class WWW : System.Object{
this (System.String);
this (System.String,UnityEngine.WWWForm);
this (System.String,System.Byte[]);
this (System.String,System.Byte[],System.Collections.Hashtable);
Void Dispose();
Void InitWWW(System.String,System.Byte[],System.String[]);
static String EscapeURL(System.String);
static String EscapeURL(System.String,System.Text.Encoding);
static String UnEscapeURL(System.String);
static String UnEscapeURL(System.String,System.Text.Encoding);
String get_text();
String get_data();
Byte[] get_bytes();
Int32 get_size();
String get_error();
Texture2D get_texture();
Texture2D get_textureNonReadable();
AudioClip get_audioClip();
AudioClip GetAudioClip(System.Boolean);
AudioClip GetAudioClip(System.Boolean,System.Boolean);
AudioClip GetAudioClip(System.Boolean,System.Boolean,UnityEngine.AudioType);
AudioClip GetAudioClipCompressed();
AudioClip GetAudioClipCompressed(System.Boolean);
AudioClip GetAudioClipCompressed(System.Boolean,UnityEngine.AudioType);
MovieTexture get_movie();
Void LoadImageIntoTexture(UnityEngine.Texture2D);
Boolean get_isDone();
static String GetURL(System.String);
static Texture2D GetTextureFromURL(System.String);
Single get_progress();
Single get_uploadProgress();
Int32 get_bytesDownloaded();
AudioClip get_oggVorbis();
Void LoadUnityWeb();
String get_url();
AssetBundle get_assetBundle();
ThreadPriority get_threadPriority();
Void set_threadPriority(UnityEngine.ThreadPriority);
static WWW LoadFromCacheOrDownload(System.String,System.Int32);
static WWW LoadFromCacheOrDownload(System.String,System.Int32,System.UInt32);
static WWW LoadFromCacheOrDownload(System.String,UnityEngine.Hash128);
static WWW LoadFromCacheOrDownload(System.String,UnityEngine.Hash128,System.UInt32);
}
class WWWForm : System.Object{
this ();
Void AddField(System.String,System.String);
Void AddField(System.String,System.String,System.Text.Encoding);
Void AddField(System.String,System.Int32);
Void AddBinaryData(System.String,System.Byte[],System.String);
Void AddBinaryData(System.String,System.Byte[]);
Void AddBinaryData(System.String,System.Byte[],System.String,System.String);
Byte[] get_data();
}
class CacheIndex : System.ValueType{
}
class Caching : System.Object{
this ();
static Boolean Authorize(System.String,System.String,System.Int64,System.String);
static Boolean Authorize(System.String,System.String,System.Int64,System.Int32,System.String);
static Boolean Authorize(System.String,System.String,System.Int32,System.Int32,System.String);
static Boolean Authorize(System.String,System.String,System.Int32,System.String);
static Boolean CleanCache();
static Boolean CleanNamedCache(System.String);
static Boolean DeleteFromCache(System.String);
static Int32 GetVersionFromCache(System.String);
static Boolean IsVersionCached(System.String,System.Int32);
static Boolean IsVersionCached(System.String,UnityEngine.Hash128);
static Boolean MarkAsUsed(System.String,System.Int32);
static Boolean MarkAsUsed(System.String,UnityEngine.Hash128);
static CacheIndex[] get_index();
static Int64 get_spaceFree();
static Int64 get_maximumAvailableDiskSpace();
static Void set_maximumAvailableDiskSpace(System.Int64);
static Int64 get_spaceOccupied();
static Int32 get_spaceAvailable();
static Int32 get_spaceUsed();
static Int32 get_expirationDelay();
static Void set_expirationDelay(System.Int32);
static Boolean get_enabled();
static Void set_enabled(System.Boolean);
static Boolean get_ready();
static Void SetNoBackupFlag(System.String,System.Int32);
static Void SetNoBackupFlag(System.String,UnityEngine.Hash128);
static Void ResetNoBackupFlag(System.String,System.Int32);
static Void ResetNoBackupFlag(System.String,UnityEngine.Hash128);
}
class UnityEventQueueSystem : System.Object{
this ();
static String GenerateEventIdForPayload(System.String);
static IntPtr GetGlobalEventQueue();
}
class AsyncOperation : UnityEngine.YieldInstruction{
this ();
Boolean get_isDone();
Single get_progress();
Int32 get_priority();
Void set_priority(System.Int32);
Boolean get_allowSceneActivation();
Void set_allowSceneActivation(System.Boolean);
}
class NetworkReachability : System.Enum{
}
class Application : System.Object{
static class LogCallback : System.MulticastDelegate{
this (System.Object,System.IntPtr);
Void Invoke(System.String,System.String,UnityEngine.LogType);
IAsyncResult BeginInvoke(System.String,System.String,UnityEngine.LogType,System.AsyncCallback,System.Object);
Void EndInvoke(System.IAsyncResult);
}
this ();
static Void CommitSuicide(System.Int32);
static Int32 get_targetFrameRate();
static Void set_targetFrameRate(System.Int32);
static SystemLanguage get_systemLanguage();
static ThreadPriority get_backgroundLoadingPriority();
static Void set_backgroundLoadingPriority(UnityEngine.ThreadPriority);
static NetworkReachability get_internetReachability();
static Boolean get_genuine();
static Boolean get_genuineCheckAvailable();
static AsyncOperation RequestUserAuthorization(UnityEngine.UserAuthorization);
static Boolean HasUserAuthorization(UnityEngine.UserAuthorization);
static Void RegisterLogCallback(UnityEngine.Application.LogCallback);
static Void RegisterLogCallbackThreaded(UnityEngine.Application.LogCallback);
static Void add_logMessageReceived(UnityEngine.Application.LogCallback);
static Void remove_logMessageReceived(UnityEngine.Application.LogCallback);
static Void add_logMessageReceivedThreaded(UnityEngine.Application.LogCallback);
static Void remove_logMessageReceivedThreaded(UnityEngine.Application.LogCallback);
static Void Quit();
static Void CancelQuit();
static Int32 get_loadedLevel();
static String get_loadedLevelName();
static Void LoadLevel(System.Int32);
static Void LoadLevel(System.String);
static AsyncOperation LoadLevelAsync(System.Int32);
static AsyncOperation LoadLevelAsync(System.String);
static AsyncOperation LoadLevelAdditiveAsync(System.Int32);
static AsyncOperation LoadLevelAdditiveAsync(System.String);
static Void LoadLevelAdditive(System.Int32);
static Void LoadLevelAdditive(System.String);
static Boolean get_isLoadingLevel();
static Int32 get_levelCount();
static Single GetStreamProgressForLevel(System.Int32);
static Single GetStreamProgressForLevel(System.String);
static Int32 get_streamedBytes();
static Boolean CanStreamedLevelBeLoaded(System.Int32);
static Boolean CanStreamedLevelBeLoaded(System.String);
static Boolean get_isPlaying();
static Boolean get_isEditor();
static Boolean get_isWebPlayer();
static RuntimePlatform get_platform();
static Boolean get_isMobilePlatform();
static Boolean get_isConsolePlatform();
static Void CaptureScreenshot(System.String,System.Int32);
static Void CaptureScreenshot(System.String);
static Boolean get_runInBackground();
static Void set_runInBackground(System.Boolean);
static Boolean get_isPlayer();
static Boolean HasProLicense();
static Void DontDestroyOnLoad(UnityEngine.__UnityObject);
static String get_dataPath();
static String get_streamingAssetsPath();
static String get_persistentDataPath();
static String get_temporaryCachePath();
static String get_srcValue();
static String get_absoluteURL();
static String get_absoluteUrl();
static Void ExternalCall(System.String,System.Object[]);
static Void ExternalEval(System.String);
static String get_unityVersion();
static String get_version();
static String get_bundleIdentifier();
static ApplicationInstallMode get_installMode();
static ApplicationSandboxType get_sandboxType();
static String get_productName();
static String get_companyName();
static String get_cloudProjectId();
static Boolean get_webSecurityEnabled();
static String get_webSecurityHostUrl();
static Void OpenURL(System.String);
}
class UserAuthorization : System.Enum{
}
class ApplicationInstallMode : System.Enum{
}
class ApplicationSandboxType : System.Enum{
}
class Behaviour : UnityEngine.Component{
this ();
Boolean get_enabled();
Void set_enabled(System.Boolean);
Boolean get_isActiveAndEnabled();
}
class RenderingPath : System.Enum{
}
class TransparencySortMode : System.Enum{
}
class Camera : UnityEngine.Behaviour{
static class CameraCallback : System.MulticastDelegate{
this (System.Object,System.IntPtr);
Void Invoke(UnityEngine.Camera);
IAsyncResult BeginInvoke(UnityEngine.Camera,System.AsyncCallback,System.Object);
Void EndInvoke(System.IAsyncResult);
}
this ();
Void RemoveCommandBuffer(UnityEngine.Rendering.CameraEvent,UnityEngine.Rendering.CommandBuffer);
Void RemoveCommandBuffers(UnityEngine.Rendering.CameraEvent);
Void RemoveAllCommandBuffers();
CommandBuffer[] GetCommandBuffers(UnityEngine.Rendering.CameraEvent);
Int32 get_commandBufferCount();
Matrix4x4 CalculateObliqueMatrix(UnityEngine.Vector4);
Vector3 get_velocity();
CameraClearFlags get_clearFlags();
Void set_clearFlags(UnityEngine.CameraClearFlags);
Boolean get_stereoEnabled();
Single get_stereoSeparation();
Void set_stereoSeparation(System.Single);
Single get_stereoConvergence();
Void set_stereoConvergence(System.Single);
Boolean get_stereoMirrorMode();
Void set_stereoMirrorMode(System.Boolean);
Int32 get_targetDisplay();
Void set_targetDisplay(System.Int32);
Vector3 WorldToScreenPoint(UnityEngine.Vector3);
Vector3 WorldToViewportPoint(UnityEngine.Vector3);
Vector3 ViewportToWorldPoint(UnityEngine.Vector3);
Vector3 ScreenToWorldPoint(UnityEngine.Vector3);
Vector3 ScreenToViewportPoint(UnityEngine.Vector3);
Vector3 ViewportToScreenPoint(UnityEngine.Vector3);
Ray ViewportPointToRay(UnityEngine.Vector3);
Ray ScreenPointToRay(UnityEngine.Vector3);
static Camera get_main();
static Camera get_current();
static Camera[] get_allCameras();
static Int32 get_allCamerasCount();
static Int32 GetAllCameras(UnityEngine.Camera[]);
Single GetScreenWidth();
Single GetScreenHeight();
static Camera get_mainCamera();
Void DoClear();
Void Render();
Void RenderWithShader(UnityEngine.Shader,System.String);
Void SetReplacementShader(UnityEngine.Shader,System.String);
Void ResetReplacementShader();
Boolean get_useOcclusionCulling();
Void set_useOcclusionCulling(System.Boolean);
Void RenderDontRestore();
static Void SetupCurrent(UnityEngine.Camera);
Boolean RenderToCubemap(UnityEngine.Cubemap);
Boolean RenderToCubemap(UnityEngine.Cubemap,System.Int32);
Boolean RenderToCubemap(UnityEngine.RenderTexture);
Boolean RenderToCubemap(UnityEngine.RenderTexture,System.Int32);
Single[] get_layerCullDistances();
Void set_layerCullDistances(System.Single[]);
Boolean get_layerCullSpherical();
Void set_layerCullSpherical(System.Boolean);
Void CopyFrom(UnityEngine.Camera);
DepthTextureMode get_depthTextureMode();
Void set_depthTextureMode(UnityEngine.DepthTextureMode);
Boolean get_clearStencilAfterLightingPass();
Void set_clearStencilAfterLightingPass(System.Boolean);
Void AddCommandBuffer(UnityEngine.Rendering.CameraEvent,UnityEngine.Rendering.CommandBuffer);
Single get_fov();
Void set_fov(System.Single);
Single get_near();
Void set_near(System.Single);
Single get_far();
Void set_far(System.Single);
Single get_fieldOfView();
Void set_fieldOfView(System.Single);
Single get_nearClipPlane();
Void set_nearClipPlane(System.Single);
Single get_farClipPlane();
Void set_farClipPlane(System.Single);
RenderingPath get_renderingPath();
Void set_renderingPath(UnityEngine.RenderingPath);
RenderingPath get_actualRenderingPath();
Boolean get_hdr();
Void set_hdr(System.Boolean);
Single get_orthographicSize();
Void set_orthographicSize(System.Single);
Boolean get_isOrthoGraphic();
Void set_isOrthoGraphic(System.Boolean);
Boolean get_orthographic();
Void set_orthographic(System.Boolean);
TransparencySortMode get_transparencySortMode();
Void set_transparencySortMode(UnityEngine.TransparencySortMode);
Single get_depth();
Void set_depth(System.Single);
Single get_aspect();
Void set_aspect(System.Single);
Int32 get_cullingMask();
Void set_cullingMask(System.Int32);
Int32 get_eventMask();
Void set_eventMask(System.Int32);
Color get_backgroundColor();
Void set_backgroundColor(UnityEngine.Color);
Rect get_rect();
Void set_rect(UnityEngine.Rect);
Rect get_pixelRect();
Void set_pixelRect(UnityEngine.Rect);
RenderTexture get_targetTexture();
Void set_targetTexture(UnityEngine.RenderTexture);
Void SetTargetBuffers(UnityEngine.RenderBuffer,UnityEngine.RenderBuffer);
Void SetTargetBuffers(UnityEngine.RenderBuffer[],UnityEngine.RenderBuffer);
Int32 get_pixelWidth();
Int32 get_pixelHeight();
Matrix4x4 get_cameraToWorldMatrix();
Matrix4x4 get_worldToCameraMatrix();
Void set_worldToCameraMatrix(UnityEngine.Matrix4x4);
Void ResetWorldToCameraMatrix();
Matrix4x4 get_projectionMatrix();
Void set_projectionMatrix(UnityEngine.Matrix4x4);
Void ResetProjectionMatrix();
Void ResetAspect();
}
class ComputeShader : UnityEngine.__UnityObject{
this ();
Int32 FindKernel(System.String);
Void SetFloat(System.String,System.Single);
Void SetInt(System.String,System.Int32);
Void SetVector(System.String,UnityEngine.Vector4);
Void SetFloats(System.String,System.Single[]);
Void SetInts(System.String,System.Int32[]);
Void SetTexture(System.Int32,System.String,UnityEngine.Texture);
Void SetBuffer(System.Int32,System.String,UnityEngine.ComputeBuffer);
Void Dispatch(System.Int32,System.Int32,System.Int32,System.Int32);
}
class ComputeBufferType : System.Enum{
}
class ComputeBuffer : System.Object{
this (System.Int32,System.Int32);
this (System.Int32,System.Int32,UnityEngine.ComputeBufferType);
Void Dispose();
Void Release();
Int32 get_count();
Int32 get_stride();
Void SetData(System.Array);
Void GetData(System.Array);
static Void CopyCount(UnityEngine.ComputeBuffer,UnityEngine.ComputeBuffer,System.Int32);
}
class Debug : System.Object{
this ();
static Void DrawLine(UnityEngine.Vector3,UnityEngine.Vector3,UnityEngine.Color,System.Single,System.Boolean);
static Void DrawLine(UnityEngine.Vector3,UnityEngine.Vector3,UnityEngine.Color,System.Single);
static Void DrawLine(UnityEngine.Vector3,UnityEngine.Vector3,UnityEngine.Color);
static Void DrawLine(UnityEngine.Vector3,UnityEngine.Vector3);
static Void DrawRay(UnityEngine.Vector3,UnityEngine.Vector3,UnityEngine.Color,System.Single);
static Void DrawRay(UnityEngine.Vector3,UnityEngine.Vector3,UnityEngine.Color);
static Void DrawRay(UnityEngine.Vector3,UnityEngine.Vector3);
static Void DrawRay(UnityEngine.Vector3,UnityEngine.Vector3,UnityEngine.Color,System.Single,System.Boolean);
static Void Break();
static Void DebugBreak();
static Void Log(System.Object);
static Void Log(System.Object,UnityEngine.__UnityObject);
static Void LogFormat(System.String,System.Object[]);
static Void LogFormat(UnityEngine.__UnityObject,System.String,System.Object[]);
static Void LogError(System.Object);
static Void LogError(System.Object,UnityEngine.__UnityObject);
static Void LogErrorFormat(System.String,System.Object[]);
static Void LogErrorFormat(UnityEngine.__UnityObject,System.String,System.Object[]);
static Void ClearDeveloperConsole();
static Boolean get_developerConsoleVisible();
static Void set_developerConsoleVisible(System.Boolean);
static Void LogException(System.Exception);
static Void LogException(System.Exception,UnityEngine.__UnityObject);
static Void LogWarning(System.Object);
static Void LogWarning(System.Object,UnityEngine.__UnityObject);
static Void LogWarningFormat(System.String,System.Object[]);
static Void LogWarningFormat(UnityEngine.__UnityObject,System.String,System.Object[]);
static Void Assert(System.Boolean);
static Void Assert(System.Boolean,System.String);
static Void Assert(System.Boolean,System.String,System.Object[]);
static Boolean get_isDebugBuild();
}
class Display : System.Object{
static class DisplaysUpdatedDelegate : System.MulticastDelegate{
this (System.Object,System.IntPtr);
Void Invoke();
IAsyncResult BeginInvoke(System.AsyncCallback,System.Object);
Void EndInvoke(System.IAsyncResult);
}
static Void add_onDisplaysUpdated(UnityEngine.Display.DisplaysUpdatedDelegate);
static Void remove_onDisplaysUpdated(UnityEngine.Display.DisplaysUpdatedDelegate);
Int32 get_renderingWidth();
Int32 get_renderingHeight();
Int32 get_systemWidth();
Int32 get_systemHeight();
RenderBuffer get_colorBuffer();
RenderBuffer get_depthBuffer();
Void Activate();
Void Activate(System.Int32,System.Int32,System.Int32);
Void SetParams(System.Int32,System.Int32,System.Int32,System.Int32);
Void SetRenderingResolution(System.Int32,System.Int32);
static Boolean MultiDisplayLicense();
static Vector3 RelativeMouseAt(UnityEngine.Vector3);
static Display get_main();
}
class NotConvertedAttribute : System.Attribute{
this ();
}
class NotFlashValidatedAttribute : System.Attribute{
this ();
}
class NotRenamedAttribute : System.Attribute{
this ();
}
class MonoBehaviour : UnityEngine.Behaviour{
protected:
Transform transform;
public:
this ();
Void Invoke(System.String,System.Single);
Void InvokeRepeating(System.String,System.Single,System.Single);
Void CancelInvoke();
Void CancelInvoke(System.String);
Boolean IsInvoking(System.String);
Boolean IsInvoking();
Coroutine StartCoroutine(System.Collections.IEnumerator);
Coroutine StartCoroutine_Auto(System.Collections.IEnumerator);
Coroutine StartCoroutine(System.String,System.Object);
Coroutine StartCoroutine(System.String);
Void StopCoroutine(System.String);
Void StopCoroutine(System.Collections.IEnumerator);
Void StopCoroutine(UnityEngine.Coroutine);
Void StopAllCoroutines();
static Void print(System.Object);
Boolean get_useGUILayout();
Void set_useGUILayout(System.Boolean);
}
class TouchPhase : System.Enum{
}
class IMECompositionMode : System.Enum{
}
class Touch : System.ValueType{
Int32 get_fingerId();
Vector2 get_position();
Vector2 get_rawPosition();
Vector2 get_deltaPosition();
Single get_deltaTime();
Int32 get_tapCount();
TouchPhase get_phase();
}
class DeviceOrientation : System.Enum{
}
class AccelerationEvent : System.ValueType{
Vector3 get_acceleration();
Single get_deltaTime();
}
class Gyroscope : System.Object{
Vector3 get_rotationRate();
Vector3 get_rotationRateUnbiased();
Vector3 get_gravity();
Vector3 get_userAcceleration();
Quaternion get_attitude();
Boolean get_enabled();
Void set_enabled(System.Boolean);
Single get_updateInterval();
Void set_updateInterval(System.Single);
}
class LocationInfo : System.ValueType{
Single get_latitude();
Single get_longitude();
Single get_altitude();
Single get_horizontalAccuracy();
Single get_verticalAccuracy();
Double get_timestamp();
}
class LocationServiceStatus : System.Enum{
}
class LocationService : System.Object{
this ();
Boolean get_isEnabledByUser();
LocationServiceStatus get_status();
LocationInfo get_lastData();
Void Start(System.Single,System.Single);
Void Start(System.Single);
Void Start();
Void Stop();
}
class Compass : System.Object{
this ();
Single get_magneticHeading();
Single get_trueHeading();
Single get_headingAccuracy();
Vector3 get_rawVector();
Double get_timestamp();
Boolean get_enabled();
Void set_enabled(System.Boolean);
}
class Input : System.Object{
this ();
static Single GetAxis(System.String);
static Single GetAxisRaw(System.String);
static Boolean GetButton(System.String);
static Boolean get_compensateSensors();
static Void set_compensateSensors(System.Boolean);
static Boolean get_isGyroAvailable();
static Gyroscope get_gyro();
static Boolean GetButtonDown(System.String);
static Boolean GetButtonUp(System.String);
static Boolean GetKey(System.String);
static Boolean GetKey(UnityEngine.KeyCode);
static Boolean GetKeyDown(System.String);
static Boolean GetKeyDown(UnityEngine.KeyCode);
static Boolean GetKeyUp(System.String);
static Boolean GetKeyUp(UnityEngine.KeyCode);
static String[] GetJoystickNames();
static Boolean IsJoystickPreconfigured(System.String);
static Boolean GetMouseButton(System.Int32);
static Boolean GetMouseButtonDown(System.Int32);
static Boolean GetMouseButtonUp(System.Int32);
static Void ResetInputAxes();
static Vector3 get_mousePosition();
static Vector2 get_mouseScrollDelta();
static Boolean get_mousePresent();
static Boolean get_simulateMouseWithTouches();
static Void set_simulateMouseWithTouches(System.Boolean);
static Boolean get_anyKey();
static Boolean get_anyKeyDown();
static String get_inputString();
static Vector3 get_acceleration();
static AccelerationEvent[] get_accelerationEvents();
static AccelerationEvent GetAccelerationEvent(System.Int32);
static Int32 get_accelerationEventCount();
static Touch[] get_touches();
static Touch GetTouch(System.Int32);
static Int32 get_touchCount();
static Boolean get_eatKeyPressOnTextFieldFocus();
static Void set_eatKeyPressOnTextFieldFocus(System.Boolean);
static Boolean get_touchSupported();
static Boolean get_multiTouchEnabled();
static Void set_multiTouchEnabled(System.Boolean);
static LocationService get_location();
static Compass get_compass();
static DeviceOrientation get_deviceOrientation();
static Quaternion GetRotation(System.Int32);
static Vector3 GetPosition(System.Int32);
static IMECompositionMode get_imeCompositionMode();
static Void set_imeCompositionMode(UnityEngine.IMECompositionMode);
static String get_compositionString();
static Boolean get_imeIsSelected();
static Vector2 get_compositionCursorPos();
static Void set_compositionCursorPos(UnityEngine.Vector2);
}
class HideFlags : System.Enum{
}
class __UnityObject : System.Object{
this ();
static Void Destroy(UnityEngine.__UnityObject,System.Single);
static Void Destroy(UnityEngine.__UnityObject);
static Void DestroyImmediate(UnityEngine.__UnityObject,System.Boolean);
static Void DestroyImmediate(UnityEngine.__UnityObject);
static Object[] FindObjectsOfType(System.Type);
String get_name();
Void set_name(System.String);
static Void DontDestroyOnLoad(UnityEngine.__UnityObject);
HideFlags get_hideFlags();
Void set_hideFlags(UnityEngine.HideFlags);
static Void DestroyObject(UnityEngine.__UnityObject,System.Single);
static Void DestroyObject(UnityEngine.__UnityObject);
static Object[] FindSceneObjectsOfType(System.Type);
static Object[] FindObjectsOfTypeIncludingAssets(System.Type);
static Object[] FindObjectsOfTypeAll(System.Type);
String ToString();
Boolean Equals(System.Object);
Int32 GetHashCode();
Int32 GetInstanceID();
static __UnityObject Instantiate(UnityEngine.__UnityObject,UnityEngine.Vector3,UnityEngine.Quaternion);
static __UnityObject Instantiate(UnityEngine.__UnityObject);
static __UnityObject FindObjectOfType(System.Type);
static Boolean op_Implicit(UnityEngine.__UnityObject);
static Boolean op_Equality(UnityEngine.__UnityObject,UnityEngine.__UnityObject);
static Boolean op_Inequality(UnityEngine.__UnityObject,UnityEngine.__UnityObject);
}
class Component : UnityEngine.__UnityObject{
this ();
Transform get_transform();
GameObject get_gameObject();
Component GetComponent(System.Type);
Component GetComponent(System.String);
Component GetComponentInChildren(System.Type);
Component[] GetComponentsInChildren(System.Type);
Component[] GetComponentsInChildren(System.Type,System.Boolean);
Component GetComponentInParent(System.Type);
Component[] GetComponentsInParent(System.Type);
Component[] GetComponentsInParent(System.Type,System.Boolean);
Component[] GetComponents(System.Type);
String get_tag();
Void set_tag(System.String);
Boolean CompareTag(System.String);
Void SendMessageUpwards(System.String,System.Object,UnityEngine.SendMessageOptions);
Void SendMessageUpwards(System.String,System.Object);
Void SendMessageUpwards(System.String);
Void SendMessageUpwards(System.String,UnityEngine.SendMessageOptions);
Void SendMessage(System.String,System.Object,UnityEngine.SendMessageOptions);
Void SendMessage(System.String,System.Object);
Void SendMessage(System.String);
Void SendMessage(System.String,UnityEngine.SendMessageOptions);
Void BroadcastMessage(System.String,System.Object,UnityEngine.SendMessageOptions);
Void BroadcastMessage(System.String,System.Object);
Void BroadcastMessage(System.String);
Void BroadcastMessage(System.String,UnityEngine.SendMessageOptions);
Component get_rigidbody();
Component get_rigidbody2D();
Component get_camera();
Component get_light();
Component get_animation();
Component get_constantForce();
Component get_renderer();
Component get_audio();
Component get_guiText();
Component get_networkView();
Component get_guiElement();
Component get_guiTexture();
Component get_collider();
Component get_collider2D();
Component get_hingeJoint();
Component get_particleEmitter();
Component get_particleSystem();
}
class Light : UnityEngine.Behaviour{
this ();
LightType get_type();
Void set_type(UnityEngine.LightType);
Color get_color();
Void set_color(UnityEngine.Color);
Single get_intensity();
Void set_intensity(System.Single);
Single get_bounceIntensity();
Void set_bounceIntensity(System.Single);
LightShadows get_shadows();
Void set_shadows(UnityEngine.LightShadows);
Single get_shadowStrength();
Void set_shadowStrength(System.Single);
Single get_shadowBias();
Void set_shadowBias(System.Single);
Single get_shadowNormalBias();
Void set_shadowNormalBias(System.Single);
Single get_shadowSoftness();
Void set_shadowSoftness(System.Single);
Single get_shadowSoftnessFade();
Void set_shadowSoftnessFade(System.Single);
Single get_range();
Void set_range(System.Single);
Single get_spotAngle();
Void set_spotAngle(System.Single);
Single get_cookieSize();
Void set_cookieSize(System.Single);
Texture get_cookie();
Void set_cookie(UnityEngine.Texture);
Flare get_flare();
Void set_flare(UnityEngine.Flare);
LightRenderMode get_renderMode();
Void set_renderMode(UnityEngine.LightRenderMode);
Boolean get_alreadyLightmapped();
Void set_alreadyLightmapped(System.Boolean);
Int32 get_cullingMask();
Void set_cullingMask(System.Int32);
Vector2 get_areaSize();
Void set_areaSize(UnityEngine.Vector2);
Void AddCommandBuffer(UnityEngine.Rendering.LightEvent,UnityEngine.Rendering.CommandBuffer);
Void RemoveCommandBuffer(UnityEngine.Rendering.LightEvent,UnityEngine.Rendering.CommandBuffer);
Void RemoveCommandBuffers(UnityEngine.Rendering.LightEvent);
Void RemoveAllCommandBuffers();
CommandBuffer[] GetCommandBuffers(UnityEngine.Rendering.LightEvent);
Int32 get_commandBufferCount();
static Int32 get_pixelLightCount();
static Void set_pixelLightCount(System.Int32);
static Light[] GetLights(UnityEngine.LightType,System.Int32);
Single get_shadowConstantBias();
Void set_shadowConstantBias(System.Single);
Single get_shadowObjectSizeBias();
Void set_shadowObjectSizeBias(System.Single);
Boolean get_attenuate();
Void set_attenuate(System.Boolean);
}
class GameObject : UnityEngine.__UnityObject{
this (System.String);
this ();
this (System.String,System.Type[]);
Component AddComponent(System.String);
Component get_rigidbody();
Component get_rigidbody2D();
Component get_camera();
Component get_light();
Component get_animation();
Component get_constantForce();
Component get_renderer();
Component get_audio();
Component get_guiText();
Component get_networkView();
Component get_guiElement();
Component get_guiTexture();
Component get_collider();
Component get_collider2D();
Component get_hingeJoint();
Component get_particleEmitter();
Component get_particleSystem();
Void PlayAnimation(UnityEngine.__UnityObject);
Void StopAnimation();
static GameObject CreatePrimitive(UnityEngine.PrimitiveType);
Component GetComponent(System.Type);
Component GetComponent(System.String);
Component GetComponentInChildren(System.Type);
Component GetComponentInParent(System.Type);
Component[] GetComponents(System.Type);
Component[] GetComponentsInChildren(System.Type);
Component[] GetComponentsInChildren(System.Type,System.Boolean);
Component[] GetComponentsInParent(System.Type);
Component[] GetComponentsInParent(System.Type,System.Boolean);
Transform get_transform();
Int32 get_layer();
Void set_layer(System.Int32);
Boolean get_active();
Void set_active(System.Boolean);
Void SetActive(System.Boolean);
Boolean get_activeSelf();
Boolean get_activeInHierarchy();
Void SetActiveRecursively(System.Boolean);
Boolean get_isStatic();
Void set_isStatic(System.Boolean);
String get_tag();
Void set_tag(System.String);
Boolean CompareTag(System.String);
static GameObject FindGameObjectWithTag(System.String);
static GameObject FindWithTag(System.String);
static GameObject[] FindGameObjectsWithTag(System.String);
Void SendMessageUpwards(System.String,System.Object,UnityEngine.SendMessageOptions);
Void SendMessageUpwards(System.String,System.Object);
Void SendMessageUpwards(System.String);
Void SendMessageUpwards(System.String,UnityEngine.SendMessageOptions);
Void SendMessage(System.String,System.Object,UnityEngine.SendMessageOptions);
Void SendMessage(System.String,System.Object);
Void SendMessage(System.String);
Void SendMessage(System.String,UnityEngine.SendMessageOptions);
Void BroadcastMessage(System.String,System.Object,UnityEngine.SendMessageOptions);
Void BroadcastMessage(System.String,System.Object);
Void BroadcastMessage(System.String);
Void BroadcastMessage(System.String,UnityEngine.SendMessageOptions);
Component AddComponent(System.Type);
static GameObject Find(System.String);
GameObject get_gameObject();
Void SampleAnimation(UnityEngine.__UnityObject,System.Single);
}
class Transform : UnityEngine.Component{
Vector3 TransformPoint(System.Single,System.Single,System.Single);
Vector3 InverseTransformPoint(UnityEngine.Vector3);
Vector3 InverseTransformPoint(System.Single,System.Single,System.Single);
Transform get_root();
Int32 get_childCount();
Void DetachChildren();
Void SetAsFirstSibling();
Void SetAsLastSibling();
Void SetSiblingIndex(System.Int32);
Int32 GetSiblingIndex();
Transform Find(System.String);
Vector3 get_lossyScale();
Boolean IsChildOf(UnityEngine.Transform);
Boolean get_hasChanged();
Void set_hasChanged(System.Boolean);
Transform FindChild(System.String);
IEnumerator GetEnumerator();
Void RotateAround(UnityEngine.Vector3,System.Single);
Void RotateAroundLocal(UnityEngine.Vector3,System.Single);
Transform GetChild(System.Int32);
Int32 GetChildCount();
Vector3 get_position();
Void set_position(UnityEngine.Vector3);
Vector3 get_localPosition();
Void set_localPosition(UnityEngine.Vector3);
Vector3 get_eulerAngles();
Void set_eulerAngles(UnityEngine.Vector3);
Vector3 get_localEulerAngles();
Void set_localEulerAngles(UnityEngine.Vector3);
Vector3 get_right();
Void set_right(UnityEngine.Vector3);
Vector3 get_up();
Void set_up(UnityEngine.Vector3);
Vector3 get_forward();
Void set_forward(UnityEngine.Vector3);
Quaternion get_rotation();
Void set_rotation(UnityEngine.Quaternion);
Quaternion get_localRotation();
Void set_localRotation(UnityEngine.Quaternion);
Vector3 get_localScale();
Void set_localScale(UnityEngine.Vector3);
Transform get_parent();
Void set_parent(UnityEngine.Transform);
Void SetParent(UnityEngine.Transform);
Void SetParent(UnityEngine.Transform,System.Boolean);
Matrix4x4 get_worldToLocalMatrix();
Matrix4x4 get_localToWorldMatrix();
Void Translate(UnityEngine.Vector3);
Void Translate(UnityEngine.Vector3,UnityEngine.Space);
Void Translate(System.Single,System.Single,System.Single);
Void Translate(System.Single,System.Single,System.Single,UnityEngine.Space);
Void Translate(UnityEngine.Vector3,UnityEngine.Transform);
Void Translate(System.Single,System.Single,System.Single,UnityEngine.Transform);
Void Rotate(UnityEngine.Vector3);
Void Rotate(UnityEngine.Vector3,UnityEngine.Space);
Void Rotate(System.Single,System.Single,System.Single);
Void Rotate(System.Single,System.Single,System.Single,UnityEngine.Space);
Void Rotate(UnityEngine.Vector3,System.Single);
Void Rotate(UnityEngine.Vector3,System.Single,UnityEngine.Space);
Void RotateAround(UnityEngine.Vector3,UnityEngine.Vector3,System.Single);
Void LookAt(UnityEngine.Transform);
Void LookAt(UnityEngine.Transform,UnityEngine.Vector3);
Void LookAt(UnityEngine.Vector3,UnityEngine.Vector3);
Void LookAt(UnityEngine.Vector3);
Vector3 TransformDirection(UnityEngine.Vector3);
Vector3 TransformDirection(System.Single,System.Single,System.Single);
Vector3 InverseTransformDirection(UnityEngine.Vector3);
Vector3 InverseTransformDirection(System.Single,System.Single,System.Single);
Vector3 TransformVector(UnityEngine.Vector3);
Vector3 TransformVector(System.Single,System.Single,System.Single);
Vector3 InverseTransformVector(UnityEngine.Vector3);
Vector3 InverseTransformVector(System.Single,System.Single,System.Single);
Vector3 TransformPoint(UnityEngine.Vector3);
}
class Time : System.Object{
this ();
static Single get_time();
static Single get_timeSinceLevelLoad();
static Single get_deltaTime();
static Single get_fixedTime();
static Single get_unscaledTime();
static Single get_unscaledDeltaTime();
static Single get_fixedDeltaTime();
static Void set_fixedDeltaTime(System.Single);
static Single get_maximumDeltaTime();
static Void set_maximumDeltaTime(System.Single);
static Single get_smoothDeltaTime();
static Single get_timeScale();
static Void set_timeScale(System.Single);
static Int32 get_frameCount();
static Int32 get_renderedFrameCount();
static Single get_realtimeSinceStartup();
static Int32 get_captureFramerate();
static Void set_captureFramerate(System.Int32);
}
class Random : System.Object{
this ();
static Int32 get_seed();
static Void set_seed(System.Int32);
static Single Range(System.Single,System.Single);
static Int32 Range(System.Int32,System.Int32);
static Single get_value();
static Vector3 get_insideUnitSphere();
static Vector2 get_insideUnitCircle();
static Vector3 get_onUnitSphere();
static Quaternion get_rotation();
static Quaternion get_rotationUniform();
static Single RandomRange(System.Single,System.Single);
static Int32 RandomRange(System.Int32,System.Int32);
}
class YieldInstruction : System.Object{
this ();
}
class PlayerPrefsException : System.Exception{
this (System.String);
}
class PlayerPrefs : System.Object{
this ();
static Void SetInt(System.String,System.Int32);
static Int32 GetInt(System.String,System.Int32);
static Int32 GetInt(System.String);
static Void SetFloat(System.String,System.Single);
static Single GetFloat(System.String,System.Single);
static Single GetFloat(System.String);
static Void SetString(System.String,System.String);
static String GetString(System.String,System.String);
static String GetString(System.String);
static Boolean HasKey(System.String);
static Void DeleteKey(System.String);
static Void DeleteAll();
static Void Save();
}
class AndroidJavaObject : System.Object{
this (System.String,System.Object[]);
Void Dispose();
Void Call(System.String,System.Object[]);
Void CallStatic(System.String,System.Object[]);
IntPtr GetRawObject();
IntPtr GetRawClass();
}
class AndroidJavaClass : UnityEngine.AndroidJavaObject{
this (System.String);
}
class jvalue : System.ValueType{
}
class AndroidJNIHelper : System.Object{
static Boolean get_debug();
static Void set_debug(System.Boolean);
static IntPtr GetConstructorID(System.IntPtr);
static IntPtr GetConstructorID(System.IntPtr,System.String);
static IntPtr GetMethodID(System.IntPtr,System.String,System.String);
static IntPtr GetMethodID(System.IntPtr,System.String);
static IntPtr GetMethodID(System.IntPtr,System.String,System.String,System.Boolean);
static IntPtr GetFieldID(System.IntPtr,System.String,System.String);
static IntPtr GetFieldID(System.IntPtr,System.String);
static IntPtr GetFieldID(System.IntPtr,System.String,System.String,System.Boolean);
static IntPtr CreateJavaRunnable(UnityEngine.AndroidJavaRunnable);
static IntPtr CreateJavaProxy(UnityEngine.AndroidJavaProxy);
static IntPtr ConvertToJNIArray(System.Array);
static jvalue[] CreateJNIArgArray(System.Object[]);
static Void DeleteJNIArgArray(System.Object[],UnityEngine.jvalue[]);
static IntPtr GetConstructorID(System.IntPtr,System.Object[]);
static IntPtr GetMethodID(System.IntPtr,System.String,System.Object[],System.Boolean);
static String GetSignature(System.Object);
static String GetSignature(System.Object[]);
}
class AndroidJNI : System.Object{
static Byte GetByteArrayElement(System.IntPtr,System.Int32);
static Char GetCharArrayElement(System.IntPtr,System.Int32);
static Int16 GetShortArrayElement(System.IntPtr,System.Int32);
static Int32 GetIntArrayElement(System.IntPtr,System.Int32);
static Int64 GetLongArrayElement(System.IntPtr,System.Int32);
static Single GetFloatArrayElement(System.IntPtr,System.Int32);
static Double GetDoubleArrayElement(System.IntPtr,System.Int32);
static IntPtr GetObjectArrayElement(System.IntPtr,System.Int32);
static Void SetBooleanArrayElement(System.IntPtr,System.Int32,System.Byte);
static Void SetByteArrayElement(System.IntPtr,System.Int32,System.SByte);
static Void SetCharArrayElement(System.IntPtr,System.Int32,System.Char);
static Void SetShortArrayElement(System.IntPtr,System.Int32,System.Int16);
static Void SetIntArrayElement(System.IntPtr,System.Int32,System.Int32);
static Void SetLongArrayElement(System.IntPtr,System.Int32,System.Int64);
static Void SetFloatArrayElement(System.IntPtr,System.Int32,System.Single);
static Void SetDoubleArrayElement(System.IntPtr,System.Int32,System.Double);
static Void SetObjectArrayElement(System.IntPtr,System.Int32,System.IntPtr);
static Void SetLongField(System.IntPtr,System.IntPtr,System.Int64);
static Void SetFloatField(System.IntPtr,System.IntPtr,System.Single);
static Void SetDoubleField(System.IntPtr,System.IntPtr,System.Double);
static String CallStaticStringMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static IntPtr CallStaticObjectMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static Int32 CallStaticIntMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static Boolean CallStaticBooleanMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static Int16 CallStaticShortMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static Byte CallStaticByteMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static Char CallStaticCharMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static Single CallStaticFloatMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static Double CallStaticDoubleMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static Int64 CallStaticLongMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static Void CallStaticVoidMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static String GetStaticStringField(System.IntPtr,System.IntPtr);
static IntPtr GetStaticObjectField(System.IntPtr,System.IntPtr);
static Boolean GetStaticBooleanField(System.IntPtr,System.IntPtr);
static Byte GetStaticByteField(System.IntPtr,System.IntPtr);
static Char GetStaticCharField(System.IntPtr,System.IntPtr);
static Int16 GetStaticShortField(System.IntPtr,System.IntPtr);
static Int32 GetStaticIntField(System.IntPtr,System.IntPtr);
static Int64 GetStaticLongField(System.IntPtr,System.IntPtr);
static Single GetStaticFloatField(System.IntPtr,System.IntPtr);
static Double GetStaticDoubleField(System.IntPtr,System.IntPtr);
static Void SetStaticStringField(System.IntPtr,System.IntPtr,System.String);
static Void SetStaticObjectField(System.IntPtr,System.IntPtr,System.IntPtr);
static Void SetStaticBooleanField(System.IntPtr,System.IntPtr,System.Boolean);
static Void SetStaticByteField(System.IntPtr,System.IntPtr,System.Byte);
static Void SetStaticCharField(System.IntPtr,System.IntPtr,System.Char);
static Void SetStaticShortField(System.IntPtr,System.IntPtr,System.Int16);
static Void SetStaticIntField(System.IntPtr,System.IntPtr,System.Int32);
static Void SetStaticLongField(System.IntPtr,System.IntPtr,System.Int64);
static Void SetStaticFloatField(System.IntPtr,System.IntPtr,System.Single);
static Void SetStaticDoubleField(System.IntPtr,System.IntPtr,System.Double);
static IntPtr ToBooleanArray(System.Boolean[]);
static IntPtr ToByteArray(System.Byte[]);
static IntPtr ToCharArray(System.Char[]);
static IntPtr ToShortArray(System.Int16[]);
static IntPtr ToIntArray(System.Int32[]);
static IntPtr ToLongArray(System.Int64[]);
static IntPtr ToFloatArray(System.Single[]);
static IntPtr ToDoubleArray(System.Double[]);
static IntPtr ToObjectArray(System.IntPtr[],System.IntPtr);
static IntPtr ToObjectArray(System.IntPtr[]);
static Boolean[] FromBooleanArray(System.IntPtr);
static Byte[] FromByteArray(System.IntPtr);
static Char[] FromCharArray(System.IntPtr);
static Int16[] FromShortArray(System.IntPtr);
static Int32[] FromIntArray(System.IntPtr);
static Int64[] FromLongArray(System.IntPtr);
static Single[] FromFloatArray(System.IntPtr);
static Double[] FromDoubleArray(System.IntPtr);
static IntPtr[] FromObjectArray(System.IntPtr);
static Int32 GetArrayLength(System.IntPtr);
static IntPtr NewBooleanArray(System.Int32);
static IntPtr NewByteArray(System.Int32);
static IntPtr NewCharArray(System.Int32);
static IntPtr NewShortArray(System.Int32);
static IntPtr NewIntArray(System.Int32);
static IntPtr NewLongArray(System.Int32);
static IntPtr NewFloatArray(System.Int32);
static IntPtr NewDoubleArray(System.Int32);
static IntPtr NewObjectArray(System.Int32,System.IntPtr,System.IntPtr);
static Boolean GetBooleanArrayElement(System.IntPtr,System.Int32);
static Int32 AttachCurrentThread();
static Int32 DetachCurrentThread();
static Int32 GetVersion();
static IntPtr FindClass(System.String);
static IntPtr FromReflectedMethod(System.IntPtr);
static IntPtr FromReflectedField(System.IntPtr);
static IntPtr ToReflectedMethod(System.IntPtr,System.IntPtr,System.Boolean);
static IntPtr ToReflectedField(System.IntPtr,System.IntPtr,System.Boolean);
static IntPtr GetSuperclass(System.IntPtr);
static Boolean IsAssignableFrom(System.IntPtr,System.IntPtr);
static Int32 Throw(System.IntPtr);
static Int32 ThrowNew(System.IntPtr,System.String);
static IntPtr ExceptionOccurred();
static Void ExceptionDescribe();
static Void ExceptionClear();
static Void FatalError(System.String);
static Int32 PushLocalFrame(System.Int32);
static IntPtr PopLocalFrame(System.IntPtr);
static IntPtr NewGlobalRef(System.IntPtr);
static Void DeleteGlobalRef(System.IntPtr);
static IntPtr NewLocalRef(System.IntPtr);
static Void DeleteLocalRef(System.IntPtr);
static Boolean IsSameObject(System.IntPtr,System.IntPtr);
static Int32 EnsureLocalCapacity(System.Int32);
static IntPtr AllocObject(System.IntPtr);
static IntPtr NewObject(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static IntPtr GetObjectClass(System.IntPtr);
static Boolean IsInstanceOf(System.IntPtr,System.IntPtr);
static IntPtr GetMethodID(System.IntPtr,System.String,System.String);
static IntPtr GetFieldID(System.IntPtr,System.String,System.String);
static IntPtr GetStaticMethodID(System.IntPtr,System.String,System.String);
static IntPtr GetStaticFieldID(System.IntPtr,System.String,System.String);
static IntPtr NewStringUTF(System.String);
static Int32 GetStringUTFLength(System.IntPtr);
static String GetStringUTFChars(System.IntPtr);
static String CallStringMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static IntPtr CallObjectMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static Int32 CallIntMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static Boolean CallBooleanMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static Int16 CallShortMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static Byte CallByteMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static Char CallCharMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static Single CallFloatMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static Double CallDoubleMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static Int64 CallLongMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static Void CallVoidMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static String GetStringField(System.IntPtr,System.IntPtr);
static IntPtr GetObjectField(System.IntPtr,System.IntPtr);
static Boolean GetBooleanField(System.IntPtr,System.IntPtr);
static Byte GetByteField(System.IntPtr,System.IntPtr);
static Char GetCharField(System.IntPtr,System.IntPtr);
static Int16 GetShortField(System.IntPtr,System.IntPtr);
static Int32 GetIntField(System.IntPtr,System.IntPtr);
static Int64 GetLongField(System.IntPtr,System.IntPtr);
static Single GetFloatField(System.IntPtr,System.IntPtr);
static Double GetDoubleField(System.IntPtr,System.IntPtr);
static Void SetStringField(System.IntPtr,System.IntPtr,System.String);
static Void SetObjectField(System.IntPtr,System.IntPtr,System.IntPtr);
static Void SetBooleanField(System.IntPtr,System.IntPtr,System.Boolean);
static Void SetByteField(System.IntPtr,System.IntPtr,System.Byte);
static Void SetCharField(System.IntPtr,System.IntPtr,System.Char);
static Void SetShortField(System.IntPtr,System.IntPtr,System.Int16);
static Void SetIntField(System.IntPtr,System.IntPtr,System.Int32);
}
class AndroidInput : System.Object{
static Touch GetSecondaryTouch(System.Int32);
static Int32 get_touchCountSecondary();
static Boolean get_secondaryTouchEnabled();
static Int32 get_secondaryTouchWidth();
static Int32 get_secondaryTouchHeight();
}
class Motion : UnityEngine.__UnityObject{
this ();
Single get_averageDuration();
Single get_averageAngularSpeed();
Vector3 get_averageSpeed();
Single get_apparentSpeed();
Boolean get_isLooping();
Boolean get_legacy();
Boolean get_isHumanMotion();
Boolean ValidateIfRetargetable(System.Boolean);
Boolean get_isAnimatorMotion();
}
class ADBannerView : System.Object{
this ();
}
class ADInterstitialAd : System.Object{
this ();
}
class iPhoneGeneration : System.Enum{
}
class iPhone : System.Object{
this ();
}
class iOSActivityIndicatorStyle : System.Enum{
}
class iPhoneTouchPhase : System.Enum{
}
class iPhoneTouch : System.ValueType{
Vector2 get_positionDelta();
Single get_timeDelta();
}
class iPhoneAccelerationEvent : System.ValueType{
Single get_timeDelta();
}
class iPhoneOrientation : System.Enum{
}
class iPhoneInput : System.Object{
this ();
static iPhoneOrientation get_orientation();
}
class iPhoneScreenOrientation : System.Enum{
}
class iPhoneSettings : System.Object{
this ();
static iPhoneScreenOrientation get_screenOrientation();
static Boolean get_verticalOrientation();
static Boolean get_screenCanDarken();
static String get_uniqueIdentifier();
static String get_name();
static String get_model();
static String get_systemName();
static String get_systemVersion();
static iPhoneNetworkReachability get_internetReachability();
static iPhoneGeneration get_generation();
static LocationServiceStatus get_locationServiceStatus();
static Boolean get_locationServiceEnabledByUser();
static Void StartLocationServiceUpdates(System.Single,System.Single);
static Void StartLocationServiceUpdates(System.Single);
static Void StartLocationServiceUpdates();
static Void StopLocationServiceUpdates();
}
class iPhoneKeyboardType : System.Enum{
}
class iPhoneKeyboard : System.Object{
this ();
}
class iPhoneMovieControlMode : System.Enum{
}
class iPhoneMovieScalingMode : System.Enum{
}
class iPhoneNetworkReachability : System.Enum{
}
class iPhoneUtils : System.Object{
this ();
static Void PlayMovie(System.String,UnityEngine.Color,UnityEngine.iPhoneMovieControlMode,UnityEngine.iPhoneMovieScalingMode);
static Void PlayMovie(System.String,UnityEngine.Color,UnityEngine.iPhoneMovieControlMode);
static Void PlayMovie(System.String,UnityEngine.Color);
static Void PlayMovieURL(System.String,UnityEngine.Color,UnityEngine.iPhoneMovieControlMode,UnityEngine.iPhoneMovieScalingMode);
static Void PlayMovieURL(System.String,UnityEngine.Color,UnityEngine.iPhoneMovieControlMode);
static Void PlayMovieURL(System.String,UnityEngine.Color);
static Void Vibrate();
static Boolean get_isApplicationGenuine();
static Boolean get_isApplicationGenuineAvailable();
}
class CalendarIdentifier : System.Enum{
}
class CalendarUnit : System.Enum{
}
class LocalNotification : System.Object{
this ();
}
class RemoteNotification : System.Object{
this ();
}
class RemoteNotificationType : System.Enum{
}
class NotificationServices : System.Object{
this ();
static Void RegisterForRemoteNotificationTypes(UnityEngine.RemoteNotificationType);
}
class SamsungTV : System.Object{
static class TouchPadMode : System.Enum{
}
static class GestureMode : System.Enum{
}
static class GamePadMode : System.Enum{
}
static class OpenAPI : System.Object{
static class OpenAPIServerType : System.Enum{
}
this ();
static OpenAPIServerType get_serverType();
static String get_timeOnTV();
static String get_uid();
static String get_dUid();
}
this ();
static TouchPadMode get_touchPadMode();
static Void set_touchPadMode(UnityEngine.SamsungTV.TouchPadMode);
static GestureMode get_gestureMode();
static Void set_gestureMode(UnityEngine.SamsungTV.GestureMode);
static Boolean get_airMouseConnected();
static Boolean get_gestureWorking();
static GamePadMode get_gamePadMode();
static Void set_gamePadMode(UnityEngine.SamsungTV.GamePadMode);
}
class BillboardAsset : UnityEngine.__UnityObject{
this ();
Single get_width();
Void set_width(System.Single);
Single get_height();
Void set_height(System.Single);
Single get_bottom();
Void set_bottom(System.Single);
Int32 get_imageCount();
Int32 get_vertexCount();
Int32 get_indexCount();
Material get_material();
Void set_material(UnityEngine.Material);
}
class BillboardRenderer : UnityEngine.Renderer{
this ();
BillboardAsset get_billboard();
Void set_billboard(UnityEngine.BillboardAsset);
}
class WindZoneMode : System.Enum{
}
class WindZone : UnityEngine.Component{
this ();
WindZoneMode get_mode();
Void set_mode(UnityEngine.WindZoneMode);
Single get_radius();
Void set_radius(System.Single);
Single get_windMain();
Void set_windMain(System.Single);
Single get_windTurbulence();
Void set_windTurbulence(System.Single);
Single get_windPulseMagnitude();
Void set_windPulseMagnitude(System.Single);
Single get_windPulseFrequency();
Void set_windPulseFrequency(System.Single);
}
class DynamicGI : System.Object{
this ();
static Single get_indirectScale();
static Void set_indirectScale(System.Single);
static Single get_updateThreshold();
static Void set_updateThreshold(System.Single);
static Void SetEmissive(UnityEngine.Renderer,UnityEngine.Color);
static Void UpdateMaterials(UnityEngine.Renderer);
static Void UpdateMaterials(UnityEngine.Terrain);
static Void UpdateMaterials(UnityEngine.Terrain,System.Int32,System.Int32,System.Int32,System.Int32);
static Void UpdateEnvironment();
static Boolean get_synchronousMode();
static Void set_synchronousMode(System.Boolean);
}
class ParticleSystemRenderMode : System.Enum{
}
class ParticleSystemSimulationSpace : System.Enum{
}
class ParticleSystem : UnityEngine.Component{
static class CollisionEvent : System.ValueType{
}
static class Particle : System.ValueType{
Vector3 get_position();
Void set_position(UnityEngine.Vector3);
Vector3 get_velocity();
Void set_velocity(UnityEngine.Vector3);
Single get_lifetime();
Void set_lifetime(System.Single);
Single get_startLifetime();
Void set_startLifetime(System.Single);
Single get_size();
Void set_size(System.Single);
Vector3 get_axisOfRotation();
Void set_axisOfRotation(UnityEngine.Vector3);
Single get_rotation();
Void set_rotation(System.Single);
Single get_angularVelocity();
Void set_angularVelocity(System.Single);
Color32 get_color();
Void set_color(UnityEngine.Color32);
Single get_randomValue();
Void set_randomValue(System.Single);
UInt32 get_randomSeed();
Void set_randomSeed(System.UInt32);
}
this ();
Single get_startDelay();
Void set_startDelay(System.Single);
Boolean get_isPlaying();
Boolean get_isStopped();
Boolean get_isPaused();
Boolean get_loop();
Void set_loop(System.Boolean);
Boolean get_playOnAwake();
Void set_playOnAwake(System.Boolean);
Single get_time();
Void set_time(System.Single);
Single get_duration();
Single get_playbackSpeed();
Void set_playbackSpeed(System.Single);
Int32 get_particleCount();
Int32 get_safeCollisionEventSize();
Boolean get_enableEmission();
Void set_enableEmission(System.Boolean);
Single get_emissionRate();
Void set_emissionRate(System.Single);
Single get_startSpeed();
Void set_startSpeed(System.Single);
Single get_startSize();
Void set_startSize(System.Single);
Color get_startColor();
Void set_startColor(UnityEngine.Color);
Single get_startRotation();
Void set_startRotation(System.Single);
Single get_startLifetime();
Void set_startLifetime(System.Single);
Single get_gravityModifier();
Void set_gravityModifier(System.Single);
Int32 get_maxParticles();
Void set_maxParticles(System.Int32);
ParticleSystemSimulationSpace get_simulationSpace();
Void set_simulationSpace(UnityEngine.ParticleSystemSimulationSpace);
UInt32 get_randomSeed();
Void set_randomSeed(System.UInt32);
Void SetParticles(UnityEngine.ParticleSystem.Particle[],System.Int32);
Int32 GetParticles(UnityEngine.ParticleSystem.Particle[]);
Void Simulate(System.Single,System.Boolean);
Void Simulate(System.Single);
Void Simulate(System.Single,System.Boolean,System.Boolean);
Void Play();
Void Play(System.Boolean);
Void Stop();
Void Stop(System.Boolean);
Void Pause();
Void Pause(System.Boolean);
Void Clear();
Void Clear(System.Boolean);
Boolean IsAlive();
Boolean IsAlive(System.Boolean);
Void Emit(System.Int32);
Void Emit(UnityEngine.Vector3,UnityEngine.Vector3,System.Single,System.Single,UnityEngine.Color32);
Void Emit(UnityEngine.ParticleSystem.Particle);
}
class ParticleSystemRenderer : UnityEngine.Renderer{
this ();
ParticleSystemRenderMode get_renderMode();
Void set_renderMode(UnityEngine.ParticleSystemRenderMode);
Single get_lengthScale();
Void set_lengthScale(System.Single);
Single get_velocityScale();
Void set_velocityScale(System.Single);
Single get_cameraVelocityScale();
Void set_cameraVelocityScale(System.Single);
Single get_maxParticleSize();
Void set_maxParticleSize(System.Single);
Mesh get_mesh();
Void set_mesh(UnityEngine.Mesh);
}
class ParticleCollisionEvent : System.ValueType{
Vector3 get_intersection();
Vector3 get_normal();
Vector3 get_velocity();
Collider get_collider();
}
class ParticlePhysicsExtensions : System.Object{
static Int32 GetSafeCollisionEventSize(UnityEngine.ParticleSystem);
static Int32 GetCollisionEvents(UnityEngine.ParticleSystem,UnityEngine.GameObject,UnityEngine.ParticleCollisionEvent[]);
}
class Particle : System.ValueType{
Vector3 get_position();
Void set_position(UnityEngine.Vector3);
Vector3 get_velocity();
Void set_velocity(UnityEngine.Vector3);
Single get_energy();
Void set_energy(System.Single);
Single get_startEnergy();
Void set_startEnergy(System.Single);
Single get_size();
Void set_size(System.Single);
Single get_rotation();
Void set_rotation(System.Single);
Single get_angularVelocity();
Void set_angularVelocity(System.Single);
Color get_color();
Void set_color(UnityEngine.Color);
}
class ParticleEmitter : UnityEngine.Component{
Boolean get_emit();
Void set_emit(System.Boolean);
Single get_minSize();
Void set_minSize(System.Single);
Single get_maxSize();
Void set_maxSize(System.Single);
Single get_minEnergy();
Void set_minEnergy(System.Single);
Single get_maxEnergy();
Void set_maxEnergy(System.Single);
Single get_minEmission();
Void set_minEmission(System.Single);
Single get_maxEmission();
Void set_maxEmission(System.Single);
Single get_emitterVelocityScale();
Void set_emitterVelocityScale(System.Single);
Vector3 get_worldVelocity();
Void set_worldVelocity(UnityEngine.Vector3);
Vector3 get_localVelocity();
Void set_localVelocity(UnityEngine.Vector3);
Vector3 get_rndVelocity();
Void set_rndVelocity(UnityEngine.Vector3);
Boolean get_useWorldSpace();
Void set_useWorldSpace(System.Boolean);
Boolean get_rndRotation();
Void set_rndRotation(System.Boolean);
Single get_angularVelocity();
Void set_angularVelocity(System.Single);
Single get_rndAngularVelocity();
Void set_rndAngularVelocity(System.Single);
Particle[] get_particles();
Void set_particles(UnityEngine.Particle[]);
Int32 get_particleCount();
Void ClearParticles();
Void Emit();
Void Emit(System.Int32);
Void Emit(UnityEngine.Vector3,UnityEngine.Vector3,System.Single,System.Single,UnityEngine.Color);
Void Emit(UnityEngine.Vector3,UnityEngine.Vector3,System.Single,System.Single,UnityEngine.Color,System.Single,System.Single);
Void Simulate(System.Single);
Boolean get_enabled();
Void set_enabled(System.Boolean);
}
class EllipsoidParticleEmitter : UnityEngine.ParticleEmitter{
}
class MeshParticleEmitter : UnityEngine.ParticleEmitter{
}
class ParticleAnimator : UnityEngine.Component{
this ();
Boolean get_doesAnimateColor();
Void set_doesAnimateColor(System.Boolean);
Vector3 get_worldRotationAxis();
Void set_worldRotationAxis(UnityEngine.Vector3);
Vector3 get_localRotationAxis();
Void set_localRotationAxis(UnityEngine.Vector3);
Single get_sizeGrow();
Void set_sizeGrow(System.Single);
Vector3 get_rndForce();
Void set_rndForce(UnityEngine.Vector3);
Vector3 get_force();
Void set_force(UnityEngine.Vector3);
Single get_damping();
Void set_damping(System.Single);
Boolean get_autodestruct();
Void set_autodestruct(System.Boolean);
Color[] get_colorAnimation();
Void set_colorAnimation(UnityEngine.Color[]);
}
class ParticleRenderMode : System.Enum{
}
class ParticleRenderer : UnityEngine.Renderer{
this ();
ParticleRenderMode get_particleRenderMode();
Void set_particleRenderMode(UnityEngine.ParticleRenderMode);
Single get_lengthScale();
Void set_lengthScale(System.Single);
Single get_velocityScale();
Void set_velocityScale(System.Single);
Single get_cameraVelocityScale();
Void set_cameraVelocityScale(System.Single);
Single get_maxParticleSize();
Void set_maxParticleSize(System.Single);
Int32 get_uvAnimationXTile();
Void set_uvAnimationXTile(System.Int32);
Int32 get_uvAnimationYTile();
Void set_uvAnimationYTile(System.Int32);
Single get_uvAnimationCycles();
Void set_uvAnimationCycles(System.Single);
Int32 get_animatedTextureCount();
Void set_animatedTextureCount(System.Int32);
Single get_maxPartileSize();
Void set_maxPartileSize(System.Single);
Rect[] get_uvTiles();
Void set_uvTiles(UnityEngine.Rect[]);
AnimationCurve get_widthCurve();
Void set_widthCurve(UnityEngine.AnimationCurve);
AnimationCurve get_heightCurve();
Void set_heightCurve(UnityEngine.AnimationCurve);
AnimationCurve get_rotationCurve();
Void set_rotationCurve(UnityEngine.AnimationCurve);
}
class ForceMode : System.Enum{
}
class Physics : System.Object{
this ();
static RaycastHit[] SphereCastAll(UnityEngine.Ray,System.Single,System.Single);
static RaycastHit[] SphereCastAll(UnityEngine.Ray,System.Single);
static RaycastHit[] SphereCastAll(UnityEngine.Ray,System.Single,System.Single,System.Int32);
static Boolean CheckSphere(UnityEngine.Vector3,System.Single,System.Int32);
static Boolean CheckSphere(UnityEngine.Vector3,System.Single);
static Boolean CheckCapsule(UnityEngine.Vector3,UnityEngine.Vector3,System.Single,System.Int32);
static Boolean CheckCapsule(UnityEngine.Vector3,UnityEngine.Vector3,System.Single);
static Single get_penetrationPenaltyForce();
static Void set_penetrationPenaltyForce(System.Single);
static Void IgnoreCollision(UnityEngine.Collider,UnityEngine.Collider,System.Boolean);
static Void IgnoreCollision(UnityEngine.Collider,UnityEngine.Collider);
static Void IgnoreLayerCollision(System.Int32,System.Int32,System.Boolean);
static Void IgnoreLayerCollision(System.Int32,System.Int32);
static Boolean GetIgnoreLayerCollision(System.Int32,System.Int32);
static Vector3 get_gravity();
static Void set_gravity(UnityEngine.Vector3);
static Single get_minPenetrationForPenalty();
static Void set_minPenetrationForPenalty(System.Single);
static Single get_defaultContactOffset();
static Void set_defaultContactOffset(System.Single);
static Single get_bounceThreshold();
static Void set_bounceThreshold(System.Single);
static Single get_bounceTreshold();
static Void set_bounceTreshold(System.Single);
static Single get_sleepVelocity();
static Void set_sleepVelocity(System.Single);
static Single get_sleepAngularVelocity();
static Void set_sleepAngularVelocity(System.Single);
static Single get_maxAngularVelocity();
static Void set_maxAngularVelocity(System.Single);
static Int32 get_solverIterationCount();
static Void set_solverIterationCount(System.Int32);
static Single get_sleepThreshold();
static Void set_sleepThreshold(System.Single);
static Boolean Raycast(UnityEngine.Vector3,UnityEngine.Vector3,System.Single);
static Boolean Raycast(UnityEngine.Vector3,UnityEngine.Vector3);
static Boolean Raycast(UnityEngine.Vector3,UnityEngine.Vector3,System.Single,System.Int32);
static Boolean Raycast(UnityEngine.Ray,System.Single);
static Boolean Raycast(UnityEngine.Ray);
static Boolean Raycast(UnityEngine.Ray,System.Single,System.Int32);
static RaycastHit[] RaycastAll(UnityEngine.Ray,System.Single);
static RaycastHit[] RaycastAll(UnityEngine.Ray);
static RaycastHit[] RaycastAll(UnityEngine.Ray,System.Single,System.Int32);
static RaycastHit[] RaycastAll(UnityEngine.Vector3,UnityEngine.Vector3,System.Single,System.Int32);
static RaycastHit[] RaycastAll(UnityEngine.Vector3,UnityEngine.Vector3,System.Single);
static RaycastHit[] RaycastAll(UnityEngine.Vector3,UnityEngine.Vector3);
static Boolean Linecast(UnityEngine.Vector3,UnityEngine.Vector3);
static Boolean Linecast(UnityEngine.Vector3,UnityEngine.Vector3,System.Int32);
static Collider[] OverlapSphere(UnityEngine.Vector3,System.Single,System.Int32);
static Collider[] OverlapSphere(UnityEngine.Vector3,System.Single);
static Boolean CapsuleCast(UnityEngine.Vector3,UnityEngine.Vector3,System.Single,UnityEngine.Vector3,System.Single);
static Boolean CapsuleCast(UnityEngine.Vector3,UnityEngine.Vector3,System.Single,UnityEngine.Vector3);
static Boolean CapsuleCast(UnityEngine.Vector3,UnityEngine.Vector3,System.Single,UnityEngine.Vector3,System.Single,System.Int32);
static Boolean SphereCast(UnityEngine.Ray,System.Single,System.Single);
static Boolean SphereCast(UnityEngine.Ray,System.Single);
static Boolean SphereCast(UnityEngine.Ray,System.Single,System.Single,System.Int32);
static RaycastHit[] CapsuleCastAll(UnityEngine.Vector3,UnityEngine.Vector3,System.Single,UnityEngine.Vector3,System.Single,System.Int32);
static RaycastHit[] CapsuleCastAll(UnityEngine.Vector3,UnityEngine.Vector3,System.Single,UnityEngine.Vector3,System.Single);
static RaycastHit[] CapsuleCastAll(UnityEngine.Vector3,UnityEngine.Vector3,System.Single,UnityEngine.Vector3);
static RaycastHit[] SphereCastAll(UnityEngine.Vector3,System.Single,UnityEngine.Vector3,System.Single);
static RaycastHit[] SphereCastAll(UnityEngine.Vector3,System.Single,UnityEngine.Vector3);
static RaycastHit[] SphereCastAll(UnityEngine.Vector3,System.Single,UnityEngine.Vector3,System.Single,System.Int32);
}
class RigidbodyConstraints : System.Enum{
}
class Rigidbody : UnityEngine.Component{
this ();
Vector3 get_inertiaTensor();
Void set_inertiaTensor(UnityEngine.Vector3);
Boolean get_detectCollisions();
Void set_detectCollisions(System.Boolean);
Boolean get_useConeFriction();
Void set_useConeFriction(System.Boolean);
Vector3 get_position();
Void set_position(UnityEngine.Vector3);
Quaternion get_rotation();
Void set_rotation(UnityEngine.Quaternion);
Void MovePosition(UnityEngine.Vector3);
Void MoveRotation(UnityEngine.Quaternion);
RigidbodyInterpolation get_interpolation();
Void set_interpolation(UnityEngine.RigidbodyInterpolation);
Void Sleep();
Boolean IsSleeping();
Void WakeUp();
Int32 get_solverIterationCount();
Void set_solverIterationCount(System.Int32);
Single get_sleepVelocity();
Void set_sleepVelocity(System.Single);
Single get_sleepAngularVelocity();
Void set_sleepAngularVelocity(System.Single);
Single get_sleepThreshold();
Void set_sleepThreshold(System.Single);
Single get_maxAngularVelocity();
Void set_maxAngularVelocity(System.Single);
RaycastHit[] SweepTestAll(UnityEngine.Vector3,System.Single);
RaycastHit[] SweepTestAll(UnityEngine.Vector3);
Void SetMaxAngularVelocity(System.Single);
Vector3 get_velocity();
Void set_velocity(UnityEngine.Vector3);
Vector3 get_angularVelocity();
Void set_angularVelocity(UnityEngine.Vector3);
Single get_drag();
Void set_drag(System.Single);
Single get_angularDrag();
Void set_angularDrag(System.Single);
Single get_mass();
Void set_mass(System.Single);
Void SetDensity(System.Single);
Boolean get_useGravity();
Void set_useGravity(System.Boolean);
Single get_maxDepenetrationVelocity();
Void set_maxDepenetrationVelocity(System.Single);
Boolean get_isKinematic();
Void set_isKinematic(System.Boolean);
Boolean get_freezeRotation();
Void set_freezeRotation(System.Boolean);
RigidbodyConstraints get_constraints();
Void set_constraints(UnityEngine.RigidbodyConstraints);
CollisionDetectionMode get_collisionDetectionMode();
Void set_collisionDetectionMode(UnityEngine.CollisionDetectionMode);
Void AddForce(UnityEngine.Vector3,UnityEngine.ForceMode);
Void AddForce(UnityEngine.Vector3);
Void AddForce(System.Single,System.Single,System.Single);
Void AddForce(System.Single,System.Single,System.Single,UnityEngine.ForceMode);
Void AddRelativeForce(UnityEngine.Vector3,UnityEngine.ForceMode);
Void AddRelativeForce(UnityEngine.Vector3);
Void AddRelativeForce(System.Single,System.Single,System.Single);
Void AddRelativeForce(System.Single,System.Single,System.Single,UnityEngine.ForceMode);
Void AddTorque(UnityEngine.Vector3,UnityEngine.ForceMode);
Void AddTorque(UnityEngine.Vector3);
Void AddTorque(System.Single,System.Single,System.Single);
Void AddTorque(System.Single,System.Single,System.Single,UnityEngine.ForceMode);
Void AddRelativeTorque(UnityEngine.Vector3,UnityEngine.ForceMode);
Void AddRelativeTorque(UnityEngine.Vector3);
Void AddRelativeTorque(System.Single,System.Single,System.Single);
Void AddRelativeTorque(System.Single,System.Single,System.Single,UnityEngine.ForceMode);
Void AddForceAtPosition(UnityEngine.Vector3,UnityEngine.Vector3,UnityEngine.ForceMode);
Void AddForceAtPosition(UnityEngine.Vector3,UnityEngine.Vector3);
Void AddExplosionForce(System.Single,UnityEngine.Vector3,System.Single,System.Single,UnityEngine.ForceMode);
Void AddExplosionForce(System.Single,UnityEngine.Vector3,System.Single,System.Single);
Void AddExplosionForce(System.Single,UnityEngine.Vector3,System.Single);
Vector3 ClosestPointOnBounds(UnityEngine.Vector3);
Vector3 GetRelativePointVelocity(UnityEngine.Vector3);
Vector3 GetPointVelocity(UnityEngine.Vector3);
Vector3 get_centerOfMass();
Void set_centerOfMass(UnityEngine.Vector3);
Vector3 get_worldCenterOfMass();
Quaternion get_inertiaTensorRotation();
Void set_inertiaTensorRotation(UnityEngine.Quaternion);
}
class RigidbodyInterpolation : System.Enum{
}
class JointMotor : System.ValueType{
Single get_targetVelocity();
Void set_targetVelocity(System.Single);
Single get_force();
Void set_force(System.Single);
Boolean get_freeSpin();
Void set_freeSpin(System.Boolean);
}
class JointSpring : System.ValueType{
}
class JointLimits : System.ValueType{
Single get_min();
Void set_min(System.Single);
Single get_max();
Void set_max(System.Single);
Single get_bounciness();
Void set_bounciness(System.Single);
Single get_bounceMinVelocity();
Void set_bounceMinVelocity(System.Single);
Single get_contactDistance();
Void set_contactDistance(System.Single);
}
class Joint : UnityEngine.Component{
this ();
Rigidbody get_connectedBody();
Void set_connectedBody(UnityEngine.Rigidbody);
Vector3 get_axis();
Void set_axis(UnityEngine.Vector3);
Vector3 get_anchor();
Void set_anchor(UnityEngine.Vector3);
Vector3 get_connectedAnchor();
Void set_connectedAnchor(UnityEngine.Vector3);
Boolean get_autoConfigureConnectedAnchor();
Void set_autoConfigureConnectedAnchor(System.Boolean);
Single get_breakForce();
Void set_breakForce(System.Single);
Single get_breakTorque();
Void set_breakTorque(System.Single);
Boolean get_enableCollision();
Void set_enableCollision(System.Boolean);
Boolean get_enablePreprocessing();
Void set_enablePreprocessing(System.Boolean);
}
class HingeJoint : UnityEngine.Joint{
this ();
JointMotor get_motor();
Void set_motor(UnityEngine.JointMotor);
JointLimits get_limits();
Void set_limits(UnityEngine.JointLimits);
JointSpring get_spring();
Void set_spring(UnityEngine.JointSpring);
Boolean get_useMotor();
Void set_useMotor(System.Boolean);
Boolean get_useLimits();
Void set_useLimits(System.Boolean);
Boolean get_useSpring();
Void set_useSpring(System.Boolean);
Single get_velocity();
Single get_angle();
}
class SpringJoint : UnityEngine.Joint{
this ();
Single get_spring();
Void set_spring(System.Single);
Single get_damper();
Void set_damper(System.Single);
Single get_minDistance();
Void set_minDistance(System.Single);
Single get_maxDistance();
Void set_maxDistance(System.Single);
}
class FixedJoint : UnityEngine.Joint{
this ();
}
class SoftJointLimit : System.ValueType{
Single get_limit();
Void set_limit(System.Single);
Single get_spring();
Void set_spring(System.Single);
Single get_damper();
Void set_damper(System.Single);
Single get_bounciness();
Void set_bounciness(System.Single);
Single get_contactDistance();
Void set_contactDistance(System.Single);
Single get_bouncyness();
Void set_bouncyness(System.Single);
}
class SoftJointLimitSpring : System.ValueType{
Single get_spring();
Void set_spring(System.Single);
Single get_damper();
Void set_damper(System.Single);
}
class JointDriveMode : System.Enum{
}
class JointProjectionMode : System.Enum{
}
class JointDrive : System.ValueType{
JointDriveMode get_mode();
Void set_mode(UnityEngine.JointDriveMode);
Single get_positionSpring();
Void set_positionSpring(System.Single);
Single get_positionDamper();
Void set_positionDamper(System.Single);
Single get_maximumForce();
Void set_maximumForce(System.Single);
}
class CharacterJoint : UnityEngine.Joint{
this ();
Vector3 get_swingAxis();
Void set_swingAxis(UnityEngine.Vector3);
SoftJointLimitSpring get_twistLimitSpring();
Void set_twistLimitSpring(UnityEngine.SoftJointLimitSpring);
SoftJointLimitSpring get_swingLimitSpring();
Void set_swingLimitSpring(UnityEngine.SoftJointLimitSpring);
SoftJointLimit get_lowTwistLimit();
Void set_lowTwistLimit(UnityEngine.SoftJointLimit);
SoftJointLimit get_highTwistLimit();
Void set_highTwistLimit(UnityEngine.SoftJointLimit);
SoftJointLimit get_swing1Limit();
Void set_swing1Limit(UnityEngine.SoftJointLimit);
SoftJointLimit get_swing2Limit();
Void set_swing2Limit(UnityEngine.SoftJointLimit);
Boolean get_enableProjection();
Void set_enableProjection(System.Boolean);
Single get_projectionDistance();
Void set_projectionDistance(System.Single);
Single get_projectionAngle();
Void set_projectionAngle(System.Single);
}
class ConfigurableJointMotion : System.Enum{
}
class RotationDriveMode : System.Enum{
}
class ConfigurableJoint : UnityEngine.Joint{
this ();
Quaternion get_targetRotation();
Void set_targetRotation(UnityEngine.Quaternion);
Vector3 get_targetAngularVelocity();
Void set_targetAngularVelocity(UnityEngine.Vector3);
RotationDriveMode get_rotationDriveMode();
Void set_rotationDriveMode(UnityEngine.RotationDriveMode);
JointDrive get_angularXDrive();
Void set_angularXDrive(UnityEngine.JointDrive);
JointDrive get_angularYZDrive();
Void set_angularYZDrive(UnityEngine.JointDrive);
JointDrive get_slerpDrive();
Void set_slerpDrive(UnityEngine.JointDrive);
JointProjectionMode get_projectionMode();
Void set_projectionMode(UnityEngine.JointProjectionMode);
Single get_projectionDistance();
Void set_projectionDistance(System.Single);
Single get_projectionAngle();
Void set_projectionAngle(System.Single);
Boolean get_configuredInWorldSpace();
Void set_configuredInWorldSpace(System.Boolean);
Boolean get_swapBodies();
Void set_swapBodies(System.Boolean);
Vector3 get_secondaryAxis();
Void set_secondaryAxis(UnityEngine.Vector3);
ConfigurableJointMotion get_xMotion();
Void set_xMotion(UnityEngine.ConfigurableJointMotion);
ConfigurableJointMotion get_yMotion();
Void set_yMotion(UnityEngine.ConfigurableJointMotion);
ConfigurableJointMotion get_zMotion();
Void set_zMotion(UnityEngine.ConfigurableJointMotion);
ConfigurableJointMotion get_angularXMotion();
Void set_angularXMotion(UnityEngine.ConfigurableJointMotion);
ConfigurableJointMotion get_angularYMotion();
Void set_angularYMotion(UnityEngine.ConfigurableJointMotion);
ConfigurableJointMotion get_angularZMotion();
Void set_angularZMotion(UnityEngine.ConfigurableJointMotion);
SoftJointLimitSpring get_linearLimitSpring();
Void set_linearLimitSpring(UnityEngine.SoftJointLimitSpring);
SoftJointLimitSpring get_angularXLimitSpring();
Void set_angularXLimitSpring(UnityEngine.SoftJointLimitSpring);
SoftJointLimitSpring get_angularYZLimitSpring();
Void set_angularYZLimitSpring(UnityEngine.SoftJointLimitSpring);
SoftJointLimit get_linearLimit();
Void set_linearLimit(UnityEngine.SoftJointLimit);
SoftJointLimit get_lowAngularXLimit();
Void set_lowAngularXLimit(UnityEngine.SoftJointLimit);
SoftJointLimit get_highAngularXLimit();
Void set_highAngularXLimit(UnityEngine.SoftJointLimit);
SoftJointLimit get_angularYLimit();
Void set_angularYLimit(UnityEngine.SoftJointLimit);
SoftJointLimit get_angularZLimit();
Void set_angularZLimit(UnityEngine.SoftJointLimit);
Vector3 get_targetPosition();
Void set_targetPosition(UnityEngine.Vector3);
Vector3 get_targetVelocity();
Void set_targetVelocity(UnityEngine.Vector3);
JointDrive get_xDrive();
Void set_xDrive(UnityEngine.JointDrive);
JointDrive get_yDrive();
Void set_yDrive(UnityEngine.JointDrive);
JointDrive get_zDrive();
Void set_zDrive(UnityEngine.JointDrive);
}
class ConstantForce : UnityEngine.Behaviour{
this ();
Vector3 get_force();
Void set_force(UnityEngine.Vector3);
Vector3 get_relativeForce();
Void set_relativeForce(UnityEngine.Vector3);
Vector3 get_torque();
Void set_torque(UnityEngine.Vector3);
Vector3 get_relativeTorque();
Void set_relativeTorque(UnityEngine.Vector3);
}
class CollisionDetectionMode : System.Enum{
}
class Collider : UnityEngine.Component{
this ();
Boolean get_enabled();
Void set_enabled(System.Boolean);
Rigidbody get_attachedRigidbody();
Boolean get_isTrigger();
Void set_isTrigger(System.Boolean);
Single get_contactOffset();
Void set_contactOffset(System.Single);
PhysicMaterial get_material();
Void set_material(UnityEngine.PhysicMaterial);
Vector3 ClosestPointOnBounds(UnityEngine.Vector3);
PhysicMaterial get_sharedMaterial();
Void set_sharedMaterial(UnityEngine.PhysicMaterial);
Bounds get_bounds();
}
class BoxCollider : UnityEngine.Collider{
this ();
Vector3 get_center();
Void set_center(UnityEngine.Vector3);
Vector3 get_size();
Void set_size(UnityEngine.Vector3);
Vector3 get_extents();
Void set_extents(UnityEngine.Vector3);
}
class SphereCollider : UnityEngine.Collider{
this ();
Vector3 get_center();
Void set_center(UnityEngine.Vector3);
Single get_radius();
Void set_radius(System.Single);
}
class MeshCollider : UnityEngine.Collider{
this ();
Mesh get_sharedMesh();
Void set_sharedMesh(UnityEngine.Mesh);
Boolean get_convex();
Void set_convex(System.Boolean);
Boolean get_smoothSphereCollisions();
Void set_smoothSphereCollisions(System.Boolean);
}
class CapsuleCollider : UnityEngine.Collider{
this ();
Vector3 get_center();
Void set_center(UnityEngine.Vector3);
Single get_radius();
Void set_radius(System.Single);
Single get_height();
Void set_height(System.Single);
Int32 get_direction();
Void set_direction(System.Int32);
}
class WheelFrictionCurve : System.ValueType{
Single get_extremumSlip();
Void set_extremumSlip(System.Single);
Single get_extremumValue();
Void set_extremumValue(System.Single);
Single get_asymptoteSlip();
Void set_asymptoteSlip(System.Single);
Single get_asymptoteValue();
Void set_asymptoteValue(System.Single);
Single get_stiffness();
Void set_stiffness(System.Single);
}
class WheelHit : System.ValueType{
Collider get_collider();
Void set_collider(UnityEngine.Collider);
Vector3 get_point();
Void set_point(UnityEngine.Vector3);
Vector3 get_normal();
Void set_normal(UnityEngine.Vector3);
Vector3 get_forwardDir();
Void set_forwardDir(UnityEngine.Vector3);
Vector3 get_sidewaysDir();
Void set_sidewaysDir(UnityEngine.Vector3);
Single get_force();
Void set_force(System.Single);
Single get_forwardSlip();
Void set_forwardSlip(System.Single);
Single get_sidewaysSlip();
Void set_sidewaysSlip(System.Single);
}
class WheelCollider : UnityEngine.Collider{
this ();
Vector3 get_center();
Void set_center(UnityEngine.Vector3);
Single get_radius();
Void set_radius(System.Single);
Single get_suspensionDistance();
Void set_suspensionDistance(System.Single);
JointSpring get_suspensionSpring();
Void set_suspensionSpring(UnityEngine.JointSpring);
Single get_forceAppPointDistance();
Void set_forceAppPointDistance(System.Single);
Single get_mass();
Void set_mass(System.Single);
Single get_wheelDampingRate();
Void set_wheelDampingRate(System.Single);
WheelFrictionCurve get_forwardFriction();
Void set_forwardFriction(UnityEngine.WheelFrictionCurve);
WheelFrictionCurve get_sidewaysFriction();
Void set_sidewaysFriction(UnityEngine.WheelFrictionCurve);
Single get_motorTorque();
Void set_motorTorque(System.Single);
Single get_brakeTorque();
Void set_brakeTorque(System.Single);
Single get_steerAngle();
Void set_steerAngle(System.Single);
Boolean get_isGrounded();
Void ConfigureVehicleSubsteps(System.Single,System.Int32,System.Int32);
Single get_sprungMass();
Single get_rpm();
}
class RaycastHit : System.ValueType{
Vector3 get_point();
Void set_point(UnityEngine.Vector3);
Vector3 get_normal();
Void set_normal(UnityEngine.Vector3);
Vector3 get_barycentricCoordinate();
Void set_barycentricCoordinate(UnityEngine.Vector3);
Single get_distance();
Void set_distance(System.Single);
Int32 get_triangleIndex();
Vector2 get_textureCoord();
Vector2 get_textureCoord2();
Vector2 get_textureCoord1();
Vector2 get_lightmapCoord();
Collider get_collider();
Rigidbody get_rigidbody();
Transform get_transform();
}
class PhysicMaterialCombine : System.Enum{
}
class PhysicMaterial : UnityEngine.__UnityObject{
this ();
this (System.String);
Single get_dynamicFriction();
Void set_dynamicFriction(System.Single);
Single get_staticFriction();
Void set_staticFriction(System.Single);
Single get_bounciness();
Void set_bounciness(System.Single);
Single get_bouncyness();
Void set_bouncyness(System.Single);
Vector3 get_frictionDirection2();
Void set_frictionDirection2(UnityEngine.Vector3);
Single get_dynamicFriction2();
Void set_dynamicFriction2(System.Single);
Single get_staticFriction2();
Void set_staticFriction2(System.Single);
PhysicMaterialCombine get_frictionCombine();
Void set_frictionCombine(UnityEngine.PhysicMaterialCombine);
PhysicMaterialCombine get_bounceCombine();
Void set_bounceCombine(UnityEngine.PhysicMaterialCombine);
Vector3 get_frictionDirection();
Void set_frictionDirection(UnityEngine.Vector3);
}
class ContactPoint : System.ValueType{
Vector3 get_point();
Vector3 get_normal();
Collider get_thisCollider();
Collider get_otherCollider();
}
class Collision : System.Object{
this ();
Vector3 get_relativeVelocity();
Rigidbody get_rigidbody();
Collider get_collider();
Transform get_transform();
GameObject get_gameObject();
ContactPoint[] get_contacts();
IEnumerator GetEnumerator();
Vector3 get_impactForceSum();
Vector3 get_frictionForceSum();
Component get_other();
}
class CollisionFlags : System.Enum{
}
class ControllerColliderHit : System.Object{
this ();
CharacterController get_controller();
Collider get_collider();
Rigidbody get_rigidbody();
GameObject get_gameObject();
Transform get_transform();
Vector3 get_point();
Vector3 get_normal();
Vector3 get_moveDirection();
Single get_moveLength();
}
class CharacterController : UnityEngine.Collider{
this ();
Boolean SimpleMove(UnityEngine.Vector3);
CollisionFlags Move(UnityEngine.Vector3);
Boolean get_isGrounded();
Vector3 get_velocity();
CollisionFlags get_collisionFlags();
Single get_radius();
Void set_radius(System.Single);
Single get_height();
Void set_height(System.Single);
Vector3 get_center();
Void set_center(UnityEngine.Vector3);
Single get_slopeLimit();
Void set_slopeLimit(System.Single);
Single get_stepOffset();
Void set_stepOffset(System.Single);
Boolean get_detectCollisions();
Void set_detectCollisions(System.Boolean);
}
class ClothSkinningCoefficient : System.ValueType{
}
class ClothSphereColliderPair : System.ValueType{
this (UnityEngine.SphereCollider);
this (UnityEngine.SphereCollider,UnityEngine.SphereCollider);
SphereCollider get_first();
Void set_first(UnityEngine.SphereCollider);
SphereCollider get_second();
Void set_second(UnityEngine.SphereCollider);
}
class Cloth : UnityEngine.Component{
this ();
Single get_sleepThreshold();
Void set_sleepThreshold(System.Single);
Single get_bendingStiffness();
Void set_bendingStiffness(System.Single);
Single get_stretchingStiffness();
Void set_stretchingStiffness(System.Single);
Single get_damping();
Void set_damping(System.Single);
Vector3 get_externalAcceleration();
Void set_externalAcceleration(UnityEngine.Vector3);
Vector3 get_randomAcceleration();
Void set_randomAcceleration(UnityEngine.Vector3);
Boolean get_useGravity();
Void set_useGravity(System.Boolean);
Boolean get_selfCollision();
Void set_selfCollision(System.Boolean);
Boolean get_enabled();
Void set_enabled(System.Boolean);
Vector3[] get_vertices();
Vector3[] get_normals();
Single get_friction();
Void set_friction(System.Single);
Single get_collisionMassScale();
Void set_collisionMassScale(System.Single);
Single get_useContinuousCollision();
Void set_useContinuousCollision(System.Single);
Single get_useVirtualParticles();
Void set_useVirtualParticles(System.Single);
Void ClearTransformMotion();
ClothSkinningCoefficient[] get_coefficients();
Void set_coefficients(UnityEngine.ClothSkinningCoefficient[]);
Single get_worldVelocityScale();
Void set_worldVelocityScale(System.Single);
Single get_worldAccelerationScale();
Void set_worldAccelerationScale(System.Single);
Void SetEnabledFading(System.Boolean,System.Single);
Void SetEnabledFading(System.Boolean);
Boolean get_solverFrequency();
Void set_solverFrequency(System.Boolean);
CapsuleCollider[] get_capsuleColliders();
Void set_capsuleColliders(UnityEngine.CapsuleCollider[]);
ClothSphereColliderPair[] get_sphereColliders();
Void set_sphereColliders(UnityEngine.ClothSphereColliderPair[]);
}
class Physics2D : System.Object{
this ();
static Collider2D OverlapCircle(UnityEngine.Vector2,System.Single,System.Int32,System.Single,System.Single);
static Collider2D OverlapCircle(UnityEngine.Vector2,System.Single,System.Int32,System.Single);
static Collider2D OverlapCircle(UnityEngine.Vector2,System.Single,System.Int32);
static Collider2D OverlapCircle(UnityEngine.Vector2,System.Single);
static Collider2D[] OverlapCircleAll(UnityEngine.Vector2,System.Single,System.Int32,System.Single,System.Single);
static Collider2D[] OverlapCircleAll(UnityEngine.Vector2,System.Single,System.Int32,System.Single);
static Collider2D[] OverlapCircleAll(UnityEngine.Vector2,System.Single,System.Int32);
static Collider2D[] OverlapCircleAll(UnityEngine.Vector2,System.Single);
static Int32 OverlapCircleNonAlloc(UnityEngine.Vector2,System.Single,UnityEngine.Collider2D[],System.Int32,System.Single,System.Single);
static Int32 OverlapCircleNonAlloc(UnityEngine.Vector2,System.Single,UnityEngine.Collider2D[],System.Int32,System.Single);
static Int32 OverlapCircleNonAlloc(UnityEngine.Vector2,System.Single,UnityEngine.Collider2D[],System.Int32);
static Int32 OverlapCircleNonAlloc(UnityEngine.Vector2,System.Single,UnityEngine.Collider2D[]);
static Collider2D OverlapArea(UnityEngine.Vector2,UnityEngine.Vector2,System.Int32,System.Single,System.Single);
static Collider2D OverlapArea(UnityEngine.Vector2,UnityEngine.Vector2,System.Int32,System.Single);
static Collider2D OverlapArea(UnityEngine.Vector2,UnityEngine.Vector2,System.Int32);
static Collider2D OverlapArea(UnityEngine.Vector2,UnityEngine.Vector2);
static Collider2D[] OverlapAreaAll(UnityEngine.Vector2,UnityEngine.Vector2,System.Int32,System.Single,System.Single);
static Collider2D[] OverlapAreaAll(UnityEngine.Vector2,UnityEngine.Vector2,System.Int32,System.Single);
static Collider2D[] OverlapAreaAll(UnityEngine.Vector2,UnityEngine.Vector2,System.Int32);
static Collider2D[] OverlapAreaAll(UnityEngine.Vector2,UnityEngine.Vector2);
static Int32 OverlapAreaNonAlloc(UnityEngine.Vector2,UnityEngine.Vector2,UnityEngine.Collider2D[],System.Int32,System.Single,System.Single);
static Int32 OverlapAreaNonAlloc(UnityEngine.Vector2,UnityEngine.Vector2,UnityEngine.Collider2D[],System.Int32,System.Single);
static Int32 OverlapAreaNonAlloc(UnityEngine.Vector2,UnityEngine.Vector2,UnityEngine.Collider2D[],System.Int32);
static Int32 OverlapAreaNonAlloc(UnityEngine.Vector2,UnityEngine.Vector2,UnityEngine.Collider2D[]);
static RaycastHit2D Raycast(UnityEngine.Vector2,UnityEngine.Vector2,System.Single);
static RaycastHit2D Raycast(UnityEngine.Vector2,UnityEngine.Vector2);
static RaycastHit2D Raycast(UnityEngine.Vector2,UnityEngine.Vector2,System.Single,System.Int32,System.Single,System.Single);
static RaycastHit2D[] RaycastAll(UnityEngine.Vector2,UnityEngine.Vector2,System.Single,System.Int32,System.Single,System.Single);
static RaycastHit2D[] RaycastAll(UnityEngine.Vector2,UnityEngine.Vector2,System.Single,System.Int32,System.Single);
static RaycastHit2D[] RaycastAll(UnityEngine.Vector2,UnityEngine.Vector2,System.Single,System.Int32);
static RaycastHit2D[] RaycastAll(UnityEngine.Vector2,UnityEngine.Vector2,System.Single);
static RaycastHit2D[] RaycastAll(UnityEngine.Vector2,UnityEngine.Vector2);
static Int32 RaycastNonAlloc(UnityEngine.Vector2,UnityEngine.Vector2,UnityEngine.RaycastHit2D[],System.Single,System.Int32,System.Single,System.Single);
static Int32 RaycastNonAlloc(UnityEngine.Vector2,UnityEngine.Vector2,UnityEngine.RaycastHit2D[],System.Single,System.Int32,System.Single);
static Int32 RaycastNonAlloc(UnityEngine.Vector2,UnityEngine.Vector2,UnityEngine.RaycastHit2D[],System.Single,System.Int32);
static Int32 RaycastNonAlloc(UnityEngine.Vector2,UnityEngine.Vector2,UnityEngine.RaycastHit2D[],System.Single);
static Int32 RaycastNonAlloc(UnityEngine.Vector2,UnityEngine.Vector2,UnityEngine.RaycastHit2D[]);
static RaycastHit2D CircleCast(UnityEngine.Vector2,System.Single,UnityEngine.Vector2,System.Single,System.Int32,System.Single);
static RaycastHit2D CircleCast(UnityEngine.Vector2,System.Single,UnityEngine.Vector2,System.Single,System.Int32);
static RaycastHit2D CircleCast(UnityEngine.Vector2,System.Single,UnityEngine.Vector2,System.Single);
static RaycastHit2D CircleCast(UnityEngine.Vector2,System.Single,UnityEngine.Vector2);
static RaycastHit2D CircleCast(UnityEngine.Vector2,System.Single,UnityEngine.Vector2,System.Single,System.Int32,System.Single,System.Single);
static RaycastHit2D[] CircleCastAll(UnityEngine.Vector2,System.Single,UnityEngine.Vector2,System.Single,System.Int32,System.Single,System.Single);
static RaycastHit2D[] CircleCastAll(UnityEngine.Vector2,System.Single,UnityEngine.Vector2,System.Single,System.Int32,System.Single);
static RaycastHit2D[] CircleCastAll(UnityEngine.Vector2,System.Single,UnityEngine.Vector2,System.Single,System.Int32);
static RaycastHit2D[] CircleCastAll(UnityEngine.Vector2,System.Single,UnityEngine.Vector2,System.Single);
static RaycastHit2D[] CircleCastAll(UnityEngine.Vector2,System.Single,UnityEngine.Vector2);
static Int32 CircleCastNonAlloc(UnityEngine.Vector2,System.Single,UnityEngine.Vector2,UnityEngine.RaycastHit2D[],System.Single,System.Int32,System.Single,System.Single);
static Int32 CircleCastNonAlloc(UnityEngine.Vector2,System.Single,UnityEngine.Vector2,UnityEngine.RaycastHit2D[],System.Single,System.Int32,System.Single);
static Int32 CircleCastNonAlloc(UnityEngine.Vector2,System.Single,UnityEngine.Vector2,UnityEngine.RaycastHit2D[],System.Single,System.Int32);
static Int32 CircleCastNonAlloc(UnityEngine.Vector2,System.Single,UnityEngine.Vector2,UnityEngine.RaycastHit2D[],System.Single);
static Int32 CircleCastNonAlloc(UnityEngine.Vector2,System.Single,UnityEngine.Vector2,UnityEngine.RaycastHit2D[]);
static RaycastHit2D BoxCast(UnityEngine.Vector2,UnityEngine.Vector2,System.Single,UnityEngine.Vector2,System.Single,System.Int32,System.Single);
static RaycastHit2D BoxCast(UnityEngine.Vector2,UnityEngine.Vector2,System.Single,UnityEngine.Vector2,System.Single,System.Int32);
static RaycastHit2D BoxCast(UnityEngine.Vector2,UnityEngine.Vector2,System.Single,UnityEngine.Vector2,System.Single);
static RaycastHit2D BoxCast(UnityEngine.Vector2,UnityEngine.Vector2,System.Single,UnityEngine.Vector2);
static RaycastHit2D BoxCast(UnityEngine.Vector2,UnityEngine.Vector2,System.Single,UnityEngine.Vector2,System.Single,System.Int32,System.Single,System.Single);
static RaycastHit2D[] BoxCastAll(UnityEngine.Vector2,UnityEngine.Vector2,System.Single,UnityEngine.Vector2,System.Single,System.Int32,System.Single,System.Single);
static RaycastHit2D[] BoxCastAll(UnityEngine.Vector2,UnityEngine.Vector2,System.Single,UnityEngine.Vector2,System.Single,System.Int32,System.Single);
static RaycastHit2D[] BoxCastAll(UnityEngine.Vector2,UnityEngine.Vector2,System.Single,UnityEngine.Vector2,System.Single,System.Int32);
static RaycastHit2D[] BoxCastAll(UnityEngine.Vector2,UnityEngine.Vector2,System.Single,UnityEngine.Vector2,System.Single);
static RaycastHit2D[] BoxCastAll(UnityEngine.Vector2,UnityEngine.Vector2,System.Single,UnityEngine.Vector2);
static Int32 BoxCastNonAlloc(UnityEngine.Vector2,UnityEngine.Vector2,System.Single,UnityEngine.Vector2,UnityEngine.RaycastHit2D[],System.Single,System.Int32,System.Single,System.Single);
static Int32 BoxCastNonAlloc(UnityEngine.Vector2,UnityEngine.Vector2,System.Single,UnityEngine.Vector2,UnityEngine.RaycastHit2D[],System.Single,System.Int32,System.Single);
static Int32 BoxCastNonAlloc(UnityEngine.Vector2,UnityEngine.Vector2,System.Single,UnityEngine.Vector2,UnityEngine.RaycastHit2D[],System.Single,System.Int32);
static Int32 BoxCastNonAlloc(UnityEngine.Vector2,UnityEngine.Vector2,System.Single,UnityEngine.Vector2,UnityEngine.RaycastHit2D[],System.Single);
static Int32 BoxCastNonAlloc(UnityEngine.Vector2,UnityEngine.Vector2,System.Single,UnityEngine.Vector2,UnityEngine.RaycastHit2D[]);
static RaycastHit2D GetRayIntersection(UnityEngine.Ray,System.Single);
static RaycastHit2D GetRayIntersection(UnityEngine.Ray);
static RaycastHit2D GetRayIntersection(UnityEngine.Ray,System.Single,System.Int32);
static RaycastHit2D[] GetRayIntersectionAll(UnityEngine.Ray,System.Single,System.Int32);
static RaycastHit2D[] GetRayIntersectionAll(UnityEngine.Ray,System.Single);
static RaycastHit2D[] GetRayIntersectionAll(UnityEngine.Ray);
static Int32 GetRayIntersectionNonAlloc(UnityEngine.Ray,UnityEngine.RaycastHit2D[],System.Single,System.Int32);
static Int32 GetRayIntersectionNonAlloc(UnityEngine.Ray,UnityEngine.RaycastHit2D[],System.Single);
static Int32 GetRayIntersectionNonAlloc(UnityEngine.Ray,UnityEngine.RaycastHit2D[]);
static Collider2D OverlapPoint(UnityEngine.Vector2,System.Int32,System.Single,System.Single);
static Collider2D OverlapPoint(UnityEngine.Vector2,System.Int32,System.Single);
static Collider2D OverlapPoint(UnityEngine.Vector2,System.Int32);
static Collider2D OverlapPoint(UnityEngine.Vector2);
static Collider2D[] OverlapPointAll(UnityEngine.Vector2,System.Int32,System.Single,System.Single);
static Collider2D[] OverlapPointAll(UnityEngine.Vector2,System.Int32,System.Single);
static Collider2D[] OverlapPointAll(UnityEngine.Vector2,System.Int32);
static Collider2D[] OverlapPointAll(UnityEngine.Vector2);
static Int32 OverlapPointNonAlloc(UnityEngine.Vector2,UnityEngine.Collider2D[],System.Int32,System.Single,System.Single);
static Int32 OverlapPointNonAlloc(UnityEngine.Vector2,UnityEngine.Collider2D[],System.Int32,System.Single);
static Int32 OverlapPointNonAlloc(UnityEngine.Vector2,UnityEngine.Collider2D[],System.Int32);
static Int32 OverlapPointNonAlloc(UnityEngine.Vector2,UnityEngine.Collider2D[]);
static Int32 get_velocityIterations();
static Void set_velocityIterations(System.Int32);
static Int32 get_positionIterations();
static Void set_positionIterations(System.Int32);
static Vector2 get_gravity();
static Void set_gravity(UnityEngine.Vector2);
static Boolean get_raycastsHitTriggers();
static Void set_raycastsHitTriggers(System.Boolean);
static Boolean get_raycastsStartInColliders();
static Void set_raycastsStartInColliders(System.Boolean);
static Boolean get_deleteStopsCallbacks();
static Void set_deleteStopsCallbacks(System.Boolean);
static Boolean get_changeStopsCallbacks();
static Void set_changeStopsCallbacks(System.Boolean);
static Single get_velocityThreshold();
static Void set_velocityThreshold(System.Single);
static Single get_maxLinearCorrection();
static Void set_maxLinearCorrection(System.Single);
static Single get_maxAngularCorrection();
static Void set_maxAngularCorrection(System.Single);
static Single get_maxTranslationSpeed();
static Void set_maxTranslationSpeed(System.Single);
static Single get_maxRotationSpeed();
static Void set_maxRotationSpeed(System.Single);
static Single get_minPenetrationForPenalty();
static Void set_minPenetrationForPenalty(System.Single);
static Single get_baumgarteScale();
static Void set_baumgarteScale(System.Single);
static Single get_baumgarteTOIScale();
static Void set_baumgarteTOIScale(System.Single);
static Single get_timeToSleep();
static Void set_timeToSleep(System.Single);
static Single get_linearSleepTolerance();
static Void set_linearSleepTolerance(System.Single);
static Single get_angularSleepTolerance();
static Void set_angularSleepTolerance(System.Single);
static Void IgnoreCollision(UnityEngine.Collider2D,UnityEngine.Collider2D,System.Boolean);
static Void IgnoreCollision(UnityEngine.Collider2D,UnityEngine.Collider2D);
static Boolean GetIgnoreCollision(UnityEngine.Collider2D,UnityEngine.Collider2D);
static Void IgnoreLayerCollision(System.Int32,System.Int32,System.Boolean);
static Void IgnoreLayerCollision(System.Int32,System.Int32);
static Boolean GetIgnoreLayerCollision(System.Int32,System.Int32);
static Boolean IsTouching(UnityEngine.Collider2D,UnityEngine.Collider2D);
static Boolean IsTouchingLayers(UnityEngine.Collider2D,System.Int32);
static Boolean IsTouchingLayers(UnityEngine.Collider2D);
static RaycastHit2D Linecast(UnityEngine.Vector2,UnityEngine.Vector2,System.Int32,System.Single);
static RaycastHit2D Linecast(UnityEngine.Vector2,UnityEngine.Vector2,System.Int32);
static RaycastHit2D Linecast(UnityEngine.Vector2,UnityEngine.Vector2);
static RaycastHit2D Linecast(UnityEngine.Vector2,UnityEngine.Vector2,System.Int32,System.Single,System.Single);
static RaycastHit2D[] LinecastAll(UnityEngine.Vector2,UnityEngine.Vector2,System.Int32,System.Single,System.Single);
static RaycastHit2D[] LinecastAll(UnityEngine.Vector2,UnityEngine.Vector2,System.Int32,System.Single);
static RaycastHit2D[] LinecastAll(UnityEngine.Vector2,UnityEngine.Vector2,System.Int32);
static RaycastHit2D[] LinecastAll(UnityEngine.Vector2,UnityEngine.Vector2);
static Int32 LinecastNonAlloc(UnityEngine.Vector2,UnityEngine.Vector2,UnityEngine.RaycastHit2D[],System.Int32,System.Single,System.Single);
static Int32 LinecastNonAlloc(UnityEngine.Vector2,UnityEngine.Vector2,UnityEngine.RaycastHit2D[],System.Int32,System.Single);
static Int32 LinecastNonAlloc(UnityEngine.Vector2,UnityEngine.Vector2,UnityEngine.RaycastHit2D[],System.Int32);
static Int32 LinecastNonAlloc(UnityEngine.Vector2,UnityEngine.Vector2,UnityEngine.RaycastHit2D[]);
static RaycastHit2D Raycast(UnityEngine.Vector2,UnityEngine.Vector2,System.Single,System.Int32,System.Single);
static RaycastHit2D Raycast(UnityEngine.Vector2,UnityEngine.Vector2,System.Single,System.Int32);
}
class RaycastHit2D : System.ValueType{
Vector2 get_centroid();
Void set_centroid(UnityEngine.Vector2);
Vector2 get_point();
Void set_point(UnityEngine.Vector2);
Vector2 get_normal();
Void set_normal(UnityEngine.Vector2);
Single get_distance();
Void set_distance(System.Single);
Single get_fraction();
Void set_fraction(System.Single);
Collider2D get_collider();
Rigidbody2D get_rigidbody();
Transform get_transform();
Int32 CompareTo(UnityEngine.RaycastHit2D);
static Boolean op_Implicit(UnityEngine.RaycastHit2D);
}
class RigidbodyInterpolation2D : System.Enum{
}
class RigidbodySleepMode2D : System.Enum{
}
class CollisionDetectionMode2D : System.Enum{
}
class ForceMode2D : System.Enum{
}
class RigidbodyConstraints2D : System.Enum{
}
class Rigidbody2D : UnityEngine.Component{
this ();
Vector2 GetRelativePoint(UnityEngine.Vector2);
Vector2 GetVector(UnityEngine.Vector2);
Vector2 GetRelativeVector(UnityEngine.Vector2);
Vector2 GetPointVelocity(UnityEngine.Vector2);
Vector2 GetRelativePointVelocity(UnityEngine.Vector2);
Vector2 get_position();
Void set_position(UnityEngine.Vector2);
Single get_rotation();
Void set_rotation(System.Single);
Void MovePosition(UnityEngine.Vector2);
Void MoveRotation(System.Single);
Vector2 get_velocity();
Void set_velocity(UnityEngine.Vector2);
Single get_angularVelocity();
Void set_angularVelocity(System.Single);
Single get_mass();
Void set_mass(System.Single);
Vector2 get_centerOfMass();
Void set_centerOfMass(UnityEngine.Vector2);
Vector2 get_worldCenterOfMass();
Single get_inertia();
Void set_inertia(System.Single);
Single get_drag();
Void set_drag(System.Single);
Single get_angularDrag();
Void set_angularDrag(System.Single);
Single get_gravityScale();
Void set_gravityScale(System.Single);
Boolean get_isKinematic();
Void set_isKinematic(System.Boolean);
Boolean get_fixedAngle();
Void set_fixedAngle(System.Boolean);
Boolean get_freezeRotation();
Void set_freezeRotation(System.Boolean);
RigidbodyConstraints2D get_constraints();
Void set_constraints(UnityEngine.RigidbodyConstraints2D);
Boolean IsSleeping();
Boolean IsAwake();
Void Sleep();
Void WakeUp();
Boolean get_simulated();
Void set_simulated(System.Boolean);
RigidbodyInterpolation2D get_interpolation();
Void set_interpolation(UnityEngine.RigidbodyInterpolation2D);
RigidbodySleepMode2D get_sleepMode();
Void set_sleepMode(UnityEngine.RigidbodySleepMode2D);
CollisionDetectionMode2D get_collisionDetectionMode();
Void set_collisionDetectionMode(UnityEngine.CollisionDetectionMode2D);
Boolean IsTouching(UnityEngine.Collider2D);
Boolean IsTouchingLayers(System.Int32);
Boolean IsTouchingLayers();
Void AddForce(UnityEngine.Vector2,UnityEngine.ForceMode2D);
Void AddForce(UnityEngine.Vector2);
Void AddRelativeForce(UnityEngine.Vector2,UnityEngine.ForceMode2D);
Void AddRelativeForce(UnityEngine.Vector2);
Void AddForceAtPosition(UnityEngine.Vector2,UnityEngine.Vector2,UnityEngine.ForceMode2D);
Void AddForceAtPosition(UnityEngine.Vector2,UnityEngine.Vector2);
Void AddTorque(System.Single,UnityEngine.ForceMode2D);
Void AddTorque(System.Single);
Vector2 GetPoint(UnityEngine.Vector2);
}
class Collider2D : UnityEngine.Behaviour{
this ();
Boolean get_isTrigger();
Void set_isTrigger(System.Boolean);
Boolean get_usedByEffector();
Void set_usedByEffector(System.Boolean);
Vector2 get_offset();
Void set_offset(UnityEngine.Vector2);
Rigidbody2D get_attachedRigidbody();
Int32 get_shapeCount();
Bounds get_bounds();
Boolean OverlapPoint(UnityEngine.Vector2);
PhysicsMaterial2D get_sharedMaterial();
Void set_sharedMaterial(UnityEngine.PhysicsMaterial2D);
Boolean IsTouching(UnityEngine.Collider2D);
Boolean IsTouchingLayers(System.Int32);
Boolean IsTouchingLayers();
}
class CircleCollider2D : UnityEngine.Collider2D{
this ();
Single get_radius();
Void set_radius(System.Single);
Vector2 get_center();
Void set_center(UnityEngine.Vector2);
}
class BoxCollider2D : UnityEngine.Collider2D{
this ();
Vector2 get_size();
Void set_size(UnityEngine.Vector2);
Vector2 get_center();
Void set_center(UnityEngine.Vector2);
}
class EdgeCollider2D : UnityEngine.Collider2D{
this ();
Void Reset();
Int32 get_edgeCount();
Int32 get_pointCount();
Vector2[] get_points();
Void set_points(UnityEngine.Vector2[]);
}
class PolygonCollider2D : UnityEngine.Collider2D{
this ();
Vector2[] get_points();
Void set_points(UnityEngine.Vector2[]);
Vector2[] GetPath(System.Int32);
Void SetPath(System.Int32,UnityEngine.Vector2[]);
Int32 get_pathCount();
Void set_pathCount(System.Int32);
Int32 GetTotalPointCount();
Void CreatePrimitive(System.Int32,UnityEngine.Vector2,UnityEngine.Vector2);
Void CreatePrimitive(System.Int32,UnityEngine.Vector2);
Void CreatePrimitive(System.Int32);
}
class ContactPoint2D : System.ValueType{
Vector2 get_point();
Vector2 get_normal();
Collider2D get_collider();
Collider2D get_otherCollider();
}
class Collision2D : System.Object{
this ();
Boolean get_enabled();
Rigidbody2D get_rigidbody();
Collider2D get_collider();
Transform get_transform();
GameObject get_gameObject();
ContactPoint2D[] get_contacts();
Vector2 get_relativeVelocity();
}
class JointLimitState2D : System.Enum{
}
class JointAngleLimits2D : System.ValueType{
Single get_min();
Void set_min(System.Single);
Single get_max();
Void set_max(System.Single);
}
class JointTranslationLimits2D : System.ValueType{
Single get_min();
Void set_min(System.Single);
Single get_max();
Void set_max(System.Single);
}
class JointMotor2D : System.ValueType{
Single get_motorSpeed();
Void set_motorSpeed(System.Single);
Single get_maxMotorTorque();
Void set_maxMotorTorque(System.Single);
}
class JointSuspension2D : System.ValueType{
Single get_dampingRatio();
Void set_dampingRatio(System.Single);
Single get_frequency();
Void set_frequency(System.Single);
Single get_angle();
Void set_angle(System.Single);
}
class Joint2D : UnityEngine.Behaviour{
this ();
Rigidbody2D get_connectedBody();
Void set_connectedBody(UnityEngine.Rigidbody2D);
Boolean get_collideConnected();
Void set_collideConnected(System.Boolean);
Boolean get_enableCollision();
Void set_enableCollision(System.Boolean);
}
class AnchoredJoint2D : UnityEngine.Joint2D{
this ();
Vector2 get_anchor();
Void set_anchor(UnityEngine.Vector2);
Vector2 get_connectedAnchor();
Void set_connectedAnchor(UnityEngine.Vector2);
}
class SpringJoint2D : UnityEngine.AnchoredJoint2D{
this ();
Single get_distance();
Void set_distance(System.Single);
Single get_dampingRatio();
Void set_dampingRatio(System.Single);
Single get_frequency();
Void set_frequency(System.Single);
Vector2 GetReactionForce(System.Single);
Single GetReactionTorque(System.Single);
}
class DistanceJoint2D : UnityEngine.AnchoredJoint2D{
this ();
Single get_distance();
Void set_distance(System.Single);
Boolean get_maxDistanceOnly();
Void set_maxDistanceOnly(System.Boolean);
Vector2 GetReactionForce(System.Single);
Single GetReactionTorque(System.Single);
}
class HingeJoint2D : UnityEngine.AnchoredJoint2D{
this ();
Boolean get_useMotor();
Void set_useMotor(System.Boolean);
Boolean get_useLimits();
Void set_useLimits(System.Boolean);
JointMotor2D get_motor();
Void set_motor(UnityEngine.JointMotor2D);
JointAngleLimits2D get_limits();
Void set_limits(UnityEngine.JointAngleLimits2D);
JointLimitState2D get_limitState();
Single get_referenceAngle();
Single get_jointAngle();
Single get_jointSpeed();
Vector2 GetReactionForce(System.Single);
Single GetReactionTorque(System.Single);
Single GetMotorTorque(System.Single);
}
class SliderJoint2D : UnityEngine.AnchoredJoint2D{
this ();
Single get_angle();
Void set_angle(System.Single);
Boolean get_useMotor();
Void set_useMotor(System.Boolean);
Boolean get_useLimits();
Void set_useLimits(System.Boolean);
JointMotor2D get_motor();
Void set_motor(UnityEngine.JointMotor2D);
JointTranslationLimits2D get_limits();
Void set_limits(UnityEngine.JointTranslationLimits2D);
JointLimitState2D get_limitState();
Single get_referenceAngle();
Single get_jointTranslation();
Single get_jointSpeed();
Single GetMotorForce(System.Single);
}
class WheelJoint2D : UnityEngine.AnchoredJoint2D{
this ();
JointSuspension2D get_suspension();
Void set_suspension(UnityEngine.JointSuspension2D);
Boolean get_useMotor();
Void set_useMotor(System.Boolean);
JointMotor2D get_motor();
Void set_motor(UnityEngine.JointMotor2D);
Single get_jointTranslation();
Single get_jointSpeed();
Single GetMotorTorque(System.Single);
}
class PhysicsMaterial2D : UnityEngine.__UnityObject{
this ();
this (System.String);
Single get_bounciness();
Void set_bounciness(System.Single);
Single get_friction();
Void set_friction(System.Single);
}
class PhysicsUpdateBehaviour2D : UnityEngine.Behaviour{
this ();
}
class ConstantForce2D : UnityEngine.PhysicsUpdateBehaviour2D{
this ();
Vector2 get_force();
Void set_force(UnityEngine.Vector2);
Vector2 get_relativeForce();
Void set_relativeForce(UnityEngine.Vector2);
Single get_torque();
Void set_torque(System.Single);
}
class EffectorSelection2D : System.Enum{
}
class EffectorForceMode2D : System.Enum{
}
class Effector2D : UnityEngine.Behaviour{
this ();
Boolean get_useColliderMask();
Void set_useColliderMask(System.Boolean);
Int32 get_colliderMask();
Void set_colliderMask(System.Int32);
}
class AreaEffector2D : UnityEngine.Effector2D{
this ();
Single get_forceDirection();
Void set_forceDirection(System.Single);
Single get_forceAngle();
Void set_forceAngle(System.Single);
Boolean get_useGlobalAngle();
Void set_useGlobalAngle(System.Boolean);
Single get_forceMagnitude();
Void set_forceMagnitude(System.Single);
Single get_forceVariation();
Void set_forceVariation(System.Single);
Single get_drag();
Void set_drag(System.Single);
Single get_angularDrag();
Void set_angularDrag(System.Single);
EffectorSelection2D get_forceTarget();
Void set_forceTarget(UnityEngine.EffectorSelection2D);
}
class PointEffector2D : UnityEngine.Effector2D{
this ();
Single get_forceMagnitude();
Void set_forceMagnitude(System.Single);
Single get_forceVariation();
Void set_forceVariation(System.Single);
Single get_distanceScale();
Void set_distanceScale(System.Single);
Single get_drag();
Void set_drag(System.Single);
Single get_angularDrag();
Void set_angularDrag(System.Single);
EffectorSelection2D get_forceSource();
Void set_forceSource(UnityEngine.EffectorSelection2D);
EffectorSelection2D get_forceTarget();
Void set_forceTarget(UnityEngine.EffectorSelection2D);
EffectorForceMode2D get_forceMode();
Void set_forceMode(UnityEngine.EffectorForceMode2D);
}
class PlatformEffector2D : UnityEngine.Effector2D{
this ();
Boolean get_oneWay();
Void set_oneWay(System.Boolean);
Boolean get_sideFriction();
Void set_sideFriction(System.Boolean);
Boolean get_sideBounce();
Void set_sideBounce(System.Boolean);
Boolean get_useOneWay();
Void set_useOneWay(System.Boolean);
Boolean get_useSideFriction();
Void set_useSideFriction(System.Boolean);
Boolean get_useSideBounce();
Void set_useSideBounce(System.Boolean);
Single get_sideAngleVariance();
Void set_sideAngleVariance(System.Single);
}
class SurfaceEffector2D : UnityEngine.Effector2D{
this ();
Single get_speed();
Void set_speed(System.Single);
Single get_speedVariation();
Void set_speedVariation(System.Single);
Single get_forceScale();
Void set_forceScale(System.Single);
Boolean get_useContactForce();
Void set_useContactForce(System.Boolean);
Boolean get_useFriction();
Void set_useFriction(System.Boolean);
Boolean get_useBounce();
Void set_useBounce(System.Boolean);
}
class ObstacleAvoidanceType : System.Enum{
}
class NavMeshAgent : UnityEngine.Behaviour{
this ();
Int32 get_areaMask();
Void set_areaMask(System.Int32);
Single get_speed();
Void set_speed(System.Single);
Single get_angularSpeed();
Void set_angularSpeed(System.Single);
Single get_acceleration();
Void set_acceleration(System.Single);
Boolean get_updatePosition();
Void set_updatePosition(System.Boolean);
Boolean get_updateRotation();
Void set_updateRotation(System.Boolean);
Single get_radius();
Void set_radius(System.Single);
Single get_height();
Void set_height(System.Single);
ObstacleAvoidanceType get_obstacleAvoidanceType();
Void set_obstacleAvoidanceType(UnityEngine.ObstacleAvoidanceType);
Int32 get_avoidancePriority();
Void set_avoidancePriority(System.Int32);
Boolean get_isOnNavMesh();
Boolean SetDestination(UnityEngine.Vector3);
Vector3 get_destination();
Void set_destination(UnityEngine.Vector3);
Single get_stoppingDistance();
Void set_stoppingDistance(System.Single);
Vector3 get_velocity();
Void set_velocity(UnityEngine.Vector3);
Vector3 get_nextPosition();
Void set_nextPosition(UnityEngine.Vector3);
Vector3 get_steeringTarget();
Vector3 get_desiredVelocity();
Single get_remainingDistance();
Single get_baseOffset();
Void set_baseOffset(System.Single);
Boolean get_isOnOffMeshLink();
Void ActivateCurrentOffMeshLink(System.Boolean);
OffMeshLinkData get_currentOffMeshLinkData();
OffMeshLinkData get_nextOffMeshLinkData();
Void CompleteOffMeshLink();
Boolean get_autoTraverseOffMeshLink();
Void set_autoTraverseOffMeshLink(System.Boolean);
Boolean get_autoBraking();
Void set_autoBraking(System.Boolean);
Boolean get_autoRepath();
Void set_autoRepath(System.Boolean);
Boolean get_hasPath();
Boolean get_pathPending();
Boolean get_isPathStale();
NavMeshPathStatus get_pathStatus();
Vector3 get_pathEndPosition();
Boolean Warp(UnityEngine.Vector3);
Void Move(UnityEngine.Vector3);
Void Stop();
Void Stop(System.Boolean);
Void Resume();
Void ResetPath();
Boolean SetPath(UnityEngine.NavMeshPath);
NavMeshPath get_path();
Void set_path(UnityEngine.NavMeshPath);
Boolean CalculatePath(UnityEngine.Vector3,UnityEngine.NavMeshPath);
Void SetLayerCost(System.Int32,System.Single);
Single GetLayerCost(System.Int32);
Void SetAreaCost(System.Int32,System.Single);
Single GetAreaCost(System.Int32);
Int32 get_walkableMask();
Void set_walkableMask(System.Int32);
}
class NavMeshHit : System.ValueType{
Vector3 get_position();
Void set_position(UnityEngine.Vector3);
Vector3 get_normal();
Void set_normal(UnityEngine.Vector3);
Single get_distance();
Void set_distance(System.Single);
Int32 get_mask();
Void set_mask(System.Int32);
Boolean get_hit();
Void set_hit(System.Boolean);
}
class NavMeshTriangulation : System.ValueType{
Int32[] get_layers();
}
class NavMesh : System.Object{
this ();
static Boolean CalculatePath(UnityEngine.Vector3,UnityEngine.Vector3,System.Int32,UnityEngine.NavMeshPath);
static Void SetLayerCost(System.Int32,System.Single);
static Single GetLayerCost(System.Int32);
static Int32 GetNavMeshLayerFromName(System.String);
static Void SetAreaCost(System.Int32,System.Single);
static Single GetAreaCost(System.Int32);
static Int32 GetAreaFromName(System.String);
static NavMeshTriangulation CalculateTriangulation();
static Void AddOffMeshLinks();
static Void RestoreNavMesh();
static Single get_avoidancePredictionTime();
static Void set_avoidancePredictionTime(System.Single);
static Int32 get_pathfindingIterationsPerFrame();
static Void set_pathfindingIterationsPerFrame(System.Int32);
}
class NavMeshObstacleShape : System.Enum{
}
class NavMeshObstacle : UnityEngine.Behaviour{
this ();
Single get_height();
Void set_height(System.Single);
Single get_radius();
Void set_radius(System.Single);
Vector3 get_velocity();
Void set_velocity(UnityEngine.Vector3);
Boolean get_carving();
Void set_carving(System.Boolean);
Boolean get_carveOnlyStationary();
Void set_carveOnlyStationary(System.Boolean);
Single get_carvingMoveThreshold();
Void set_carvingMoveThreshold(System.Single);
Single get_carvingTimeToStationary();
Void set_carvingTimeToStationary(System.Single);
NavMeshObstacleShape get_shape();
Void set_shape(UnityEngine.NavMeshObstacleShape);
Vector3 get_center();
Void set_center(UnityEngine.Vector3);
Vector3 get_size();
Void set_size(UnityEngine.Vector3);
}
class NavMeshPathStatus : System.Enum{
}
class NavMeshPath : System.Object{
this ();
Int32 GetCornersNonAlloc(UnityEngine.Vector3[]);
Void ClearCorners();
Vector3[] get_corners();
NavMeshPathStatus get_status();
}
class OffMeshLinkType : System.Enum{
}
class OffMeshLinkData : System.ValueType{
Boolean get_valid();
Boolean get_activated();
OffMeshLinkType get_linkType();
Vector3 get_startPos();
Vector3 get_endPos();
OffMeshLink get_offMeshLink();
}
class OffMeshLink : UnityEngine.Component{
this ();
Boolean get_activated();
Void set_activated(System.Boolean);
Boolean get_occupied();
Single get_costOverride();
Void set_costOverride(System.Single);
Boolean get_biDirectional();
Void set_biDirectional(System.Boolean);
Void UpdatePositions();
Int32 get_navMeshLayer();
Void set_navMeshLayer(System.Int32);
Int32 get_area();
Void set_area(System.Int32);
Boolean get_autoUpdatePositions();
Void set_autoUpdatePositions(System.Boolean);
Transform get_startTransform();
Void set_startTransform(UnityEngine.Transform);
Transform get_endTransform();
Void set_endTransform(UnityEngine.Transform);
}
class AudioSpeakerMode : System.Enum{
}
class AudioDataLoadState : System.Enum{
}
class AudioConfiguration : System.ValueType{
}
class AudioSettings : System.Object{
static class AudioConfigurationChangeHandler : System.MulticastDelegate{
this (System.Object,System.IntPtr);
Void Invoke(System.Boolean);
IAsyncResult BeginInvoke(System.Boolean,System.AsyncCallback,System.Object);
Void EndInvoke(System.IAsyncResult);
}
this ();
static Void add_OnAudioConfigurationChanged(UnityEngine.AudioSettings.AudioConfigurationChangeHandler);
static Void remove_OnAudioConfigurationChanged(UnityEngine.AudioSettings.AudioConfigurationChangeHandler);
static AudioSpeakerMode get_driverCapabilities();
static AudioSpeakerMode get_driverCaps();
static AudioSpeakerMode get_speakerMode();
static Void set_speakerMode(UnityEngine.AudioSpeakerMode);
static Double get_dspTime();
static Int32 get_outputSampleRate();
static Void set_outputSampleRate(System.Int32);
static Void SetDSPBufferSize(System.Int32,System.Int32);
static AudioConfiguration GetConfiguration();
static Boolean Reset(UnityEngine.AudioConfiguration);
}
class AudioType : System.Enum{
}
class AudioCompressionFormat : System.Enum{
}
class AudioClipLoadType : System.Enum{
}
class AudioClip : UnityEngine.__UnityObject{
static class PCMReaderCallback : System.MulticastDelegate{
this (System.Object,System.IntPtr);
Void Invoke(System.Single[]);
IAsyncResult BeginInvoke(System.Single[],System.AsyncCallback,System.Object);
Void EndInvoke(System.IAsyncResult);
}
static class PCMSetPositionCallback : System.MulticastDelegate{
this (System.Object,System.IntPtr);
Void Invoke(System.Int32);
IAsyncResult BeginInvoke(System.Int32,System.AsyncCallback,System.Object);
Void EndInvoke(System.IAsyncResult);
}
this ();
Single get_length();
Int32 get_samples();
Int32 get_channels();
Int32 get_frequency();
Boolean get_isReadyToPlay();
AudioClipLoadType get_loadType();
Boolean LoadAudioData();
Boolean UnloadAudioData();
Boolean get_preloadAudioData();
AudioDataLoadState get_loadState();
Boolean get_loadInBackground();
Boolean GetData(System.Single[],System.Int32);
Boolean SetData(System.Single[],System.Int32);
static AudioClip Create(System.String,System.Int32,System.Int32,System.Int32,System.Boolean,System.Boolean);
static AudioClip Create(System.String,System.Int32,System.Int32,System.Int32,System.Boolean,System.Boolean,UnityEngine.AudioClip.PCMReaderCallback);
static AudioClip Create(System.String,System.Int32,System.Int32,System.Int32,System.Boolean,System.Boolean,UnityEngine.AudioClip.PCMReaderCallback,UnityEngine.AudioClip.PCMSetPositionCallback);
static AudioClip Create(System.String,System.Int32,System.Int32,System.Int32,System.Boolean);
static AudioClip Create(System.String,System.Int32,System.Int32,System.Int32,System.Boolean,UnityEngine.AudioClip.PCMReaderCallback);
static AudioClip Create(System.String,System.Int32,System.Int32,System.Int32,System.Boolean,UnityEngine.AudioClip.PCMReaderCallback,UnityEngine.AudioClip.PCMSetPositionCallback);
}
class AudioVelocityUpdateMode : System.Enum{
}
class AudioListener : UnityEngine.Behaviour{
this ();
static Single get_volume();
static Void set_volume(System.Single);
static Boolean get_pause();
static Void set_pause(System.Boolean);
AudioVelocityUpdateMode get_velocityUpdateMode();
Void set_velocityUpdateMode(UnityEngine.AudioVelocityUpdateMode);
static Single[] GetOutputData(System.Int32,System.Int32);
static Void GetOutputData(System.Single[],System.Int32);
static Single[] GetSpectrumData(System.Int32,System.Int32,UnityEngine.FFTWindow);
static Void GetSpectrumData(System.Single[],System.Int32,UnityEngine.FFTWindow);
}
class FFTWindow : System.Enum{
}
class AudioRolloffMode : System.Enum{
}
class AudioSource : UnityEngine.Behaviour{
this ();
Void set_maxDistance(System.Single);
AudioRolloffMode get_rolloffMode();
Void set_rolloffMode(UnityEngine.AudioRolloffMode);
Single[] GetOutputData(System.Int32,System.Int32);
Void GetOutputData(System.Single[],System.Int32);
Single[] GetSpectrumData(System.Int32,System.Int32,UnityEngine.FFTWindow);
Void GetSpectrumData(System.Single[],System.Int32,UnityEngine.FFTWindow);
Single get_minVolume();
Void set_minVolume(System.Single);
Single get_maxVolume();
Void set_maxVolume(System.Single);
Single get_rolloffFactor();
Void set_rolloffFactor(System.Single);
Single get_volume();
Void set_volume(System.Single);
Single get_pitch();
Void set_pitch(System.Single);
Single get_time();
Void set_time(System.Single);
Int32 get_timeSamples();
Void set_timeSamples(System.Int32);
AudioClip get_clip();
Void set_clip(UnityEngine.AudioClip);
AudioMixerGroup get_outputAudioMixerGroup();
Void set_outputAudioMixerGroup(UnityEngine.Audio.AudioMixerGroup);
Void Play(System.UInt64);
Void Play();
Void PlayDelayed(System.Single);
Void PlayScheduled(System.Double);
Void SetScheduledStartTime(System.Double);
Void SetScheduledEndTime(System.Double);
Void Stop();
Void Pause();
Void UnPause();
Boolean get_isPlaying();
Void PlayOneShot(UnityEngine.AudioClip,System.Single);
Void PlayOneShot(UnityEngine.AudioClip);
static Void PlayClipAtPoint(UnityEngine.AudioClip,UnityEngine.Vector3);
static Void PlayClipAtPoint(UnityEngine.AudioClip,UnityEngine.Vector3,System.Single);
Boolean get_loop();
Void set_loop(System.Boolean);
Boolean get_ignoreListenerVolume();
Void set_ignoreListenerVolume(System.Boolean);
Boolean get_playOnAwake();
Void set_playOnAwake(System.Boolean);
Boolean get_ignoreListenerPause();
Void set_ignoreListenerPause(System.Boolean);
AudioVelocityUpdateMode get_velocityUpdateMode();
Void set_velocityUpdateMode(UnityEngine.AudioVelocityUpdateMode);
Single get_panStereo();
Void set_panStereo(System.Single);
Single get_spatialBlend();
Void set_spatialBlend(System.Single);
Single get_reverbZoneMix();
Void set_reverbZoneMix(System.Single);
Single get_panLevel();
Void set_panLevel(System.Single);
Single get_pan();
Void set_pan(System.Single);
Boolean get_bypassEffects();
Void set_bypassEffects(System.Boolean);
Boolean get_bypassListenerEffects();
Void set_bypassListenerEffects(System.Boolean);
Boolean get_bypassReverbZones();
Void set_bypassReverbZones(System.Boolean);
Single get_dopplerLevel();
Void set_dopplerLevel(System.Single);
Single get_spread();
Void set_spread(System.Single);
Int32 get_priority();
Void set_priority(System.Int32);
Boolean get_mute();
Void set_mute(System.Boolean);
Single get_minDistance();
Void set_minDistance(System.Single);
Single get_maxDistance();
}
class AudioReverbPreset : System.Enum{
}
class AudioReverbZone : UnityEngine.Behaviour{
this ();
Single get_minDistance();
Void set_minDistance(System.Single);
Single get_maxDistance();
Void set_maxDistance(System.Single);
AudioReverbPreset get_reverbPreset();
Void set_reverbPreset(UnityEngine.AudioReverbPreset);
Int32 get_room();
Void set_room(System.Int32);
Int32 get_roomHF();
Void set_roomHF(System.Int32);
Int32 get_roomLF();
Void set_roomLF(System.Int32);
Single get_decayTime();
Void set_decayTime(System.Single);
Single get_decayHFRatio();
Void set_decayHFRatio(System.Single);
Int32 get_reflections();
Void set_reflections(System.Int32);
Single get_reflectionsDelay();
Void set_reflectionsDelay(System.Single);
Int32 get_reverb();
Void set_reverb(System.Int32);
Single get_reverbDelay();
Void set_reverbDelay(System.Single);
Single get_HFReference();
Void set_HFReference(System.Single);
Single get_LFReference();
Void set_LFReference(System.Single);
Single get_roomRolloffFactor();
Void set_roomRolloffFactor(System.Single);
Single get_diffusion();
Void set_diffusion(System.Single);
Single get_density();
Void set_density(System.Single);
}
class AudioLowPassFilter : UnityEngine.Behaviour{
this ();
Single get_cutoffFrequency();
Void set_cutoffFrequency(System.Single);
Single get_lowpassResonanceQ();
Void set_lowpassResonanceQ(System.Single);
Single get_lowpassResonaceQ();
Void set_lowpassResonaceQ(System.Single);
}
class AudioHighPassFilter : UnityEngine.Behaviour{
this ();
Single get_cutoffFrequency();
Void set_cutoffFrequency(System.Single);
Single get_highpassResonanceQ();
Void set_highpassResonanceQ(System.Single);
Single get_highpassResonaceQ();
Void set_highpassResonaceQ(System.Single);
}
class AudioDistortionFilter : UnityEngine.Behaviour{
this ();
Single get_distortionLevel();
Void set_distortionLevel(System.Single);
}
class AudioEchoFilter : UnityEngine.Behaviour{
this ();
Single get_delay();
Void set_delay(System.Single);
Single get_decayRatio();
Void set_decayRatio(System.Single);
Single get_dryMix();
Void set_dryMix(System.Single);
Single get_wetMix();
Void set_wetMix(System.Single);
}
class AudioChorusFilter : UnityEngine.Behaviour{
this ();
Single get_dryMix();
Void set_dryMix(System.Single);
Single get_wetMix1();
Void set_wetMix1(System.Single);
Single get_wetMix2();
Void set_wetMix2(System.Single);
Single get_wetMix3();
Void set_wetMix3(System.Single);
Single get_delay();
Void set_delay(System.Single);
Single get_rate();
Void set_rate(System.Single);
Single get_depth();
Void set_depth(System.Single);
Single get_feedback();
Void set_feedback(System.Single);
}
class AudioReverbFilter : UnityEngine.Behaviour{
this ();
AudioReverbPreset get_reverbPreset();
Void set_reverbPreset(UnityEngine.AudioReverbPreset);
Single get_dryLevel();
Void set_dryLevel(System.Single);
Single get_room();
Void set_room(System.Single);
Single get_roomHF();
Void set_roomHF(System.Single);
Single get_roomRolloff();
Void set_roomRolloff(System.Single);
Single get_decayTime();
Void set_decayTime(System.Single);
Single get_decayHFRatio();
Void set_decayHFRatio(System.Single);
Single get_reflectionsLevel();
Void set_reflectionsLevel(System.Single);
Single get_reflectionsDelay();
Void set_reflectionsDelay(System.Single);
Single get_reverbLevel();
Void set_reverbLevel(System.Single);
Single get_reverbDelay();
Void set_reverbDelay(System.Single);
Single get_diffusion();
Void set_diffusion(System.Single);
Single get_density();
Void set_density(System.Single);
Single get_hfReference();
Void set_hfReference(System.Single);
Single get_roomLF();
Void set_roomLF(System.Single);
Single get_lfReference();
Void set_lfReference(System.Single);
Single get_lFReference();
Void set_lFReference(System.Single);
}
class Microphone : System.Object{
this ();
static AudioClip Start(System.String,System.Boolean,System.Int32,System.Int32);
static Void End(System.String);
static String[] get_devices();
static Boolean IsRecording(System.String);
static Int32 GetPosition(System.String);
}
class MovieTexture : UnityEngine.Texture{
this ();
Void Play();
Void Stop();
Void Pause();
AudioClip get_audioClip();
Boolean get_loop();
Void set_loop(System.Boolean);
Boolean get_isPlaying();
Boolean get_isReadyToPlay();
Single get_duration();
}
class WebCamFlags : System.Enum{
}
class WebCamDevice : System.ValueType{
String get_name();
Boolean get_isFrontFacing();
}
class WebCamTexture : UnityEngine.Texture{
this (System.String,System.Int32,System.Int32,System.Int32);
this (System.String,System.Int32,System.Int32);
this (System.String);
this (System.Int32,System.Int32,System.Int32);
this (System.Int32,System.Int32);
this ();
Void Play();
Void Pause();
Void Stop();
Boolean get_isPlaying();
String get_deviceName();
Void set_deviceName(System.String);
Single get_requestedFPS();
Void set_requestedFPS(System.Single);
Int32 get_requestedWidth();
Void set_requestedWidth(System.Int32);
Int32 get_requestedHeight();
Void set_requestedHeight(System.Int32);
Boolean get_isReadable();
Void MarkNonReadable();
static WebCamDevice[] get_devices();
Color GetPixel(System.Int32,System.Int32);
Color[] GetPixels();
Color[] GetPixels(System.Int32,System.Int32,System.Int32,System.Int32);
Color32[] GetPixels32(UnityEngine.Color32[]);
Color32[] GetPixels32();
Int32 get_videoRotationAngle();
Boolean get_videoVerticallyMirrored();
Boolean get_didUpdateThisFrame();
}
class AnimationClipPair : System.Object{
this ();
}
class AnimatorOverrideController : UnityEngine.RuntimeAnimatorController{
this ();
RuntimeAnimatorController get_runtimeAnimatorController();
Void set_runtimeAnimatorController(UnityEngine.RuntimeAnimatorController);
AnimationClip get_Item(System.String);
Void set_Item(System.String,UnityEngine.AnimationClip);
AnimationClip get_Item(UnityEngine.AnimationClip);
Void set_Item(UnityEngine.AnimationClip,UnityEngine.AnimationClip);
AnimationClipPair[] get_clips();
Void set_clips(UnityEngine.AnimationClipPair[]);
}
class WrapMode : System.Enum{
}
class AnimationEvent : System.Object{
this ();
String get_data();
Void set_data(System.String);
String get_stringParameter();
Void set_stringParameter(System.String);
Single get_floatParameter();
Void set_floatParameter(System.Single);
Int32 get_intParameter();
Void set_intParameter(System.Int32);
__UnityObject get_objectReferenceParameter();
Void set_objectReferenceParameter(UnityEngine.__UnityObject);
String get_functionName();
Void set_functionName(System.String);
Single get_time();
Void set_time(System.Single);
SendMessageOptions get_messageOptions();
Void set_messageOptions(UnityEngine.SendMessageOptions);
Boolean get_isFiredByLegacy();
Boolean get_isFiredByAnimator();
AnimationState get_animationState();
AnimatorStateInfo get_animatorStateInfo();
AnimatorClipInfo get_animatorClipInfo();
}
class AnimationClip : UnityEngine.Motion{
this ();
Void SampleAnimation(UnityEngine.GameObject,System.Single);
Single get_length();
Single get_frameRate();
Void set_frameRate(System.Single);
Void SetCurve(System.String,System.Type,System.String,UnityEngine.AnimationCurve);
Void EnsureQuaternionContinuity();
Void ClearCurves();
WrapMode get_wrapMode();
Void set_wrapMode(UnityEngine.WrapMode);
Bounds get_localBounds();
Void set_localBounds(UnityEngine.Bounds);
Boolean get_legacy();
Void set_legacy(System.Boolean);
Boolean get_humanMotion();
Void AddEvent(UnityEngine.AnimationEvent);
AnimationEvent[] get_events();
Void set_events(UnityEngine.AnimationEvent[]);
}
class Keyframe : System.ValueType{
this (System.Single,System.Single);
this (System.Single,System.Single,System.Single,System.Single);
Single get_time();
Void set_time(System.Single);
Single get_value();
Void set_value(System.Single);
Single get_inTangent();
Void set_inTangent(System.Single);
Single get_outTangent();
Void set_outTangent(System.Single);
Int32 get_tangentMode();
Void set_tangentMode(System.Int32);
}
class AnimationCurve : System.Object{
this (UnityEngine.Keyframe[]);
this ();
Single Evaluate(System.Single);
Keyframe[] get_keys();
Void set_keys(UnityEngine.Keyframe[]);
Int32 AddKey(System.Single,System.Single);
Int32 AddKey(UnityEngine.Keyframe);
Int32 MoveKey(System.Int32,UnityEngine.Keyframe);
Void RemoveKey(System.Int32);
Keyframe get_Item(System.Int32);
Int32 get_length();
Void SmoothTangents(System.Int32,System.Single);
static AnimationCurve Linear(System.Single,System.Single,System.Single,System.Single);
static AnimationCurve EaseInOut(System.Single,System.Single,System.Single,System.Single);
WrapMode get_preWrapMode();
Void set_preWrapMode(UnityEngine.WrapMode);
WrapMode get_postWrapMode();
Void set_postWrapMode(UnityEngine.WrapMode);
}
class PlayMode : System.Enum{
}
class QueueMode : System.Enum{
}
class AnimationBlendMode : System.Enum{
}
class AnimationPlayMode : System.Enum{
}
class AnimationCullingType : System.Enum{
}
class Animation : UnityEngine.Behaviour{
this ();
AnimationClip get_clip();
Void set_clip(UnityEngine.AnimationClip);
Boolean get_playAutomatically();
Void set_playAutomatically(System.Boolean);
WrapMode get_wrapMode();
Void set_wrapMode(UnityEngine.WrapMode);
Void Stop();
Void Stop(System.String);
Void Rewind(System.String);
Void Rewind();
Void Sample();
Boolean get_isPlaying();
Boolean IsPlaying(System.String);
AnimationState get_Item(System.String);
Boolean Play();
Boolean Play(UnityEngine.PlayMode);
Boolean Play(System.String,UnityEngine.PlayMode);
Boolean Play(System.String);
Void CrossFade(System.String,System.Single,UnityEngine.PlayMode);
Void CrossFade(System.String,System.Single);
Void CrossFade(System.String);
Void Blend(System.String,System.Single,System.Single);
Void Blend(System.String,System.Single);
Void Blend(System.String);
AnimationState CrossFadeQueued(System.String,System.Single,UnityEngine.QueueMode,UnityEngine.PlayMode);
AnimationState CrossFadeQueued(System.String,System.Single,UnityEngine.QueueMode);
AnimationState CrossFadeQueued(System.String,System.Single);
AnimationState CrossFadeQueued(System.String);
AnimationState PlayQueued(System.String,UnityEngine.QueueMode,UnityEngine.PlayMode);
AnimationState PlayQueued(System.String,UnityEngine.QueueMode);
AnimationState PlayQueued(System.String);
Void AddClip(UnityEngine.AnimationClip,System.String);
Void AddClip(UnityEngine.AnimationClip,System.String,System.Int32,System.Int32,System.Boolean);
Void AddClip(UnityEngine.AnimationClip,System.String,System.Int32,System.Int32);
Void RemoveClip(UnityEngine.AnimationClip);
Void RemoveClip(System.String);
Int32 GetClipCount();
Boolean Play(UnityEngine.AnimationPlayMode);
Boolean Play(System.String,UnityEngine.AnimationPlayMode);
Void SyncLayer(System.Int32);
IEnumerator GetEnumerator();
AnimationClip GetClip(System.String);
Boolean get_animatePhysics();
Void set_animatePhysics(System.Boolean);
Boolean get_animateOnlyIfVisible();
Void set_animateOnlyIfVisible(System.Boolean);
AnimationCullingType get_cullingType();
Void set_cullingType(UnityEngine.AnimationCullingType);
Bounds get_localBounds();
Void set_localBounds(UnityEngine.Bounds);
}
class AnimationState : UnityEngine.TrackedReference{
this ();
Boolean get_enabled();
Void set_enabled(System.Boolean);
Single get_weight();
Void set_weight(System.Single);
WrapMode get_wrapMode();
Void set_wrapMode(UnityEngine.WrapMode);
Single get_time();
Void set_time(System.Single);
Single get_normalizedTime();
Void set_normalizedTime(System.Single);
Single get_speed();
Void set_speed(System.Single);
Single get_normalizedSpeed();
Void set_normalizedSpeed(System.Single);
Single get_length();
Int32 get_layer();
Void set_layer(System.Int32);
AnimationClip get_clip();
Void AddMixingTransform(UnityEngine.Transform,System.Boolean);
Void AddMixingTransform(UnityEngine.Transform);
Void RemoveMixingTransform(UnityEngine.Transform);
String get_name();
Void set_name(System.String);
AnimationBlendMode get_blendMode();
Void set_blendMode(UnityEngine.AnimationBlendMode);
}
class AvatarTarget : System.Enum{
}
class AvatarIKGoal : System.Enum{
}
class AvatarIKHint : System.Enum{
}
class AnimatorControllerParameterType : System.Enum{
}
class AnimatorRecorderMode : System.Enum{
}
class AnimationInfo : System.ValueType{
}
class AnimatorClipInfo : System.ValueType{
AnimationClip get_clip();
Single get_weight();
}
class AnimatorCullingMode : System.Enum{
}
class AnimatorUpdateMode : System.Enum{
}
class AnimatorStateInfo : System.ValueType{
Boolean IsName(System.String);
Int32 get_fullPathHash();
Int32 get_nameHash();
Int32 get_shortNameHash();
Single get_normalizedTime();
Single get_length();
Int32 get_tagHash();
Boolean IsTag(System.String);
Boolean get_loop();
}
class AnimatorTransitionInfo : System.ValueType{
Boolean IsName(System.String);
Boolean IsUserName(System.String);
Int32 get_fullPathHash();
Int32 get_nameHash();
Int32 get_userNameHash();
Single get_normalizedTime();
Boolean get_anyState();
}
class MatchTargetWeightMask : System.ValueType{
this (UnityEngine.Vector3,System.Single);
Vector3 get_positionXYZWeight();
Void set_positionXYZWeight(UnityEngine.Vector3);
Single get_rotationWeight();
Void set_rotationWeight(System.Single);
}
class Animator : UnityEngine.Behaviour{
this ();
Void Update(System.Single);
Void Rebind();
Void ApplyBuiltinRootMotion();
Boolean get_logWarnings();
Void set_logWarnings(System.Boolean);
Boolean get_fireEvents();
Void set_fireEvents(System.Boolean);
Vector3 GetVector(System.String);
Vector3 GetVector(System.Int32);
Void SetVector(System.String,UnityEngine.Vector3);
Void SetVector(System.Int32,UnityEngine.Vector3);
Quaternion GetQuaternion(System.String);
Quaternion GetQuaternion(System.Int32);
Void SetQuaternion(System.String,UnityEngine.Quaternion);
Void SetQuaternion(System.Int32,UnityEngine.Quaternion);
Void PlayInFixedTime(System.String);
Void PlayInFixedTime(System.String,System.Int32,System.Single);
Void PlayInFixedTime(System.Int32,System.Int32,System.Single);
Void PlayInFixedTime(System.Int32,System.Int32);
Void PlayInFixedTime(System.Int32);
Void Play(System.String,System.Int32);
Void Play(System.String);
Void Play(System.String,System.Int32,System.Single);
Void Play(System.Int32,System.Int32,System.Single);
Void Play(System.Int32,System.Int32);
Void Play(System.Int32);
Void SetTarget(UnityEngine.AvatarTarget,System.Single);
Vector3 get_targetPosition();
Quaternion get_targetRotation();
Boolean IsControlled(UnityEngine.Transform);
Transform GetBoneTransform(UnityEngine.HumanBodyBones);
AnimatorCullingMode get_cullingMode();
Void set_cullingMode(UnityEngine.AnimatorCullingMode);
Void StartPlayback();
Void StopPlayback();
Single get_playbackTime();
Void set_playbackTime(System.Single);
Void StartRecording(System.Int32);
Void StopRecording();
Single get_recorderStartTime();
Void set_recorderStartTime(System.Single);
Single get_recorderStopTime();
Void set_recorderStopTime(System.Single);
AnimatorRecorderMode get_recorderMode();
RuntimeAnimatorController get_runtimeAnimatorController();
Void set_runtimeAnimatorController(UnityEngine.RuntimeAnimatorController);
Boolean HasState(System.Int32,System.Int32);
static Int32 StringToHash(System.String);
Avatar get_avatar();
Void set_avatar(UnityEngine.Avatar);
Boolean get_layersAffectMassCenter();
Void set_layersAffectMassCenter(System.Boolean);
Single get_leftFeetBottomHeight();
Single get_rightFeetBottomHeight();
Void SetIKRotationWeight(UnityEngine.AvatarIKGoal,System.Single);
Vector3 GetIKHintPosition(UnityEngine.AvatarIKHint);
Void SetIKHintPosition(UnityEngine.AvatarIKHint,UnityEngine.Vector3);
Single GetIKHintPositionWeight(UnityEngine.AvatarIKHint);
Void SetIKHintPositionWeight(UnityEngine.AvatarIKHint,System.Single);
Void SetLookAtPosition(UnityEngine.Vector3);
Void SetLookAtWeight(System.Single,System.Single,System.Single,System.Single);
Void SetLookAtWeight(System.Single,System.Single,System.Single);
Void SetLookAtWeight(System.Single,System.Single);
Void SetLookAtWeight(System.Single);
Void SetLookAtWeight(System.Single,System.Single,System.Single,System.Single,System.Single);
Boolean get_stabilizeFeet();
Void set_stabilizeFeet(System.Boolean);
Int32 get_layerCount();
String GetLayerName(System.Int32);
Int32 GetLayerIndex(System.String);
Single GetLayerWeight(System.Int32);
Void SetLayerWeight(System.Int32,System.Single);
AnimatorStateInfo GetCurrentAnimatorStateInfo(System.Int32);
AnimatorStateInfo GetNextAnimatorStateInfo(System.Int32);
AnimatorTransitionInfo GetAnimatorTransitionInfo(System.Int32);
AnimatorClipInfo[] GetCurrentAnimationClipState(System.Int32);
AnimatorClipInfo[] GetNextAnimationClipState(System.Int32);
AnimatorClipInfo[] GetCurrentAnimatorClipInfo(System.Int32);
AnimatorClipInfo[] GetNextAnimatorClipInfo(System.Int32);
Boolean IsInTransition(System.Int32);
AnimatorControllerParameter[] get_parameters();
Single get_feetPivotActive();
Void set_feetPivotActive(System.Single);
Single get_pivotWeight();
Vector3 get_pivotPosition();
Void MatchTarget(UnityEngine.Vector3,UnityEngine.Quaternion,UnityEngine.AvatarTarget,UnityEngine.MatchTargetWeightMask,System.Single,System.Single);
Void MatchTarget(UnityEngine.Vector3,UnityEngine.Quaternion,UnityEngine.AvatarTarget,UnityEngine.MatchTargetWeightMask,System.Single);
Void InterruptMatchTarget(System.Boolean);
Void InterruptMatchTarget();
Boolean get_isMatchingTarget();
Single get_speed();
Void set_speed(System.Single);
Void ForceStateNormalizedTime(System.Single);
Void CrossFadeInFixedTime(System.String,System.Single,System.Int32);
Void CrossFadeInFixedTime(System.String,System.Single);
Void CrossFadeInFixedTime(System.String,System.Single,System.Int32,System.Single);
Void CrossFadeInFixedTime(System.Int32,System.Single,System.Int32,System.Single);
Void CrossFadeInFixedTime(System.Int32,System.Single,System.Int32);
Void CrossFadeInFixedTime(System.Int32,System.Single);
Void CrossFade(System.String,System.Single,System.Int32);
Void CrossFade(System.String,System.Single);
Void CrossFade(System.String,System.Single,System.Int32,System.Single);
Void CrossFade(System.Int32,System.Single,System.Int32,System.Single);
Void CrossFade(System.Int32,System.Single,System.Int32);
Void CrossFade(System.Int32,System.Single);
Void PlayInFixedTime(System.String,System.Int32);
Boolean get_isOptimizable();
Boolean get_isHuman();
Boolean get_hasRootMotion();
Single get_humanScale();
Single GetFloat(System.String);
Single GetFloat(System.Int32);
Void SetFloat(System.String,System.Single);
Void SetFloat(System.String,System.Single,System.Single,System.Single);
Void SetFloat(System.Int32,System.Single);
Void SetFloat(System.Int32,System.Single,System.Single,System.Single);
Boolean GetBool(System.String);
Boolean GetBool(System.Int32);
Void SetBool(System.String,System.Boolean);
Void SetBool(System.Int32,System.Boolean);
Int32 GetInteger(System.String);
Int32 GetInteger(System.Int32);
Void SetInteger(System.String,System.Int32);
Void SetInteger(System.Int32,System.Int32);
Void SetTrigger(System.String);
Void SetTrigger(System.Int32);
Void ResetTrigger(System.String);
Void ResetTrigger(System.Int32);
Boolean IsParameterControlledByCurve(System.String);
Boolean IsParameterControlledByCurve(System.Int32);
Vector3 get_deltaPosition();
Quaternion get_deltaRotation();
Vector3 get_velocity();
Vector3 get_angularVelocity();
Vector3 get_rootPosition();
Void set_rootPosition(UnityEngine.Vector3);
Quaternion get_rootRotation();
Void set_rootRotation(UnityEngine.Quaternion);
Boolean get_applyRootMotion();
Void set_applyRootMotion(System.Boolean);
Boolean get_linearVelocityBlending();
Void set_linearVelocityBlending(System.Boolean);
Boolean get_animatePhysics();
Void set_animatePhysics(System.Boolean);
AnimatorUpdateMode get_updateMode();
Void set_updateMode(UnityEngine.AnimatorUpdateMode);
Boolean get_hasTransformHierarchy();
Single get_gravityWeight();
Vector3 get_bodyPosition();
Void set_bodyPosition(UnityEngine.Vector3);
Quaternion get_bodyRotation();
Void set_bodyRotation(UnityEngine.Quaternion);
Vector3 GetIKPosition(UnityEngine.AvatarIKGoal);
Void SetIKPosition(UnityEngine.AvatarIKGoal,UnityEngine.Vector3);
Quaternion GetIKRotation(UnityEngine.AvatarIKGoal);
Void SetIKRotation(UnityEngine.AvatarIKGoal,UnityEngine.Quaternion);
Single GetIKPositionWeight(UnityEngine.AvatarIKGoal);
Void SetIKPositionWeight(UnityEngine.AvatarIKGoal,System.Single);
Single GetIKRotationWeight(UnityEngine.AvatarIKGoal);
}
class AnimatorControllerParameter : System.Object{
this ();
String get_name();
Void set_name(System.String);
Int32 get_nameHash();
AnimatorControllerParameterType get_type();
Void set_type(UnityEngine.AnimatorControllerParameterType);
Single get_defaultFloat();
Void set_defaultFloat(System.Single);
Int32 get_defaultInt();
Void set_defaultInt(System.Int32);
Boolean get_defaultBool();
Void set_defaultBool(System.Boolean);
Boolean Equals(System.Object);
Int32 GetHashCode();
}
class AnimatorUtility : System.Object{
this ();
static Void OptimizeTransformHierarchy(UnityEngine.GameObject,System.String[]);
static Void DeoptimizeTransformHierarchy(UnityEngine.GameObject);
}
class SkeletonBone : System.ValueType{
}
class HumanLimit : System.ValueType{
Boolean get_useDefaultValues();
Void set_useDefaultValues(System.Boolean);
Vector3 get_min();
Void set_min(UnityEngine.Vector3);
Vector3 get_max();
Void set_max(UnityEngine.Vector3);
Vector3 get_center();
Void set_center(UnityEngine.Vector3);
Single get_axisLength();
Void set_axisLength(System.Single);
}
class HumanBone : System.ValueType{
String get_boneName();
Void set_boneName(System.String);
String get_humanName();
Void set_humanName(System.String);
}
class HumanDescription : System.ValueType{
Single get_upperArmTwist();
Void set_upperArmTwist(System.Single);
Single get_lowerArmTwist();
Void set_lowerArmTwist(System.Single);
Single get_upperLegTwist();
Void set_upperLegTwist(System.Single);
Single get_lowerLegTwist();
Void set_lowerLegTwist(System.Single);
Single get_armStretch();
Void set_armStretch(System.Single);
Single get_legStretch();
Void set_legStretch(System.Single);
Single get_feetSpacing();
Void set_feetSpacing(System.Single);
}
class AvatarBuilder : System.Object{
this ();
static Avatar BuildHumanAvatar(UnityEngine.GameObject,UnityEngine.HumanDescription);
static Avatar BuildGenericAvatar(UnityEngine.GameObject,System.String);
}
class RuntimeAnimatorController : UnityEngine.__UnityObject{
this ();
AnimationClip[] get_animationClips();
}
class HumanBodyBones : System.Enum{
}
class Avatar : UnityEngine.__UnityObject{
this ();
Boolean get_isValid();
Boolean get_isHuman();
}
class HumanTrait : UnityEngine.__UnityObject{
this ();
static Int32 get_MuscleCount();
static String[] get_MuscleName();
static Int32 get_BoneCount();
static String[] get_BoneName();
static Int32 MuscleFromBone(System.Int32,System.Int32);
static Int32 BoneFromMuscle(System.Int32);
static Boolean RequiredBone(System.Int32);
static Int32 get_RequiredBoneCount();
static Single GetMuscleDefaultMin(System.Int32);
static Single GetMuscleDefaultMax(System.Int32);
}
class TreePrototype : System.Object{
this ();
GameObject get_prefab();
Void set_prefab(UnityEngine.GameObject);
Single get_bendFactor();
Void set_bendFactor(System.Single);
}
class DetailRenderMode : System.Enum{
}
class DetailPrototype : System.Object{
this ();
GameObject get_prototype();
Void set_prototype(UnityEngine.GameObject);
Texture2D get_prototypeTexture();
Void set_prototypeTexture(UnityEngine.Texture2D);
Single get_minWidth();
Void set_minWidth(System.Single);
Single get_maxWidth();
Void set_maxWidth(System.Single);
Single get_minHeight();
Void set_minHeight(System.Single);
Single get_maxHeight();
Void set_maxHeight(System.Single);
Single get_noiseSpread();
Void set_noiseSpread(System.Single);
Single get_bendFactor();
Void set_bendFactor(System.Single);
Color get_healthyColor();
Void set_healthyColor(UnityEngine.Color);
Color get_dryColor();
Void set_dryColor(UnityEngine.Color);
DetailRenderMode get_renderMode();
Void set_renderMode(UnityEngine.DetailRenderMode);
Boolean get_usePrototypeMesh();
Void set_usePrototypeMesh(System.Boolean);
}
class SplatPrototype : System.Object{
this ();
Texture2D get_texture();
Void set_texture(UnityEngine.Texture2D);
Texture2D get_normalMap();
Void set_normalMap(UnityEngine.Texture2D);
Vector2 get_tileSize();
Void set_tileSize(UnityEngine.Vector2);
Vector2 get_tileOffset();
Void set_tileOffset(UnityEngine.Vector2);
Color get_specular();
Void set_specular(UnityEngine.Color);
Single get_metallic();
Void set_metallic(System.Single);
Single get_smoothness();
Void set_smoothness(System.Single);
}
class TreeInstance : System.ValueType{
}
class TerrainData : UnityEngine.__UnityObject{
this ();
Int32 get_baseMapResolution();
Void set_baseMapResolution(System.Int32);
Texture2D[] get_alphamapTextures();
SplatPrototype[] get_splatPrototypes();
Void set_splatPrototypes(UnityEngine.SplatPrototype[]);
Int32 get_heightmapWidth();
Int32 get_heightmapHeight();
Int32 get_heightmapResolution();
Void set_heightmapResolution(System.Int32);
Vector3 get_heightmapScale();
Vector3 get_size();
Void set_size(UnityEngine.Vector3);
Single get_thickness();
Void set_thickness(System.Single);
Single GetHeight(System.Int32,System.Int32);
Single GetInterpolatedHeight(System.Single,System.Single);
Single GetSteepness(System.Single,System.Single);
Vector3 GetInterpolatedNormal(System.Single,System.Single);
Single get_wavingGrassStrength();
Void set_wavingGrassStrength(System.Single);
Single get_wavingGrassAmount();
Void set_wavingGrassAmount(System.Single);
Single get_wavingGrassSpeed();
Void set_wavingGrassSpeed(System.Single);
Color get_wavingGrassTint();
Void set_wavingGrassTint(UnityEngine.Color);
Int32 get_detailWidth();
Int32 get_detailHeight();
Void SetDetailResolution(System.Int32,System.Int32);
Int32 get_detailResolution();
Void RefreshPrototypes();
DetailPrototype[] get_detailPrototypes();
Void set_detailPrototypes(UnityEngine.DetailPrototype[]);
Int32[] GetSupportedLayers(System.Int32,System.Int32,System.Int32,System.Int32);
TreeInstance[] get_treeInstances();
Void set_treeInstances(UnityEngine.TreeInstance[]);
TreeInstance GetTreeInstance(System.Int32);
Void SetTreeInstance(System.Int32,UnityEngine.TreeInstance);
Int32 get_treeInstanceCount();
TreePrototype[] get_treePrototypes();
Void set_treePrototypes(UnityEngine.TreePrototype[]);
Int32 get_alphamapLayers();
Int32 get_alphamapResolution();
Void set_alphamapResolution(System.Int32);
Int32 get_alphamapWidth();
Int32 get_alphamapHeight();
}
class TerrainRenderFlags : System.Enum{
}
class Terrain : UnityEngine.Behaviour{
static class MaterialType : System.Enum{
}
this ();
TerrainRenderFlags get_editorRenderFlags();
Void set_editorRenderFlags(UnityEngine.TerrainRenderFlags);
TerrainData get_terrainData();
Void set_terrainData(UnityEngine.TerrainData);
Single get_treeDistance();
Void set_treeDistance(System.Single);
Single get_treeBillboardDistance();
Void set_treeBillboardDistance(System.Single);
Single get_treeCrossFadeLength();
Void set_treeCrossFadeLength(System.Single);
Int32 get_treeMaximumFullLODCount();
Void set_treeMaximumFullLODCount(System.Int32);
Single get_detailObjectDistance();
Void set_detailObjectDistance(System.Single);
Single get_detailObjectDensity();
Void set_detailObjectDensity(System.Single);
Boolean get_collectDetailPatches();
Void set_collectDetailPatches(System.Boolean);
Single get_heightmapPixelError();
Void set_heightmapPixelError(System.Single);
Int32 get_heightmapMaximumLOD();
Void set_heightmapMaximumLOD(System.Int32);
Single get_basemapDistance();
Void set_basemapDistance(System.Single);
Single get_splatmapDistance();
Void set_splatmapDistance(System.Single);
Int32 get_lightmapIndex();
Void set_lightmapIndex(System.Int32);
Boolean get_castShadows();
Void set_castShadows(System.Boolean);
ReflectionProbeUsage get_reflectionProbeUsage();
Void set_reflectionProbeUsage(UnityEngine.Rendering.ReflectionProbeUsage);
MaterialType get_materialType();
Void set_materialType(UnityEngine.Terrain.MaterialType);
Material get_materialTemplate();
Void set_materialTemplate(UnityEngine.Material);
Color get_legacySpecular();
Void set_legacySpecular(UnityEngine.Color);
Single get_legacyShininess();
Void set_legacyShininess(System.Single);
Boolean get_drawHeightmap();
Void set_drawHeightmap(System.Boolean);
Boolean get_drawTreesAndFoliage();
Void set_drawTreesAndFoliage(System.Boolean);
Single SampleHeight(UnityEngine.Vector3);
Void AddTreeInstance(UnityEngine.TreeInstance);
Void SetNeighbors(UnityEngine.Terrain,UnityEngine.Terrain,UnityEngine.Terrain,UnityEngine.Terrain);
Vector3 GetPosition();
Void Flush();
Boolean get_bakeLightProbesForTrees();
Void set_bakeLightProbesForTrees(System.Boolean);
static Terrain get_activeTerrain();
static Terrain[] get_activeTerrains();
static GameObject CreateTerrainGameObject(UnityEngine.TerrainData);
}
class Tree : UnityEngine.Component{
this ();
ScriptableObject get_data();
Void set_data(UnityEngine.ScriptableObject);
Boolean get_hasSpeedTreeWind();
}
class TextAlignment : System.Enum{
}
class TextAnchor : System.Enum{
}
class HorizontalWrapMode : System.Enum{
}
class VerticalWrapMode : System.Enum{
}
class GUIText : UnityEngine.GUIElement{
this ();
String get_text();
Void set_text(System.String);
Material get_material();
Void set_material(UnityEngine.Material);
Vector2 get_pixelOffset();
Void set_pixelOffset(UnityEngine.Vector2);
Font get_font();
Void set_font(UnityEngine.Font);
TextAlignment get_alignment();
Void set_alignment(UnityEngine.TextAlignment);
TextAnchor get_anchor();
Void set_anchor(UnityEngine.TextAnchor);
Single get_lineSpacing();
Void set_lineSpacing(System.Single);
Single get_tabSize();
Void set_tabSize(System.Single);
Int32 get_fontSize();
Void set_fontSize(System.Int32);
FontStyle get_fontStyle();
Void set_fontStyle(UnityEngine.FontStyle);
Boolean get_richText();
Void set_richText(System.Boolean);
Color get_color();
Void set_color(UnityEngine.Color);
}
class TextMesh : UnityEngine.Component{
this ();
String get_text();
Void set_text(System.String);
Font get_font();
Void set_font(UnityEngine.Font);
Int32 get_fontSize();
Void set_fontSize(System.Int32);
FontStyle get_fontStyle();
Void set_fontStyle(UnityEngine.FontStyle);
Single get_offsetZ();
Void set_offsetZ(System.Single);
TextAlignment get_alignment();
Void set_alignment(UnityEngine.TextAlignment);
TextAnchor get_anchor();
Void set_anchor(UnityEngine.TextAnchor);
Single get_characterSize();
Void set_characterSize(System.Single);
Single get_lineSpacing();
Void set_lineSpacing(System.Single);
Single get_tabSize();
Void set_tabSize(System.Single);
Boolean get_richText();
Void set_richText(System.Boolean);
Color get_color();
Void set_color(UnityEngine.Color);
}
class CharacterInfo : System.ValueType{
Int32 get_advance();
Int32 get_glyphWidth();
Int32 get_glyphHeight();
Int32 get_bearing();
Int32 get_minY();
Int32 get_maxY();
Int32 get_minX();
Int32 get_maxX();
Vector2 get_uvBottomLeft();
Vector2 get_uvBottomRight();
Vector2 get_uvTopRight();
Vector2 get_uvTopLeft();
}
class Font : UnityEngine.__UnityObject{
static class FontTextureRebuildCallback : System.MulticastDelegate{
this (System.Object,System.IntPtr);
Void Invoke();
IAsyncResult BeginInvoke(System.AsyncCallback,System.Object);
Void EndInvoke(System.IAsyncResult);
}
this ();
this (System.String);
static String[] GetOSInstalledFontNames();
static Font CreateDynamicFontFromOSFont(System.String,System.Int32);
static Font CreateDynamicFontFromOSFont(System.String[],System.Int32);
Material get_material();
Void set_material(UnityEngine.Material);
Boolean HasCharacter(System.Char);
String[] get_fontNames();
Void set_fontNames(System.String[]);
CharacterInfo[] get_characterInfo();
Void set_characterInfo(UnityEngine.CharacterInfo[]);
Void RequestCharactersInTexture(System.String,System.Int32,UnityEngine.FontStyle);
Void RequestCharactersInTexture(System.String,System.Int32);
Void RequestCharactersInTexture(System.String);
FontTextureRebuildCallback get_textureRebuildCallback();
Void set_textureRebuildCallback(UnityEngine.Font.FontTextureRebuildCallback);
static Int32 GetMaxVertsForString(System.String);
Boolean get_dynamic();
Int32 get_ascent();
Int32 get_lineHeight();
Int32 get_fontSize();
}
class UICharInfo : System.ValueType{
}
class UILineInfo : System.ValueType{
}
class TextGenerator : System.Object{
this ();
this (System.Int32);
Rect get_rectExtents();
Int32 get_vertexCount();
UIVertex[] GetVerticesArray();
Int32 get_characterCount();
Int32 get_characterCountVisible();
UICharInfo[] GetCharactersArray();
Int32 get_lineCount();
UILineInfo[] GetLinesArray();
Int32 get_fontSizeUsedForBestFit();
Void Invalidate();
Single GetPreferredWidth(System.String,UnityEngine.TextGenerationSettings);
Single GetPreferredHeight(System.String,UnityEngine.TextGenerationSettings);
Boolean Populate(System.String,UnityEngine.TextGenerationSettings);
}
class RenderMode : System.Enum{
}
class Canvas : UnityEngine.Behaviour{
static class WillRenderCanvases : System.MulticastDelegate{
this (System.Object,System.IntPtr);
Void Invoke();
IAsyncResult BeginInvoke(System.AsyncCallback,System.Object);
Void EndInvoke(System.IAsyncResult);
}
this ();
static Void add_willRenderCanvases(UnityEngine.Canvas.WillRenderCanvases);
static Void remove_willRenderCanvases(UnityEngine.Canvas.WillRenderCanvases);
RenderMode get_renderMode();
Void set_renderMode(UnityEngine.RenderMode);
Boolean get_isRootCanvas();
Camera get_worldCamera();
Void set_worldCamera(UnityEngine.Camera);
Rect get_pixelRect();
Single get_scaleFactor();
Void set_scaleFactor(System.Single);
Single get_referencePixelsPerUnit();
Void set_referencePixelsPerUnit(System.Single);
Boolean get_overridePixelPerfect();
Void set_overridePixelPerfect(System.Boolean);
Boolean get_pixelPerfect();
Void set_pixelPerfect(System.Boolean);
Single get_planeDistance();
Void set_planeDistance(System.Single);
Int32 get_renderOrder();
Boolean get_overrideSorting();
Void set_overrideSorting(System.Boolean);
Int32 get_sortingOrder();
Void set_sortingOrder(System.Int32);
Int32 get_sortingLayerID();
Void set_sortingLayerID(System.Int32);
Int32 get_cachedSortingLayerValue();
String get_sortingLayerName();
Void set_sortingLayerName(System.String);
static Material GetDefaultCanvasMaterial();
static Material GetDefaultCanvasTextMaterial();
static Void ForceUpdateCanvases();
}
interface ICanvasRaycastFilter{
Boolean IsRaycastLocationValid(UnityEngine.Vector2,UnityEngine.Camera);
}
class CanvasGroup : UnityEngine.Component{
this ();
Single get_alpha();
Void set_alpha(System.Single);
Boolean get_interactable();
Void set_interactable(System.Boolean);
Boolean get_blocksRaycasts();
Void set_blocksRaycasts(System.Boolean);
Boolean get_ignoreParentGroups();
Void set_ignoreParentGroups(System.Boolean);
Boolean IsRaycastLocationValid(UnityEngine.Vector2,UnityEngine.Camera);
}
class UIVertex : System.ValueType{
}
class CanvasRenderer : UnityEngine.Component{
static class OnRequestRebuild : System.MulticastDelegate{
this (System.Object,System.IntPtr);
Void Invoke();
IAsyncResult BeginInvoke(System.AsyncCallback,System.Object);
Void EndInvoke(System.IAsyncResult);
}
this ();
static Void add_onRequestRebuild(UnityEngine.CanvasRenderer.OnRequestRebuild);
static Void remove_onRequestRebuild(UnityEngine.CanvasRenderer.OnRequestRebuild);
Void SetColor(UnityEngine.Color);
Color GetColor();
Single GetAlpha();
Void SetAlpha(System.Single);
Boolean get_isMask();
Void set_isMask(System.Boolean);
Void SetMaterial(UnityEngine.Material,UnityEngine.Texture);
Material GetMaterial();
Void SetVertices(UnityEngine.UIVertex[],System.Int32);
Void Clear();
Int32 get_relativeDepth();
Int32 get_absoluteDepth();
}
class RectTransformUtility : System.Object{
static Boolean RectangleContainsScreenPoint(UnityEngine.RectTransform,UnityEngine.Vector2,UnityEngine.Camera);
static Vector2 PixelAdjustPoint(UnityEngine.Vector2,UnityEngine.Transform,UnityEngine.Canvas);
static Rect PixelAdjustRect(UnityEngine.RectTransform,UnityEngine.Canvas);
static Ray ScreenPointToRay(UnityEngine.Camera,UnityEngine.Vector2);
static Vector2 WorldToScreenPoint(UnityEngine.Camera,UnityEngine.Vector3);
static Bounds CalculateRelativeRectTransformBounds(UnityEngine.Transform,UnityEngine.Transform);
static Bounds CalculateRelativeRectTransformBounds(UnityEngine.Transform);
static Void FlipLayoutOnAxis(UnityEngine.RectTransform,System.Int32,System.Boolean,System.Boolean);
static Void FlipLayoutAxes(UnityEngine.RectTransform,System.Boolean,System.Boolean);
}
class TerrainCollider : UnityEngine.Collider{
this ();
TerrainData get_terrainData();
Void set_terrainData(UnityEngine.TerrainData);
}
class AndroidJavaException : System.Exception{
}
class AndroidJavaProxy : System.Object{
this (System.String);
this (UnityEngine.AndroidJavaClass);
AndroidJavaObject Invoke(System.String,System.Object[]);
AndroidJavaObject Invoke(System.String,UnityEngine.AndroidJavaObject[]);
}
class DisallowMultipleComponent : System.Attribute{
this ();
}
class RequireComponent : System.Attribute{
this (System.Type);
this (System.Type,System.Type);
this (System.Type,System.Type,System.Type);
}
class AddComponentMenu : System.Attribute{
this (System.String);
this (System.String,System.Int32);
String get_componentMenu();
Int32 get_componentOrder();
}
class CreateAssetMenuAttribute : System.Attribute{
this ();
String get_menuName();
Void set_menuName(System.String);
String get_fileName();
Void set_fileName(System.String);
Int32 get_order();
Void set_order(System.Int32);
}
class ContextMenu : System.Attribute{
this (System.String);
String get_menuItem();
}
class ExecuteInEditMode : System.Attribute{
this ();
}
class HideInInspector : System.Attribute{
this ();
}
class HelpURLAttribute : System.Attribute{
this (System.String);
String get_URL();
}
class ThreadSafeAttribute : System.Attribute{
this ();
}
class ConstructorSafeAttribute : System.Attribute{
this ();
}
class AssemblyIsEditorAssembly : System.Attribute{
this ();
}
class Resolution : System.ValueType{
Int32 get_width();
Void set_width(System.Int32);
Int32 get_height();
Void set_height(System.Int32);
Int32 get_refreshRate();
Void set_refreshRate(System.Int32);
String ToString();
}
class RenderBuffer : System.ValueType{
IntPtr GetNativeRenderBufferPtr();
}
class LightType : System.Enum{
}
class LightRenderMode : System.Enum{
}
class LightShadows : System.Enum{
}
class FogMode : System.Enum{
}
class QualityLevel : System.Enum{
}
class ShadowProjection : System.Enum{
}
class CameraClearFlags : System.Enum{
}
class DepthTextureMode : System.Enum{
}
class TexGenMode : System.Enum{
}
class AnisotropicFiltering : System.Enum{
}
class BlendWeights : System.Enum{
}
class MeshTopology : System.Enum{
}
class SkinQuality : System.Enum{
}
class ColorSpace : System.Enum{
}
class ScreenOrientation : System.Enum{
}
class FilterMode : System.Enum{
}
class TextureWrapMode : System.Enum{
}
class NPOTSupport : System.Enum{
}
class TextureFormat : System.Enum{
}
class CubemapFace : System.Enum{
}
class RenderTextureFormat : System.Enum{
}
class RenderTextureReadWrite : System.Enum{
}
class LightmapsMode : System.Enum{
}
class MaterialGlobalIlluminationFlags : System.Enum{
}
class ImplementedInActionScriptAttribute : System.Attribute{
this ();
}
class Social : System.Object{
static ISocialPlatform get_Active();
static Void set_Active(UnityEngine.SocialPlatforms.ISocialPlatform);
static ILocalUser get_localUser();
static ILeaderboard CreateLeaderboard();
static IAchievement CreateAchievement();
static Void ShowAchievementsUI();
static Void ShowLeaderboardUI();
}
class PropertyAttribute : System.Attribute{
Int32 get_order();
Void set_order(System.Int32);
}
class ContextMenuItemAttribute : UnityEngine.PropertyAttribute{
this (System.String,System.String);
}
class TooltipAttribute : UnityEngine.PropertyAttribute{
this (System.String);
}
class SpaceAttribute : UnityEngine.PropertyAttribute{
this (System.Single);
}
class HeaderAttribute : UnityEngine.PropertyAttribute{
this (System.String);
}
class RangeAttribute : UnityEngine.PropertyAttribute{
this (System.Single,System.Single);
}
class MultilineAttribute : UnityEngine.PropertyAttribute{
this ();
this (System.Int32);
}
class TextAreaAttribute : UnityEngine.PropertyAttribute{
this ();
this (System.Int32,System.Int32);
}
class ColorUsageAttribute : UnityEngine.PropertyAttribute{
this (System.Boolean);
this (System.Boolean,System.Boolean,System.Single,System.Single,System.Single,System.Single);
}
class RuntimeInitializeOnLoadMethodAttribute : System.Attribute{
this ();
}
class Types : System.Object{
static Type GetType(System.String,System.String);
}
class SelectionBaseAttribute : System.Attribute{
this ();
}
class StackTraceUtility : System.Object{
this ();
static String ExtractStackTrace();
static String ExtractStringFromException(System.Object);
}
class UnityException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class MissingComponentException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class UnassignedReferenceException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class MissingReferenceException : System.SystemException{
this ();
this (System.String);
this (System.String,System.Exception);
}
class SharedBetweenAnimatorsAttribute : System.Attribute{
this ();
}
class StateMachineBehaviour : UnityEngine.ScriptableObject{
Void OnStateEnter(UnityEngine.Animator,UnityEngine.AnimatorStateInfo,System.Int32);
Void OnStateUpdate(UnityEngine.Animator,UnityEngine.AnimatorStateInfo,System.Int32);
Void OnStateExit(UnityEngine.Animator,UnityEngine.AnimatorStateInfo,System.Int32);
Void OnStateMove(UnityEngine.Animator,UnityEngine.AnimatorStateInfo,System.Int32);
Void OnStateIK(UnityEngine.Animator,UnityEngine.AnimatorStateInfo,System.Int32);
Void OnStateMachineEnter(UnityEngine.Animator,System.Int32);
Void OnStateMachineExit(UnityEngine.Animator,System.Int32);
}
class TextEditor : System.Object{
static class DblClickSnapping : System.Enum{
}
this ();
Void OnFocus();
Void OnLostFocus();
Boolean HandleKeyEvent(UnityEngine.Event);
Boolean DeleteLineBack();
Boolean DeleteWordBack();
Boolean DeleteWordForward();
Boolean Delete();
Boolean CanPaste();
Boolean Backspace();
Void SelectAll();
Void SelectNone();
Boolean get_hasSelection();
String get_SelectedText();
Boolean DeleteSelection();
Void ReplaceSelection(System.String);
Void Insert(System.Char);
Void MoveSelectionToAltCursor();
Void MoveRight();
Void MoveLeft();
Void MoveUp();
Void MoveDown();
Void MoveLineStart();
Void MoveLineEnd();
Void MoveGraphicalLineStart();
Void MoveGraphicalLineEnd();
Void MoveTextStart();
Void MoveTextEnd();
Void MoveParagraphForward();
Void MoveParagraphBackward();
Void MoveCursorToPosition(UnityEngine.Vector2);
Void MoveAltCursorToPosition(UnityEngine.Vector2);
Boolean IsOverSelection(UnityEngine.Vector2);
Void SelectToPosition(UnityEngine.Vector2);
Void SelectLeft();
Void SelectRight();
Void SelectUp();
Void SelectDown();
Void SelectTextEnd();
Void SelectTextStart();
Void MouseDragSelectsWholeWords(System.Boolean);
Void DblClickSnap(UnityEngine.TextEditor.DblClickSnapping);
Void MoveWordRight();
Void MoveToStartOfNextWord();
Void MoveToEndOfPreviousWord();
Void SelectToStartOfNextWord();
Void SelectToEndOfPreviousWord();
Int32 FindStartOfNextWord(System.Int32);
Void MoveWordLeft();
Void SelectWordRight();
Void SelectWordLeft();
Void ExpandSelectGraphicalLineStart();
Void ExpandSelectGraphicalLineEnd();
Void SelectGraphicalLineStart();
Void SelectGraphicalLineEnd();
Void SelectParagraphForward();
Void SelectParagraphBackward();
Void SelectCurrentWord();
Void SelectCurrentParagraph();
Void UpdateScrollOffsetIfNeeded();
Void DrawCursor(System.String);
Void SaveBackup();
Void Undo();
Boolean Cut();
Void Copy();
Boolean Paste();
Void ClampPos();
}
class TextGenerationSettings : System.ValueType{
Boolean Equals(UnityEngine.TextGenerationSettings);
}
class TrackedReference : System.Object{
Boolean Equals(System.Object);
Int32 GetHashCode();
static Boolean op_Equality(UnityEngine.TrackedReference,UnityEngine.TrackedReference);
static Boolean op_Inequality(UnityEngine.TrackedReference,UnityEngine.TrackedReference);
static Boolean op_Implicit(UnityEngine.TrackedReference);
}
class UnityAPICompatibilityVersionAttribute : System.Attribute{
this (System.String);
String get_version();
}
class AndroidJavaRunnable : System.MulticastDelegate{
this (System.Object,System.IntPtr);
Void Invoke();
IAsyncResult BeginInvoke(System.AsyncCallback,System.Object);
Void EndInvoke(System.IAsyncResult);
}
}
