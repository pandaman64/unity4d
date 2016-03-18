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
UnityEngine.AssetBundle get_assetBundle();
}
class AssetBundleRequest : UnityEngine.AsyncOperation{
this ();
UnityEngine.__UnityObject get_asset();
UnityEngine.__UnityObject[] get_allAssets();
}
class AssetBundle : UnityEngine.__UnityObject{
this ();
static UnityEngine.AssetBundleCreateRequest CreateFromMemory(System.Byte[]);
static UnityEngine.AssetBundle CreateFromMemoryImmediate(System.Byte[]);
static UnityEngine.AssetBundle CreateFromFile(System.String);
UnityEngine.__UnityObject get_mainAsset();
System.Boolean Contains(System.String);
UnityEngine.__UnityObject Load(System.String);
UnityEngine.__UnityObject Load(System.String,System.Type);
UnityEngine.AssetBundleRequest LoadAsync(System.String,System.Type);
UnityEngine.__UnityObject[] LoadAll(System.Type);
UnityEngine.__UnityObject[] LoadAll();
UnityEngine.__UnityObject LoadAsset(System.String);
UnityEngine.__UnityObject LoadAsset(System.String,System.Type);
UnityEngine.AssetBundleRequest LoadAssetAsync(System.String);
UnityEngine.AssetBundleRequest LoadAssetAsync(System.String,System.Type);
UnityEngine.__UnityObject[] LoadAssetWithSubAssets(System.String);
UnityEngine.__UnityObject[] LoadAssetWithSubAssets(System.String,System.Type);
UnityEngine.AssetBundleRequest LoadAssetWithSubAssetsAsync(System.String);
UnityEngine.AssetBundleRequest LoadAssetWithSubAssetsAsync(System.String,System.Type);
UnityEngine.__UnityObject[] LoadAllAssets();
UnityEngine.__UnityObject[] LoadAllAssets(System.Type);
UnityEngine.AssetBundleRequest LoadAllAssetsAsync();
UnityEngine.AssetBundleRequest LoadAllAssetsAsync(System.Type);
System.Void Unload(System.Boolean);
System.String[] AllAssetNames();
System.String[] GetAllAssetNames();
System.String[] GetAllScenePaths();
}
class AssetBundleManifest : UnityEngine.__UnityObject{
this ();
System.String[] GetAllAssetBundles();
System.String[] GetAllAssetBundlesWithVariant();
UnityEngine.Hash128 GetAssetBundleHash(System.String);
System.String[] GetDirectDependencies(System.String);
System.String[] GetAllDependencies(System.String);
}
class SendMessageOptions : System.Enum{
Int32 value__;
}
class PrimitiveType : System.Enum{
Int32 value__;
}
class Space : System.Enum{
Int32 value__;
}
class LayerMask : System.ValueType{
System.Int32 get_value();
System.Void set_value(System.Int32);
static System.String LayerToName(System.Int32);
static System.Int32 NameToLayer(System.String);
static System.Int32 GetMask(System.String[]);
static System.Int32 op_Implicit(UnityEngine.LayerMask);
static UnityEngine.LayerMask op_Implicit(System.Int32);
}
class RuntimePlatform : System.Enum{
Int32 value__;
}
class SystemLanguage : System.Enum{
Int32 value__;
}
class LogType : System.Enum{
Int32 value__;
}
class DeviceType : System.Enum{
Int32 value__;
}
class SystemInfo : System.__object{
this ();
static System.String get_operatingSystem();
static System.String get_processorType();
static System.Int32 get_processorCount();
static System.Int32 get_systemMemorySize();
static System.Int32 get_graphicsMemorySize();
static System.String get_graphicsDeviceName();
static System.String get_graphicsDeviceVendor();
static System.Int32 get_graphicsDeviceID();
static System.Int32 get_graphicsDeviceVendorID();
static UnityEngine.Rendering.GraphicsDeviceType get_graphicsDeviceType();
static System.String get_graphicsDeviceVersion();
static System.Int32 get_graphicsShaderLevel();
static System.Int32 get_graphicsPixelFillrate();
static System.Boolean get_supportsVertexPrograms();
static System.Boolean get_graphicsMultiThreaded();
static System.Boolean get_supportsShadows();
static System.Boolean get_supportsRenderTextures();
static System.Boolean get_supportsRenderToCubemap();
static System.Boolean get_supportsImageEffects();
static System.Boolean get_supports3DTextures();
static System.Boolean get_supportsComputeShaders();
static System.Boolean get_supportsInstancing();
static System.Boolean get_supportsSparseTextures();
static System.Int32 get_supportedRenderTargetCount();
static System.Int32 get_supportsStencil();
static System.Boolean SupportsRenderTextureFormat(UnityEngine.RenderTextureFormat);
static System.Boolean SupportsTextureFormat(UnityEngine.TextureFormat);
static UnityEngine.NPOTSupport get_npotSupport();
static System.String get_deviceUniqueIdentifier();
static System.String get_deviceName();
static System.String get_deviceModel();
static System.Boolean get_supportsAccelerometer();
static System.Boolean get_supportsGyroscope();
static System.Boolean get_supportsLocationService();
static System.Boolean get_supportsVibration();
static UnityEngine.DeviceType get_deviceType();
static System.Int32 get_maxTextureSize();
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
System.Void SetDirty();
static UnityEngine.ScriptableObject CreateInstance(System.String);
static UnityEngine.ScriptableObject CreateInstance(System.Type);
}
class ThreadPriority : System.Enum{
Int32 value__;
}
class Profiler : System.__object{
this ();
static System.Boolean get_supported();
static System.String get_logFile();
static System.Void set_logFile(System.String);
static System.Boolean get_enableBinaryLog();
static System.Void set_enableBinaryLog(System.Boolean);
static System.Boolean get_enabled();
static System.Void set_enabled(System.Boolean);
static System.Void AddFramesFromFile(System.String);
static System.Void BeginSample(System.String);
static System.Void BeginSample(System.String,UnityEngine.__UnityObject);
static System.Void EndSample();
static System.Int32 get_maxNumberOfSamplesPerFrame();
static System.Void set_maxNumberOfSamplesPerFrame(System.Int32);
static System.UInt32 get_usedHeapSize();
static System.Int32 GetRuntimeMemorySize(UnityEngine.__UnityObject);
static System.UInt32 GetMonoHeapSize();
static System.UInt32 GetMonoUsedSize();
static System.UInt32 GetTotalAllocatedMemory();
static System.UInt32 GetTotalUnusedReservedMemory();
static System.UInt32 GetTotalReservedMemory();
}
class CrashReport : System.__object{
DateTime time;
String text;
static UnityEngine.CrashReport[] get_reports();
static UnityEngine.CrashReport get_lastReport();
static System.Void RemoveAll();
System.Void Remove();
}
class CursorMode : System.Enum{
Int32 value__;
}
class CursorLockMode : System.Enum{
Int32 value__;
}
class Cursor : System.__object{
this ();
static System.Void SetCursor(UnityEngine.Texture2D,UnityEngine.Vector2,UnityEngine.CursorMode);
static System.Boolean get_visible();
static System.Void set_visible(System.Boolean);
static UnityEngine.CursorLockMode get_lockState();
static System.Void set_lockState(UnityEngine.CursorLockMode);
}
class OcclusionArea : UnityEngine.Component{
this ();
UnityEngine.Vector3 get_center();
System.Void set_center(UnityEngine.Vector3);
UnityEngine.Vector3 get_size();
System.Void set_size(UnityEngine.Vector3);
}
class OcclusionPortal : UnityEngine.Component{
this ();
System.Boolean get_open();
System.Void set_open(System.Boolean);
}
class RenderSettings : UnityEngine.__UnityObject{
this ();
static System.Boolean get_fog();
static System.Void set_fog(System.Boolean);
static UnityEngine.FogMode get_fogMode();
static System.Void set_fogMode(UnityEngine.FogMode);
static UnityEngine.Color get_fogColor();
static System.Void set_fogColor(UnityEngine.Color);
static System.Single get_fogDensity();
static System.Void set_fogDensity(System.Single);
static System.Single get_fogStartDistance();
static System.Void set_fogStartDistance(System.Single);
static System.Single get_fogEndDistance();
static System.Void set_fogEndDistance(System.Single);
static UnityEngine.Rendering.AmbientMode get_ambientMode();
static System.Void set_ambientMode(UnityEngine.Rendering.AmbientMode);
static UnityEngine.Color get_ambientSkyColor();
static System.Void set_ambientSkyColor(UnityEngine.Color);
static UnityEngine.Color get_ambientEquatorColor();
static System.Void set_ambientEquatorColor(UnityEngine.Color);
static UnityEngine.Color get_ambientGroundColor();
static System.Void set_ambientGroundColor(UnityEngine.Color);
static UnityEngine.Color get_ambientLight();
static System.Void set_ambientLight(UnityEngine.Color);
static System.Single get_ambientSkyboxAmount();
static System.Void set_ambientSkyboxAmount(System.Single);
static System.Single get_ambientIntensity();
static System.Void set_ambientIntensity(System.Single);
static UnityEngine.Rendering.SphericalHarmonicsL2 get_ambientProbe();
static System.Void set_ambientProbe(UnityEngine.Rendering.SphericalHarmonicsL2);
static System.Single get_reflectionIntensity();
static System.Void set_reflectionIntensity(System.Single);
static System.Int32 get_reflectionBounces();
static System.Void set_reflectionBounces(System.Int32);
static System.Single get_haloStrength();
static System.Void set_haloStrength(System.Single);
static System.Single get_flareStrength();
static System.Void set_flareStrength(System.Single);
static System.Single get_flareFadeSpeed();
static System.Void set_flareFadeSpeed(System.Single);
static UnityEngine.Material get_skybox();
static System.Void set_skybox(UnityEngine.Material);
static UnityEngine.Rendering.DefaultReflectionMode get_defaultReflectionMode();
static System.Void set_defaultReflectionMode(UnityEngine.Rendering.DefaultReflectionMode);
static System.Int32 get_defaultReflectionResolution();
static System.Void set_defaultReflectionResolution(System.Int32);
static UnityEngine.Cubemap get_customReflection();
static System.Void set_customReflection(UnityEngine.Cubemap);
}
class QualitySettings : UnityEngine.__UnityObject{
this ();
static System.String[] get_names();
static System.Int32 GetQualityLevel();
static System.Void SetQualityLevel(System.Int32,System.Boolean);
static System.Void SetQualityLevel(System.Int32);
static UnityEngine.QualityLevel get_currentLevel();
static System.Void set_currentLevel(UnityEngine.QualityLevel);
static System.Void IncreaseLevel(System.Boolean);
static System.Void IncreaseLevel();
static System.Void DecreaseLevel(System.Boolean);
static System.Void DecreaseLevel();
static System.Int32 get_pixelLightCount();
static System.Void set_pixelLightCount(System.Int32);
static UnityEngine.ShadowProjection get_shadowProjection();
static System.Void set_shadowProjection(UnityEngine.ShadowProjection);
static System.Int32 get_shadowCascades();
static System.Void set_shadowCascades(System.Int32);
static System.Single get_shadowDistance();
static System.Void set_shadowDistance(System.Single);
static System.Single get_shadowCascade2Split();
static System.Void set_shadowCascade2Split(System.Single);
static UnityEngine.Vector3 get_shadowCascade4Split();
static System.Void set_shadowCascade4Split(UnityEngine.Vector3);
static System.Int32 get_masterTextureLimit();
static System.Void set_masterTextureLimit(System.Int32);
static UnityEngine.AnisotropicFiltering get_anisotropicFiltering();
static System.Void set_anisotropicFiltering(UnityEngine.AnisotropicFiltering);
static System.Single get_lodBias();
static System.Void set_lodBias(System.Single);
static System.Int32 get_maximumLODLevel();
static System.Void set_maximumLODLevel(System.Int32);
static System.Int32 get_particleRaycastBudget();
static System.Void set_particleRaycastBudget(System.Int32);
static System.Boolean get_softVegetation();
static System.Void set_softVegetation(System.Boolean);
static System.Boolean get_realtimeReflectionProbes();
static System.Void set_realtimeReflectionProbes(System.Boolean);
static System.Boolean get_billboardsFaceCameraPosition();
static System.Void set_billboardsFaceCameraPosition(System.Boolean);
static System.Int32 get_maxQueuedFrames();
static System.Void set_maxQueuedFrames(System.Int32);
static System.Int32 get_vSyncCount();
static System.Void set_vSyncCount(System.Int32);
static System.Int32 get_antiAliasing();
static System.Void set_antiAliasing(System.Int32);
static UnityEngine.ColorSpace get_desiredColorSpace();
static UnityEngine.ColorSpace get_activeColorSpace();
static UnityEngine.BlendWeights get_blendWeights();
static System.Void set_blendWeights(UnityEngine.BlendWeights);
}
class TextureCompressionQuality : System.Enum{
Int32 value__;
}
class MeshFilter : UnityEngine.Component{
this ();
UnityEngine.Mesh get_mesh();
System.Void set_mesh(UnityEngine.Mesh);
UnityEngine.Mesh get_sharedMesh();
System.Void set_sharedMesh(UnityEngine.Mesh);
}
class CombineInstance : System.ValueType{
UnityEngine.Mesh get_mesh();
System.Void set_mesh(UnityEngine.Mesh);
System.Int32 get_subMeshIndex();
System.Void set_subMeshIndex(System.Int32);
UnityEngine.Matrix4x4 get_transform();
System.Void set_transform(UnityEngine.Matrix4x4);
}
class Mesh : UnityEngine.__UnityObject{
this ();
System.Void Clear(System.Boolean);
System.Void Clear();
System.Boolean get_isReadable();
UnityEngine.Vector3[] get_vertices();
System.Void set_vertices(UnityEngine.Vector3[]);
UnityEngine.Vector3[] get_normals();
System.Void set_normals(UnityEngine.Vector3[]);
UnityEngine.Vector4[] get_tangents();
System.Void set_tangents(UnityEngine.Vector4[]);
UnityEngine.Vector2[] get_uv();
System.Void set_uv(UnityEngine.Vector2[]);
UnityEngine.Vector2[] get_uv1();
System.Void set_uv1(UnityEngine.Vector2[]);
UnityEngine.Vector2[] get_uv2();
System.Void set_uv2(UnityEngine.Vector2[]);
UnityEngine.Vector2[] get_uv3();
System.Void set_uv3(UnityEngine.Vector2[]);
UnityEngine.Vector2[] get_uv4();
System.Void set_uv4(UnityEngine.Vector2[]);
UnityEngine.Bounds get_bounds();
System.Void set_bounds(UnityEngine.Bounds);
UnityEngine.Color[] get_colors();
System.Void set_colors(UnityEngine.Color[]);
UnityEngine.Color32[] get_colors32();
System.Void set_colors32(UnityEngine.Color32[]);
System.Void RecalculateBounds();
System.Void RecalculateNormals();
System.Void Optimize();
System.Int32[] get_triangles();
System.Void set_triangles(System.Int32[]);
System.Int32[] GetTriangles(System.Int32);
System.Void SetTriangles(System.Int32[],System.Int32);
System.Int32[] GetIndices(System.Int32);
System.Void SetIndices(System.Int32[],UnityEngine.MeshTopology,System.Int32);
UnityEngine.MeshTopology GetTopology(System.Int32);
System.Int32 get_vertexCount();
System.Int32 get_subMeshCount();
System.Void set_subMeshCount(System.Int32);
System.Void CombineMeshes(UnityEngine.CombineInstance[],System.Boolean,System.Boolean);
System.Void CombineMeshes(UnityEngine.CombineInstance[],System.Boolean);
System.Void CombineMeshes(UnityEngine.CombineInstance[]);
UnityEngine.BoneWeight[] get_boneWeights();
System.Void set_boneWeights(UnityEngine.BoneWeight[]);
UnityEngine.Matrix4x4[] get_bindposes();
System.Void set_bindposes(UnityEngine.Matrix4x4[]);
System.Void MarkDynamic();
System.Void UploadMeshData(System.Boolean);
System.Int32 get_blendShapeCount();
System.String GetBlendShapeName(System.Int32);
System.Int32 GetBlendShapeIndex(System.String);
}
class BoneWeight : System.ValueType{
System.Single get_weight0();
System.Void set_weight0(System.Single);
System.Single get_weight1();
System.Void set_weight1(System.Single);
System.Single get_weight2();
System.Void set_weight2(System.Single);
System.Single get_weight3();
System.Void set_weight3(System.Single);
System.Int32 get_boneIndex0();
System.Void set_boneIndex0(System.Int32);
System.Int32 get_boneIndex1();
System.Void set_boneIndex1(System.Int32);
System.Int32 get_boneIndex2();
System.Void set_boneIndex2(System.Int32);
System.Int32 get_boneIndex3();
System.Void set_boneIndex3(System.Int32);
System.Int32 GetHashCode();
System.Boolean Equals(System.__object);
static System.Boolean op_Equality(UnityEngine.BoneWeight,UnityEngine.BoneWeight);
static System.Boolean op_Inequality(UnityEngine.BoneWeight,UnityEngine.BoneWeight);
}
class SkinnedMeshRenderer : UnityEngine.Renderer{
this ();
UnityEngine.Transform[] get_bones();
System.Void set_bones(UnityEngine.Transform[]);
UnityEngine.Transform get_rootBone();
System.Void set_rootBone(UnityEngine.Transform);
UnityEngine.SkinQuality get_quality();
System.Void set_quality(UnityEngine.SkinQuality);
UnityEngine.Mesh get_sharedMesh();
System.Void set_sharedMesh(UnityEngine.Mesh);
System.Boolean get_updateWhenOffscreen();
System.Void set_updateWhenOffscreen(System.Boolean);
UnityEngine.Bounds get_localBounds();
System.Void set_localBounds(UnityEngine.Bounds);
System.Void BakeMesh(UnityEngine.Mesh);
System.Single GetBlendShapeWeight(System.Int32);
System.Void SetBlendShapeWeight(System.Int32,System.Single);
}
class Flare : UnityEngine.__UnityObject{
this ();
}
class LensFlare : UnityEngine.Behaviour{
this ();
UnityEngine.Flare get_flare();
System.Void set_flare(UnityEngine.Flare);
System.Single get_brightness();
System.Void set_brightness(System.Single);
System.Single get_fadeSpeed();
System.Void set_fadeSpeed(System.Single);
UnityEngine.Color get_color();
System.Void set_color(UnityEngine.Color);
}
class Renderer : UnityEngine.Component{
this ();
System.Boolean get_isPartOfStaticBatch();
UnityEngine.Matrix4x4 get_worldToLocalMatrix();
UnityEngine.Matrix4x4 get_localToWorldMatrix();
System.Boolean get_enabled();
System.Void set_enabled(System.Boolean);
UnityEngine.Rendering.ShadowCastingMode get_shadowCastingMode();
System.Void set_shadowCastingMode(UnityEngine.Rendering.ShadowCastingMode);
System.Boolean get_castShadows();
System.Void set_castShadows(System.Boolean);
System.Boolean get_receiveShadows();
System.Void set_receiveShadows(System.Boolean);
UnityEngine.Material get_material();
System.Void set_material(UnityEngine.Material);
UnityEngine.Material get_sharedMaterial();
System.Void set_sharedMaterial(UnityEngine.Material);
UnityEngine.Material[] get_materials();
System.Void set_materials(UnityEngine.Material[]);
UnityEngine.Material[] get_sharedMaterials();
System.Void set_sharedMaterials(UnityEngine.Material[]);
UnityEngine.Bounds get_bounds();
System.Int32 get_lightmapIndex();
System.Void set_lightmapIndex(System.Int32);
System.Int32 get_realtimeLightmapIndex();
UnityEngine.Vector4 get_lightmapTilingOffset();
System.Void set_lightmapTilingOffset(UnityEngine.Vector4);
UnityEngine.Vector4 get_lightmapScaleOffset();
System.Void set_lightmapScaleOffset(UnityEngine.Vector4);
UnityEngine.Vector4 get_realtimeLightmapScaleOffset();
System.Void set_realtimeLightmapScaleOffset(UnityEngine.Vector4);
System.Boolean get_isVisible();
System.Boolean get_useLightProbes();
System.Void set_useLightProbes(System.Boolean);
UnityEngine.Transform get_lightProbeAnchor();
System.Void set_lightProbeAnchor(UnityEngine.Transform);
UnityEngine.Transform get_probeAnchor();
System.Void set_probeAnchor(UnityEngine.Transform);
UnityEngine.Rendering.ReflectionProbeUsage get_reflectionProbeUsage();
System.Void set_reflectionProbeUsage(UnityEngine.Rendering.ReflectionProbeUsage);
System.Void SetPropertyBlock(UnityEngine.MaterialPropertyBlock);
System.Void GetPropertyBlock(UnityEngine.MaterialPropertyBlock);
System.String get_sortingLayerName();
System.Void set_sortingLayerName(System.String);
System.Int32 get_sortingLayerID();
System.Void set_sortingLayerID(System.Int32);
System.Int32 get_sortingOrder();
System.Void set_sortingOrder(System.Int32);
}
class Projector : UnityEngine.Behaviour{
this ();
System.Single get_nearClipPlane();
System.Void set_nearClipPlane(System.Single);
System.Single get_farClipPlane();
System.Void set_farClipPlane(System.Single);
System.Single get_fieldOfView();
System.Void set_fieldOfView(System.Single);
System.Single get_aspectRatio();
System.Void set_aspectRatio(System.Single);
System.Boolean get_isOrthoGraphic();
System.Void set_isOrthoGraphic(System.Boolean);
System.Single get_orthoGraphicSize();
System.Void set_orthoGraphicSize(System.Single);
System.Boolean get_orthographic();
System.Void set_orthographic(System.Boolean);
System.Single get_orthographicSize();
System.Void set_orthographicSize(System.Single);
System.Int32 get_ignoreLayers();
System.Void set_ignoreLayers(System.Int32);
UnityEngine.Material get_material();
System.Void set_material(UnityEngine.Material);
}
class Skybox : UnityEngine.Behaviour{
this ();
UnityEngine.Material get_material();
System.Void set_material(UnityEngine.Material);
}
class TrailRenderer : UnityEngine.Renderer{
this ();
System.Single get_time();
System.Void set_time(System.Single);
System.Single get_startWidth();
System.Void set_startWidth(System.Single);
System.Single get_endWidth();
System.Void set_endWidth(System.Single);
System.Boolean get_autodestruct();
System.Void set_autodestruct(System.Boolean);
}
class LineRenderer : UnityEngine.Renderer{
this ();
System.Void SetWidth(System.Single,System.Single);
System.Void SetColors(UnityEngine.Color,UnityEngine.Color);
System.Void SetVertexCount(System.Int32);
System.Void SetPosition(System.Int32,UnityEngine.Vector3);
System.Boolean get_useWorldSpace();
System.Void set_useWorldSpace(System.Boolean);
}
class MaterialPropertyBlock : System.__object{
this ();
System.Void SetFloat(System.String,System.Single);
System.Void SetFloat(System.Int32,System.Single);
System.Void SetVector(System.String,UnityEngine.Vector4);
System.Void SetVector(System.Int32,UnityEngine.Vector4);
System.Void SetColor(System.String,UnityEngine.Color);
System.Void SetColor(System.Int32,UnityEngine.Color);
System.Void SetMatrix(System.String,UnityEngine.Matrix4x4);
System.Void SetMatrix(System.Int32,UnityEngine.Matrix4x4);
System.Void SetTexture(System.String,UnityEngine.Texture);
System.Void SetTexture(System.Int32,UnityEngine.Texture);
System.Void AddFloat(System.String,System.Single);
System.Void AddFloat(System.Int32,System.Single);
System.Void AddVector(System.String,UnityEngine.Vector4);
System.Void AddVector(System.Int32,UnityEngine.Vector4);
System.Void AddColor(System.String,UnityEngine.Color);
System.Void AddColor(System.Int32,UnityEngine.Color);
System.Void AddMatrix(System.String,UnityEngine.Matrix4x4);
System.Void AddMatrix(System.Int32,UnityEngine.Matrix4x4);
System.Void AddTexture(System.String,UnityEngine.Texture);
System.Void AddTexture(System.Int32,UnityEngine.Texture);
System.Single GetFloat(System.String);
System.Single GetFloat(System.Int32);
UnityEngine.Vector4 GetVector(System.String);
UnityEngine.Vector4 GetVector(System.Int32);
UnityEngine.Matrix4x4 GetMatrix(System.String);
UnityEngine.Matrix4x4 GetMatrix(System.Int32);
UnityEngine.Texture GetTexture(System.String);
UnityEngine.Texture GetTexture(System.Int32);
System.Void Clear();
}
class Graphics : System.__object{
this ();
static System.Void SetRenderTarget(UnityEngine.RenderTexture);
static System.Void SetRenderTarget(UnityEngine.RenderTexture,System.Int32);
static System.Void SetRenderTarget(UnityEngine.RenderTexture,System.Int32,UnityEngine.CubemapFace);
static System.Void SetRenderTarget(UnityEngine.RenderBuffer,UnityEngine.RenderBuffer);
static System.Void SetRenderTarget(UnityEngine.RenderBuffer,UnityEngine.RenderBuffer,System.Int32);
static System.Void SetRenderTarget(UnityEngine.RenderBuffer,UnityEngine.RenderBuffer,System.Int32,UnityEngine.CubemapFace);
static System.Void SetRenderTarget(UnityEngine.RenderBuffer[],UnityEngine.RenderBuffer);
static System.Void DrawMesh(UnityEngine.Mesh,UnityEngine.Vector3,UnityEngine.Quaternion,UnityEngine.Material,System.Int32,UnityEngine.Camera,System.Int32,UnityEngine.MaterialPropertyBlock,System.Boolean);
static System.Void DrawMesh(UnityEngine.Mesh,UnityEngine.Vector3,UnityEngine.Quaternion,UnityEngine.Material,System.Int32,UnityEngine.Camera,System.Int32,UnityEngine.MaterialPropertyBlock);
static System.Void DrawMesh(UnityEngine.Mesh,UnityEngine.Vector3,UnityEngine.Quaternion,UnityEngine.Material,System.Int32,UnityEngine.Camera,System.Int32);
static System.Void DrawMesh(UnityEngine.Mesh,UnityEngine.Vector3,UnityEngine.Quaternion,UnityEngine.Material,System.Int32,UnityEngine.Camera);
static System.Void DrawMesh(UnityEngine.Mesh,UnityEngine.Vector3,UnityEngine.Quaternion,UnityEngine.Material,System.Int32);
static System.Void DrawMesh(UnityEngine.Mesh,UnityEngine.Vector3,UnityEngine.Quaternion,UnityEngine.Material,System.Int32,UnityEngine.Camera,System.Int32,UnityEngine.MaterialPropertyBlock,System.Boolean,System.Boolean);
static System.Void DrawMesh(UnityEngine.Mesh,UnityEngine.Vector3,UnityEngine.Quaternion,UnityEngine.Material,System.Int32,UnityEngine.Camera,System.Int32,UnityEngine.MaterialPropertyBlock,UnityEngine.Rendering.ShadowCastingMode,System.Boolean);
static System.Void DrawMesh(UnityEngine.Mesh,UnityEngine.Vector3,UnityEngine.Quaternion,UnityEngine.Material,System.Int32,UnityEngine.Camera,System.Int32,UnityEngine.MaterialPropertyBlock,UnityEngine.Rendering.ShadowCastingMode);
static System.Void DrawMesh(UnityEngine.Mesh,UnityEngine.Vector3,UnityEngine.Quaternion,UnityEngine.Material,System.Int32,UnityEngine.Camera,System.Int32,UnityEngine.MaterialPropertyBlock,UnityEngine.Rendering.ShadowCastingMode,System.Boolean,UnityEngine.Transform);
static System.Void DrawMesh(UnityEngine.Mesh,UnityEngine.Matrix4x4,UnityEngine.Material,System.Int32,UnityEngine.Camera,System.Int32,UnityEngine.MaterialPropertyBlock,System.Boolean);
static System.Void DrawMesh(UnityEngine.Mesh,UnityEngine.Matrix4x4,UnityEngine.Material,System.Int32,UnityEngine.Camera,System.Int32,UnityEngine.MaterialPropertyBlock);
static System.Void DrawMesh(UnityEngine.Mesh,UnityEngine.Matrix4x4,UnityEngine.Material,System.Int32,UnityEngine.Camera,System.Int32);
static System.Void DrawMesh(UnityEngine.Mesh,UnityEngine.Matrix4x4,UnityEngine.Material,System.Int32,UnityEngine.Camera);
static System.Void DrawMesh(UnityEngine.Mesh,UnityEngine.Matrix4x4,UnityEngine.Material,System.Int32);
static System.Void DrawMesh(UnityEngine.Mesh,UnityEngine.Matrix4x4,UnityEngine.Material,System.Int32,UnityEngine.Camera,System.Int32,UnityEngine.MaterialPropertyBlock,System.Boolean,System.Boolean);
static System.Void DrawMesh(UnityEngine.Mesh,UnityEngine.Matrix4x4,UnityEngine.Material,System.Int32,UnityEngine.Camera,System.Int32,UnityEngine.MaterialPropertyBlock,UnityEngine.Rendering.ShadowCastingMode,System.Boolean);
static System.Void DrawMesh(UnityEngine.Mesh,UnityEngine.Matrix4x4,UnityEngine.Material,System.Int32,UnityEngine.Camera,System.Int32,UnityEngine.MaterialPropertyBlock,UnityEngine.Rendering.ShadowCastingMode);
static System.Void DrawMesh(UnityEngine.Mesh,UnityEngine.Matrix4x4,UnityEngine.Material,System.Int32,UnityEngine.Camera,System.Int32,UnityEngine.MaterialPropertyBlock,UnityEngine.Rendering.ShadowCastingMode,System.Boolean,UnityEngine.Transform);
static System.Void DrawMeshNow(UnityEngine.Mesh,UnityEngine.Vector3,UnityEngine.Quaternion);
static System.Void DrawMeshNow(UnityEngine.Mesh,UnityEngine.Vector3,UnityEngine.Quaternion,System.Int32);
static System.Void DrawMeshNow(UnityEngine.Mesh,UnityEngine.Matrix4x4);
static System.Void DrawMeshNow(UnityEngine.Mesh,UnityEngine.Matrix4x4,System.Int32);
static System.Void DrawProcedural(UnityEngine.MeshTopology,System.Int32,System.Int32);
static System.Void DrawProcedural(UnityEngine.MeshTopology,System.Int32);
static System.Void DrawProceduralIndirect(UnityEngine.MeshTopology,UnityEngine.ComputeBuffer,System.Int32);
static System.Void DrawProceduralIndirect(UnityEngine.MeshTopology,UnityEngine.ComputeBuffer);
static System.Void DrawTexture(UnityEngine.Rect,UnityEngine.Texture);
static System.Void DrawTexture(UnityEngine.Rect,UnityEngine.Texture,UnityEngine.Material);
static System.Void DrawTexture(UnityEngine.Rect,UnityEngine.Texture,System.Int32,System.Int32,System.Int32,System.Int32);
static System.Void DrawTexture(UnityEngine.Rect,UnityEngine.Texture,System.Int32,System.Int32,System.Int32,System.Int32,UnityEngine.Material);
static System.Void DrawTexture(UnityEngine.Rect,UnityEngine.Texture,UnityEngine.Rect,System.Int32,System.Int32,System.Int32,System.Int32);
static System.Void DrawTexture(UnityEngine.Rect,UnityEngine.Texture,UnityEngine.Rect,System.Int32,System.Int32,System.Int32,System.Int32,UnityEngine.Material);
static System.Void DrawTexture(UnityEngine.Rect,UnityEngine.Texture,UnityEngine.Rect,System.Int32,System.Int32,System.Int32,System.Int32,UnityEngine.Color);
static System.Void DrawTexture(UnityEngine.Rect,UnityEngine.Texture,UnityEngine.Rect,System.Int32,System.Int32,System.Int32,System.Int32,UnityEngine.Color,UnityEngine.Material);
static System.Void ExecuteCommandBuffer(UnityEngine.Rendering.CommandBuffer);
static System.Void Blit(UnityEngine.Texture,UnityEngine.RenderTexture);
static System.Void Blit(UnityEngine.Texture,UnityEngine.RenderTexture,UnityEngine.Material);
static System.Void Blit(UnityEngine.Texture,UnityEngine.RenderTexture,UnityEngine.Material,System.Int32);
static System.Void Blit(UnityEngine.Texture,UnityEngine.Material);
static System.Void Blit(UnityEngine.Texture,UnityEngine.Material,System.Int32);
static System.Void BlitMultiTap(UnityEngine.Texture,UnityEngine.RenderTexture,UnityEngine.Material,UnityEngine.Vector2[]);
static UnityEngine.RenderBuffer get_activeColorBuffer();
static UnityEngine.RenderBuffer get_activeDepthBuffer();
static System.Void SetRandomWriteTarget(System.Int32,UnityEngine.RenderTexture);
static System.Void SetRandomWriteTarget(System.Int32,UnityEngine.ComputeBuffer);
static System.Void ClearRandomWriteTargets();
static System.Void DrawMesh(UnityEngine.Mesh,UnityEngine.Vector3,UnityEngine.Quaternion);
static System.Void DrawMesh(UnityEngine.Mesh,UnityEngine.Vector3,UnityEngine.Quaternion,System.Int32);
static System.Void DrawMesh(UnityEngine.Mesh,UnityEngine.Matrix4x4);
static System.Void DrawMesh(UnityEngine.Mesh,UnityEngine.Matrix4x4,System.Int32);
static System.String get_deviceName();
static System.String get_deviceVendor();
static System.String get_deviceVersion();
}
class LightmapData : System.__object{
this ();
UnityEngine.Texture2D get_lightmapFar();
System.Void set_lightmapFar(UnityEngine.Texture2D);
UnityEngine.Texture2D get_lightmap();
System.Void set_lightmap(UnityEngine.Texture2D);
UnityEngine.Texture2D get_lightmapNear();
System.Void set_lightmapNear(UnityEngine.Texture2D);
}
class LightmapsModeLegacy : System.Enum{
Int32 value__;
}
class LightProbes : UnityEngine.__UnityObject{
this ();
UnityEngine.Vector3[] get_positions();
UnityEngine.Rendering.SphericalHarmonicsL2[] get_bakedProbes();
System.Void set_bakedProbes(UnityEngine.Rendering.SphericalHarmonicsL2[]);
System.Int32 get_count();
System.Int32 get_cellCount();
System.Void GetInterpolatedLightProbe(UnityEngine.Vector3,UnityEngine.Renderer,System.Single[]);
System.Single[] get_coefficients();
System.Void set_coefficients(System.Single[]);
}
class LightmapSettings : UnityEngine.__UnityObject{
this ();
static UnityEngine.LightmapData[] get_lightmaps();
static System.Void set_lightmaps(UnityEngine.LightmapData[]);
static UnityEngine.LightmapsModeLegacy get_lightmapsModeLegacy();
static System.Void set_lightmapsModeLegacy(UnityEngine.LightmapsModeLegacy);
static UnityEngine.LightmapsMode get_lightmapsMode();
static System.Void set_lightmapsMode(UnityEngine.LightmapsMode);
static UnityEngine.ColorSpace get_bakedColorSpace();
static System.Void set_bakedColorSpace(UnityEngine.ColorSpace);
static UnityEngine.LightProbes get_lightProbes();
static System.Void set_lightProbes(UnityEngine.LightProbes);
}
class GeometryUtility : System.__object{
this ();
static UnityEngine.Plane[] CalculateFrustumPlanes(UnityEngine.Camera);
static UnityEngine.Plane[] CalculateFrustumPlanes(UnityEngine.Matrix4x4);
static System.Boolean TestPlanesAABB(UnityEngine.Plane[],UnityEngine.Bounds);
}
class Screen : System.__object{
this ();
static UnityEngine.Resolution[] get_resolutions();
static UnityEngine.Resolution[] get_GetResolution();
static System.Boolean get_showCursor();
static System.Void set_showCursor(System.Boolean);
static System.Boolean get_lockCursor();
static System.Void set_lockCursor(System.Boolean);
static UnityEngine.Resolution get_currentResolution();
static System.Void SetResolution(System.Int32,System.Int32,System.Boolean,System.Int32);
static System.Void SetResolution(System.Int32,System.Int32,System.Boolean);
static System.Int32 get_width();
static System.Int32 get_height();
static System.Single get_dpi();
static System.Boolean get_fullScreen();
static System.Void set_fullScreen(System.Boolean);
static System.Boolean get_autorotateToPortrait();
static System.Void set_autorotateToPortrait(System.Boolean);
static System.Boolean get_autorotateToPortraitUpsideDown();
static System.Void set_autorotateToPortraitUpsideDown(System.Boolean);
static System.Boolean get_autorotateToLandscapeLeft();
static System.Void set_autorotateToLandscapeLeft(System.Boolean);
static System.Boolean get_autorotateToLandscapeRight();
static System.Void set_autorotateToLandscapeRight(System.Boolean);
static UnityEngine.ScreenOrientation get_orientation();
static System.Void set_orientation(UnityEngine.ScreenOrientation);
static System.Int32 get_sleepTimeout();
static System.Void set_sleepTimeout(System.Int32);
}
class SleepTimeout : System.__object{
this ();
}
class GL : System.__object{
this ();
static System.Void Vertex3(System.Single,System.Single,System.Single);
static System.Void Vertex(UnityEngine.Vector3);
static System.Void Color(UnityEngine.Color);
static System.Void TexCoord(UnityEngine.Vector3);
static System.Void TexCoord2(System.Single,System.Single);
static System.Void TexCoord3(System.Single,System.Single,System.Single);
static System.Void MultiTexCoord2(System.Int32,System.Single,System.Single);
static System.Void MultiTexCoord3(System.Int32,System.Single,System.Single,System.Single);
static System.Void MultiTexCoord(System.Int32,UnityEngine.Vector3);
static System.Void Begin(System.Int32);
static System.Void End();
static System.Void LoadOrtho();
static System.Void LoadPixelMatrix();
static System.Void LoadPixelMatrix(System.Single,System.Single,System.Single,System.Single);
static System.Void Viewport(UnityEngine.Rect);
static System.Void LoadProjectionMatrix(UnityEngine.Matrix4x4);
static System.Void LoadIdentity();
static UnityEngine.Matrix4x4 get_modelview();
static System.Void set_modelview(UnityEngine.Matrix4x4);
static System.Void MultMatrix(UnityEngine.Matrix4x4);
static System.Void PushMatrix();
static System.Void PopMatrix();
static UnityEngine.Matrix4x4 GetGPUProjectionMatrix(UnityEngine.Matrix4x4,System.Boolean);
static System.Boolean get_wireframe();
static System.Void set_wireframe(System.Boolean);
static System.Boolean get_sRGBWrite();
static System.Void set_sRGBWrite(System.Boolean);
static System.Boolean get_invertCulling();
static System.Void set_invertCulling(System.Boolean);
static System.Void SetRevertBackfacing(System.Boolean);
static System.Void Clear(System.Boolean,System.Boolean,UnityEngine.Color);
static System.Void Clear(System.Boolean,System.Boolean,UnityEngine.Color,System.Single);
static System.Void ClearWithSkybox(System.Boolean,UnityEngine.Camera);
static System.Void InvalidateState();
static System.Void IssuePluginEvent(System.Int32);
static System.Void RenderTargetBarrier();
}
class MeshRenderer : UnityEngine.Renderer{
this ();
UnityEngine.Mesh get_additionalVertexStreams();
System.Void set_additionalVertexStreams(UnityEngine.Mesh);
}
class StaticBatchingUtility : System.__object{
this ();
static System.Void Combine(UnityEngine.GameObject);
static System.Void Combine(UnityEngine.GameObject[],UnityEngine.GameObject);
}
class ImageEffectTransformsToLDR : System.Attribute{
this ();
}
class ImageEffectOpaque : System.Attribute{
this ();
}
class Texture : UnityEngine.__UnityObject{
this ();
static System.Int32 get_masterTextureLimit();
static System.Void set_masterTextureLimit(System.Int32);
static UnityEngine.AnisotropicFiltering get_anisotropicFiltering();
static System.Void set_anisotropicFiltering(UnityEngine.AnisotropicFiltering);
static System.Void SetGlobalAnisotropicFilteringLimits(System.Int32,System.Int32);
System.Int32 get_width();
System.Void set_width(System.Int32);
System.Int32 get_height();
System.Void set_height(System.Int32);
UnityEngine.FilterMode get_filterMode();
System.Void set_filterMode(UnityEngine.FilterMode);
System.Int32 get_anisoLevel();
System.Void set_anisoLevel(System.Int32);
UnityEngine.TextureWrapMode get_wrapMode();
System.Void set_wrapMode(UnityEngine.TextureWrapMode);
System.Single get_mipMapBias();
System.Void set_mipMapBias(System.Single);
UnityEngine.Vector2 get_texelSize();
System.IntPtr GetNativeTexturePtr();
System.Int32 GetNativeTextureID();
}
class Texture2D : UnityEngine.Texture{
this (System.Int32,System.Int32);
this (System.Int32,System.Int32,UnityEngine.TextureFormat,System.Boolean);
this (System.Int32,System.Int32,UnityEngine.TextureFormat,System.Boolean,System.Boolean);
System.Int32 get_mipmapCount();
static UnityEngine.Texture2D CreateExternalTexture(System.Int32,System.Int32,UnityEngine.TextureFormat,System.Boolean,System.Boolean,System.IntPtr);
System.Void UpdateExternalTexture(System.IntPtr);
UnityEngine.TextureFormat get_format();
static UnityEngine.Texture2D get_whiteTexture();
static UnityEngine.Texture2D get_blackTexture();
System.Void SetPixel(System.Int32,System.Int32,UnityEngine.Color);
UnityEngine.Color GetPixel(System.Int32,System.Int32);
UnityEngine.Color GetPixelBilinear(System.Single,System.Single);
System.Void SetPixels(UnityEngine.Color[]);
System.Void SetPixels(UnityEngine.Color[],System.Int32);
System.Void SetPixels(System.Int32,System.Int32,System.Int32,System.Int32,UnityEngine.Color[],System.Int32);
System.Void SetPixels(System.Int32,System.Int32,System.Int32,System.Int32,UnityEngine.Color[]);
System.Void SetPixels32(UnityEngine.Color32[]);
System.Void SetPixels32(UnityEngine.Color32[],System.Int32);
System.Void SetPixels32(System.Int32,System.Int32,System.Int32,System.Int32,UnityEngine.Color32[]);
System.Void SetPixels32(System.Int32,System.Int32,System.Int32,System.Int32,UnityEngine.Color32[],System.Int32);
System.Boolean LoadImage(System.Byte[]);
System.Void LoadRawTextureData(System.Byte[]);
System.Byte[] GetRawTextureData();
UnityEngine.Color[] GetPixels();
UnityEngine.Color[] GetPixels(System.Int32);
UnityEngine.Color[] GetPixels(System.Int32,System.Int32,System.Int32,System.Int32,System.Int32);
UnityEngine.Color[] GetPixels(System.Int32,System.Int32,System.Int32,System.Int32);
UnityEngine.Color32[] GetPixels32(System.Int32);
UnityEngine.Color32[] GetPixels32();
System.Void Apply(System.Boolean,System.Boolean);
System.Void Apply(System.Boolean);
System.Void Apply();
System.Boolean Resize(System.Int32,System.Int32,UnityEngine.TextureFormat,System.Boolean);
System.Boolean Resize(System.Int32,System.Int32);
System.Void Compress(System.Boolean);
UnityEngine.Rect[] PackTextures(UnityEngine.Texture2D[],System.Int32,System.Int32,System.Boolean);
UnityEngine.Rect[] PackTextures(UnityEngine.Texture2D[],System.Int32,System.Int32);
UnityEngine.Rect[] PackTextures(UnityEngine.Texture2D[],System.Int32);
System.Void ReadPixels(UnityEngine.Rect,System.Int32,System.Int32,System.Boolean);
System.Void ReadPixels(UnityEngine.Rect,System.Int32,System.Int32);
System.Byte[] EncodeToPNG();
System.Byte[] EncodeToJPG(System.Int32);
System.Byte[] EncodeToJPG();
System.Boolean get_alphaIsTransparency();
System.Void set_alphaIsTransparency(System.Boolean);
}
class Cubemap : UnityEngine.Texture{
this (System.Int32,UnityEngine.TextureFormat,System.Boolean);
System.Void SetPixel(UnityEngine.CubemapFace,System.Int32,System.Int32,UnityEngine.Color);
UnityEngine.Color GetPixel(UnityEngine.CubemapFace,System.Int32,System.Int32);
UnityEngine.Color[] GetPixels(UnityEngine.CubemapFace,System.Int32);
UnityEngine.Color[] GetPixels(UnityEngine.CubemapFace);
System.Void SetPixels(UnityEngine.Color[],UnityEngine.CubemapFace,System.Int32);
System.Void SetPixels(UnityEngine.Color[],UnityEngine.CubemapFace);
System.Void Apply(System.Boolean,System.Boolean);
System.Void Apply(System.Boolean);
System.Void Apply();
UnityEngine.TextureFormat get_format();
System.Void SmoothEdges(System.Int32);
System.Void SmoothEdges();
}
class Texture3D : UnityEngine.Texture{
this (System.Int32,System.Int32,System.Int32,UnityEngine.TextureFormat,System.Boolean);
System.Int32 get_depth();
UnityEngine.Color[] GetPixels(System.Int32);
UnityEngine.Color[] GetPixels();
UnityEngine.Color32[] GetPixels32(System.Int32);
UnityEngine.Color32[] GetPixels32();
System.Void SetPixels(UnityEngine.Color[],System.Int32);
System.Void SetPixels(UnityEngine.Color[]);
System.Void SetPixels32(UnityEngine.Color32[],System.Int32);
System.Void SetPixels32(UnityEngine.Color32[]);
System.Void Apply(System.Boolean);
System.Void Apply();
UnityEngine.TextureFormat get_format();
}
class SparseTexture : UnityEngine.Texture{
this (System.Int32,System.Int32,UnityEngine.TextureFormat,System.Int32);
this (System.Int32,System.Int32,UnityEngine.TextureFormat,System.Int32,System.Boolean);
System.Int32 get_tileWidth();
System.Int32 get_tileHeight();
System.Boolean get_isCreated();
System.Void UpdateTile(System.Int32,System.Int32,System.Int32,UnityEngine.Color32[]);
System.Void UpdateTileRaw(System.Int32,System.Int32,System.Int32,System.Byte[]);
System.Void UnloadTile(System.Int32,System.Int32,System.Int32);
}
class RenderTexture : UnityEngine.Texture{
this (System.Int32,System.Int32,System.Int32,UnityEngine.RenderTextureFormat,UnityEngine.RenderTextureReadWrite);
this (System.Int32,System.Int32,System.Int32,UnityEngine.RenderTextureFormat);
this (System.Int32,System.Int32,System.Int32);
static UnityEngine.RenderTexture GetTemporary(System.Int32,System.Int32,System.Int32,UnityEngine.RenderTextureFormat,UnityEngine.RenderTextureReadWrite,System.Int32);
static UnityEngine.RenderTexture GetTemporary(System.Int32,System.Int32,System.Int32,UnityEngine.RenderTextureFormat,UnityEngine.RenderTextureReadWrite);
static UnityEngine.RenderTexture GetTemporary(System.Int32,System.Int32,System.Int32,UnityEngine.RenderTextureFormat);
static UnityEngine.RenderTexture GetTemporary(System.Int32,System.Int32,System.Int32);
static UnityEngine.RenderTexture GetTemporary(System.Int32,System.Int32);
static System.Void ReleaseTemporary(UnityEngine.RenderTexture);
System.Int32 get_width();
System.Void set_width(System.Int32);
System.Int32 get_height();
System.Void set_height(System.Int32);
System.Int32 get_depth();
System.Void set_depth(System.Int32);
System.Boolean get_isPowerOfTwo();
System.Void set_isPowerOfTwo(System.Boolean);
System.Boolean get_sRGB();
UnityEngine.RenderTextureFormat get_format();
System.Void set_format(UnityEngine.RenderTextureFormat);
System.Boolean get_useMipMap();
System.Void set_useMipMap(System.Boolean);
System.Boolean get_generateMips();
System.Void set_generateMips(System.Boolean);
System.Boolean get_isCubemap();
System.Void set_isCubemap(System.Boolean);
System.Boolean get_isVolume();
System.Void set_isVolume(System.Boolean);
System.Int32 get_volumeDepth();
System.Void set_volumeDepth(System.Int32);
System.Int32 get_antiAliasing();
System.Void set_antiAliasing(System.Int32);
System.Boolean get_enableRandomWrite();
System.Void set_enableRandomWrite(System.Boolean);
System.Boolean Create();
System.Void Release();
System.Boolean IsCreated();
System.Void DiscardContents();
System.Void DiscardContents(System.Boolean,System.Boolean);
System.Void MarkRestoreExpected();
UnityEngine.RenderBuffer get_colorBuffer();
UnityEngine.RenderBuffer get_depthBuffer();
System.Void SetGlobalShaderProperty(System.String);
static UnityEngine.RenderTexture get_active();
static System.Void set_active(UnityEngine.RenderTexture);
static System.Boolean get_enabled();
static System.Void set_enabled(System.Boolean);
UnityEngine.Vector2 GetTexelOffset();
static System.Boolean SupportsStencil(UnityEngine.RenderTexture);
System.Void SetBorderColor(UnityEngine.Color);
}
class ReflectionProbe : UnityEngine.Behaviour{
this ();
UnityEngine.Rendering.ReflectionProbeType get_type();
System.Void set_type(UnityEngine.Rendering.ReflectionProbeType);
System.Boolean get_hdr();
System.Void set_hdr(System.Boolean);
UnityEngine.Vector3 get_size();
System.Void set_size(UnityEngine.Vector3);
UnityEngine.Vector3 get_center();
System.Void set_center(UnityEngine.Vector3);
System.Single get_nearClipPlane();
System.Void set_nearClipPlane(System.Single);
System.Single get_farClipPlane();
System.Void set_farClipPlane(System.Single);
System.Single get_shadowDistance();
System.Void set_shadowDistance(System.Single);
System.Int32 get_resolution();
System.Void set_resolution(System.Int32);
System.Int32 get_cullingMask();
System.Void set_cullingMask(System.Int32);
UnityEngine.Rendering.ReflectionProbeClearFlags get_clearFlags();
System.Void set_clearFlags(UnityEngine.Rendering.ReflectionProbeClearFlags);
UnityEngine.Color get_backgroundColor();
System.Void set_backgroundColor(UnityEngine.Color);
System.Single get_intensity();
System.Void set_intensity(System.Single);
System.Boolean get_boxProjection();
System.Void set_boxProjection(System.Boolean);
UnityEngine.Bounds get_bounds();
UnityEngine.Rendering.ReflectionProbeMode get_mode();
System.Void set_mode(UnityEngine.Rendering.ReflectionProbeMode);
System.Int32 get_importance();
System.Void set_importance(System.Int32);
UnityEngine.Rendering.ReflectionProbeRefreshMode get_refreshMode();
System.Void set_refreshMode(UnityEngine.Rendering.ReflectionProbeRefreshMode);
UnityEngine.Rendering.ReflectionProbeTimeSlicingMode get_timeSlicingMode();
System.Void set_timeSlicingMode(UnityEngine.Rendering.ReflectionProbeTimeSlicingMode);
UnityEngine.Texture get_bakedTexture();
System.Void set_bakedTexture(UnityEngine.Texture);
UnityEngine.Texture get_customBakedTexture();
System.Void set_customBakedTexture(UnityEngine.Texture);
UnityEngine.Texture get_texture();
System.Int32 RenderProbe(UnityEngine.RenderTexture);
System.Int32 RenderProbe();
System.Boolean IsFinishedRendering(System.Int32);
static System.Boolean BlendCubemap(UnityEngine.Texture,UnityEngine.Texture,System.Single,UnityEngine.RenderTexture);
}
class GUIElement : UnityEngine.Behaviour{
this ();
System.Boolean HitTest(UnityEngine.Vector3,UnityEngine.Camera);
System.Boolean HitTest(UnityEngine.Vector3);
UnityEngine.Rect GetScreenRect(UnityEngine.Camera);
UnityEngine.Rect GetScreenRect();
}
class GUITexture : UnityEngine.GUIElement{
this ();
UnityEngine.Color get_color();
System.Void set_color(UnityEngine.Color);
UnityEngine.Texture get_texture();
System.Void set_texture(UnityEngine.Texture);
UnityEngine.Rect get_pixelInset();
System.Void set_pixelInset(UnityEngine.Rect);
UnityEngine.RectOffset get_border();
System.Void set_border(UnityEngine.RectOffset);
}
class GUILayer : UnityEngine.Behaviour{
this ();
UnityEngine.GUIElement HitTest(UnityEngine.Vector3);
}
class LODFadeMode : System.Enum{
Int32 value__;
}
class LOD : System.ValueType{
Single screenRelativeTransitionHeight;
Single fadeTransitionWidth;
Renderer[] renderers;
this (System.Single,UnityEngine.Renderer[]);
}
class LODGroup : UnityEngine.Component{
this ();
UnityEngine.Vector3 get_localReferencePoint();
System.Void set_localReferencePoint(UnityEngine.Vector3);
System.Single get_size();
System.Void set_size(System.Single);
System.Int32 get_lodCount();
UnityEngine.LODFadeMode get_fadeMode();
System.Void set_fadeMode(UnityEngine.LODFadeMode);
System.Boolean get_animateCrossFading();
System.Void set_animateCrossFading(System.Boolean);
System.Boolean get_enabled();
System.Void set_enabled(System.Boolean);
System.Void RecalculateBounds();
UnityEngine.LOD[] GetLODs();
System.Void SetLODS(UnityEngine.LOD[]);
System.Void SetLODs(UnityEngine.LOD[]);
System.Void ForceLOD(System.Int32);
static System.Single get_crossFadeAnimationDuration();
static System.Void set_crossFadeAnimationDuration(System.Single);
}
class GradientColorKey : System.ValueType{
Color color;
Single time;
this (UnityEngine.Color,System.Single);
}
class GradientAlphaKey : System.ValueType{
Single alpha;
Single time;
this (System.Single,System.Single);
}
class Gradient : System.__object{
this ();
UnityEngine.Color Evaluate(System.Single);
UnityEngine.GradientColorKey[] get_colorKeys();
System.Void set_colorKeys(UnityEngine.GradientColorKey[]);
UnityEngine.GradientAlphaKey[] get_alphaKeys();
System.Void set_alphaKeys(UnityEngine.GradientAlphaKey[]);
System.Void SetKeys(UnityEngine.GradientColorKey[],UnityEngine.GradientAlphaKey[]);
}
class ScaleMode : System.Enum{
Int32 value__;
}
class GUI : System.__object{
static class Scope : System.__object{
System.Void Dispose();
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
UnityEngine.Vector2 get_scrollPosition();
System.Boolean get_handleScrollWheel();
System.Void set_handleScrollWheel(System.Boolean);
}
static class ClipScope : UnityEngine.GUI.Scope{
this (UnityEngine.Rect);
}
static class WindowFunction : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.Void Invoke(System.Int32);
System.IAsyncResult BeginInvoke(System.Int32,System.AsyncCallback,System.__object);
System.Void EndInvoke(System.IAsyncResult);
}
this ();
static UnityEngine.Rect ModalWindow(System.Int32,UnityEngine.Rect,UnityEngine.GUI.WindowFunction,UnityEngine.Texture);
static UnityEngine.Rect ModalWindow(System.Int32,UnityEngine.Rect,UnityEngine.GUI.WindowFunction,UnityEngine.GUIContent);
static UnityEngine.Rect ModalWindow(System.Int32,UnityEngine.Rect,UnityEngine.GUI.WindowFunction,System.String,UnityEngine.GUIStyle);
static UnityEngine.Rect ModalWindow(System.Int32,UnityEngine.Rect,UnityEngine.GUI.WindowFunction,UnityEngine.Texture,UnityEngine.GUIStyle);
static UnityEngine.Rect ModalWindow(System.Int32,UnityEngine.Rect,UnityEngine.GUI.WindowFunction,UnityEngine.GUIContent,UnityEngine.GUIStyle);
static System.Void DragWindow(UnityEngine.Rect);
static System.Void DragWindow();
static System.Void BringWindowToFront(System.Int32);
static System.Void BringWindowToBack(System.Int32);
static System.Void FocusWindow(System.Int32);
static System.Void UnfocusWindow();
static System.String PasswordField(UnityEngine.Rect,System.String,System.Char);
static System.String PasswordField(UnityEngine.Rect,System.String,System.Char,System.Int32);
static System.String PasswordField(UnityEngine.Rect,System.String,System.Char,UnityEngine.GUIStyle);
static System.String PasswordField(UnityEngine.Rect,System.String,System.Char,System.Int32,UnityEngine.GUIStyle);
static System.String TextArea(UnityEngine.Rect,System.String);
static System.String TextArea(UnityEngine.Rect,System.String,System.Int32);
static System.String TextArea(UnityEngine.Rect,System.String,UnityEngine.GUIStyle);
static System.String TextArea(UnityEngine.Rect,System.String,System.Int32,UnityEngine.GUIStyle);
static System.Void SetNextControlName(System.String);
static System.String GetNameOfFocusedControl();
static System.Void FocusControl(System.String);
static System.Boolean Toggle(UnityEngine.Rect,System.Boolean,System.String);
static System.Boolean Toggle(UnityEngine.Rect,System.Boolean,UnityEngine.Texture);
static System.Boolean Toggle(UnityEngine.Rect,System.Boolean,UnityEngine.GUIContent);
static System.Boolean Toggle(UnityEngine.Rect,System.Boolean,System.String,UnityEngine.GUIStyle);
static System.Boolean Toggle(UnityEngine.Rect,System.Boolean,UnityEngine.Texture,UnityEngine.GUIStyle);
static System.Boolean Toggle(UnityEngine.Rect,System.Boolean,UnityEngine.GUIContent,UnityEngine.GUIStyle);
static System.Boolean Toggle(UnityEngine.Rect,System.Int32,System.Boolean,UnityEngine.GUIContent,UnityEngine.GUIStyle);
static System.Int32 Toolbar(UnityEngine.Rect,System.Int32,System.String[]);
static System.Int32 Toolbar(UnityEngine.Rect,System.Int32,UnityEngine.Texture[]);
static System.Int32 Toolbar(UnityEngine.Rect,System.Int32,UnityEngine.GUIContent[]);
static System.Int32 Toolbar(UnityEngine.Rect,System.Int32,System.String[],UnityEngine.GUIStyle);
static System.Int32 Toolbar(UnityEngine.Rect,System.Int32,UnityEngine.Texture[],UnityEngine.GUIStyle);
static System.Int32 Toolbar(UnityEngine.Rect,System.Int32,UnityEngine.GUIContent[],UnityEngine.GUIStyle);
static System.Int32 SelectionGrid(UnityEngine.Rect,System.Int32,System.String[],System.Int32);
static System.Int32 SelectionGrid(UnityEngine.Rect,System.Int32,UnityEngine.Texture[],System.Int32);
static System.Int32 SelectionGrid(UnityEngine.Rect,System.Int32,UnityEngine.GUIContent[],System.Int32);
static System.Int32 SelectionGrid(UnityEngine.Rect,System.Int32,System.String[],System.Int32,UnityEngine.GUIStyle);
static System.Int32 SelectionGrid(UnityEngine.Rect,System.Int32,UnityEngine.Texture[],System.Int32,UnityEngine.GUIStyle);
static System.Int32 SelectionGrid(UnityEngine.Rect,System.Int32,UnityEngine.GUIContent[],System.Int32,UnityEngine.GUIStyle);
static System.Single HorizontalSlider(UnityEngine.Rect,System.Single,System.Single,System.Single);
static System.Single HorizontalSlider(UnityEngine.Rect,System.Single,System.Single,System.Single,UnityEngine.GUIStyle,UnityEngine.GUIStyle);
static System.Single VerticalSlider(UnityEngine.Rect,System.Single,System.Single,System.Single);
static System.Single VerticalSlider(UnityEngine.Rect,System.Single,System.Single,System.Single,UnityEngine.GUIStyle,UnityEngine.GUIStyle);
static System.Single Slider(UnityEngine.Rect,System.Single,System.Single,System.Single,System.Single,UnityEngine.GUIStyle,UnityEngine.GUIStyle,System.Boolean,System.Int32);
static System.Single HorizontalScrollbar(UnityEngine.Rect,System.Single,System.Single,System.Single,System.Single);
static System.Single HorizontalScrollbar(UnityEngine.Rect,System.Single,System.Single,System.Single,System.Single,UnityEngine.GUIStyle);
static System.Single VerticalScrollbar(UnityEngine.Rect,System.Single,System.Single,System.Single,System.Single);
static System.Single VerticalScrollbar(UnityEngine.Rect,System.Single,System.Single,System.Single,System.Single,UnityEngine.GUIStyle);
static System.Void BeginGroup(UnityEngine.Rect);
static System.Void BeginGroup(UnityEngine.Rect,System.String);
static System.Void BeginGroup(UnityEngine.Rect,UnityEngine.Texture);
static System.Void BeginGroup(UnityEngine.Rect,UnityEngine.GUIContent);
static System.Void BeginGroup(UnityEngine.Rect,UnityEngine.GUIStyle);
static System.Void BeginGroup(UnityEngine.Rect,System.String,UnityEngine.GUIStyle);
static System.Void BeginGroup(UnityEngine.Rect,UnityEngine.Texture,UnityEngine.GUIStyle);
static System.Void BeginGroup(UnityEngine.Rect,UnityEngine.GUIContent,UnityEngine.GUIStyle);
static System.Void EndGroup();
static System.Void BeginClip(UnityEngine.Rect);
static System.Void EndClip();
static UnityEngine.Vector2 BeginScrollView(UnityEngine.Rect,UnityEngine.Vector2,UnityEngine.Rect);
static UnityEngine.Vector2 BeginScrollView(UnityEngine.Rect,UnityEngine.Vector2,UnityEngine.Rect,System.Boolean,System.Boolean);
static UnityEngine.Vector2 BeginScrollView(UnityEngine.Rect,UnityEngine.Vector2,UnityEngine.Rect,UnityEngine.GUIStyle,UnityEngine.GUIStyle);
static UnityEngine.Vector2 BeginScrollView(UnityEngine.Rect,UnityEngine.Vector2,UnityEngine.Rect,System.Boolean,System.Boolean,UnityEngine.GUIStyle,UnityEngine.GUIStyle);
static System.Void EndScrollView();
static System.Void EndScrollView(System.Boolean);
static System.Void ScrollTo(UnityEngine.Rect);
static System.Boolean ScrollTowards(UnityEngine.Rect,System.Single);
static UnityEngine.Rect Window(System.Int32,UnityEngine.Rect,UnityEngine.GUI.WindowFunction,System.String);
static UnityEngine.Rect Window(System.Int32,UnityEngine.Rect,UnityEngine.GUI.WindowFunction,UnityEngine.Texture);
static UnityEngine.Rect Window(System.Int32,UnityEngine.Rect,UnityEngine.GUI.WindowFunction,UnityEngine.GUIContent);
static UnityEngine.Rect Window(System.Int32,UnityEngine.Rect,UnityEngine.GUI.WindowFunction,System.String,UnityEngine.GUIStyle);
static UnityEngine.Rect Window(System.Int32,UnityEngine.Rect,UnityEngine.GUI.WindowFunction,UnityEngine.Texture,UnityEngine.GUIStyle);
static UnityEngine.Rect Window(System.Int32,UnityEngine.Rect,UnityEngine.GUI.WindowFunction,UnityEngine.GUIContent,UnityEngine.GUIStyle);
static UnityEngine.Rect ModalWindow(System.Int32,UnityEngine.Rect,UnityEngine.GUI.WindowFunction,System.String);
static System.Void set_skin(UnityEngine.GUISkin);
static UnityEngine.GUISkin get_skin();
static UnityEngine.Color get_color();
static System.Void set_color(UnityEngine.Color);
static UnityEngine.Color get_backgroundColor();
static System.Void set_backgroundColor(UnityEngine.Color);
static UnityEngine.Color get_contentColor();
static System.Void set_contentColor(UnityEngine.Color);
static System.Boolean get_changed();
static System.Void set_changed(System.Boolean);
static System.Boolean get_enabled();
static System.Void set_enabled(System.Boolean);
static UnityEngine.Matrix4x4 get_matrix();
static System.Void set_matrix(UnityEngine.Matrix4x4);
static System.String get_tooltip();
static System.Void set_tooltip(System.String);
static System.Int32 get_depth();
static System.Void set_depth(System.Int32);
static System.Void Label(UnityEngine.Rect,System.String);
static System.Void Label(UnityEngine.Rect,UnityEngine.Texture);
static System.Void Label(UnityEngine.Rect,UnityEngine.GUIContent);
static System.Void Label(UnityEngine.Rect,System.String,UnityEngine.GUIStyle);
static System.Void Label(UnityEngine.Rect,UnityEngine.Texture,UnityEngine.GUIStyle);
static System.Void Label(UnityEngine.Rect,UnityEngine.GUIContent,UnityEngine.GUIStyle);
static System.Void DrawTexture(UnityEngine.Rect,UnityEngine.Texture,UnityEngine.ScaleMode,System.Boolean);
static System.Void DrawTexture(UnityEngine.Rect,UnityEngine.Texture,UnityEngine.ScaleMode);
static System.Void DrawTexture(UnityEngine.Rect,UnityEngine.Texture);
static System.Void DrawTexture(UnityEngine.Rect,UnityEngine.Texture,UnityEngine.ScaleMode,System.Boolean,System.Single);
static System.Void DrawTextureWithTexCoords(UnityEngine.Rect,UnityEngine.Texture,UnityEngine.Rect);
static System.Void DrawTextureWithTexCoords(UnityEngine.Rect,UnityEngine.Texture,UnityEngine.Rect,System.Boolean);
static System.Void Box(UnityEngine.Rect,System.String);
static System.Void Box(UnityEngine.Rect,UnityEngine.Texture);
static System.Void Box(UnityEngine.Rect,UnityEngine.GUIContent);
static System.Void Box(UnityEngine.Rect,System.String,UnityEngine.GUIStyle);
static System.Void Box(UnityEngine.Rect,UnityEngine.Texture,UnityEngine.GUIStyle);
static System.Void Box(UnityEngine.Rect,UnityEngine.GUIContent,UnityEngine.GUIStyle);
static System.Boolean Button(UnityEngine.Rect,System.String);
static System.Boolean Button(UnityEngine.Rect,UnityEngine.Texture);
static System.Boolean Button(UnityEngine.Rect,UnityEngine.GUIContent);
static System.Boolean Button(UnityEngine.Rect,System.String,UnityEngine.GUIStyle);
static System.Boolean Button(UnityEngine.Rect,UnityEngine.Texture,UnityEngine.GUIStyle);
static System.Boolean Button(UnityEngine.Rect,UnityEngine.GUIContent,UnityEngine.GUIStyle);
static System.Boolean RepeatButton(UnityEngine.Rect,System.String);
static System.Boolean RepeatButton(UnityEngine.Rect,UnityEngine.Texture);
static System.Boolean RepeatButton(UnityEngine.Rect,UnityEngine.GUIContent);
static System.Boolean RepeatButton(UnityEngine.Rect,System.String,UnityEngine.GUIStyle);
static System.Boolean RepeatButton(UnityEngine.Rect,UnityEngine.Texture,UnityEngine.GUIStyle);
static System.Boolean RepeatButton(UnityEngine.Rect,UnityEngine.GUIContent,UnityEngine.GUIStyle);
static System.String TextField(UnityEngine.Rect,System.String);
static System.String TextField(UnityEngine.Rect,System.String,System.Int32);
static System.String TextField(UnityEngine.Rect,System.String,UnityEngine.GUIStyle);
static System.String TextField(UnityEngine.Rect,System.String,System.Int32,UnityEngine.GUIStyle);
}
class GUILayout : System.__object{
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
UnityEngine.Vector2 get_scrollPosition();
System.Boolean get_handleScrollWheel();
System.Void set_handleScrollWheel(System.Boolean);
}
this ();
static System.Void BeginArea(UnityEngine.Rect);
static System.Void BeginArea(UnityEngine.Rect,System.String);
static System.Void BeginArea(UnityEngine.Rect,UnityEngine.Texture);
static System.Void BeginArea(UnityEngine.Rect,UnityEngine.GUIContent);
static System.Void BeginArea(UnityEngine.Rect,UnityEngine.GUIStyle);
static System.Void BeginArea(UnityEngine.Rect,System.String,UnityEngine.GUIStyle);
static System.Void BeginArea(UnityEngine.Rect,UnityEngine.Texture,UnityEngine.GUIStyle);
static System.Void BeginArea(UnityEngine.Rect,UnityEngine.GUIContent,UnityEngine.GUIStyle);
static System.Void EndArea();
static UnityEngine.Vector2 BeginScrollView(UnityEngine.Vector2,UnityEngine.GUILayoutOption[]);
static UnityEngine.Vector2 BeginScrollView(UnityEngine.Vector2,System.Boolean,System.Boolean,UnityEngine.GUILayoutOption[]);
static UnityEngine.Vector2 BeginScrollView(UnityEngine.Vector2,UnityEngine.GUIStyle,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static UnityEngine.Vector2 BeginScrollView(UnityEngine.Vector2,UnityEngine.GUIStyle);
static UnityEngine.Vector2 BeginScrollView(UnityEngine.Vector2,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static UnityEngine.Vector2 BeginScrollView(UnityEngine.Vector2,System.Boolean,System.Boolean,UnityEngine.GUIStyle,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static UnityEngine.Vector2 BeginScrollView(UnityEngine.Vector2,System.Boolean,System.Boolean,UnityEngine.GUIStyle,UnityEngine.GUIStyle,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static System.Void EndScrollView();
static UnityEngine.Rect Window(System.Int32,UnityEngine.Rect,UnityEngine.GUI.WindowFunction,System.String,UnityEngine.GUILayoutOption[]);
static UnityEngine.Rect Window(System.Int32,UnityEngine.Rect,UnityEngine.GUI.WindowFunction,UnityEngine.Texture,UnityEngine.GUILayoutOption[]);
static UnityEngine.Rect Window(System.Int32,UnityEngine.Rect,UnityEngine.GUI.WindowFunction,UnityEngine.GUIContent,UnityEngine.GUILayoutOption[]);
static UnityEngine.Rect Window(System.Int32,UnityEngine.Rect,UnityEngine.GUI.WindowFunction,System.String,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static UnityEngine.Rect Window(System.Int32,UnityEngine.Rect,UnityEngine.GUI.WindowFunction,UnityEngine.Texture,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static UnityEngine.Rect Window(System.Int32,UnityEngine.Rect,UnityEngine.GUI.WindowFunction,UnityEngine.GUIContent,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static UnityEngine.GUILayoutOption Width(System.Single);
static UnityEngine.GUILayoutOption MinWidth(System.Single);
static UnityEngine.GUILayoutOption MaxWidth(System.Single);
static UnityEngine.GUILayoutOption Height(System.Single);
static UnityEngine.GUILayoutOption MinHeight(System.Single);
static UnityEngine.GUILayoutOption MaxHeight(System.Single);
static UnityEngine.GUILayoutOption ExpandWidth(System.Boolean);
static UnityEngine.GUILayoutOption ExpandHeight(System.Boolean);
static System.Void Label(UnityEngine.Texture,UnityEngine.GUILayoutOption[]);
static System.Void Label(System.String,UnityEngine.GUILayoutOption[]);
static System.Void Label(UnityEngine.GUIContent,UnityEngine.GUILayoutOption[]);
static System.Void Label(UnityEngine.Texture,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static System.Void Label(System.String,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static System.Void Label(UnityEngine.GUIContent,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static System.Void Box(UnityEngine.Texture,UnityEngine.GUILayoutOption[]);
static System.Void Box(System.String,UnityEngine.GUILayoutOption[]);
static System.Void Box(UnityEngine.GUIContent,UnityEngine.GUILayoutOption[]);
static System.Void Box(UnityEngine.Texture,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static System.Void Box(System.String,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static System.Void Box(UnityEngine.GUIContent,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static System.Boolean Button(UnityEngine.Texture,UnityEngine.GUILayoutOption[]);
static System.Boolean Button(System.String,UnityEngine.GUILayoutOption[]);
static System.Boolean Button(UnityEngine.GUIContent,UnityEngine.GUILayoutOption[]);
static System.Boolean Button(UnityEngine.Texture,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static System.Boolean Button(System.String,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static System.Boolean Button(UnityEngine.GUIContent,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static System.Boolean RepeatButton(UnityEngine.Texture,UnityEngine.GUILayoutOption[]);
static System.Boolean RepeatButton(System.String,UnityEngine.GUILayoutOption[]);
static System.Boolean RepeatButton(UnityEngine.GUIContent,UnityEngine.GUILayoutOption[]);
static System.Boolean RepeatButton(UnityEngine.Texture,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static System.Boolean RepeatButton(System.String,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static System.Boolean RepeatButton(UnityEngine.GUIContent,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static System.String TextField(System.String,UnityEngine.GUILayoutOption[]);
static System.String TextField(System.String,System.Int32,UnityEngine.GUILayoutOption[]);
static System.String TextField(System.String,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static System.String TextField(System.String,System.Int32,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static System.String PasswordField(System.String,System.Char,UnityEngine.GUILayoutOption[]);
static System.String PasswordField(System.String,System.Char,System.Int32,UnityEngine.GUILayoutOption[]);
static System.String PasswordField(System.String,System.Char,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static System.String PasswordField(System.String,System.Char,System.Int32,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static System.String TextArea(System.String,UnityEngine.GUILayoutOption[]);
static System.String TextArea(System.String,System.Int32,UnityEngine.GUILayoutOption[]);
static System.String TextArea(System.String,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static System.String TextArea(System.String,System.Int32,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static System.Boolean Toggle(System.Boolean,UnityEngine.Texture,UnityEngine.GUILayoutOption[]);
static System.Boolean Toggle(System.Boolean,System.String,UnityEngine.GUILayoutOption[]);
static System.Boolean Toggle(System.Boolean,UnityEngine.GUIContent,UnityEngine.GUILayoutOption[]);
static System.Boolean Toggle(System.Boolean,UnityEngine.Texture,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static System.Boolean Toggle(System.Boolean,System.String,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static System.Boolean Toggle(System.Boolean,UnityEngine.GUIContent,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static System.Int32 Toolbar(System.Int32,System.String[],UnityEngine.GUILayoutOption[]);
static System.Int32 Toolbar(System.Int32,UnityEngine.Texture[],UnityEngine.GUILayoutOption[]);
static System.Int32 Toolbar(System.Int32,UnityEngine.GUIContent[],UnityEngine.GUILayoutOption[]);
static System.Int32 Toolbar(System.Int32,System.String[],UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static System.Int32 Toolbar(System.Int32,UnityEngine.Texture[],UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static System.Int32 Toolbar(System.Int32,UnityEngine.GUIContent[],UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static System.Int32 SelectionGrid(System.Int32,System.String[],System.Int32,UnityEngine.GUILayoutOption[]);
static System.Int32 SelectionGrid(System.Int32,UnityEngine.Texture[],System.Int32,UnityEngine.GUILayoutOption[]);
static System.Int32 SelectionGrid(System.Int32,UnityEngine.GUIContent[],System.Int32,UnityEngine.GUILayoutOption[]);
static System.Int32 SelectionGrid(System.Int32,System.String[],System.Int32,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static System.Int32 SelectionGrid(System.Int32,UnityEngine.Texture[],System.Int32,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static System.Int32 SelectionGrid(System.Int32,UnityEngine.GUIContent[],System.Int32,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static System.Single HorizontalSlider(System.Single,System.Single,System.Single,UnityEngine.GUILayoutOption[]);
static System.Single HorizontalSlider(System.Single,System.Single,System.Single,UnityEngine.GUIStyle,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static System.Single VerticalSlider(System.Single,System.Single,System.Single,UnityEngine.GUILayoutOption[]);
static System.Single VerticalSlider(System.Single,System.Single,System.Single,UnityEngine.GUIStyle,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static System.Single HorizontalScrollbar(System.Single,System.Single,System.Single,System.Single,UnityEngine.GUILayoutOption[]);
static System.Single HorizontalScrollbar(System.Single,System.Single,System.Single,System.Single,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static System.Single VerticalScrollbar(System.Single,System.Single,System.Single,System.Single,UnityEngine.GUILayoutOption[]);
static System.Single VerticalScrollbar(System.Single,System.Single,System.Single,System.Single,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static System.Void Space(System.Single);
static System.Void FlexibleSpace();
static System.Void BeginHorizontal(UnityEngine.GUILayoutOption[]);
static System.Void BeginHorizontal(UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static System.Void BeginHorizontal(System.String,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static System.Void BeginHorizontal(UnityEngine.Texture,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static System.Void BeginHorizontal(UnityEngine.GUIContent,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static System.Void EndHorizontal();
static System.Void BeginVertical(UnityEngine.GUILayoutOption[]);
static System.Void BeginVertical(UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static System.Void BeginVertical(System.String,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static System.Void BeginVertical(UnityEngine.Texture,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static System.Void BeginVertical(UnityEngine.GUIContent,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static System.Void EndVertical();
}
class GUILayoutUtility : System.__object{
this ();
static System.Void BeginGroup(System.String);
static System.Void EndGroup(System.String);
static UnityEngine.Rect GetRect(UnityEngine.GUIContent,UnityEngine.GUIStyle);
static UnityEngine.Rect GetRect(UnityEngine.GUIContent,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static UnityEngine.Rect GetRect(System.Single,System.Single);
static UnityEngine.Rect GetRect(System.Single,System.Single,UnityEngine.GUIStyle);
static UnityEngine.Rect GetRect(System.Single,System.Single,UnityEngine.GUILayoutOption[]);
static UnityEngine.Rect GetRect(System.Single,System.Single,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static UnityEngine.Rect GetRect(System.Single,System.Single,System.Single,System.Single);
static UnityEngine.Rect GetRect(System.Single,System.Single,System.Single,System.Single,UnityEngine.GUIStyle);
static UnityEngine.Rect GetRect(System.Single,System.Single,System.Single,System.Single,UnityEngine.GUILayoutOption[]);
static UnityEngine.Rect GetRect(System.Single,System.Single,System.Single,System.Single,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
static UnityEngine.Rect GetLastRect();
static UnityEngine.Rect GetAspectRect(System.Single);
static UnityEngine.Rect GetAspectRect(System.Single,UnityEngine.GUIStyle);
static UnityEngine.Rect GetAspectRect(System.Single,UnityEngine.GUILayoutOption[]);
static UnityEngine.Rect GetAspectRect(System.Single,UnityEngine.GUIStyle,UnityEngine.GUILayoutOption[]);
}
class GUILayoutOption : System.__object{
}
class FocusType : System.Enum{
Int32 value__;
}
class GUIUtility : System.__object{
this ();
static System.Int32 GetControlID(UnityEngine.FocusType);
static System.Int32 GetControlID(System.Int32,UnityEngine.FocusType);
static System.Int32 GetControlID(UnityEngine.GUIContent,UnityEngine.FocusType);
static System.Int32 GetControlID(UnityEngine.FocusType,UnityEngine.Rect);
static System.Int32 GetControlID(System.Int32,UnityEngine.FocusType,UnityEngine.Rect);
static System.Int32 GetControlID(UnityEngine.GUIContent,UnityEngine.FocusType,UnityEngine.Rect);
static System.__object GetStateObject(System.Type,System.Int32);
static System.__object QueryStateObject(System.Type,System.Int32);
static System.Int32 get_hotControl();
static System.Void set_hotControl(System.Int32);
static System.Int32 get_keyboardControl();
static System.Void set_keyboardControl(System.Int32);
static System.Void ExitGUI();
static UnityEngine.Vector2 GUIToScreenPoint(UnityEngine.Vector2);
static UnityEngine.Vector2 ScreenToGUIPoint(UnityEngine.Vector2);
static UnityEngine.Rect ScreenToGUIRect(UnityEngine.Rect);
static System.Void RotateAroundPivot(System.Single,UnityEngine.Vector2);
static System.Void ScaleAroundPivot(UnityEngine.Vector2,UnityEngine.Vector2);
static System.Boolean get_hasModalWindow();
}
class GUISettings : System.__object{
this ();
System.Boolean get_doubleClickSelectsWord();
System.Void set_doubleClickSelectsWord(System.Boolean);
System.Boolean get_tripleClickSelectsLine();
System.Void set_tripleClickSelectsLine(System.Boolean);
UnityEngine.Color get_cursorColor();
System.Void set_cursorColor(UnityEngine.Color);
System.Single get_cursorFlashSpeed();
System.Void set_cursorFlashSpeed(System.Single);
UnityEngine.Color get_selectionColor();
System.Void set_selectionColor(UnityEngine.Color);
}
class GUISkin : UnityEngine.ScriptableObject{
this ();
UnityEngine.Font get_font();
System.Void set_font(UnityEngine.Font);
UnityEngine.GUIStyle get_box();
System.Void set_box(UnityEngine.GUIStyle);
UnityEngine.GUIStyle get_label();
System.Void set_label(UnityEngine.GUIStyle);
UnityEngine.GUIStyle get_textField();
System.Void set_textField(UnityEngine.GUIStyle);
UnityEngine.GUIStyle get_textArea();
System.Void set_textArea(UnityEngine.GUIStyle);
UnityEngine.GUIStyle get_button();
System.Void set_button(UnityEngine.GUIStyle);
UnityEngine.GUIStyle get_toggle();
System.Void set_toggle(UnityEngine.GUIStyle);
UnityEngine.GUIStyle get_window();
System.Void set_window(UnityEngine.GUIStyle);
UnityEngine.GUIStyle get_horizontalSlider();
System.Void set_horizontalSlider(UnityEngine.GUIStyle);
UnityEngine.GUIStyle get_horizontalSliderThumb();
System.Void set_horizontalSliderThumb(UnityEngine.GUIStyle);
UnityEngine.GUIStyle get_verticalSlider();
System.Void set_verticalSlider(UnityEngine.GUIStyle);
UnityEngine.GUIStyle get_verticalSliderThumb();
System.Void set_verticalSliderThumb(UnityEngine.GUIStyle);
UnityEngine.GUIStyle get_horizontalScrollbar();
System.Void set_horizontalScrollbar(UnityEngine.GUIStyle);
UnityEngine.GUIStyle get_horizontalScrollbarThumb();
System.Void set_horizontalScrollbarThumb(UnityEngine.GUIStyle);
UnityEngine.GUIStyle get_horizontalScrollbarLeftButton();
System.Void set_horizontalScrollbarLeftButton(UnityEngine.GUIStyle);
UnityEngine.GUIStyle get_horizontalScrollbarRightButton();
System.Void set_horizontalScrollbarRightButton(UnityEngine.GUIStyle);
UnityEngine.GUIStyle get_verticalScrollbar();
System.Void set_verticalScrollbar(UnityEngine.GUIStyle);
UnityEngine.GUIStyle get_verticalScrollbarThumb();
System.Void set_verticalScrollbarThumb(UnityEngine.GUIStyle);
UnityEngine.GUIStyle get_verticalScrollbarUpButton();
System.Void set_verticalScrollbarUpButton(UnityEngine.GUIStyle);
UnityEngine.GUIStyle get_verticalScrollbarDownButton();
System.Void set_verticalScrollbarDownButton(UnityEngine.GUIStyle);
UnityEngine.GUIStyle get_scrollView();
System.Void set_scrollView(UnityEngine.GUIStyle);
UnityEngine.GUIStyle[] get_customStyles();
System.Void set_customStyles(UnityEngine.GUIStyle[]);
UnityEngine.GUISettings get_settings();
UnityEngine.GUIStyle GetStyle(System.String);
UnityEngine.GUIStyle FindStyle(System.String);
System.Collections.IEnumerator GetEnumerator();
}
class GUIContent : System.__object{
this ();
this (System.String);
this (UnityEngine.Texture);
this (System.String,UnityEngine.Texture);
this (System.String,System.String);
this (UnityEngine.Texture,System.String);
this (System.String,UnityEngine.Texture,System.String);
this (UnityEngine.GUIContent);
System.String get_text();
System.Void set_text(System.String);
UnityEngine.Texture get_image();
System.Void set_image(UnityEngine.Texture);
System.String get_tooltip();
System.Void set_tooltip(System.String);
}
class GUIStyleState : System.__object{
this ();
UnityEngine.Texture2D get_background();
System.Void set_background(UnityEngine.Texture2D);
UnityEngine.Color get_textColor();
System.Void set_textColor(UnityEngine.Color);
}
class RectOffset : System.__object{
this ();
this (System.Int32,System.Int32,System.Int32,System.Int32);
System.Int32 get_left();
System.Void set_left(System.Int32);
System.Int32 get_right();
System.Void set_right(System.Int32);
System.Int32 get_top();
System.Void set_top(System.Int32);
System.Int32 get_bottom();
System.Void set_bottom(System.Int32);
System.Int32 get_horizontal();
System.Int32 get_vertical();
UnityEngine.Rect Add(UnityEngine.Rect);
UnityEngine.Rect Remove(UnityEngine.Rect);
System.String ToString();
}
class FontStyle : System.Enum{
Int32 value__;
}
class ImagePosition : System.Enum{
Int32 value__;
}
class GUIStyle : System.__object{
this ();
this (UnityEngine.GUIStyle);
System.Void set_richText(System.Boolean);
System.Single get_lineHeight();
System.Void Draw(UnityEngine.Rect,System.Boolean,System.Boolean,System.Boolean,System.Boolean);
System.Void Draw(UnityEngine.Rect,System.String,System.Boolean,System.Boolean,System.Boolean,System.Boolean);
System.Void Draw(UnityEngine.Rect,UnityEngine.Texture,System.Boolean,System.Boolean,System.Boolean,System.Boolean);
System.Void Draw(UnityEngine.Rect,UnityEngine.GUIContent,System.Boolean,System.Boolean,System.Boolean,System.Boolean);
System.Void Draw(UnityEngine.Rect,UnityEngine.GUIContent,System.Int32);
System.Void Draw(UnityEngine.Rect,UnityEngine.GUIContent,System.Int32,System.Boolean);
System.Void DrawCursor(UnityEngine.Rect,UnityEngine.GUIContent,System.Int32,System.Int32);
System.Void DrawWithTextSelection(UnityEngine.Rect,UnityEngine.GUIContent,System.Int32,System.Int32,System.Int32);
static UnityEngine.GUIStyle get_none();
UnityEngine.Vector2 GetCursorPixelPosition(UnityEngine.Rect,UnityEngine.GUIContent,System.Int32);
System.Int32 GetCursorStringIndex(UnityEngine.Rect,UnityEngine.GUIContent,UnityEngine.Vector2);
UnityEngine.Vector2 CalcSize(UnityEngine.GUIContent);
UnityEngine.Vector2 CalcScreenSize(UnityEngine.Vector2);
System.Single CalcHeight(UnityEngine.GUIContent,System.Single);
System.Boolean get_isHeightDependantOnWidth();
System.String ToString();
static UnityEngine.GUIStyle op_Implicit(System.String);
System.String get_name();
System.Void set_name(System.String);
UnityEngine.GUIStyleState get_normal();
System.Void set_normal(UnityEngine.GUIStyleState);
UnityEngine.GUIStyleState get_hover();
System.Void set_hover(UnityEngine.GUIStyleState);
UnityEngine.GUIStyleState get_active();
System.Void set_active(UnityEngine.GUIStyleState);
UnityEngine.GUIStyleState get_onNormal();
System.Void set_onNormal(UnityEngine.GUIStyleState);
UnityEngine.GUIStyleState get_onHover();
System.Void set_onHover(UnityEngine.GUIStyleState);
UnityEngine.GUIStyleState get_onActive();
System.Void set_onActive(UnityEngine.GUIStyleState);
UnityEngine.GUIStyleState get_focused();
System.Void set_focused(UnityEngine.GUIStyleState);
UnityEngine.GUIStyleState get_onFocused();
System.Void set_onFocused(UnityEngine.GUIStyleState);
UnityEngine.RectOffset get_border();
System.Void set_border(UnityEngine.RectOffset);
UnityEngine.RectOffset get_margin();
System.Void set_margin(UnityEngine.RectOffset);
UnityEngine.RectOffset get_padding();
System.Void set_padding(UnityEngine.RectOffset);
UnityEngine.RectOffset get_overflow();
System.Void set_overflow(UnityEngine.RectOffset);
UnityEngine.ImagePosition get_imagePosition();
System.Void set_imagePosition(UnityEngine.ImagePosition);
UnityEngine.TextAnchor get_alignment();
System.Void set_alignment(UnityEngine.TextAnchor);
System.Boolean get_wordWrap();
System.Void set_wordWrap(System.Boolean);
UnityEngine.TextClipping get_clipping();
System.Void set_clipping(UnityEngine.TextClipping);
UnityEngine.Vector2 get_contentOffset();
System.Void set_contentOffset(UnityEngine.Vector2);
UnityEngine.Vector2 get_clipOffset();
System.Void set_clipOffset(UnityEngine.Vector2);
System.Single get_fixedWidth();
System.Void set_fixedWidth(System.Single);
System.Single get_fixedHeight();
System.Void set_fixedHeight(System.Single);
System.Boolean get_stretchWidth();
System.Void set_stretchWidth(System.Boolean);
System.Boolean get_stretchHeight();
System.Void set_stretchHeight(System.Boolean);
UnityEngine.Font get_font();
System.Void set_font(UnityEngine.Font);
System.Int32 get_fontSize();
System.Void set_fontSize(System.Int32);
UnityEngine.FontStyle get_fontStyle();
System.Void set_fontStyle(UnityEngine.FontStyle);
System.Boolean get_richText();
}
class TextClipping : System.Enum{
Int32 value__;
}
class FullScreenMovieControlMode : System.Enum{
Int32 value__;
}
class FullScreenMovieScalingMode : System.Enum{
Int32 value__;
}
class AndroidActivityIndicatorStyle : System.Enum{
Int32 value__;
}
class Handheld : System.__object{
this ();
static System.Boolean PlayFullScreenMovie(System.String,UnityEngine.Color,UnityEngine.FullScreenMovieControlMode,UnityEngine.FullScreenMovieScalingMode);
static System.Boolean PlayFullScreenMovie(System.String,UnityEngine.Color,UnityEngine.FullScreenMovieControlMode);
static System.Boolean PlayFullScreenMovie(System.String,UnityEngine.Color);
static System.Boolean PlayFullScreenMovie(System.String);
static System.Void Vibrate();
static System.Boolean get_use32BitDisplayBuffer();
static System.Void set_use32BitDisplayBuffer(System.Boolean);
static System.Void SetActivityIndicatorStyle(UnityEngine.iOS.ActivityIndicatorStyle);
static System.Void SetActivityIndicatorStyle(UnityEngine.AndroidActivityIndicatorStyle);
static System.Int32 GetActivityIndicatorStyle();
static System.Void StartActivityIndicator();
static System.Void StopActivityIndicator();
static System.Void ClearShaderCache();
}
class TouchScreenKeyboardType : System.Enum{
Int32 value__;
}
class TouchScreenKeyboard : System.__object{
this (System.String,UnityEngine.TouchScreenKeyboardType,System.Boolean,System.Boolean,System.Boolean,System.Boolean,System.String);
static System.Boolean get_isSupported();
static UnityEngine.TouchScreenKeyboard Open(System.String,UnityEngine.TouchScreenKeyboardType,System.Boolean,System.Boolean,System.Boolean,System.Boolean);
static UnityEngine.TouchScreenKeyboard Open(System.String,UnityEngine.TouchScreenKeyboardType,System.Boolean,System.Boolean,System.Boolean);
static UnityEngine.TouchScreenKeyboard Open(System.String,UnityEngine.TouchScreenKeyboardType,System.Boolean,System.Boolean);
static UnityEngine.TouchScreenKeyboard Open(System.String,UnityEngine.TouchScreenKeyboardType,System.Boolean);
static UnityEngine.TouchScreenKeyboard Open(System.String,UnityEngine.TouchScreenKeyboardType);
static UnityEngine.TouchScreenKeyboard Open(System.String);
static UnityEngine.TouchScreenKeyboard Open(System.String,UnityEngine.TouchScreenKeyboardType,System.Boolean,System.Boolean,System.Boolean,System.Boolean,System.String);
System.String get_text();
System.Void set_text(System.String);
static System.Boolean get_hideInput();
static System.Void set_hideInput(System.Boolean);
System.Boolean get_active();
System.Void set_active(System.Boolean);
System.Boolean get_done();
System.Boolean get_wasCanceled();
static UnityEngine.Rect get_area();
static System.Boolean get_visible();
}
class Event : System.__object{
this ();
this (UnityEngine.Event);
UnityEngine.EventType get_rawType();
UnityEngine.EventType get_type();
System.Void set_type(UnityEngine.EventType);
UnityEngine.EventType GetTypeForControl(System.Int32);
UnityEngine.Vector2 get_mousePosition();
System.Void set_mousePosition(UnityEngine.Vector2);
UnityEngine.Vector2 get_delta();
System.Void set_delta(UnityEngine.Vector2);
UnityEngine.Ray get_mouseRay();
System.Void set_mouseRay(UnityEngine.Ray);
System.Int32 get_button();
System.Void set_button(System.Int32);
UnityEngine.EventModifiers get_modifiers();
System.Void set_modifiers(UnityEngine.EventModifiers);
System.Single get_pressure();
System.Void set_pressure(System.Single);
System.Int32 get_clickCount();
System.Void set_clickCount(System.Int32);
System.Char get_character();
System.Void set_character(System.Char);
System.String get_commandName();
System.Void set_commandName(System.String);
UnityEngine.KeyCode get_keyCode();
System.Void set_keyCode(UnityEngine.KeyCode);
System.Boolean get_shift();
System.Void set_shift(System.Boolean);
System.Boolean get_control();
System.Void set_control(System.Boolean);
System.Boolean get_alt();
System.Void set_alt(System.Boolean);
System.Boolean get_command();
System.Void set_command(System.Boolean);
System.Boolean get_capsLock();
System.Void set_capsLock(System.Boolean);
System.Boolean get_numeric();
System.Void set_numeric(System.Boolean);
System.Boolean get_functionKey();
static UnityEngine.Event get_current();
static System.Void set_current(UnityEngine.Event);
System.Void Use();
static System.Boolean PopEvent(UnityEngine.Event);
static System.Int32 GetEventCount();
System.Boolean get_isKey();
System.Boolean get_isMouse();
static UnityEngine.Event KeyboardEvent(System.String);
System.Int32 GetHashCode();
System.Boolean Equals(System.__object);
System.String ToString();
}
class KeyCode : System.Enum{
Int32 value__;
}
class EventType : System.Enum{
Int32 value__;
}
class EventModifiers : System.Enum{
Int32 value__;
}
class Gizmos : System.__object{
this ();
static System.Void DrawRay(UnityEngine.Ray);
static System.Void DrawRay(UnityEngine.Vector3,UnityEngine.Vector3);
static System.Void DrawLine(UnityEngine.Vector3,UnityEngine.Vector3);
static System.Void DrawWireSphere(UnityEngine.Vector3,System.Single);
static System.Void DrawSphere(UnityEngine.Vector3,System.Single);
static System.Void DrawWireCube(UnityEngine.Vector3,UnityEngine.Vector3);
static System.Void DrawCube(UnityEngine.Vector3,UnityEngine.Vector3);
static System.Void DrawMesh(UnityEngine.Mesh,UnityEngine.Vector3,UnityEngine.Quaternion);
static System.Void DrawMesh(UnityEngine.Mesh,UnityEngine.Vector3);
static System.Void DrawMesh(UnityEngine.Mesh);
static System.Void DrawMesh(UnityEngine.Mesh,UnityEngine.Vector3,UnityEngine.Quaternion,UnityEngine.Vector3);
static System.Void DrawMesh(UnityEngine.Mesh,System.Int32,UnityEngine.Vector3,UnityEngine.Quaternion,UnityEngine.Vector3);
static System.Void DrawMesh(UnityEngine.Mesh,System.Int32,UnityEngine.Vector3,UnityEngine.Quaternion);
static System.Void DrawMesh(UnityEngine.Mesh,System.Int32,UnityEngine.Vector3);
static System.Void DrawMesh(UnityEngine.Mesh,System.Int32);
static System.Void DrawWireMesh(UnityEngine.Mesh,UnityEngine.Vector3,UnityEngine.Quaternion);
static System.Void DrawWireMesh(UnityEngine.Mesh,UnityEngine.Vector3);
static System.Void DrawWireMesh(UnityEngine.Mesh);
static System.Void DrawWireMesh(UnityEngine.Mesh,UnityEngine.Vector3,UnityEngine.Quaternion,UnityEngine.Vector3);
static System.Void DrawWireMesh(UnityEngine.Mesh,System.Int32,UnityEngine.Vector3,UnityEngine.Quaternion,UnityEngine.Vector3);
static System.Void DrawWireMesh(UnityEngine.Mesh,System.Int32,UnityEngine.Vector3,UnityEngine.Quaternion);
static System.Void DrawWireMesh(UnityEngine.Mesh,System.Int32,UnityEngine.Vector3);
static System.Void DrawWireMesh(UnityEngine.Mesh,System.Int32);
static System.Void DrawIcon(UnityEngine.Vector3,System.String,System.Boolean);
static System.Void DrawIcon(UnityEngine.Vector3,System.String);
static System.Void DrawGUITexture(UnityEngine.Rect,UnityEngine.Texture);
static System.Void DrawGUITexture(UnityEngine.Rect,UnityEngine.Texture,UnityEngine.Material);
static System.Void DrawGUITexture(UnityEngine.Rect,UnityEngine.Texture,System.Int32,System.Int32,System.Int32,System.Int32,UnityEngine.Material);
static System.Void DrawGUITexture(UnityEngine.Rect,UnityEngine.Texture,System.Int32,System.Int32,System.Int32,System.Int32);
static UnityEngine.Color get_color();
static System.Void set_color(UnityEngine.Color);
static UnityEngine.Matrix4x4 get_matrix();
static System.Void set_matrix(UnityEngine.Matrix4x4);
static System.Void DrawFrustum(UnityEngine.Vector3,System.Single,System.Single,System.Single,System.Single);
}
class FlareLayer : UnityEngine.Behaviour{
}
class LightProbeGroup : UnityEngine.Component{
this ();
UnityEngine.Vector3[] get_probePositions();
System.Void set_probePositions(UnityEngine.Vector3[]);
}
class Vector2 : System.ValueType{
Single x;
Single y;
this (System.Single,System.Single);
System.Single get_Item(System.Int32);
System.Void set_Item(System.Int32,System.Single);
System.Void Set(System.Single,System.Single);
static UnityEngine.Vector2 Lerp(UnityEngine.Vector2,UnityEngine.Vector2,System.Single);
static UnityEngine.Vector2 MoveTowards(UnityEngine.Vector2,UnityEngine.Vector2,System.Single);
static UnityEngine.Vector2 Scale(UnityEngine.Vector2,UnityEngine.Vector2);
System.Void Scale(UnityEngine.Vector2);
System.Void Normalize();
UnityEngine.Vector2 get_normalized();
System.String ToString();
System.String ToString(System.String);
System.Int32 GetHashCode();
System.Boolean Equals(System.__object);
static UnityEngine.Vector2 Reflect(UnityEngine.Vector2,UnityEngine.Vector2);
static System.Single Dot(UnityEngine.Vector2,UnityEngine.Vector2);
System.Single get_magnitude();
System.Single get_sqrMagnitude();
static System.Single Angle(UnityEngine.Vector2,UnityEngine.Vector2);
static System.Single Distance(UnityEngine.Vector2,UnityEngine.Vector2);
static UnityEngine.Vector2 ClampMagnitude(UnityEngine.Vector2,System.Single);
static System.Single SqrMagnitude(UnityEngine.Vector2);
System.Single SqrMagnitude();
static UnityEngine.Vector2 Min(UnityEngine.Vector2,UnityEngine.Vector2);
static UnityEngine.Vector2 Max(UnityEngine.Vector2,UnityEngine.Vector2);
static UnityEngine.Vector2 get_zero();
static UnityEngine.Vector2 get_one();
static UnityEngine.Vector2 get_up();
static UnityEngine.Vector2 get_down();
static UnityEngine.Vector2 get_left();
static UnityEngine.Vector2 get_right();
static UnityEngine.Vector2 op_Addition(UnityEngine.Vector2,UnityEngine.Vector2);
static UnityEngine.Vector2 op_Subtraction(UnityEngine.Vector2,UnityEngine.Vector2);
static UnityEngine.Vector2 op_UnaryNegation(UnityEngine.Vector2);
static UnityEngine.Vector2 op_Multiply(UnityEngine.Vector2,System.Single);
static UnityEngine.Vector2 op_Multiply(System.Single,UnityEngine.Vector2);
static UnityEngine.Vector2 op_Division(UnityEngine.Vector2,System.Single);
static System.Boolean op_Equality(UnityEngine.Vector2,UnityEngine.Vector2);
static System.Boolean op_Inequality(UnityEngine.Vector2,UnityEngine.Vector2);
static UnityEngine.Vector2 op_Implicit(UnityEngine.Vector3);
static UnityEngine.Vector3 op_Implicit(UnityEngine.Vector2);
}
class Vector3 : System.ValueType{
Single x;
Single y;
Single z;
this (System.Single,System.Single,System.Single);
this (System.Single,System.Single);
static UnityEngine.Vector3 Lerp(UnityEngine.Vector3,UnityEngine.Vector3,System.Single);
static UnityEngine.Vector3 Slerp(UnityEngine.Vector3,UnityEngine.Vector3,System.Single);
static UnityEngine.Vector3 MoveTowards(UnityEngine.Vector3,UnityEngine.Vector3,System.Single);
static UnityEngine.Vector3 RotateTowards(UnityEngine.Vector3,UnityEngine.Vector3,System.Single,System.Single);
System.Single get_Item(System.Int32);
System.Void set_Item(System.Int32,System.Single);
System.Void Set(System.Single,System.Single,System.Single);
static UnityEngine.Vector3 Scale(UnityEngine.Vector3,UnityEngine.Vector3);
System.Void Scale(UnityEngine.Vector3);
static UnityEngine.Vector3 Cross(UnityEngine.Vector3,UnityEngine.Vector3);
System.Int32 GetHashCode();
System.Boolean Equals(System.__object);
static UnityEngine.Vector3 Reflect(UnityEngine.Vector3,UnityEngine.Vector3);
static UnityEngine.Vector3 Normalize(UnityEngine.Vector3);
System.Void Normalize();
UnityEngine.Vector3 get_normalized();
System.String ToString();
System.String ToString(System.String);
static System.Single Dot(UnityEngine.Vector3,UnityEngine.Vector3);
static UnityEngine.Vector3 Project(UnityEngine.Vector3,UnityEngine.Vector3);
static UnityEngine.Vector3 ProjectOnPlane(UnityEngine.Vector3,UnityEngine.Vector3);
static UnityEngine.Vector3 Exclude(UnityEngine.Vector3,UnityEngine.Vector3);
static System.Single Angle(UnityEngine.Vector3,UnityEngine.Vector3);
static System.Single Distance(UnityEngine.Vector3,UnityEngine.Vector3);
static UnityEngine.Vector3 ClampMagnitude(UnityEngine.Vector3,System.Single);
static System.Single Magnitude(UnityEngine.Vector3);
System.Single get_magnitude();
static System.Single SqrMagnitude(UnityEngine.Vector3);
System.Single get_sqrMagnitude();
static UnityEngine.Vector3 Min(UnityEngine.Vector3,UnityEngine.Vector3);
static UnityEngine.Vector3 Max(UnityEngine.Vector3,UnityEngine.Vector3);
static UnityEngine.Vector3 get_zero();
static UnityEngine.Vector3 get_one();
static UnityEngine.Vector3 get_forward();
static UnityEngine.Vector3 get_back();
static UnityEngine.Vector3 get_up();
static UnityEngine.Vector3 get_down();
static UnityEngine.Vector3 get_left();
static UnityEngine.Vector3 get_right();
static UnityEngine.Vector3 get_fwd();
static System.Single AngleBetween(UnityEngine.Vector3,UnityEngine.Vector3);
static UnityEngine.Vector3 op_Addition(UnityEngine.Vector3,UnityEngine.Vector3);
static UnityEngine.Vector3 op_Subtraction(UnityEngine.Vector3,UnityEngine.Vector3);
static UnityEngine.Vector3 op_UnaryNegation(UnityEngine.Vector3);
static UnityEngine.Vector3 op_Multiply(UnityEngine.Vector3,System.Single);
static UnityEngine.Vector3 op_Multiply(System.Single,UnityEngine.Vector3);
static UnityEngine.Vector3 op_Division(UnityEngine.Vector3,System.Single);
static System.Boolean op_Equality(UnityEngine.Vector3,UnityEngine.Vector3);
static System.Boolean op_Inequality(UnityEngine.Vector3,UnityEngine.Vector3);
}
class Color : System.ValueType{
Single r;
Single g;
Single b;
Single a;
this (System.Single,System.Single,System.Single,System.Single);
this (System.Single,System.Single,System.Single);
System.String ToString();
System.String ToString(System.String);
System.String ToHexStringRGB();
System.String ToHexStringRGBA();
System.Int32 GetHashCode();
System.Boolean Equals(System.__object);
static UnityEngine.Color Lerp(UnityEngine.Color,UnityEngine.Color,System.Single);
static UnityEngine.Color get_red();
static UnityEngine.Color get_green();
static UnityEngine.Color get_blue();
static UnityEngine.Color get_white();
static UnityEngine.Color get_black();
static UnityEngine.Color get_yellow();
static UnityEngine.Color get_cyan();
static UnityEngine.Color get_magenta();
static UnityEngine.Color get_gray();
static UnityEngine.Color get_grey();
static UnityEngine.Color get_clear();
System.Single get_grayscale();
UnityEngine.Color get_linear();
UnityEngine.Color get_gamma();
System.Single get_maxColorComponent();
System.Single get_Item(System.Int32);
System.Void set_Item(System.Int32,System.Single);
static UnityEngine.Color op_Addition(UnityEngine.Color,UnityEngine.Color);
static UnityEngine.Color op_Subtraction(UnityEngine.Color,UnityEngine.Color);
static UnityEngine.Color op_Multiply(UnityEngine.Color,UnityEngine.Color);
static UnityEngine.Color op_Multiply(UnityEngine.Color,System.Single);
static UnityEngine.Color op_Multiply(System.Single,UnityEngine.Color);
static UnityEngine.Color op_Division(UnityEngine.Color,System.Single);
static System.Boolean op_Equality(UnityEngine.Color,UnityEngine.Color);
static System.Boolean op_Inequality(UnityEngine.Color,UnityEngine.Color);
static UnityEngine.Vector4 op_Implicit(UnityEngine.Color);
static UnityEngine.Color op_Implicit(UnityEngine.Vector4);
}
class Color32 : System.ValueType{
Byte r;
Byte g;
Byte b;
Byte a;
this (System.Byte,System.Byte,System.Byte,System.Byte);
System.String ToString();
System.String ToString(System.String);
static UnityEngine.Color32 Lerp(UnityEngine.Color32,UnityEngine.Color32,System.Single);
static UnityEngine.Color32 op_Implicit(UnityEngine.Color);
static UnityEngine.Color op_Implicit(UnityEngine.Color32);
}
class Quaternion : System.ValueType{
Single x;
Single y;
Single z;
Single w;
this (System.Single,System.Single,System.Single,System.Single);
System.Single get_Item(System.Int32);
System.Void set_Item(System.Int32,System.Single);
System.Void Set(System.Single,System.Single,System.Single,System.Single);
static UnityEngine.Quaternion get_identity();
static System.Single Dot(UnityEngine.Quaternion,UnityEngine.Quaternion);
static UnityEngine.Quaternion AngleAxis(System.Single,UnityEngine.Vector3);
static UnityEngine.Quaternion FromToRotation(UnityEngine.Vector3,UnityEngine.Vector3);
System.Void SetFromToRotation(UnityEngine.Vector3,UnityEngine.Vector3);
static UnityEngine.Quaternion LookRotation(UnityEngine.Vector3,UnityEngine.Vector3);
static UnityEngine.Quaternion LookRotation(UnityEngine.Vector3);
System.Void SetLookRotation(UnityEngine.Vector3);
System.Void SetLookRotation(UnityEngine.Vector3,UnityEngine.Vector3);
static UnityEngine.Quaternion Slerp(UnityEngine.Quaternion,UnityEngine.Quaternion,System.Single);
static UnityEngine.Quaternion Lerp(UnityEngine.Quaternion,UnityEngine.Quaternion,System.Single);
static UnityEngine.Quaternion RotateTowards(UnityEngine.Quaternion,UnityEngine.Quaternion,System.Single);
static UnityEngine.Quaternion Inverse(UnityEngine.Quaternion);
System.String ToString();
System.String ToString(System.String);
static System.Single Angle(UnityEngine.Quaternion,UnityEngine.Quaternion);
UnityEngine.Vector3 get_eulerAngles();
System.Void set_eulerAngles(UnityEngine.Vector3);
static UnityEngine.Quaternion Euler(System.Single,System.Single,System.Single);
static UnityEngine.Quaternion Euler(UnityEngine.Vector3);
static UnityEngine.Quaternion EulerRotation(System.Single,System.Single,System.Single);
static UnityEngine.Quaternion EulerRotation(UnityEngine.Vector3);
System.Void SetEulerRotation(System.Single,System.Single,System.Single);
System.Void SetEulerRotation(UnityEngine.Vector3);
UnityEngine.Vector3 ToEuler();
static UnityEngine.Quaternion EulerAngles(System.Single,System.Single,System.Single);
static UnityEngine.Quaternion EulerAngles(UnityEngine.Vector3);
System.Void SetEulerAngles(System.Single,System.Single,System.Single);
System.Void SetEulerAngles(UnityEngine.Vector3);
static UnityEngine.Vector3 ToEulerAngles(UnityEngine.Quaternion);
UnityEngine.Vector3 ToEulerAngles();
static UnityEngine.Quaternion AxisAngle(UnityEngine.Vector3,System.Single);
System.Void SetAxisAngle(UnityEngine.Vector3,System.Single);
System.Int32 GetHashCode();
System.Boolean Equals(System.__object);
static UnityEngine.Quaternion op_Multiply(UnityEngine.Quaternion,UnityEngine.Quaternion);
static UnityEngine.Vector3 op_Multiply(UnityEngine.Quaternion,UnityEngine.Vector3);
static System.Boolean op_Equality(UnityEngine.Quaternion,UnityEngine.Quaternion);
static System.Boolean op_Inequality(UnityEngine.Quaternion,UnityEngine.Quaternion);
}
class Rect : System.ValueType{
this (System.Single,System.Single,System.Single,System.Single);
this (UnityEngine.Vector2,UnityEngine.Vector2);
this (UnityEngine.Rect);
static UnityEngine.Rect MinMaxRect(System.Single,System.Single,System.Single,System.Single);
System.Void Set(System.Single,System.Single,System.Single,System.Single);
System.Single get_x();
System.Void set_x(System.Single);
System.Single get_y();
System.Void set_y(System.Single);
UnityEngine.Vector2 get_position();
System.Void set_position(UnityEngine.Vector2);
UnityEngine.Vector2 get_center();
System.Void set_center(UnityEngine.Vector2);
UnityEngine.Vector2 get_min();
System.Void set_min(UnityEngine.Vector2);
UnityEngine.Vector2 get_max();
System.Void set_max(UnityEngine.Vector2);
System.Single get_width();
System.Void set_width(System.Single);
System.Single get_height();
System.Void set_height(System.Single);
UnityEngine.Vector2 get_size();
System.Void set_size(UnityEngine.Vector2);
System.Single get_left();
System.Single get_right();
System.Single get_top();
System.Single get_bottom();
System.Single get_xMin();
System.Void set_xMin(System.Single);
System.Single get_yMin();
System.Void set_yMin(System.Single);
System.Single get_xMax();
System.Void set_xMax(System.Single);
System.Single get_yMax();
System.Void set_yMax(System.Single);
System.String ToString();
System.String ToString(System.String);
System.Boolean Contains(UnityEngine.Vector2);
System.Boolean Contains(UnityEngine.Vector3);
System.Boolean Contains(UnityEngine.Vector3,System.Boolean);
System.Boolean Overlaps(UnityEngine.Rect);
System.Boolean Overlaps(UnityEngine.Rect,System.Boolean);
static UnityEngine.Vector2 NormalizedToPoint(UnityEngine.Rect,UnityEngine.Vector2);
static UnityEngine.Vector2 PointToNormalized(UnityEngine.Rect,UnityEngine.Vector2);
System.Int32 GetHashCode();
System.Boolean Equals(System.__object);
static System.Boolean op_Inequality(UnityEngine.Rect,UnityEngine.Rect);
static System.Boolean op_Equality(UnityEngine.Rect,UnityEngine.Rect);
}
class Matrix4x4 : System.ValueType{
Single m00;
Single m10;
Single m20;
Single m30;
Single m01;
Single m11;
Single m21;
Single m31;
Single m02;
Single m12;
Single m22;
Single m32;
Single m03;
Single m13;
Single m23;
Single m33;
System.Single get_Item(System.Int32,System.Int32);
System.Void set_Item(System.Int32,System.Int32,System.Single);
System.Single get_Item(System.Int32);
System.Void set_Item(System.Int32,System.Single);
System.Int32 GetHashCode();
System.Boolean Equals(System.__object);
static UnityEngine.Matrix4x4 Inverse(UnityEngine.Matrix4x4);
static UnityEngine.Matrix4x4 Transpose(UnityEngine.Matrix4x4);
UnityEngine.Matrix4x4 get_inverse();
UnityEngine.Matrix4x4 get_transpose();
System.Boolean get_isIdentity();
UnityEngine.Vector4 GetColumn(System.Int32);
UnityEngine.Vector4 GetRow(System.Int32);
System.Void SetColumn(System.Int32,UnityEngine.Vector4);
System.Void SetRow(System.Int32,UnityEngine.Vector4);
UnityEngine.Vector3 MultiplyPoint(UnityEngine.Vector3);
UnityEngine.Vector3 MultiplyPoint3x4(UnityEngine.Vector3);
UnityEngine.Vector3 MultiplyVector(UnityEngine.Vector3);
static UnityEngine.Matrix4x4 Scale(UnityEngine.Vector3);
static UnityEngine.Matrix4x4 get_zero();
static UnityEngine.Matrix4x4 get_identity();
System.Void SetTRS(UnityEngine.Vector3,UnityEngine.Quaternion,UnityEngine.Vector3);
static UnityEngine.Matrix4x4 TRS(UnityEngine.Vector3,UnityEngine.Quaternion,UnityEngine.Vector3);
System.String ToString();
System.String ToString(System.String);
static UnityEngine.Matrix4x4 Ortho(System.Single,System.Single,System.Single,System.Single,System.Single,System.Single);
static UnityEngine.Matrix4x4 Perspective(System.Single,System.Single,System.Single,System.Single);
static UnityEngine.Matrix4x4 op_Multiply(UnityEngine.Matrix4x4,UnityEngine.Matrix4x4);
static UnityEngine.Vector4 op_Multiply(UnityEngine.Matrix4x4,UnityEngine.Vector4);
static System.Boolean op_Equality(UnityEngine.Matrix4x4,UnityEngine.Matrix4x4);
static System.Boolean op_Inequality(UnityEngine.Matrix4x4,UnityEngine.Matrix4x4);
}
class Bounds : System.ValueType{
this (UnityEngine.Vector3,UnityEngine.Vector3);
System.Int32 GetHashCode();
System.Boolean Equals(System.__object);
UnityEngine.Vector3 get_center();
System.Void set_center(UnityEngine.Vector3);
UnityEngine.Vector3 get_size();
System.Void set_size(UnityEngine.Vector3);
UnityEngine.Vector3 get_extents();
System.Void set_extents(UnityEngine.Vector3);
UnityEngine.Vector3 get_min();
System.Void set_min(UnityEngine.Vector3);
UnityEngine.Vector3 get_max();
System.Void set_max(UnityEngine.Vector3);
System.Void SetMinMax(UnityEngine.Vector3,UnityEngine.Vector3);
System.Void Encapsulate(UnityEngine.Vector3);
System.Void Encapsulate(UnityEngine.Bounds);
System.Void Expand(System.Single);
System.Void Expand(UnityEngine.Vector3);
System.Boolean Intersects(UnityEngine.Bounds);
System.Boolean Contains(UnityEngine.Vector3);
System.Single SqrDistance(UnityEngine.Vector3);
System.Boolean IntersectRay(UnityEngine.Ray);
UnityEngine.Vector3 ClosestPoint(UnityEngine.Vector3);
System.String ToString();
System.String ToString(System.String);
static System.Boolean op_Equality(UnityEngine.Bounds,UnityEngine.Bounds);
static System.Boolean op_Inequality(UnityEngine.Bounds,UnityEngine.Bounds);
}
class Vector4 : System.ValueType{
Single x;
Single y;
Single z;
Single w;
this (System.Single,System.Single,System.Single,System.Single);
this (System.Single,System.Single,System.Single);
this (System.Single,System.Single);
System.Single get_Item(System.Int32);
System.Void set_Item(System.Int32,System.Single);
System.Void Set(System.Single,System.Single,System.Single,System.Single);
static UnityEngine.Vector4 Lerp(UnityEngine.Vector4,UnityEngine.Vector4,System.Single);
static UnityEngine.Vector4 MoveTowards(UnityEngine.Vector4,UnityEngine.Vector4,System.Single);
static UnityEngine.Vector4 Scale(UnityEngine.Vector4,UnityEngine.Vector4);
System.Void Scale(UnityEngine.Vector4);
System.Int32 GetHashCode();
System.Boolean Equals(System.__object);
static UnityEngine.Vector4 Normalize(UnityEngine.Vector4);
System.Void Normalize();
UnityEngine.Vector4 get_normalized();
System.String ToString();
System.String ToString(System.String);
static System.Single Dot(UnityEngine.Vector4,UnityEngine.Vector4);
static UnityEngine.Vector4 Project(UnityEngine.Vector4,UnityEngine.Vector4);
static System.Single Distance(UnityEngine.Vector4,UnityEngine.Vector4);
static System.Single Magnitude(UnityEngine.Vector4);
System.Single get_magnitude();
static System.Single SqrMagnitude(UnityEngine.Vector4);
System.Single SqrMagnitude();
System.Single get_sqrMagnitude();
static UnityEngine.Vector4 Min(UnityEngine.Vector4,UnityEngine.Vector4);
static UnityEngine.Vector4 Max(UnityEngine.Vector4,UnityEngine.Vector4);
static UnityEngine.Vector4 get_zero();
static UnityEngine.Vector4 get_one();
static UnityEngine.Vector4 op_Addition(UnityEngine.Vector4,UnityEngine.Vector4);
static UnityEngine.Vector4 op_Subtraction(UnityEngine.Vector4,UnityEngine.Vector4);
static UnityEngine.Vector4 op_UnaryNegation(UnityEngine.Vector4);
static UnityEngine.Vector4 op_Multiply(UnityEngine.Vector4,System.Single);
static UnityEngine.Vector4 op_Multiply(System.Single,UnityEngine.Vector4);
static UnityEngine.Vector4 op_Division(UnityEngine.Vector4,System.Single);
static System.Boolean op_Equality(UnityEngine.Vector4,UnityEngine.Vector4);
static System.Boolean op_Inequality(UnityEngine.Vector4,UnityEngine.Vector4);
static UnityEngine.Vector4 op_Implicit(UnityEngine.Vector3);
static UnityEngine.Vector3 op_Implicit(UnityEngine.Vector4);
static UnityEngine.Vector4 op_Implicit(UnityEngine.Vector2);
static UnityEngine.Vector2 op_Implicit(UnityEngine.Vector4);
}
class Ray : System.ValueType{
this (UnityEngine.Vector3,UnityEngine.Vector3);
UnityEngine.Vector3 get_origin();
System.Void set_origin(UnityEngine.Vector3);
UnityEngine.Vector3 get_direction();
System.Void set_direction(UnityEngine.Vector3);
UnityEngine.Vector3 GetPoint(System.Single);
System.String ToString();
System.String ToString(System.String);
}
class Ray2D : System.ValueType{
this (UnityEngine.Vector2,UnityEngine.Vector2);
UnityEngine.Vector2 get_origin();
System.Void set_origin(UnityEngine.Vector2);
UnityEngine.Vector2 get_direction();
System.Void set_direction(UnityEngine.Vector2);
UnityEngine.Vector2 GetPoint(System.Single);
System.String ToString();
System.String ToString(System.String);
}
class Plane : System.ValueType{
this (UnityEngine.Vector3,UnityEngine.Vector3);
this (UnityEngine.Vector3,System.Single);
this (UnityEngine.Vector3,UnityEngine.Vector3,UnityEngine.Vector3);
UnityEngine.Vector3 get_normal();
System.Void set_normal(UnityEngine.Vector3);
System.Single get_distance();
System.Void set_distance(System.Single);
System.Void SetNormalAndPosition(UnityEngine.Vector3,UnityEngine.Vector3);
System.Void Set3Points(UnityEngine.Vector3,UnityEngine.Vector3,UnityEngine.Vector3);
System.Single GetDistanceToPoint(UnityEngine.Vector3);
System.Boolean GetSide(UnityEngine.Vector3);
System.Boolean SameSide(UnityEngine.Vector3,UnityEngine.Vector3);
}
class Mathf : System.ValueType{
static System.Single Sin(System.Single);
static System.Single Cos(System.Single);
static System.Single Tan(System.Single);
static System.Single Asin(System.Single);
static System.Single Acos(System.Single);
static System.Single Atan(System.Single);
static System.Single Atan2(System.Single,System.Single);
static System.Single Sqrt(System.Single);
static System.Single Abs(System.Single);
static System.Int32 Abs(System.Int32);
static System.Single Min(System.Single,System.Single);
static System.Single Min(System.Single[]);
static System.Int32 Min(System.Int32,System.Int32);
static System.Int32 Min(System.Int32[]);
static System.Single Max(System.Single,System.Single);
static System.Single Max(System.Single[]);
static System.Int32 Max(System.Int32,System.Int32);
static System.Int32 Max(System.Int32[]);
static System.Single Pow(System.Single,System.Single);
static System.Single Exp(System.Single);
static System.Single Log(System.Single,System.Single);
static System.Single Log(System.Single);
static System.Single Log10(System.Single);
static System.Single Ceil(System.Single);
static System.Single Floor(System.Single);
static System.Single Round(System.Single);
static System.Int32 CeilToInt(System.Single);
static System.Int32 FloorToInt(System.Single);
static System.Int32 RoundToInt(System.Single);
static System.Single Sign(System.Single);
static System.Single Clamp(System.Single,System.Single,System.Single);
static System.Int32 Clamp(System.Int32,System.Int32,System.Int32);
static System.Single Clamp01(System.Single);
static System.Single Lerp(System.Single,System.Single,System.Single);
static System.Single LerpAngle(System.Single,System.Single,System.Single);
static System.Single MoveTowards(System.Single,System.Single,System.Single);
static System.Single MoveTowardsAngle(System.Single,System.Single,System.Single);
static System.Single SmoothStep(System.Single,System.Single,System.Single);
static System.Single Gamma(System.Single,System.Single,System.Single);
static System.Boolean Approximately(System.Single,System.Single);
static System.Single Repeat(System.Single,System.Single);
static System.Single PingPong(System.Single,System.Single);
static System.Single InverseLerp(System.Single,System.Single,System.Single);
static System.Int32 ClosestPowerOfTwo(System.Int32);
static System.Single GammaToLinearSpace(System.Single);
static System.Single LinearToGammaSpace(System.Single);
static System.Boolean IsPowerOfTwo(System.Int32);
static System.Int32 NextPowerOfTwo(System.Int32);
static System.Single DeltaAngle(System.Single,System.Single);
static System.Single PerlinNoise(System.Single,System.Single);
static System.UInt16 FloatToHalf(System.Single);
static System.Single HalfToFloat(System.UInt16);
}
class RPCMode : System.Enum{
Int32 value__;
}
class ConnectionTesterStatus : System.Enum{
Int32 value__;
}
class NetworkConnectionError : System.Enum{
Int32 value__;
}
class NetworkDisconnection : System.Enum{
Int32 value__;
}
class MasterServerEvent : System.Enum{
Int32 value__;
}
class NetworkStateSynchronization : System.Enum{
Int32 value__;
}
class NetworkPeerType : System.Enum{
Int32 value__;
}
class NetworkLogLevel : System.Enum{
Int32 value__;
}
class NetworkPlayer : System.ValueType{
this (System.String,System.Int32);
System.Int32 GetHashCode();
System.Boolean Equals(System.__object);
System.String get_ipAddress();
System.Int32 get_port();
System.String get_guid();
System.String ToString();
System.String get_externalIP();
System.Int32 get_externalPort();
static System.Boolean op_Equality(UnityEngine.NetworkPlayer,UnityEngine.NetworkPlayer);
static System.Boolean op_Inequality(UnityEngine.NetworkPlayer,UnityEngine.NetworkPlayer);
}
class NetworkViewID : System.ValueType{
static UnityEngine.NetworkViewID get_unassigned();
System.Int32 GetHashCode();
System.Boolean Equals(System.__object);
System.Boolean get_isMine();
UnityEngine.NetworkPlayer get_owner();
System.String ToString();
static System.Boolean op_Equality(UnityEngine.NetworkViewID,UnityEngine.NetworkViewID);
static System.Boolean op_Inequality(UnityEngine.NetworkViewID,UnityEngine.NetworkViewID);
}
class Ping : System.__object{
this (System.String);
System.Void DestroyPing();
System.Boolean get_isDone();
System.Int32 get_time();
System.String get_ip();
}
class NetworkView : UnityEngine.Behaviour{
this ();
System.Void RPC(System.String,UnityEngine.RPCMode,System.__object[]);
System.Void RPC(System.String,UnityEngine.NetworkPlayer,System.__object[]);
UnityEngine.Component get_observed();
System.Void set_observed(UnityEngine.Component);
UnityEngine.NetworkStateSynchronization get_stateSynchronization();
System.Void set_stateSynchronization(UnityEngine.NetworkStateSynchronization);
UnityEngine.NetworkViewID get_viewID();
System.Void set_viewID(UnityEngine.NetworkViewID);
System.Int32 get_group();
System.Void set_group(System.Int32);
System.Boolean get_isMine();
UnityEngine.NetworkPlayer get_owner();
System.Boolean SetScope(UnityEngine.NetworkPlayer,System.Boolean);
static UnityEngine.NetworkView Find(UnityEngine.NetworkViewID);
}
class Network : System.__object{
this ();
static System.String get_connectionTesterIP();
static System.Void set_connectionTesterIP(System.String);
static System.Int32 get_connectionTesterPort();
static System.Void set_connectionTesterPort(System.Int32);
static System.Boolean HavePublicAddress();
static System.Int32 get_maxConnections();
static System.Void set_maxConnections(System.Int32);
static System.String get_proxyIP();
static System.Void set_proxyIP(System.String);
static System.Int32 get_proxyPort();
static System.Void set_proxyPort(System.Int32);
static System.Boolean get_useProxy();
static System.Void set_useProxy(System.Boolean);
static System.String get_proxyPassword();
static System.Void set_proxyPassword(System.String);
static UnityEngine.NetworkConnectionError InitializeServer(System.Int32,System.Int32,System.Boolean);
static UnityEngine.NetworkConnectionError InitializeServer(System.Int32,System.Int32);
static System.String get_incomingPassword();
static System.Void set_incomingPassword(System.String);
static UnityEngine.NetworkLogLevel get_logLevel();
static System.Void set_logLevel(UnityEngine.NetworkLogLevel);
static System.Void InitializeSecurity();
static UnityEngine.NetworkConnectionError Connect(System.String,System.Int32);
static UnityEngine.NetworkConnectionError Connect(System.String,System.Int32,System.String);
static UnityEngine.NetworkConnectionError Connect(System.String[],System.Int32);
static UnityEngine.NetworkConnectionError Connect(System.String[],System.Int32,System.String);
static UnityEngine.NetworkConnectionError Connect(System.String);
static UnityEngine.NetworkConnectionError Connect(System.String,System.String);
static UnityEngine.NetworkConnectionError Connect(UnityEngine.HostData);
static UnityEngine.NetworkConnectionError Connect(UnityEngine.HostData,System.String);
static System.Void Disconnect(System.Int32);
static System.Void Disconnect();
static System.Void CloseConnection(UnityEngine.NetworkPlayer,System.Boolean);
static UnityEngine.NetworkPlayer[] get_connections();
static UnityEngine.NetworkPlayer get_player();
static UnityEngine.NetworkViewID AllocateViewID();
static UnityEngine.__UnityObject Instantiate(UnityEngine.__UnityObject,UnityEngine.Vector3,UnityEngine.Quaternion,System.Int32);
static System.Void Destroy(UnityEngine.NetworkViewID);
static System.Void Destroy(UnityEngine.GameObject);
static System.Void DestroyPlayerObjects(UnityEngine.NetworkPlayer);
static System.Void RemoveRPCs(UnityEngine.NetworkPlayer);
static System.Void RemoveRPCs(UnityEngine.NetworkPlayer,System.Int32);
static System.Void RemoveRPCs(UnityEngine.NetworkViewID);
static System.Void RemoveRPCsInGroup(System.Int32);
static System.Boolean get_isClient();
static System.Boolean get_isServer();
static UnityEngine.NetworkPeerType get_peerType();
static System.Void SetLevelPrefix(System.Int32);
static System.Int32 GetLastPing(UnityEngine.NetworkPlayer);
static System.Int32 GetAveragePing(UnityEngine.NetworkPlayer);
static System.Single get_sendRate();
static System.Void set_sendRate(System.Single);
static System.Boolean get_isMessageQueueRunning();
static System.Void set_isMessageQueueRunning(System.Boolean);
static System.Void SetReceivingEnabled(UnityEngine.NetworkPlayer,System.Int32,System.Boolean);
static System.Void SetSendingEnabled(System.Int32,System.Boolean);
static System.Void SetSendingEnabled(UnityEngine.NetworkPlayer,System.Int32,System.Boolean);
static System.Double get_time();
static System.Int32 get_minimumAllocatableViewIDs();
static System.Void set_minimumAllocatableViewIDs(System.Int32);
static System.Boolean get_useNat();
static System.Void set_useNat(System.Boolean);
static System.String get_natFacilitatorIP();
static System.Void set_natFacilitatorIP(System.String);
static System.Int32 get_natFacilitatorPort();
static System.Void set_natFacilitatorPort(System.Int32);
static UnityEngine.ConnectionTesterStatus TestConnection(System.Boolean);
static UnityEngine.ConnectionTesterStatus TestConnection();
static UnityEngine.ConnectionTesterStatus TestConnectionNAT(System.Boolean);
static UnityEngine.ConnectionTesterStatus TestConnectionNAT();
}
class BitStream : System.__object{
this ();
System.Boolean get_isReading();
System.Boolean get_isWriting();
}
class RPC : System.Attribute{
this ();
}
class HostData : System.__object{
this ();
System.Boolean get_useNat();
System.Void set_useNat(System.Boolean);
System.String get_gameType();
System.Void set_gameType(System.String);
System.String get_gameName();
System.Void set_gameName(System.String);
System.Int32 get_connectedPlayers();
System.Void set_connectedPlayers(System.Int32);
System.Int32 get_playerLimit();
System.Void set_playerLimit(System.Int32);
System.String[] get_ip();
System.Void set_ip(System.String[]);
System.Int32 get_port();
System.Void set_port(System.Int32);
System.Boolean get_passwordProtected();
System.Void set_passwordProtected(System.Boolean);
System.String get_comment();
System.Void set_comment(System.String);
System.String get_guid();
System.Void set_guid(System.String);
}
class MasterServer : System.__object{
this ();
static System.String get_ipAddress();
static System.Void set_ipAddress(System.String);
static System.Int32 get_port();
static System.Void set_port(System.Int32);
static System.Void RequestHostList(System.String);
static UnityEngine.HostData[] PollHostList();
static System.Void RegisterHost(System.String,System.String,System.String);
static System.Void RegisterHost(System.String,System.String);
static System.Void UnregisterHost();
static System.Void ClearHostList();
static System.Int32 get_updateRate();
static System.Void set_updateRate(System.Int32);
static System.Boolean get_dedicatedServer();
static System.Void set_dedicatedServer(System.Boolean);
}
class NetworkMessageInfo : System.ValueType{
System.Double get_timestamp();
UnityEngine.NetworkPlayer get_sender();
UnityEngine.NetworkView get_networkView();
}
class DrivenTransformProperties : System.Enum{
Int32 value__;
}
class DrivenRectTransformTracker : System.ValueType{
System.Void Add(UnityEngine.__UnityObject,UnityEngine.RectTransform,UnityEngine.DrivenTransformProperties);
System.Void Clear();
}
class RectTransform : UnityEngine.Transform{
static class Edge : System.Enum{
Int32 value__;
}
static class Axis : System.Enum{
Int32 value__;
}
static class ReapplyDrivenProperties : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.Void Invoke(UnityEngine.RectTransform);
System.IAsyncResult BeginInvoke(UnityEngine.RectTransform,System.AsyncCallback,System.__object);
System.Void EndInvoke(System.IAsyncResult);
}
this ();
static System.Void add_reapplyDrivenProperties(UnityEngine.RectTransform.ReapplyDrivenProperties);
static System.Void remove_reapplyDrivenProperties(UnityEngine.RectTransform.ReapplyDrivenProperties);
UnityEngine.Rect get_rect();
UnityEngine.Vector2 get_anchorMin();
System.Void set_anchorMin(UnityEngine.Vector2);
UnityEngine.Vector2 get_anchorMax();
System.Void set_anchorMax(UnityEngine.Vector2);
UnityEngine.Vector3 get_anchoredPosition3D();
System.Void set_anchoredPosition3D(UnityEngine.Vector3);
UnityEngine.Vector2 get_anchoredPosition();
System.Void set_anchoredPosition(UnityEngine.Vector2);
UnityEngine.Vector2 get_sizeDelta();
System.Void set_sizeDelta(UnityEngine.Vector2);
UnityEngine.Vector2 get_pivot();
System.Void set_pivot(UnityEngine.Vector2);
System.Void GetLocalCorners(UnityEngine.Vector3[]);
System.Void GetWorldCorners(UnityEngine.Vector3[]);
UnityEngine.Vector2 get_offsetMin();
System.Void set_offsetMin(UnityEngine.Vector2);
UnityEngine.Vector2 get_offsetMax();
System.Void set_offsetMax(UnityEngine.Vector2);
System.Void SetInsetAndSizeFromParentEdge(UnityEngine.RectTransform.Edge,System.Single,System.Single);
System.Void SetSizeWithCurrentAnchors(UnityEngine.RectTransform.Axis,System.Single);
}
class ResourceRequest : UnityEngine.AsyncOperation{
this ();
UnityEngine.__UnityObject get_asset();
}
class Resources : System.__object{
this ();
static UnityEngine.__UnityObject[] FindObjectsOfTypeAll(System.Type);
static UnityEngine.__UnityObject Load(System.String);
static UnityEngine.__UnityObject Load(System.String,System.Type);
static UnityEngine.ResourceRequest LoadAsync(System.String);
static UnityEngine.ResourceRequest LoadAsync(System.String,System.Type);
static UnityEngine.__UnityObject[] LoadAll(System.String,System.Type);
static UnityEngine.__UnityObject[] LoadAll(System.String);
static UnityEngine.__UnityObject GetBuiltinResource(System.Type,System.String);
static UnityEngine.__UnityObject LoadAssetAtPath(System.String,System.Type);
static System.Void UnloadAsset(UnityEngine.__UnityObject);
static UnityEngine.AsyncOperation UnloadUnusedAssets();
}
class TextAsset : UnityEngine.__UnityObject{
this ();
System.String get_text();
System.Byte[] get_bytes();
System.String ToString();
}
class SerializePrivateVariables : System.Attribute{
this ();
}
class SerializeField : System.Attribute{
this ();
}
interface ISerializationCallbackReceiver{
System.Void OnBeforeSerialize();
System.Void OnAfterDeserialize();
}
class Security : System.__object{
this ();
static System.Boolean PrefetchSocketPolicy(System.String,System.Int32);
static System.Boolean PrefetchSocketPolicy(System.String,System.Int32,System.Int32);
static System.String GetChainOfTrustValue(System.String);
static System.Reflection.Assembly LoadAndVerifyAssembly(System.Byte[],System.String);
static System.Reflection.Assembly LoadAndVerifyAssembly(System.Byte[]);
}
class Shader : UnityEngine.__UnityObject{
this ();
static UnityEngine.Shader Find(System.String);
System.Boolean get_isSupported();
static System.Void EnableKeyword(System.String);
static System.Void DisableKeyword(System.String);
static System.Boolean IsKeywordEnabled(System.String);
System.Int32 get_maximumLOD();
System.Void set_maximumLOD(System.Int32);
static System.Int32 get_globalMaximumLOD();
static System.Void set_globalMaximumLOD(System.Int32);
System.Int32 get_renderQueue();
static System.Void SetGlobalColor(System.String,UnityEngine.Color);
static System.Void SetGlobalColor(System.Int32,UnityEngine.Color);
static System.Void SetGlobalVector(System.String,UnityEngine.Vector4);
static System.Void SetGlobalVector(System.Int32,UnityEngine.Vector4);
static System.Void SetGlobalFloat(System.String,System.Single);
static System.Void SetGlobalFloat(System.Int32,System.Single);
static System.Void SetGlobalInt(System.String,System.Int32);
static System.Void SetGlobalInt(System.Int32,System.Int32);
static System.Void SetGlobalTexture(System.String,UnityEngine.Texture);
static System.Void SetGlobalTexture(System.Int32,UnityEngine.Texture);
static System.Void SetGlobalMatrix(System.String,UnityEngine.Matrix4x4);
static System.Void SetGlobalMatrix(System.Int32,UnityEngine.Matrix4x4);
static System.Void SetGlobalTexGenMode(System.String,UnityEngine.TexGenMode);
static System.Void SetGlobalTextureMatrixName(System.String,System.String);
static System.Void SetGlobalBuffer(System.String,UnityEngine.ComputeBuffer);
static System.Int32 PropertyToID(System.String);
static System.Void WarmupAllShaders();
}
class Material : UnityEngine.__UnityObject{
this (System.String);
this (UnityEngine.Shader);
this (UnityEngine.Material);
UnityEngine.Shader get_shader();
System.Void set_shader(UnityEngine.Shader);
UnityEngine.Color get_color();
System.Void set_color(UnityEngine.Color);
UnityEngine.Texture get_mainTexture();
System.Void set_mainTexture(UnityEngine.Texture);
UnityEngine.Vector2 get_mainTextureOffset();
System.Void set_mainTextureOffset(UnityEngine.Vector2);
UnityEngine.Vector2 get_mainTextureScale();
System.Void set_mainTextureScale(UnityEngine.Vector2);
System.Void SetColor(System.String,UnityEngine.Color);
System.Void SetColor(System.Int32,UnityEngine.Color);
UnityEngine.Color GetColor(System.String);
UnityEngine.Color GetColor(System.Int32);
System.Void SetVector(System.String,UnityEngine.Vector4);
System.Void SetVector(System.Int32,UnityEngine.Vector4);
UnityEngine.Vector4 GetVector(System.String);
UnityEngine.Vector4 GetVector(System.Int32);
System.Void SetTexture(System.String,UnityEngine.Texture);
System.Void SetTexture(System.Int32,UnityEngine.Texture);
UnityEngine.Texture GetTexture(System.String);
UnityEngine.Texture GetTexture(System.Int32);
System.Void SetTextureOffset(System.String,UnityEngine.Vector2);
UnityEngine.Vector2 GetTextureOffset(System.String);
System.Void SetTextureScale(System.String,UnityEngine.Vector2);
UnityEngine.Vector2 GetTextureScale(System.String);
System.Void SetMatrix(System.String,UnityEngine.Matrix4x4);
System.Void SetMatrix(System.Int32,UnityEngine.Matrix4x4);
UnityEngine.Matrix4x4 GetMatrix(System.String);
UnityEngine.Matrix4x4 GetMatrix(System.Int32);
System.Void SetFloat(System.String,System.Single);
System.Void SetFloat(System.Int32,System.Single);
System.Single GetFloat(System.String);
System.Single GetFloat(System.Int32);
System.Void SetInt(System.String,System.Int32);
System.Void SetInt(System.Int32,System.Int32);
System.Int32 GetInt(System.String);
System.Int32 GetInt(System.Int32);
System.Void SetBuffer(System.String,UnityEngine.ComputeBuffer);
System.Boolean HasProperty(System.String);
System.Boolean HasProperty(System.Int32);
System.String GetTag(System.String,System.Boolean,System.String);
System.String GetTag(System.String,System.Boolean);
System.Void SetOverrideTag(System.String,System.String);
System.Void Lerp(UnityEngine.Material,UnityEngine.Material,System.Single);
System.Int32 get_passCount();
System.Boolean SetPass(System.Int32);
System.Int32 get_renderQueue();
System.Void set_renderQueue(System.Int32);
static UnityEngine.Material Create(System.String);
System.Void CopyPropertiesFromMaterial(UnityEngine.Material);
System.Void EnableKeyword(System.String);
System.Void DisableKeyword(System.String);
System.Boolean IsKeywordEnabled(System.String);
System.String[] get_shaderKeywords();
System.Void set_shaderKeywords(System.String[]);
UnityEngine.MaterialGlobalIlluminationFlags get_globalIlluminationFlags();
System.Void set_globalIlluminationFlags(UnityEngine.MaterialGlobalIlluminationFlags);
}
class ShaderVariantCollection : UnityEngine.__UnityObject{
static class ShaderVariant : System.ValueType{
Shader shader;
PassType passType;
String[] keywords;
this (UnityEngine.Shader,UnityEngine.Rendering.PassType,System.String[]);
}
this ();
System.Int32 get_shaderCount();
System.Int32 get_variantCount();
System.Boolean Add(UnityEngine.ShaderVariantCollection.ShaderVariant);
System.Boolean Remove(UnityEngine.ShaderVariantCollection.ShaderVariant);
System.Boolean Contains(UnityEngine.ShaderVariantCollection.ShaderVariant);
System.Void Clear();
System.Boolean get_isWarmedUp();
System.Void WarmUp();
}
class ProceduralProcessorUsage : System.Enum{
Int32 value__;
}
class ProceduralCacheSize : System.Enum{
Int32 value__;
}
class ProceduralLoadingBehavior : System.Enum{
Int32 value__;
}
class ProceduralPropertyType : System.Enum{
Int32 value__;
}
class ProceduralOutputType : System.Enum{
Int32 value__;
}
class ProceduralPropertyDescription : System.__object{
String name;
String label;
String group;
ProceduralPropertyType type;
Boolean hasRange;
Single minimum;
Single maximum;
Single step;
String[] enumOptions;
String[] componentLabels;
this ();
}
class ProceduralMaterial : UnityEngine.Material{
UnityEngine.ProceduralPropertyDescription[] GetProceduralPropertyDescriptions();
System.Boolean HasProceduralProperty(System.String);
System.Boolean GetProceduralBoolean(System.String);
System.Void SetProceduralBoolean(System.String,System.Boolean);
System.Single GetProceduralFloat(System.String);
System.Void SetProceduralFloat(System.String,System.Single);
UnityEngine.Vector4 GetProceduralVector(System.String);
System.Void SetProceduralVector(System.String,UnityEngine.Vector4);
UnityEngine.Color GetProceduralColor(System.String);
System.Void SetProceduralColor(System.String,UnityEngine.Color);
System.Int32 GetProceduralEnum(System.String);
System.Void SetProceduralEnum(System.String,System.Int32);
UnityEngine.Texture2D GetProceduralTexture(System.String);
System.Void SetProceduralTexture(System.String,UnityEngine.Texture2D);
System.Boolean IsProceduralPropertyCached(System.String);
System.Void CacheProceduralProperty(System.String,System.Boolean);
System.Void ClearCache();
UnityEngine.ProceduralCacheSize get_cacheSize();
System.Void set_cacheSize(UnityEngine.ProceduralCacheSize);
System.Int32 get_animationUpdateRate();
System.Void set_animationUpdateRate(System.Int32);
System.Void RebuildTextures();
System.Void RebuildTexturesImmediately();
System.Boolean get_isProcessing();
static System.Void StopRebuilds();
System.Boolean get_isCachedDataAvailable();
System.Boolean get_isLoadTimeGenerated();
System.Void set_isLoadTimeGenerated(System.Boolean);
UnityEngine.ProceduralLoadingBehavior get_loadingBehavior();
static System.Boolean get_isSupported();
static UnityEngine.ProceduralProcessorUsage get_substanceProcessorUsage();
static System.Void set_substanceProcessorUsage(UnityEngine.ProceduralProcessorUsage);
System.String get_preset();
System.Void set_preset(System.String);
UnityEngine.Texture[] GetGeneratedTextures();
UnityEngine.ProceduralTexture GetGeneratedTexture(System.String);
System.Boolean get_isReadable();
System.Void set_isReadable(System.Boolean);
}
class ProceduralTexture : UnityEngine.Texture{
this ();
UnityEngine.ProceduralOutputType GetProceduralOutputType();
System.Boolean get_hasAlpha();
UnityEngine.TextureFormat get_format();
UnityEngine.Color32[] GetPixels32(System.Int32,System.Int32,System.Int32,System.Int32);
}
class SpriteAlignment : System.Enum{
Int32 value__;
}
class SpritePackingMode : System.Enum{
Int32 value__;
}
class SpritePackingRotation : System.Enum{
Int32 value__;
}
class SpriteMeshType : System.Enum{
Int32 value__;
}
class Sprite : UnityEngine.__UnityObject{
this ();
static UnityEngine.Sprite Create(UnityEngine.Texture2D,UnityEngine.Rect,UnityEngine.Vector2,System.Single,System.UInt32,UnityEngine.SpriteMeshType,UnityEngine.Vector4);
static UnityEngine.Sprite Create(UnityEngine.Texture2D,UnityEngine.Rect,UnityEngine.Vector2,System.Single,System.UInt32,UnityEngine.SpriteMeshType);
static UnityEngine.Sprite Create(UnityEngine.Texture2D,UnityEngine.Rect,UnityEngine.Vector2,System.Single,System.UInt32);
static UnityEngine.Sprite Create(UnityEngine.Texture2D,UnityEngine.Rect,UnityEngine.Vector2,System.Single);
static UnityEngine.Sprite Create(UnityEngine.Texture2D,UnityEngine.Rect,UnityEngine.Vector2);
UnityEngine.Bounds get_bounds();
UnityEngine.Rect get_rect();
System.Single get_pixelsPerUnit();
UnityEngine.Texture2D get_texture();
UnityEngine.Rect get_textureRect();
UnityEngine.Vector2 get_textureRectOffset();
System.Boolean get_packed();
UnityEngine.SpritePackingMode get_packingMode();
UnityEngine.SpritePackingRotation get_packingRotation();
UnityEngine.Vector2 get_pivot();
UnityEngine.Vector4 get_border();
UnityEngine.Vector2[] get_vertices();
System.UInt16[] get_triangles();
UnityEngine.Vector2[] get_uv();
System.Void OverrideGeometry(UnityEngine.Vector2[],System.UInt16[]);
}
class SpriteRenderer : UnityEngine.Renderer{
this ();
UnityEngine.Sprite get_sprite();
System.Void set_sprite(UnityEngine.Sprite);
UnityEngine.Color get_color();
System.Void set_color(UnityEngine.Color);
}
class Hash128 : System.ValueType{
this (System.UInt32,System.UInt32,System.UInt32,System.UInt32);
System.String ToString();
static UnityEngine.Hash128 Parse(System.String);
}
class WWW : System.__object{
this (System.String);
this (System.String,UnityEngine.WWWForm);
this (System.String,System.Byte[]);
this (System.String,System.Byte[],System.Collections.Hashtable);
System.Void Dispose();
System.Void InitWWW(System.String,System.Byte[],System.String[]);
static System.String EscapeURL(System.String);
static System.String EscapeURL(System.String,System.Text.Encoding);
static System.String UnEscapeURL(System.String);
static System.String UnEscapeURL(System.String,System.Text.Encoding);
System.String get_text();
System.String get_data();
System.Byte[] get_bytes();
System.Int32 get_size();
System.String get_error();
UnityEngine.Texture2D get_texture();
UnityEngine.Texture2D get_textureNonReadable();
UnityEngine.AudioClip get_audioClip();
UnityEngine.AudioClip GetAudioClip(System.Boolean);
UnityEngine.AudioClip GetAudioClip(System.Boolean,System.Boolean);
UnityEngine.AudioClip GetAudioClip(System.Boolean,System.Boolean,UnityEngine.AudioType);
UnityEngine.AudioClip GetAudioClipCompressed();
UnityEngine.AudioClip GetAudioClipCompressed(System.Boolean);
UnityEngine.AudioClip GetAudioClipCompressed(System.Boolean,UnityEngine.AudioType);
UnityEngine.MovieTexture get_movie();
System.Void LoadImageIntoTexture(UnityEngine.Texture2D);
System.Boolean get_isDone();
static System.String GetURL(System.String);
static UnityEngine.Texture2D GetTextureFromURL(System.String);
System.Single get_progress();
System.Single get_uploadProgress();
System.Int32 get_bytesDownloaded();
UnityEngine.AudioClip get_oggVorbis();
System.Void LoadUnityWeb();
System.String get_url();
UnityEngine.AssetBundle get_assetBundle();
UnityEngine.ThreadPriority get_threadPriority();
System.Void set_threadPriority(UnityEngine.ThreadPriority);
static UnityEngine.WWW LoadFromCacheOrDownload(System.String,System.Int32);
static UnityEngine.WWW LoadFromCacheOrDownload(System.String,System.Int32,System.UInt32);
static UnityEngine.WWW LoadFromCacheOrDownload(System.String,UnityEngine.Hash128);
static UnityEngine.WWW LoadFromCacheOrDownload(System.String,UnityEngine.Hash128,System.UInt32);
}
class WWWForm : System.__object{
this ();
System.Void AddField(System.String,System.String);
System.Void AddField(System.String,System.String,System.Text.Encoding);
System.Void AddField(System.String,System.Int32);
System.Void AddBinaryData(System.String,System.Byte[],System.String);
System.Void AddBinaryData(System.String,System.Byte[]);
System.Void AddBinaryData(System.String,System.Byte[],System.String,System.String);
System.Byte[] get_data();
}
class CacheIndex : System.ValueType{
String name;
Int32 bytesUsed;
Int32 expires;
}
class Caching : System.__object{
this ();
static System.Boolean Authorize(System.String,System.String,System.Int64,System.String);
static System.Boolean Authorize(System.String,System.String,System.Int64,System.Int32,System.String);
static System.Boolean Authorize(System.String,System.String,System.Int32,System.Int32,System.String);
static System.Boolean Authorize(System.String,System.String,System.Int32,System.String);
static System.Boolean CleanCache();
static System.Boolean CleanNamedCache(System.String);
static System.Boolean DeleteFromCache(System.String);
static System.Int32 GetVersionFromCache(System.String);
static System.Boolean IsVersionCached(System.String,System.Int32);
static System.Boolean IsVersionCached(System.String,UnityEngine.Hash128);
static System.Boolean MarkAsUsed(System.String,System.Int32);
static System.Boolean MarkAsUsed(System.String,UnityEngine.Hash128);
static UnityEngine.CacheIndex[] get_index();
static System.Int64 get_spaceFree();
static System.Int64 get_maximumAvailableDiskSpace();
static System.Void set_maximumAvailableDiskSpace(System.Int64);
static System.Int64 get_spaceOccupied();
static System.Int32 get_spaceAvailable();
static System.Int32 get_spaceUsed();
static System.Int32 get_expirationDelay();
static System.Void set_expirationDelay(System.Int32);
static System.Boolean get_enabled();
static System.Void set_enabled(System.Boolean);
static System.Boolean get_ready();
static System.Void SetNoBackupFlag(System.String,System.Int32);
static System.Void SetNoBackupFlag(System.String,UnityEngine.Hash128);
static System.Void ResetNoBackupFlag(System.String,System.Int32);
static System.Void ResetNoBackupFlag(System.String,UnityEngine.Hash128);
}
class UnityEventQueueSystem : System.__object{
this ();
static System.String GenerateEventIdForPayload(System.String);
static System.IntPtr GetGlobalEventQueue();
}
class AsyncOperation : UnityEngine.YieldInstruction{
this ();
System.Boolean get_isDone();
System.Single get_progress();
System.Int32 get_priority();
System.Void set_priority(System.Int32);
System.Boolean get_allowSceneActivation();
System.Void set_allowSceneActivation(System.Boolean);
}
class NetworkReachability : System.Enum{
Int32 value__;
}
class Application : System.__object{
static class LogCallback : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.Void Invoke(System.String,System.String,UnityEngine.LogType);
System.IAsyncResult BeginInvoke(System.String,System.String,UnityEngine.LogType,System.AsyncCallback,System.__object);
System.Void EndInvoke(System.IAsyncResult);
}
this ();
static System.Void CommitSuicide(System.Int32);
static System.Int32 get_targetFrameRate();
static System.Void set_targetFrameRate(System.Int32);
static UnityEngine.SystemLanguage get_systemLanguage();
static UnityEngine.ThreadPriority get_backgroundLoadingPriority();
static System.Void set_backgroundLoadingPriority(UnityEngine.ThreadPriority);
static UnityEngine.NetworkReachability get_internetReachability();
static System.Boolean get_genuine();
static System.Boolean get_genuineCheckAvailable();
static UnityEngine.AsyncOperation RequestUserAuthorization(UnityEngine.UserAuthorization);
static System.Boolean HasUserAuthorization(UnityEngine.UserAuthorization);
static System.Void RegisterLogCallback(UnityEngine.Application.LogCallback);
static System.Void RegisterLogCallbackThreaded(UnityEngine.Application.LogCallback);
static System.Void add_logMessageReceived(UnityEngine.Application.LogCallback);
static System.Void remove_logMessageReceived(UnityEngine.Application.LogCallback);
static System.Void add_logMessageReceivedThreaded(UnityEngine.Application.LogCallback);
static System.Void remove_logMessageReceivedThreaded(UnityEngine.Application.LogCallback);
static System.Void Quit();
static System.Void CancelQuit();
static System.Int32 get_loadedLevel();
static System.String get_loadedLevelName();
static System.Void LoadLevel(System.Int32);
static System.Void LoadLevel(System.String);
static UnityEngine.AsyncOperation LoadLevelAsync(System.Int32);
static UnityEngine.AsyncOperation LoadLevelAsync(System.String);
static UnityEngine.AsyncOperation LoadLevelAdditiveAsync(System.Int32);
static UnityEngine.AsyncOperation LoadLevelAdditiveAsync(System.String);
static System.Void LoadLevelAdditive(System.Int32);
static System.Void LoadLevelAdditive(System.String);
static System.Boolean get_isLoadingLevel();
static System.Int32 get_levelCount();
static System.Single GetStreamProgressForLevel(System.Int32);
static System.Single GetStreamProgressForLevel(System.String);
static System.Int32 get_streamedBytes();
static System.Boolean CanStreamedLevelBeLoaded(System.Int32);
static System.Boolean CanStreamedLevelBeLoaded(System.String);
static System.Boolean get_isPlaying();
static System.Boolean get_isEditor();
static System.Boolean get_isWebPlayer();
static UnityEngine.RuntimePlatform get_platform();
static System.Boolean get_isMobilePlatform();
static System.Boolean get_isConsolePlatform();
static System.Void CaptureScreenshot(System.String,System.Int32);
static System.Void CaptureScreenshot(System.String);
static System.Boolean get_runInBackground();
static System.Void set_runInBackground(System.Boolean);
static System.Boolean get_isPlayer();
static System.Boolean HasProLicense();
static System.Void DontDestroyOnLoad(UnityEngine.__UnityObject);
static System.String get_dataPath();
static System.String get_streamingAssetsPath();
static System.String get_persistentDataPath();
static System.String get_temporaryCachePath();
static System.String get_srcValue();
static System.String get_absoluteURL();
static System.String get_absoluteUrl();
static System.Void ExternalCall(System.String,System.__object[]);
static System.Void ExternalEval(System.String);
static System.String get_unityVersion();
static System.String get_version();
static System.String get_bundleIdentifier();
static UnityEngine.ApplicationInstallMode get_installMode();
static UnityEngine.ApplicationSandboxType get_sandboxType();
static System.String get_productName();
static System.String get_companyName();
static System.String get_cloudProjectId();
static System.Boolean get_webSecurityEnabled();
static System.String get_webSecurityHostUrl();
static System.Void OpenURL(System.String);
}
class UserAuthorization : System.Enum{
Int32 value__;
}
class ApplicationInstallMode : System.Enum{
Int32 value__;
}
class ApplicationSandboxType : System.Enum{
Int32 value__;
}
class Behaviour : UnityEngine.Component{
this ();
System.Boolean get_enabled();
System.Void set_enabled(System.Boolean);
System.Boolean get_isActiveAndEnabled();
}
class RenderingPath : System.Enum{
Int32 value__;
}
class TransparencySortMode : System.Enum{
Int32 value__;
}
class Camera : UnityEngine.Behaviour{
static class CameraCallback : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.Void Invoke(UnityEngine.Camera);
System.IAsyncResult BeginInvoke(UnityEngine.Camera,System.AsyncCallback,System.__object);
System.Void EndInvoke(System.IAsyncResult);
}
this ();
System.Void RemoveCommandBuffer(UnityEngine.Rendering.CameraEvent,UnityEngine.Rendering.CommandBuffer);
System.Void RemoveCommandBuffers(UnityEngine.Rendering.CameraEvent);
System.Void RemoveAllCommandBuffers();
UnityEngine.Rendering.CommandBuffer[] GetCommandBuffers(UnityEngine.Rendering.CameraEvent);
System.Int32 get_commandBufferCount();
UnityEngine.Matrix4x4 CalculateObliqueMatrix(UnityEngine.Vector4);
UnityEngine.Vector3 get_velocity();
UnityEngine.CameraClearFlags get_clearFlags();
System.Void set_clearFlags(UnityEngine.CameraClearFlags);
System.Boolean get_stereoEnabled();
System.Single get_stereoSeparation();
System.Void set_stereoSeparation(System.Single);
System.Single get_stereoConvergence();
System.Void set_stereoConvergence(System.Single);
System.Boolean get_stereoMirrorMode();
System.Void set_stereoMirrorMode(System.Boolean);
System.Int32 get_targetDisplay();
System.Void set_targetDisplay(System.Int32);
UnityEngine.Vector3 WorldToScreenPoint(UnityEngine.Vector3);
UnityEngine.Vector3 WorldToViewportPoint(UnityEngine.Vector3);
UnityEngine.Vector3 ViewportToWorldPoint(UnityEngine.Vector3);
UnityEngine.Vector3 ScreenToWorldPoint(UnityEngine.Vector3);
UnityEngine.Vector3 ScreenToViewportPoint(UnityEngine.Vector3);
UnityEngine.Vector3 ViewportToScreenPoint(UnityEngine.Vector3);
UnityEngine.Ray ViewportPointToRay(UnityEngine.Vector3);
UnityEngine.Ray ScreenPointToRay(UnityEngine.Vector3);
static UnityEngine.Camera get_main();
static UnityEngine.Camera get_current();
static UnityEngine.Camera[] get_allCameras();
static System.Int32 get_allCamerasCount();
static System.Int32 GetAllCameras(UnityEngine.Camera[]);
System.Single GetScreenWidth();
System.Single GetScreenHeight();
static UnityEngine.Camera get_mainCamera();
System.Void DoClear();
System.Void Render();
System.Void RenderWithShader(UnityEngine.Shader,System.String);
System.Void SetReplacementShader(UnityEngine.Shader,System.String);
System.Void ResetReplacementShader();
System.Boolean get_useOcclusionCulling();
System.Void set_useOcclusionCulling(System.Boolean);
System.Void RenderDontRestore();
static System.Void SetupCurrent(UnityEngine.Camera);
System.Boolean RenderToCubemap(UnityEngine.Cubemap);
System.Boolean RenderToCubemap(UnityEngine.Cubemap,System.Int32);
System.Boolean RenderToCubemap(UnityEngine.RenderTexture);
System.Boolean RenderToCubemap(UnityEngine.RenderTexture,System.Int32);
System.Single[] get_layerCullDistances();
System.Void set_layerCullDistances(System.Single[]);
System.Boolean get_layerCullSpherical();
System.Void set_layerCullSpherical(System.Boolean);
System.Void CopyFrom(UnityEngine.Camera);
UnityEngine.DepthTextureMode get_depthTextureMode();
System.Void set_depthTextureMode(UnityEngine.DepthTextureMode);
System.Boolean get_clearStencilAfterLightingPass();
System.Void set_clearStencilAfterLightingPass(System.Boolean);
System.Void AddCommandBuffer(UnityEngine.Rendering.CameraEvent,UnityEngine.Rendering.CommandBuffer);
System.Single get_fov();
System.Void set_fov(System.Single);
System.Single get_near();
System.Void set_near(System.Single);
System.Single get_far();
System.Void set_far(System.Single);
System.Single get_fieldOfView();
System.Void set_fieldOfView(System.Single);
System.Single get_nearClipPlane();
System.Void set_nearClipPlane(System.Single);
System.Single get_farClipPlane();
System.Void set_farClipPlane(System.Single);
UnityEngine.RenderingPath get_renderingPath();
System.Void set_renderingPath(UnityEngine.RenderingPath);
UnityEngine.RenderingPath get_actualRenderingPath();
System.Boolean get_hdr();
System.Void set_hdr(System.Boolean);
System.Single get_orthographicSize();
System.Void set_orthographicSize(System.Single);
System.Boolean get_isOrthoGraphic();
System.Void set_isOrthoGraphic(System.Boolean);
System.Boolean get_orthographic();
System.Void set_orthographic(System.Boolean);
UnityEngine.TransparencySortMode get_transparencySortMode();
System.Void set_transparencySortMode(UnityEngine.TransparencySortMode);
System.Single get_depth();
System.Void set_depth(System.Single);
System.Single get_aspect();
System.Void set_aspect(System.Single);
System.Int32 get_cullingMask();
System.Void set_cullingMask(System.Int32);
System.Int32 get_eventMask();
System.Void set_eventMask(System.Int32);
UnityEngine.Color get_backgroundColor();
System.Void set_backgroundColor(UnityEngine.Color);
UnityEngine.Rect get_rect();
System.Void set_rect(UnityEngine.Rect);
UnityEngine.Rect get_pixelRect();
System.Void set_pixelRect(UnityEngine.Rect);
UnityEngine.RenderTexture get_targetTexture();
System.Void set_targetTexture(UnityEngine.RenderTexture);
System.Void SetTargetBuffers(UnityEngine.RenderBuffer,UnityEngine.RenderBuffer);
System.Void SetTargetBuffers(UnityEngine.RenderBuffer[],UnityEngine.RenderBuffer);
System.Int32 get_pixelWidth();
System.Int32 get_pixelHeight();
UnityEngine.Matrix4x4 get_cameraToWorldMatrix();
UnityEngine.Matrix4x4 get_worldToCameraMatrix();
System.Void set_worldToCameraMatrix(UnityEngine.Matrix4x4);
System.Void ResetWorldToCameraMatrix();
UnityEngine.Matrix4x4 get_projectionMatrix();
System.Void set_projectionMatrix(UnityEngine.Matrix4x4);
System.Void ResetProjectionMatrix();
System.Void ResetAspect();
}
class ComputeShader : UnityEngine.__UnityObject{
this ();
System.Int32 FindKernel(System.String);
System.Void SetFloat(System.String,System.Single);
System.Void SetInt(System.String,System.Int32);
System.Void SetVector(System.String,UnityEngine.Vector4);
System.Void SetFloats(System.String,System.Single[]);
System.Void SetInts(System.String,System.Int32[]);
System.Void SetTexture(System.Int32,System.String,UnityEngine.Texture);
System.Void SetBuffer(System.Int32,System.String,UnityEngine.ComputeBuffer);
System.Void Dispatch(System.Int32,System.Int32,System.Int32,System.Int32);
}
class ComputeBufferType : System.Enum{
Int32 value__;
}
class ComputeBuffer : System.__object{
this (System.Int32,System.Int32);
this (System.Int32,System.Int32,UnityEngine.ComputeBufferType);
System.Void Dispose();
System.Void Release();
System.Int32 get_count();
System.Int32 get_stride();
System.Void SetData(System.Array);
System.Void GetData(System.Array);
static System.Void CopyCount(UnityEngine.ComputeBuffer,UnityEngine.ComputeBuffer,System.Int32);
}
class Debug : System.__object{
this ();
static System.Void DrawLine(UnityEngine.Vector3,UnityEngine.Vector3,UnityEngine.Color,System.Single,System.Boolean);
static System.Void DrawLine(UnityEngine.Vector3,UnityEngine.Vector3,UnityEngine.Color,System.Single);
static System.Void DrawLine(UnityEngine.Vector3,UnityEngine.Vector3,UnityEngine.Color);
static System.Void DrawLine(UnityEngine.Vector3,UnityEngine.Vector3);
static System.Void DrawRay(UnityEngine.Vector3,UnityEngine.Vector3,UnityEngine.Color,System.Single);
static System.Void DrawRay(UnityEngine.Vector3,UnityEngine.Vector3,UnityEngine.Color);
static System.Void DrawRay(UnityEngine.Vector3,UnityEngine.Vector3);
static System.Void DrawRay(UnityEngine.Vector3,UnityEngine.Vector3,UnityEngine.Color,System.Single,System.Boolean);
static System.Void Break();
static System.Void DebugBreak();
static System.Void Log(System.__object);
static System.Void Log(System.__object,UnityEngine.__UnityObject);
static System.Void LogFormat(System.String,System.__object[]);
static System.Void LogFormat(UnityEngine.__UnityObject,System.String,System.__object[]);
static System.Void LogError(System.__object);
static System.Void LogError(System.__object,UnityEngine.__UnityObject);
static System.Void LogErrorFormat(System.String,System.__object[]);
static System.Void LogErrorFormat(UnityEngine.__UnityObject,System.String,System.__object[]);
static System.Void ClearDeveloperConsole();
static System.Boolean get_developerConsoleVisible();
static System.Void set_developerConsoleVisible(System.Boolean);
static System.Void LogWarning(System.__object);
static System.Void LogWarning(System.__object,UnityEngine.__UnityObject);
static System.Void LogWarningFormat(System.String,System.__object[]);
static System.Void LogWarningFormat(UnityEngine.__UnityObject,System.String,System.__object[]);
static System.Void Assert(System.Boolean);
static System.Void Assert(System.Boolean,System.String);
static System.Void Assert(System.Boolean,System.String,System.__object[]);
static System.Boolean get_isDebugBuild();
}
class Display : System.__object{
static class DisplaysUpdatedDelegate : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.Void Invoke();
System.IAsyncResult BeginInvoke(System.AsyncCallback,System.__object);
System.Void EndInvoke(System.IAsyncResult);
}
static System.Void add_onDisplaysUpdated(UnityEngine.Display.DisplaysUpdatedDelegate);
static System.Void remove_onDisplaysUpdated(UnityEngine.Display.DisplaysUpdatedDelegate);
System.Int32 get_renderingWidth();
System.Int32 get_renderingHeight();
System.Int32 get_systemWidth();
System.Int32 get_systemHeight();
UnityEngine.RenderBuffer get_colorBuffer();
UnityEngine.RenderBuffer get_depthBuffer();
System.Void Activate();
System.Void Activate(System.Int32,System.Int32,System.Int32);
System.Void SetParams(System.Int32,System.Int32,System.Int32,System.Int32);
System.Void SetRenderingResolution(System.Int32,System.Int32);
static System.Boolean MultiDisplayLicense();
static UnityEngine.Vector3 RelativeMouseAt(UnityEngine.Vector3);
static UnityEngine.Display get_main();
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
this ();
System.Void Invoke(System.String,System.Single);
System.Void InvokeRepeating(System.String,System.Single,System.Single);
System.Void CancelInvoke();
System.Void CancelInvoke(System.String);
System.Boolean IsInvoking(System.String);
System.Boolean IsInvoking();
UnityEngine.Coroutine StartCoroutine(System.Collections.IEnumerator);
UnityEngine.Coroutine StartCoroutine_Auto(System.Collections.IEnumerator);
UnityEngine.Coroutine StartCoroutine(System.String,System.__object);
UnityEngine.Coroutine StartCoroutine(System.String);
System.Void StopCoroutine(System.String);
System.Void StopCoroutine(System.Collections.IEnumerator);
System.Void StopCoroutine(UnityEngine.Coroutine);
System.Void StopAllCoroutines();
static System.Void print(System.__object);
System.Boolean get_useGUILayout();
System.Void set_useGUILayout(System.Boolean);
}
class TouchPhase : System.Enum{
Int32 value__;
}
class IMECompositionMode : System.Enum{
Int32 value__;
}
class Touch : System.ValueType{
System.Int32 get_fingerId();
UnityEngine.Vector2 get_position();
UnityEngine.Vector2 get_rawPosition();
UnityEngine.Vector2 get_deltaPosition();
System.Single get_deltaTime();
System.Int32 get_tapCount();
UnityEngine.TouchPhase get_phase();
}
class DeviceOrientation : System.Enum{
Int32 value__;
}
class AccelerationEvent : System.ValueType{
UnityEngine.Vector3 get_acceleration();
System.Single get_deltaTime();
}
class Gyroscope : System.__object{
UnityEngine.Vector3 get_rotationRate();
UnityEngine.Vector3 get_rotationRateUnbiased();
UnityEngine.Vector3 get_gravity();
UnityEngine.Vector3 get_userAcceleration();
UnityEngine.Quaternion get_attitude();
System.Boolean get_enabled();
System.Void set_enabled(System.Boolean);
System.Single get_updateInterval();
System.Void set_updateInterval(System.Single);
}
class LocationInfo : System.ValueType{
System.Single get_latitude();
System.Single get_longitude();
System.Single get_altitude();
System.Single get_horizontalAccuracy();
System.Single get_verticalAccuracy();
System.Double get_timestamp();
}
class LocationServiceStatus : System.Enum{
Int32 value__;
}
class LocationService : System.__object{
this ();
System.Boolean get_isEnabledByUser();
UnityEngine.LocationServiceStatus get_status();
UnityEngine.LocationInfo get_lastData();
System.Void Start(System.Single,System.Single);
System.Void Start(System.Single);
System.Void Start();
System.Void Stop();
}
class Compass : System.__object{
this ();
System.Single get_magneticHeading();
System.Single get_trueHeading();
System.Single get_headingAccuracy();
UnityEngine.Vector3 get_rawVector();
System.Double get_timestamp();
System.Boolean get_enabled();
System.Void set_enabled(System.Boolean);
}
class Input : System.__object{
this ();
static System.Single GetAxis(System.String);
static System.Single GetAxisRaw(System.String);
static System.Boolean GetButton(System.String);
static System.Boolean get_compensateSensors();
static System.Void set_compensateSensors(System.Boolean);
static System.Boolean get_isGyroAvailable();
static UnityEngine.Gyroscope get_gyro();
static System.Boolean GetButtonDown(System.String);
static System.Boolean GetButtonUp(System.String);
static System.Boolean GetKey(System.String);
static System.Boolean GetKey(UnityEngine.KeyCode);
static System.Boolean GetKeyDown(System.String);
static System.Boolean GetKeyDown(UnityEngine.KeyCode);
static System.Boolean GetKeyUp(System.String);
static System.Boolean GetKeyUp(UnityEngine.KeyCode);
static System.String[] GetJoystickNames();
static System.Boolean IsJoystickPreconfigured(System.String);
static System.Boolean GetMouseButton(System.Int32);
static System.Boolean GetMouseButtonDown(System.Int32);
static System.Boolean GetMouseButtonUp(System.Int32);
static System.Void ResetInputAxes();
static UnityEngine.Vector3 get_mousePosition();
static UnityEngine.Vector2 get_mouseScrollDelta();
static System.Boolean get_mousePresent();
static System.Boolean get_simulateMouseWithTouches();
static System.Void set_simulateMouseWithTouches(System.Boolean);
static System.Boolean get_anyKey();
static System.Boolean get_anyKeyDown();
static System.String get_inputString();
static UnityEngine.Vector3 get_acceleration();
static UnityEngine.AccelerationEvent[] get_accelerationEvents();
static UnityEngine.AccelerationEvent GetAccelerationEvent(System.Int32);
static System.Int32 get_accelerationEventCount();
static UnityEngine.Touch[] get_touches();
static UnityEngine.Touch GetTouch(System.Int32);
static System.Int32 get_touchCount();
static System.Boolean get_eatKeyPressOnTextFieldFocus();
static System.Void set_eatKeyPressOnTextFieldFocus(System.Boolean);
static System.Boolean get_touchSupported();
static System.Boolean get_multiTouchEnabled();
static System.Void set_multiTouchEnabled(System.Boolean);
static UnityEngine.LocationService get_location();
static UnityEngine.Compass get_compass();
static UnityEngine.DeviceOrientation get_deviceOrientation();
static UnityEngine.Quaternion GetRotation(System.Int32);
static UnityEngine.Vector3 GetPosition(System.Int32);
static UnityEngine.IMECompositionMode get_imeCompositionMode();
static System.Void set_imeCompositionMode(UnityEngine.IMECompositionMode);
static System.String get_compositionString();
static System.Boolean get_imeIsSelected();
static UnityEngine.Vector2 get_compositionCursorPos();
static System.Void set_compositionCursorPos(UnityEngine.Vector2);
}
class HideFlags : System.Enum{
Int32 value__;
}
class __UnityObject : System.__object{
this ();
static System.Void Destroy(UnityEngine.__UnityObject,System.Single);
static System.Void Destroy(UnityEngine.__UnityObject);
static System.Void DestroyImmediate(UnityEngine.__UnityObject,System.Boolean);
static System.Void DestroyImmediate(UnityEngine.__UnityObject);
static UnityEngine.__UnityObject[] FindObjectsOfType(System.Type);
System.String get_name();
System.Void set_name(System.String);
static System.Void DontDestroyOnLoad(UnityEngine.__UnityObject);
UnityEngine.HideFlags get_hideFlags();
System.Void set_hideFlags(UnityEngine.HideFlags);
static System.Void DestroyObject(UnityEngine.__UnityObject,System.Single);
static System.Void DestroyObject(UnityEngine.__UnityObject);
static UnityEngine.__UnityObject[] FindSceneObjectsOfType(System.Type);
static UnityEngine.__UnityObject[] FindObjectsOfTypeIncludingAssets(System.Type);
static UnityEngine.__UnityObject[] FindObjectsOfTypeAll(System.Type);
System.String ToString();
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
System.Int32 GetInstanceID();
static UnityEngine.__UnityObject Instantiate(UnityEngine.__UnityObject,UnityEngine.Vector3,UnityEngine.Quaternion);
static UnityEngine.__UnityObject Instantiate(UnityEngine.__UnityObject);
static UnityEngine.__UnityObject FindObjectOfType(System.Type);
static System.Boolean op_Implicit(UnityEngine.__UnityObject);
static System.Boolean op_Equality(UnityEngine.__UnityObject,UnityEngine.__UnityObject);
static System.Boolean op_Inequality(UnityEngine.__UnityObject,UnityEngine.__UnityObject);
}
class Component : UnityEngine.__UnityObject{
this ();
UnityEngine.Transform get_transform();
UnityEngine.GameObject get_gameObject();
UnityEngine.Component GetComponent(System.Type);
UnityEngine.Component GetComponent(System.String);
UnityEngine.Component GetComponentInChildren(System.Type);
UnityEngine.Component[] GetComponentsInChildren(System.Type);
UnityEngine.Component[] GetComponentsInChildren(System.Type,System.Boolean);
UnityEngine.Component GetComponentInParent(System.Type);
UnityEngine.Component[] GetComponentsInParent(System.Type);
UnityEngine.Component[] GetComponentsInParent(System.Type,System.Boolean);
UnityEngine.Component[] GetComponents(System.Type);
System.String get_tag();
System.Void set_tag(System.String);
System.Boolean CompareTag(System.String);
System.Void SendMessageUpwards(System.String,System.__object,UnityEngine.SendMessageOptions);
System.Void SendMessageUpwards(System.String,System.__object);
System.Void SendMessageUpwards(System.String);
System.Void SendMessageUpwards(System.String,UnityEngine.SendMessageOptions);
System.Void SendMessage(System.String,System.__object,UnityEngine.SendMessageOptions);
System.Void SendMessage(System.String,System.__object);
System.Void SendMessage(System.String);
System.Void SendMessage(System.String,UnityEngine.SendMessageOptions);
System.Void BroadcastMessage(System.String,System.__object,UnityEngine.SendMessageOptions);
System.Void BroadcastMessage(System.String,System.__object);
System.Void BroadcastMessage(System.String);
System.Void BroadcastMessage(System.String,UnityEngine.SendMessageOptions);
UnityEngine.Component get_rigidbody();
UnityEngine.Component get_rigidbody2D();
UnityEngine.Component get_camera();
UnityEngine.Component get_light();
UnityEngine.Component get_animation();
UnityEngine.Component get_constantForce();
UnityEngine.Component get_renderer();
UnityEngine.Component get_audio();
UnityEngine.Component get_guiText();
UnityEngine.Component get_networkView();
UnityEngine.Component get_guiElement();
UnityEngine.Component get_guiTexture();
UnityEngine.Component get_collider();
UnityEngine.Component get_collider2D();
UnityEngine.Component get_hingeJoint();
UnityEngine.Component get_particleEmitter();
UnityEngine.Component get_particleSystem();
}
class Light : UnityEngine.Behaviour{
this ();
UnityEngine.LightType get_type();
System.Void set_type(UnityEngine.LightType);
UnityEngine.Color get_color();
System.Void set_color(UnityEngine.Color);
System.Single get_intensity();
System.Void set_intensity(System.Single);
System.Single get_bounceIntensity();
System.Void set_bounceIntensity(System.Single);
UnityEngine.LightShadows get_shadows();
System.Void set_shadows(UnityEngine.LightShadows);
System.Single get_shadowStrength();
System.Void set_shadowStrength(System.Single);
System.Single get_shadowBias();
System.Void set_shadowBias(System.Single);
System.Single get_shadowNormalBias();
System.Void set_shadowNormalBias(System.Single);
System.Single get_shadowSoftness();
System.Void set_shadowSoftness(System.Single);
System.Single get_shadowSoftnessFade();
System.Void set_shadowSoftnessFade(System.Single);
System.Single get_range();
System.Void set_range(System.Single);
System.Single get_spotAngle();
System.Void set_spotAngle(System.Single);
System.Single get_cookieSize();
System.Void set_cookieSize(System.Single);
UnityEngine.Texture get_cookie();
System.Void set_cookie(UnityEngine.Texture);
UnityEngine.Flare get_flare();
System.Void set_flare(UnityEngine.Flare);
UnityEngine.LightRenderMode get_renderMode();
System.Void set_renderMode(UnityEngine.LightRenderMode);
System.Boolean get_alreadyLightmapped();
System.Void set_alreadyLightmapped(System.Boolean);
System.Int32 get_cullingMask();
System.Void set_cullingMask(System.Int32);
UnityEngine.Vector2 get_areaSize();
System.Void set_areaSize(UnityEngine.Vector2);
System.Void AddCommandBuffer(UnityEngine.Rendering.LightEvent,UnityEngine.Rendering.CommandBuffer);
System.Void RemoveCommandBuffer(UnityEngine.Rendering.LightEvent,UnityEngine.Rendering.CommandBuffer);
System.Void RemoveCommandBuffers(UnityEngine.Rendering.LightEvent);
System.Void RemoveAllCommandBuffers();
UnityEngine.Rendering.CommandBuffer[] GetCommandBuffers(UnityEngine.Rendering.LightEvent);
System.Int32 get_commandBufferCount();
static System.Int32 get_pixelLightCount();
static System.Void set_pixelLightCount(System.Int32);
static UnityEngine.Light[] GetLights(UnityEngine.LightType,System.Int32);
System.Single get_shadowConstantBias();
System.Void set_shadowConstantBias(System.Single);
System.Single get_shadowObjectSizeBias();
System.Void set_shadowObjectSizeBias(System.Single);
System.Boolean get_attenuate();
System.Void set_attenuate(System.Boolean);
}
class GameObject : UnityEngine.__UnityObject{
this (System.String);
this ();
this (System.String,System.Type[]);
UnityEngine.Component AddComponent(System.String);
UnityEngine.Component get_rigidbody();
UnityEngine.Component get_rigidbody2D();
UnityEngine.Component get_camera();
UnityEngine.Component get_light();
UnityEngine.Component get_animation();
UnityEngine.Component get_constantForce();
UnityEngine.Component get_renderer();
UnityEngine.Component get_audio();
UnityEngine.Component get_guiText();
UnityEngine.Component get_networkView();
UnityEngine.Component get_guiElement();
UnityEngine.Component get_guiTexture();
UnityEngine.Component get_collider();
UnityEngine.Component get_collider2D();
UnityEngine.Component get_hingeJoint();
UnityEngine.Component get_particleEmitter();
UnityEngine.Component get_particleSystem();
System.Void PlayAnimation(UnityEngine.__UnityObject);
System.Void StopAnimation();
static UnityEngine.GameObject CreatePrimitive(UnityEngine.PrimitiveType);
UnityEngine.Component GetComponent(System.Type);
UnityEngine.Component GetComponent(System.String);
UnityEngine.Component GetComponentInChildren(System.Type);
UnityEngine.Component GetComponentInParent(System.Type);
UnityEngine.Component[] GetComponents(System.Type);
UnityEngine.Component[] GetComponentsInChildren(System.Type);
UnityEngine.Component[] GetComponentsInChildren(System.Type,System.Boolean);
UnityEngine.Component[] GetComponentsInParent(System.Type);
UnityEngine.Component[] GetComponentsInParent(System.Type,System.Boolean);
UnityEngine.Transform get_transform();
System.Int32 get_layer();
System.Void set_layer(System.Int32);
System.Boolean get_active();
System.Void set_active(System.Boolean);
System.Void SetActive(System.Boolean);
System.Boolean get_activeSelf();
System.Boolean get_activeInHierarchy();
System.Void SetActiveRecursively(System.Boolean);
System.Boolean get_isStatic();
System.Void set_isStatic(System.Boolean);
System.String get_tag();
System.Void set_tag(System.String);
System.Boolean CompareTag(System.String);
static UnityEngine.GameObject FindGameObjectWithTag(System.String);
static UnityEngine.GameObject FindWithTag(System.String);
static UnityEngine.GameObject[] FindGameObjectsWithTag(System.String);
System.Void SendMessageUpwards(System.String,System.__object,UnityEngine.SendMessageOptions);
System.Void SendMessageUpwards(System.String,System.__object);
System.Void SendMessageUpwards(System.String);
System.Void SendMessageUpwards(System.String,UnityEngine.SendMessageOptions);
System.Void SendMessage(System.String,System.__object,UnityEngine.SendMessageOptions);
System.Void SendMessage(System.String,System.__object);
System.Void SendMessage(System.String);
System.Void SendMessage(System.String,UnityEngine.SendMessageOptions);
System.Void BroadcastMessage(System.String,System.__object,UnityEngine.SendMessageOptions);
System.Void BroadcastMessage(System.String,System.__object);
System.Void BroadcastMessage(System.String);
System.Void BroadcastMessage(System.String,UnityEngine.SendMessageOptions);
UnityEngine.Component AddComponent(System.Type);
static UnityEngine.GameObject Find(System.String);
UnityEngine.GameObject get_gameObject();
System.Void SampleAnimation(UnityEngine.__UnityObject,System.Single);
}
class Transform : UnityEngine.Component{
UnityEngine.Vector3 TransformPoint(System.Single,System.Single,System.Single);
UnityEngine.Vector3 InverseTransformPoint(UnityEngine.Vector3);
UnityEngine.Vector3 InverseTransformPoint(System.Single,System.Single,System.Single);
UnityEngine.Transform get_root();
System.Int32 get_childCount();
System.Void DetachChildren();
System.Void SetAsFirstSibling();
System.Void SetAsLastSibling();
System.Void SetSiblingIndex(System.Int32);
System.Int32 GetSiblingIndex();
UnityEngine.Transform Find(System.String);
UnityEngine.Vector3 get_lossyScale();
System.Boolean IsChildOf(UnityEngine.Transform);
System.Boolean get_hasChanged();
System.Void set_hasChanged(System.Boolean);
UnityEngine.Transform FindChild(System.String);
System.Collections.IEnumerator GetEnumerator();
System.Void RotateAround(UnityEngine.Vector3,System.Single);
System.Void RotateAroundLocal(UnityEngine.Vector3,System.Single);
UnityEngine.Transform GetChild(System.Int32);
System.Int32 GetChildCount();
UnityEngine.Vector3 get_position();
System.Void set_position(UnityEngine.Vector3);
UnityEngine.Vector3 get_localPosition();
System.Void set_localPosition(UnityEngine.Vector3);
UnityEngine.Vector3 get_eulerAngles();
System.Void set_eulerAngles(UnityEngine.Vector3);
UnityEngine.Vector3 get_localEulerAngles();
System.Void set_localEulerAngles(UnityEngine.Vector3);
UnityEngine.Vector3 get_right();
System.Void set_right(UnityEngine.Vector3);
UnityEngine.Vector3 get_up();
System.Void set_up(UnityEngine.Vector3);
UnityEngine.Vector3 get_forward();
System.Void set_forward(UnityEngine.Vector3);
UnityEngine.Quaternion get_rotation();
System.Void set_rotation(UnityEngine.Quaternion);
UnityEngine.Quaternion get_localRotation();
System.Void set_localRotation(UnityEngine.Quaternion);
UnityEngine.Vector3 get_localScale();
System.Void set_localScale(UnityEngine.Vector3);
UnityEngine.Transform get_parent();
System.Void set_parent(UnityEngine.Transform);
System.Void SetParent(UnityEngine.Transform);
System.Void SetParent(UnityEngine.Transform,System.Boolean);
UnityEngine.Matrix4x4 get_worldToLocalMatrix();
UnityEngine.Matrix4x4 get_localToWorldMatrix();
System.Void Translate(UnityEngine.Vector3);
System.Void Translate(UnityEngine.Vector3,UnityEngine.Space);
System.Void Translate(System.Single,System.Single,System.Single);
System.Void Translate(System.Single,System.Single,System.Single,UnityEngine.Space);
System.Void Translate(UnityEngine.Vector3,UnityEngine.Transform);
System.Void Translate(System.Single,System.Single,System.Single,UnityEngine.Transform);
System.Void Rotate(UnityEngine.Vector3);
System.Void Rotate(UnityEngine.Vector3,UnityEngine.Space);
System.Void Rotate(System.Single,System.Single,System.Single);
System.Void Rotate(System.Single,System.Single,System.Single,UnityEngine.Space);
System.Void Rotate(UnityEngine.Vector3,System.Single);
System.Void Rotate(UnityEngine.Vector3,System.Single,UnityEngine.Space);
System.Void RotateAround(UnityEngine.Vector3,UnityEngine.Vector3,System.Single);
System.Void LookAt(UnityEngine.Transform);
System.Void LookAt(UnityEngine.Transform,UnityEngine.Vector3);
System.Void LookAt(UnityEngine.Vector3,UnityEngine.Vector3);
System.Void LookAt(UnityEngine.Vector3);
UnityEngine.Vector3 TransformDirection(UnityEngine.Vector3);
UnityEngine.Vector3 TransformDirection(System.Single,System.Single,System.Single);
UnityEngine.Vector3 InverseTransformDirection(UnityEngine.Vector3);
UnityEngine.Vector3 InverseTransformDirection(System.Single,System.Single,System.Single);
UnityEngine.Vector3 TransformVector(UnityEngine.Vector3);
UnityEngine.Vector3 TransformVector(System.Single,System.Single,System.Single);
UnityEngine.Vector3 InverseTransformVector(UnityEngine.Vector3);
UnityEngine.Vector3 InverseTransformVector(System.Single,System.Single,System.Single);
UnityEngine.Vector3 TransformPoint(UnityEngine.Vector3);
}
class Time : System.__object{
this ();
static System.Single get_time();
static System.Single get_timeSinceLevelLoad();
static System.Single get_deltaTime();
static System.Single get_fixedTime();
static System.Single get_unscaledTime();
static System.Single get_unscaledDeltaTime();
static System.Single get_fixedDeltaTime();
static System.Void set_fixedDeltaTime(System.Single);
static System.Single get_maximumDeltaTime();
static System.Void set_maximumDeltaTime(System.Single);
static System.Single get_smoothDeltaTime();
static System.Single get_timeScale();
static System.Void set_timeScale(System.Single);
static System.Int32 get_frameCount();
static System.Int32 get_renderedFrameCount();
static System.Single get_realtimeSinceStartup();
static System.Int32 get_captureFramerate();
static System.Void set_captureFramerate(System.Int32);
}
class Random : System.__object{
this ();
static System.Int32 get_seed();
static System.Void set_seed(System.Int32);
static System.Single Range(System.Single,System.Single);
static System.Int32 Range(System.Int32,System.Int32);
static System.Single get_value();
static UnityEngine.Vector3 get_insideUnitSphere();
static UnityEngine.Vector2 get_insideUnitCircle();
static UnityEngine.Vector3 get_onUnitSphere();
static UnityEngine.Quaternion get_rotation();
static UnityEngine.Quaternion get_rotationUniform();
static System.Single RandomRange(System.Single,System.Single);
static System.Int32 RandomRange(System.Int32,System.Int32);
}
class YieldInstruction : System.__object{
this ();
}
class PlayerPrefs : System.__object{
this ();
static System.Void SetInt(System.String,System.Int32);
static System.Int32 GetInt(System.String,System.Int32);
static System.Int32 GetInt(System.String);
static System.Void SetFloat(System.String,System.Single);
static System.Single GetFloat(System.String,System.Single);
static System.Single GetFloat(System.String);
static System.Void SetString(System.String,System.String);
static System.String GetString(System.String,System.String);
static System.String GetString(System.String);
static System.Boolean HasKey(System.String);
static System.Void DeleteKey(System.String);
static System.Void DeleteAll();
static System.Void Save();
}
class AndroidJavaObject : System.__object{
this (System.String,System.__object[]);
System.Void Dispose();
System.Void Call(System.String,System.__object[]);
System.Void CallStatic(System.String,System.__object[]);
System.IntPtr GetRawObject();
System.IntPtr GetRawClass();
}
class AndroidJavaClass : UnityEngine.AndroidJavaObject{
this (System.String);
}
class jvalue : System.ValueType{
Boolean z;
Byte b;
Char c;
Int16 s;
Int32 i;
Int64 j;
Single f;
Double d;
IntPtr l;
}
class AndroidJNIHelper : System.__object{
static System.Boolean get_debug();
static System.Void set_debug(System.Boolean);
static System.IntPtr GetConstructorID(System.IntPtr);
static System.IntPtr GetConstructorID(System.IntPtr,System.String);
static System.IntPtr GetMethodID(System.IntPtr,System.String,System.String);
static System.IntPtr GetMethodID(System.IntPtr,System.String);
static System.IntPtr GetMethodID(System.IntPtr,System.String,System.String,System.Boolean);
static System.IntPtr GetFieldID(System.IntPtr,System.String,System.String);
static System.IntPtr GetFieldID(System.IntPtr,System.String);
static System.IntPtr GetFieldID(System.IntPtr,System.String,System.String,System.Boolean);
static System.IntPtr CreateJavaRunnable(UnityEngine.AndroidJavaRunnable);
static System.IntPtr CreateJavaProxy(UnityEngine.AndroidJavaProxy);
static System.IntPtr ConvertToJNIArray(System.Array);
static UnityEngine.jvalue[] CreateJNIArgArray(System.__object[]);
static System.Void DeleteJNIArgArray(System.__object[],UnityEngine.jvalue[]);
static System.IntPtr GetConstructorID(System.IntPtr,System.__object[]);
static System.IntPtr GetMethodID(System.IntPtr,System.String,System.__object[],System.Boolean);
static System.String GetSignature(System.__object);
static System.String GetSignature(System.__object[]);
}
class AndroidJNI : System.__object{
static System.Byte GetByteArrayElement(System.IntPtr,System.Int32);
static System.Char GetCharArrayElement(System.IntPtr,System.Int32);
static System.Int16 GetShortArrayElement(System.IntPtr,System.Int32);
static System.Int32 GetIntArrayElement(System.IntPtr,System.Int32);
static System.Int64 GetLongArrayElement(System.IntPtr,System.Int32);
static System.Single GetFloatArrayElement(System.IntPtr,System.Int32);
static System.Double GetDoubleArrayElement(System.IntPtr,System.Int32);
static System.IntPtr GetObjectArrayElement(System.IntPtr,System.Int32);
static System.Void SetBooleanArrayElement(System.IntPtr,System.Int32,System.Byte);
static System.Void SetByteArrayElement(System.IntPtr,System.Int32,System.SByte);
static System.Void SetCharArrayElement(System.IntPtr,System.Int32,System.Char);
static System.Void SetShortArrayElement(System.IntPtr,System.Int32,System.Int16);
static System.Void SetIntArrayElement(System.IntPtr,System.Int32,System.Int32);
static System.Void SetLongArrayElement(System.IntPtr,System.Int32,System.Int64);
static System.Void SetFloatArrayElement(System.IntPtr,System.Int32,System.Single);
static System.Void SetDoubleArrayElement(System.IntPtr,System.Int32,System.Double);
static System.Void SetObjectArrayElement(System.IntPtr,System.Int32,System.IntPtr);
static System.Void SetLongField(System.IntPtr,System.IntPtr,System.Int64);
static System.Void SetFloatField(System.IntPtr,System.IntPtr,System.Single);
static System.Void SetDoubleField(System.IntPtr,System.IntPtr,System.Double);
static System.String CallStaticStringMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static System.IntPtr CallStaticObjectMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static System.Int32 CallStaticIntMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static System.Boolean CallStaticBooleanMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static System.Int16 CallStaticShortMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static System.Byte CallStaticByteMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static System.Char CallStaticCharMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static System.Single CallStaticFloatMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static System.Double CallStaticDoubleMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static System.Int64 CallStaticLongMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static System.Void CallStaticVoidMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static System.String GetStaticStringField(System.IntPtr,System.IntPtr);
static System.IntPtr GetStaticObjectField(System.IntPtr,System.IntPtr);
static System.Boolean GetStaticBooleanField(System.IntPtr,System.IntPtr);
static System.Byte GetStaticByteField(System.IntPtr,System.IntPtr);
static System.Char GetStaticCharField(System.IntPtr,System.IntPtr);
static System.Int16 GetStaticShortField(System.IntPtr,System.IntPtr);
static System.Int32 GetStaticIntField(System.IntPtr,System.IntPtr);
static System.Int64 GetStaticLongField(System.IntPtr,System.IntPtr);
static System.Single GetStaticFloatField(System.IntPtr,System.IntPtr);
static System.Double GetStaticDoubleField(System.IntPtr,System.IntPtr);
static System.Void SetStaticStringField(System.IntPtr,System.IntPtr,System.String);
static System.Void SetStaticObjectField(System.IntPtr,System.IntPtr,System.IntPtr);
static System.Void SetStaticBooleanField(System.IntPtr,System.IntPtr,System.Boolean);
static System.Void SetStaticByteField(System.IntPtr,System.IntPtr,System.Byte);
static System.Void SetStaticCharField(System.IntPtr,System.IntPtr,System.Char);
static System.Void SetStaticShortField(System.IntPtr,System.IntPtr,System.Int16);
static System.Void SetStaticIntField(System.IntPtr,System.IntPtr,System.Int32);
static System.Void SetStaticLongField(System.IntPtr,System.IntPtr,System.Int64);
static System.Void SetStaticFloatField(System.IntPtr,System.IntPtr,System.Single);
static System.Void SetStaticDoubleField(System.IntPtr,System.IntPtr,System.Double);
static System.IntPtr ToBooleanArray(System.Boolean[]);
static System.IntPtr ToByteArray(System.Byte[]);
static System.IntPtr ToCharArray(System.Char[]);
static System.IntPtr ToShortArray(System.Int16[]);
static System.IntPtr ToIntArray(System.Int32[]);
static System.IntPtr ToLongArray(System.Int64[]);
static System.IntPtr ToFloatArray(System.Single[]);
static System.IntPtr ToDoubleArray(System.Double[]);
static System.IntPtr ToObjectArray(System.IntPtr[],System.IntPtr);
static System.IntPtr ToObjectArray(System.IntPtr[]);
static System.Boolean[] FromBooleanArray(System.IntPtr);
static System.Byte[] FromByteArray(System.IntPtr);
static System.Char[] FromCharArray(System.IntPtr);
static System.Int16[] FromShortArray(System.IntPtr);
static System.Int32[] FromIntArray(System.IntPtr);
static System.Int64[] FromLongArray(System.IntPtr);
static System.Single[] FromFloatArray(System.IntPtr);
static System.Double[] FromDoubleArray(System.IntPtr);
static System.IntPtr[] FromObjectArray(System.IntPtr);
static System.Int32 GetArrayLength(System.IntPtr);
static System.IntPtr NewBooleanArray(System.Int32);
static System.IntPtr NewByteArray(System.Int32);
static System.IntPtr NewCharArray(System.Int32);
static System.IntPtr NewShortArray(System.Int32);
static System.IntPtr NewIntArray(System.Int32);
static System.IntPtr NewLongArray(System.Int32);
static System.IntPtr NewFloatArray(System.Int32);
static System.IntPtr NewDoubleArray(System.Int32);
static System.IntPtr NewObjectArray(System.Int32,System.IntPtr,System.IntPtr);
static System.Boolean GetBooleanArrayElement(System.IntPtr,System.Int32);
static System.Int32 AttachCurrentThread();
static System.Int32 DetachCurrentThread();
static System.Int32 GetVersion();
static System.IntPtr FindClass(System.String);
static System.IntPtr FromReflectedMethod(System.IntPtr);
static System.IntPtr FromReflectedField(System.IntPtr);
static System.IntPtr ToReflectedMethod(System.IntPtr,System.IntPtr,System.Boolean);
static System.IntPtr ToReflectedField(System.IntPtr,System.IntPtr,System.Boolean);
static System.IntPtr GetSuperclass(System.IntPtr);
static System.Boolean IsAssignableFrom(System.IntPtr,System.IntPtr);
static System.Int32 Throw(System.IntPtr);
static System.Int32 ThrowNew(System.IntPtr,System.String);
static System.IntPtr ExceptionOccurred();
static System.Void ExceptionDescribe();
static System.Void ExceptionClear();
static System.Void FatalError(System.String);
static System.Int32 PushLocalFrame(System.Int32);
static System.IntPtr PopLocalFrame(System.IntPtr);
static System.IntPtr NewGlobalRef(System.IntPtr);
static System.Void DeleteGlobalRef(System.IntPtr);
static System.IntPtr NewLocalRef(System.IntPtr);
static System.Void DeleteLocalRef(System.IntPtr);
static System.Boolean IsSameObject(System.IntPtr,System.IntPtr);
static System.Int32 EnsureLocalCapacity(System.Int32);
static System.IntPtr AllocObject(System.IntPtr);
static System.IntPtr NewObject(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static System.IntPtr GetObjectClass(System.IntPtr);
static System.Boolean IsInstanceOf(System.IntPtr,System.IntPtr);
static System.IntPtr GetMethodID(System.IntPtr,System.String,System.String);
static System.IntPtr GetFieldID(System.IntPtr,System.String,System.String);
static System.IntPtr GetStaticMethodID(System.IntPtr,System.String,System.String);
static System.IntPtr GetStaticFieldID(System.IntPtr,System.String,System.String);
static System.IntPtr NewStringUTF(System.String);
static System.Int32 GetStringUTFLength(System.IntPtr);
static System.String GetStringUTFChars(System.IntPtr);
static System.String CallStringMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static System.IntPtr CallObjectMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static System.Int32 CallIntMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static System.Boolean CallBooleanMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static System.Int16 CallShortMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static System.Byte CallByteMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static System.Char CallCharMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static System.Single CallFloatMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static System.Double CallDoubleMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static System.Int64 CallLongMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static System.Void CallVoidMethod(System.IntPtr,System.IntPtr,UnityEngine.jvalue[]);
static System.String GetStringField(System.IntPtr,System.IntPtr);
static System.IntPtr GetObjectField(System.IntPtr,System.IntPtr);
static System.Boolean GetBooleanField(System.IntPtr,System.IntPtr);
static System.Byte GetByteField(System.IntPtr,System.IntPtr);
static System.Char GetCharField(System.IntPtr,System.IntPtr);
static System.Int16 GetShortField(System.IntPtr,System.IntPtr);
static System.Int32 GetIntField(System.IntPtr,System.IntPtr);
static System.Int64 GetLongField(System.IntPtr,System.IntPtr);
static System.Single GetFloatField(System.IntPtr,System.IntPtr);
static System.Double GetDoubleField(System.IntPtr,System.IntPtr);
static System.Void SetStringField(System.IntPtr,System.IntPtr,System.String);
static System.Void SetObjectField(System.IntPtr,System.IntPtr,System.IntPtr);
static System.Void SetBooleanField(System.IntPtr,System.IntPtr,System.Boolean);
static System.Void SetByteField(System.IntPtr,System.IntPtr,System.Byte);
static System.Void SetCharField(System.IntPtr,System.IntPtr,System.Char);
static System.Void SetShortField(System.IntPtr,System.IntPtr,System.Int16);
static System.Void SetIntField(System.IntPtr,System.IntPtr,System.Int32);
}
class AndroidInput : System.__object{
static UnityEngine.Touch GetSecondaryTouch(System.Int32);
static System.Int32 get_touchCountSecondary();
static System.Boolean get_secondaryTouchEnabled();
static System.Int32 get_secondaryTouchWidth();
static System.Int32 get_secondaryTouchHeight();
}
class Motion : UnityEngine.__UnityObject{
this ();
System.Single get_averageDuration();
System.Single get_averageAngularSpeed();
UnityEngine.Vector3 get_averageSpeed();
System.Single get_apparentSpeed();
System.Boolean get_isLooping();
System.Boolean get_legacy();
System.Boolean get_isHumanMotion();
System.Boolean ValidateIfRetargetable(System.Boolean);
System.Boolean get_isAnimatorMotion();
}
class ADBannerView : System.__object{
this ();
}
class ADInterstitialAd : System.__object{
this ();
}
class iPhoneGeneration : System.Enum{
Int32 value__;
}
class iPhone : System.__object{
this ();
}
class iOSActivityIndicatorStyle : System.Enum{
Int32 value__;
}
class iPhoneTouchPhase : System.Enum{
Int32 value__;
}
class iPhoneTouch : System.ValueType{
UnityEngine.Vector2 get_positionDelta();
System.Single get_timeDelta();
}
class iPhoneAccelerationEvent : System.ValueType{
System.Single get_timeDelta();
}
class iPhoneOrientation : System.Enum{
Int32 value__;
}
class iPhoneInput : System.__object{
this ();
static UnityEngine.iPhoneOrientation get_orientation();
}
class iPhoneScreenOrientation : System.Enum{
Int32 value__;
}
class iPhoneSettings : System.__object{
this ();
static UnityEngine.iPhoneScreenOrientation get_screenOrientation();
static System.Boolean get_verticalOrientation();
static System.Boolean get_screenCanDarken();
static System.String get_uniqueIdentifier();
static System.String get_name();
static System.String get_model();
static System.String get_systemName();
static System.String get_systemVersion();
static UnityEngine.iPhoneNetworkReachability get_internetReachability();
static UnityEngine.iPhoneGeneration get_generation();
static UnityEngine.LocationServiceStatus get_locationServiceStatus();
static System.Boolean get_locationServiceEnabledByUser();
static System.Void StartLocationServiceUpdates(System.Single,System.Single);
static System.Void StartLocationServiceUpdates(System.Single);
static System.Void StartLocationServiceUpdates();
static System.Void StopLocationServiceUpdates();
}
class iPhoneKeyboardType : System.Enum{
Int32 value__;
}
class iPhoneKeyboard : System.__object{
this ();
}
class iPhoneMovieControlMode : System.Enum{
Int32 value__;
}
class iPhoneMovieScalingMode : System.Enum{
Int32 value__;
}
class iPhoneNetworkReachability : System.Enum{
Int32 value__;
}
class iPhoneUtils : System.__object{
this ();
static System.Void PlayMovie(System.String,UnityEngine.Color,UnityEngine.iPhoneMovieControlMode,UnityEngine.iPhoneMovieScalingMode);
static System.Void PlayMovie(System.String,UnityEngine.Color,UnityEngine.iPhoneMovieControlMode);
static System.Void PlayMovie(System.String,UnityEngine.Color);
static System.Void PlayMovieURL(System.String,UnityEngine.Color,UnityEngine.iPhoneMovieControlMode,UnityEngine.iPhoneMovieScalingMode);
static System.Void PlayMovieURL(System.String,UnityEngine.Color,UnityEngine.iPhoneMovieControlMode);
static System.Void PlayMovieURL(System.String,UnityEngine.Color);
static System.Void Vibrate();
static System.Boolean get_isApplicationGenuine();
static System.Boolean get_isApplicationGenuineAvailable();
}
class CalendarIdentifier : System.Enum{
Int32 value__;
}
class CalendarUnit : System.Enum{
Int32 value__;
}
class LocalNotification : System.__object{
this ();
}
class RemoteNotification : System.__object{
this ();
}
class RemoteNotificationType : System.Enum{
Int32 value__;
}
class NotificationServices : System.__object{
this ();
static System.Void RegisterForRemoteNotificationTypes(UnityEngine.RemoteNotificationType);
}
class SamsungTV : System.__object{
static class TouchPadMode : System.Enum{
Int32 value__;
}
static class GestureMode : System.Enum{
Int32 value__;
}
static class GamePadMode : System.Enum{
Int32 value__;
}
static class OpenAPI : System.__object{
static class OpenAPIServerType : System.Enum{
Int32 value__;
}
this ();
static UnityEngine.SamsungTV.OpenAPI.OpenAPIServerType get_serverType();
static System.String get_timeOnTV();
static System.String get_uid();
static System.String get_dUid();
}
this ();
static UnityEngine.SamsungTV.TouchPadMode get_touchPadMode();
static System.Void set_touchPadMode(UnityEngine.SamsungTV.TouchPadMode);
static UnityEngine.SamsungTV.GestureMode get_gestureMode();
static System.Void set_gestureMode(UnityEngine.SamsungTV.GestureMode);
static System.Boolean get_airMouseConnected();
static System.Boolean get_gestureWorking();
static UnityEngine.SamsungTV.GamePadMode get_gamePadMode();
static System.Void set_gamePadMode(UnityEngine.SamsungTV.GamePadMode);
}
class BillboardAsset : UnityEngine.__UnityObject{
this ();
System.Single get_width();
System.Void set_width(System.Single);
System.Single get_height();
System.Void set_height(System.Single);
System.Single get_bottom();
System.Void set_bottom(System.Single);
System.Int32 get_imageCount();
System.Int32 get_vertexCount();
System.Int32 get_indexCount();
UnityEngine.Material get_material();
System.Void set_material(UnityEngine.Material);
}
class BillboardRenderer : UnityEngine.Renderer{
this ();
UnityEngine.BillboardAsset get_billboard();
System.Void set_billboard(UnityEngine.BillboardAsset);
}
class WindZoneMode : System.Enum{
Int32 value__;
}
class WindZone : UnityEngine.Component{
this ();
UnityEngine.WindZoneMode get_mode();
System.Void set_mode(UnityEngine.WindZoneMode);
System.Single get_radius();
System.Void set_radius(System.Single);
System.Single get_windMain();
System.Void set_windMain(System.Single);
System.Single get_windTurbulence();
System.Void set_windTurbulence(System.Single);
System.Single get_windPulseMagnitude();
System.Void set_windPulseMagnitude(System.Single);
System.Single get_windPulseFrequency();
System.Void set_windPulseFrequency(System.Single);
}
class DynamicGI : System.__object{
this ();
static System.Single get_indirectScale();
static System.Void set_indirectScale(System.Single);
static System.Single get_updateThreshold();
static System.Void set_updateThreshold(System.Single);
static System.Void SetEmissive(UnityEngine.Renderer,UnityEngine.Color);
static System.Void UpdateMaterials(UnityEngine.Renderer);
static System.Void UpdateMaterials(UnityEngine.Terrain);
static System.Void UpdateMaterials(UnityEngine.Terrain,System.Int32,System.Int32,System.Int32,System.Int32);
static System.Void UpdateEnvironment();
static System.Boolean get_synchronousMode();
static System.Void set_synchronousMode(System.Boolean);
}
class ParticleSystemRenderMode : System.Enum{
Int32 value__;
}
class ParticleSystemSimulationSpace : System.Enum{
Int32 value__;
}
class ParticleSystem : UnityEngine.Component{
static class CollisionEvent : System.ValueType{
}
static class Particle : System.ValueType{
UnityEngine.Vector3 get_position();
System.Void set_position(UnityEngine.Vector3);
UnityEngine.Vector3 get_velocity();
System.Void set_velocity(UnityEngine.Vector3);
System.Single get_lifetime();
System.Void set_lifetime(System.Single);
System.Single get_startLifetime();
System.Void set_startLifetime(System.Single);
System.Single get_size();
System.Void set_size(System.Single);
UnityEngine.Vector3 get_axisOfRotation();
System.Void set_axisOfRotation(UnityEngine.Vector3);
System.Single get_rotation();
System.Void set_rotation(System.Single);
System.Single get_angularVelocity();
System.Void set_angularVelocity(System.Single);
UnityEngine.Color32 get_color();
System.Void set_color(UnityEngine.Color32);
System.Single get_randomValue();
System.Void set_randomValue(System.Single);
System.UInt32 get_randomSeed();
System.Void set_randomSeed(System.UInt32);
}
this ();
System.Single get_startDelay();
System.Void set_startDelay(System.Single);
System.Boolean get_isPlaying();
System.Boolean get_isStopped();
System.Boolean get_isPaused();
System.Boolean get_loop();
System.Void set_loop(System.Boolean);
System.Boolean get_playOnAwake();
System.Void set_playOnAwake(System.Boolean);
System.Single get_time();
System.Void set_time(System.Single);
System.Single get_duration();
System.Single get_playbackSpeed();
System.Void set_playbackSpeed(System.Single);
System.Int32 get_particleCount();
System.Int32 get_safeCollisionEventSize();
System.Boolean get_enableEmission();
System.Void set_enableEmission(System.Boolean);
System.Single get_emissionRate();
System.Void set_emissionRate(System.Single);
System.Single get_startSpeed();
System.Void set_startSpeed(System.Single);
System.Single get_startSize();
System.Void set_startSize(System.Single);
UnityEngine.Color get_startColor();
System.Void set_startColor(UnityEngine.Color);
System.Single get_startRotation();
System.Void set_startRotation(System.Single);
System.Single get_startLifetime();
System.Void set_startLifetime(System.Single);
System.Single get_gravityModifier();
System.Void set_gravityModifier(System.Single);
System.Int32 get_maxParticles();
System.Void set_maxParticles(System.Int32);
UnityEngine.ParticleSystemSimulationSpace get_simulationSpace();
System.Void set_simulationSpace(UnityEngine.ParticleSystemSimulationSpace);
System.UInt32 get_randomSeed();
System.Void set_randomSeed(System.UInt32);
System.Void SetParticles(UnityEngine.ParticleSystem.Particle[],System.Int32);
System.Int32 GetParticles(UnityEngine.ParticleSystem.Particle[]);
System.Void Simulate(System.Single,System.Boolean);
System.Void Simulate(System.Single);
System.Void Simulate(System.Single,System.Boolean,System.Boolean);
System.Void Play();
System.Void Play(System.Boolean);
System.Void Stop();
System.Void Stop(System.Boolean);
System.Void Pause();
System.Void Pause(System.Boolean);
System.Void Clear();
System.Void Clear(System.Boolean);
System.Boolean IsAlive();
System.Boolean IsAlive(System.Boolean);
System.Void Emit(System.Int32);
System.Void Emit(UnityEngine.Vector3,UnityEngine.Vector3,System.Single,System.Single,UnityEngine.Color32);
System.Void Emit(UnityEngine.ParticleSystem.Particle);
}
class ParticleSystemRenderer : UnityEngine.Renderer{
this ();
UnityEngine.ParticleSystemRenderMode get_renderMode();
System.Void set_renderMode(UnityEngine.ParticleSystemRenderMode);
System.Single get_lengthScale();
System.Void set_lengthScale(System.Single);
System.Single get_velocityScale();
System.Void set_velocityScale(System.Single);
System.Single get_cameraVelocityScale();
System.Void set_cameraVelocityScale(System.Single);
System.Single get_maxParticleSize();
System.Void set_maxParticleSize(System.Single);
UnityEngine.Mesh get_mesh();
System.Void set_mesh(UnityEngine.Mesh);
}
class ParticleCollisionEvent : System.ValueType{
UnityEngine.Vector3 get_intersection();
UnityEngine.Vector3 get_normal();
UnityEngine.Vector3 get_velocity();
UnityEngine.Collider get_collider();
}
class ParticlePhysicsExtensions : System.__object{
static System.Int32 GetSafeCollisionEventSize(UnityEngine.ParticleSystem);
static System.Int32 GetCollisionEvents(UnityEngine.ParticleSystem,UnityEngine.GameObject,UnityEngine.ParticleCollisionEvent[]);
}
class Particle : System.ValueType{
UnityEngine.Vector3 get_position();
System.Void set_position(UnityEngine.Vector3);
UnityEngine.Vector3 get_velocity();
System.Void set_velocity(UnityEngine.Vector3);
System.Single get_energy();
System.Void set_energy(System.Single);
System.Single get_startEnergy();
System.Void set_startEnergy(System.Single);
System.Single get_size();
System.Void set_size(System.Single);
System.Single get_rotation();
System.Void set_rotation(System.Single);
System.Single get_angularVelocity();
System.Void set_angularVelocity(System.Single);
UnityEngine.Color get_color();
System.Void set_color(UnityEngine.Color);
}
class ParticleEmitter : UnityEngine.Component{
System.Boolean get_emit();
System.Void set_emit(System.Boolean);
System.Single get_minSize();
System.Void set_minSize(System.Single);
System.Single get_maxSize();
System.Void set_maxSize(System.Single);
System.Single get_minEnergy();
System.Void set_minEnergy(System.Single);
System.Single get_maxEnergy();
System.Void set_maxEnergy(System.Single);
System.Single get_minEmission();
System.Void set_minEmission(System.Single);
System.Single get_maxEmission();
System.Void set_maxEmission(System.Single);
System.Single get_emitterVelocityScale();
System.Void set_emitterVelocityScale(System.Single);
UnityEngine.Vector3 get_worldVelocity();
System.Void set_worldVelocity(UnityEngine.Vector3);
UnityEngine.Vector3 get_localVelocity();
System.Void set_localVelocity(UnityEngine.Vector3);
UnityEngine.Vector3 get_rndVelocity();
System.Void set_rndVelocity(UnityEngine.Vector3);
System.Boolean get_useWorldSpace();
System.Void set_useWorldSpace(System.Boolean);
System.Boolean get_rndRotation();
System.Void set_rndRotation(System.Boolean);
System.Single get_angularVelocity();
System.Void set_angularVelocity(System.Single);
System.Single get_rndAngularVelocity();
System.Void set_rndAngularVelocity(System.Single);
UnityEngine.Particle[] get_particles();
System.Void set_particles(UnityEngine.Particle[]);
System.Int32 get_particleCount();
System.Void ClearParticles();
System.Void Emit();
System.Void Emit(System.Int32);
System.Void Emit(UnityEngine.Vector3,UnityEngine.Vector3,System.Single,System.Single,UnityEngine.Color);
System.Void Emit(UnityEngine.Vector3,UnityEngine.Vector3,System.Single,System.Single,UnityEngine.Color,System.Single,System.Single);
System.Void Simulate(System.Single);
System.Boolean get_enabled();
System.Void set_enabled(System.Boolean);
}
class EllipsoidParticleEmitter : UnityEngine.ParticleEmitter{
}
class MeshParticleEmitter : UnityEngine.ParticleEmitter{
}
class ParticleAnimator : UnityEngine.Component{
this ();
System.Boolean get_doesAnimateColor();
System.Void set_doesAnimateColor(System.Boolean);
UnityEngine.Vector3 get_worldRotationAxis();
System.Void set_worldRotationAxis(UnityEngine.Vector3);
UnityEngine.Vector3 get_localRotationAxis();
System.Void set_localRotationAxis(UnityEngine.Vector3);
System.Single get_sizeGrow();
System.Void set_sizeGrow(System.Single);
UnityEngine.Vector3 get_rndForce();
System.Void set_rndForce(UnityEngine.Vector3);
UnityEngine.Vector3 get_force();
System.Void set_force(UnityEngine.Vector3);
System.Single get_damping();
System.Void set_damping(System.Single);
System.Boolean get_autodestruct();
System.Void set_autodestruct(System.Boolean);
UnityEngine.Color[] get_colorAnimation();
System.Void set_colorAnimation(UnityEngine.Color[]);
}
class ParticleRenderMode : System.Enum{
Int32 value__;
}
class ParticleRenderer : UnityEngine.Renderer{
this ();
UnityEngine.ParticleRenderMode get_particleRenderMode();
System.Void set_particleRenderMode(UnityEngine.ParticleRenderMode);
System.Single get_lengthScale();
System.Void set_lengthScale(System.Single);
System.Single get_velocityScale();
System.Void set_velocityScale(System.Single);
System.Single get_cameraVelocityScale();
System.Void set_cameraVelocityScale(System.Single);
System.Single get_maxParticleSize();
System.Void set_maxParticleSize(System.Single);
System.Int32 get_uvAnimationXTile();
System.Void set_uvAnimationXTile(System.Int32);
System.Int32 get_uvAnimationYTile();
System.Void set_uvAnimationYTile(System.Int32);
System.Single get_uvAnimationCycles();
System.Void set_uvAnimationCycles(System.Single);
System.Int32 get_animatedTextureCount();
System.Void set_animatedTextureCount(System.Int32);
System.Single get_maxPartileSize();
System.Void set_maxPartileSize(System.Single);
UnityEngine.Rect[] get_uvTiles();
System.Void set_uvTiles(UnityEngine.Rect[]);
UnityEngine.AnimationCurve get_widthCurve();
System.Void set_widthCurve(UnityEngine.AnimationCurve);
UnityEngine.AnimationCurve get_heightCurve();
System.Void set_heightCurve(UnityEngine.AnimationCurve);
UnityEngine.AnimationCurve get_rotationCurve();
System.Void set_rotationCurve(UnityEngine.AnimationCurve);
}
class ForceMode : System.Enum{
Int32 value__;
}
class Physics : System.__object{
this ();
static UnityEngine.RaycastHit[] SphereCastAll(UnityEngine.Ray,System.Single,System.Single);
static UnityEngine.RaycastHit[] SphereCastAll(UnityEngine.Ray,System.Single);
static UnityEngine.RaycastHit[] SphereCastAll(UnityEngine.Ray,System.Single,System.Single,System.Int32);
static System.Boolean CheckSphere(UnityEngine.Vector3,System.Single,System.Int32);
static System.Boolean CheckSphere(UnityEngine.Vector3,System.Single);
static System.Boolean CheckCapsule(UnityEngine.Vector3,UnityEngine.Vector3,System.Single,System.Int32);
static System.Boolean CheckCapsule(UnityEngine.Vector3,UnityEngine.Vector3,System.Single);
static System.Single get_penetrationPenaltyForce();
static System.Void set_penetrationPenaltyForce(System.Single);
static System.Void IgnoreCollision(UnityEngine.Collider,UnityEngine.Collider,System.Boolean);
static System.Void IgnoreCollision(UnityEngine.Collider,UnityEngine.Collider);
static System.Void IgnoreLayerCollision(System.Int32,System.Int32,System.Boolean);
static System.Void IgnoreLayerCollision(System.Int32,System.Int32);
static System.Boolean GetIgnoreLayerCollision(System.Int32,System.Int32);
static UnityEngine.Vector3 get_gravity();
static System.Void set_gravity(UnityEngine.Vector3);
static System.Single get_minPenetrationForPenalty();
static System.Void set_minPenetrationForPenalty(System.Single);
static System.Single get_defaultContactOffset();
static System.Void set_defaultContactOffset(System.Single);
static System.Single get_bounceThreshold();
static System.Void set_bounceThreshold(System.Single);
static System.Single get_bounceTreshold();
static System.Void set_bounceTreshold(System.Single);
static System.Single get_sleepVelocity();
static System.Void set_sleepVelocity(System.Single);
static System.Single get_sleepAngularVelocity();
static System.Void set_sleepAngularVelocity(System.Single);
static System.Single get_maxAngularVelocity();
static System.Void set_maxAngularVelocity(System.Single);
static System.Int32 get_solverIterationCount();
static System.Void set_solverIterationCount(System.Int32);
static System.Single get_sleepThreshold();
static System.Void set_sleepThreshold(System.Single);
static System.Boolean Raycast(UnityEngine.Vector3,UnityEngine.Vector3,System.Single);
static System.Boolean Raycast(UnityEngine.Vector3,UnityEngine.Vector3);
static System.Boolean Raycast(UnityEngine.Vector3,UnityEngine.Vector3,System.Single,System.Int32);
static System.Boolean Raycast(UnityEngine.Ray,System.Single);
static System.Boolean Raycast(UnityEngine.Ray);
static System.Boolean Raycast(UnityEngine.Ray,System.Single,System.Int32);
static UnityEngine.RaycastHit[] RaycastAll(UnityEngine.Ray,System.Single);
static UnityEngine.RaycastHit[] RaycastAll(UnityEngine.Ray);
static UnityEngine.RaycastHit[] RaycastAll(UnityEngine.Ray,System.Single,System.Int32);
static UnityEngine.RaycastHit[] RaycastAll(UnityEngine.Vector3,UnityEngine.Vector3,System.Single,System.Int32);
static UnityEngine.RaycastHit[] RaycastAll(UnityEngine.Vector3,UnityEngine.Vector3,System.Single);
static UnityEngine.RaycastHit[] RaycastAll(UnityEngine.Vector3,UnityEngine.Vector3);
static System.Boolean Linecast(UnityEngine.Vector3,UnityEngine.Vector3);
static System.Boolean Linecast(UnityEngine.Vector3,UnityEngine.Vector3,System.Int32);
static UnityEngine.Collider[] OverlapSphere(UnityEngine.Vector3,System.Single,System.Int32);
static UnityEngine.Collider[] OverlapSphere(UnityEngine.Vector3,System.Single);
static System.Boolean CapsuleCast(UnityEngine.Vector3,UnityEngine.Vector3,System.Single,UnityEngine.Vector3,System.Single);
static System.Boolean CapsuleCast(UnityEngine.Vector3,UnityEngine.Vector3,System.Single,UnityEngine.Vector3);
static System.Boolean CapsuleCast(UnityEngine.Vector3,UnityEngine.Vector3,System.Single,UnityEngine.Vector3,System.Single,System.Int32);
static System.Boolean SphereCast(UnityEngine.Ray,System.Single,System.Single);
static System.Boolean SphereCast(UnityEngine.Ray,System.Single);
static System.Boolean SphereCast(UnityEngine.Ray,System.Single,System.Single,System.Int32);
static UnityEngine.RaycastHit[] CapsuleCastAll(UnityEngine.Vector3,UnityEngine.Vector3,System.Single,UnityEngine.Vector3,System.Single,System.Int32);
static UnityEngine.RaycastHit[] CapsuleCastAll(UnityEngine.Vector3,UnityEngine.Vector3,System.Single,UnityEngine.Vector3,System.Single);
static UnityEngine.RaycastHit[] CapsuleCastAll(UnityEngine.Vector3,UnityEngine.Vector3,System.Single,UnityEngine.Vector3);
static UnityEngine.RaycastHit[] SphereCastAll(UnityEngine.Vector3,System.Single,UnityEngine.Vector3,System.Single);
static UnityEngine.RaycastHit[] SphereCastAll(UnityEngine.Vector3,System.Single,UnityEngine.Vector3);
static UnityEngine.RaycastHit[] SphereCastAll(UnityEngine.Vector3,System.Single,UnityEngine.Vector3,System.Single,System.Int32);
}
class RigidbodyConstraints : System.Enum{
Int32 value__;
}
class Rigidbody : UnityEngine.Component{
this ();
UnityEngine.Vector3 get_inertiaTensor();
System.Void set_inertiaTensor(UnityEngine.Vector3);
System.Boolean get_detectCollisions();
System.Void set_detectCollisions(System.Boolean);
System.Boolean get_useConeFriction();
System.Void set_useConeFriction(System.Boolean);
UnityEngine.Vector3 get_position();
System.Void set_position(UnityEngine.Vector3);
UnityEngine.Quaternion get_rotation();
System.Void set_rotation(UnityEngine.Quaternion);
System.Void MovePosition(UnityEngine.Vector3);
System.Void MoveRotation(UnityEngine.Quaternion);
UnityEngine.RigidbodyInterpolation get_interpolation();
System.Void set_interpolation(UnityEngine.RigidbodyInterpolation);
System.Void Sleep();
System.Boolean IsSleeping();
System.Void WakeUp();
System.Int32 get_solverIterationCount();
System.Void set_solverIterationCount(System.Int32);
System.Single get_sleepVelocity();
System.Void set_sleepVelocity(System.Single);
System.Single get_sleepAngularVelocity();
System.Void set_sleepAngularVelocity(System.Single);
System.Single get_sleepThreshold();
System.Void set_sleepThreshold(System.Single);
System.Single get_maxAngularVelocity();
System.Void set_maxAngularVelocity(System.Single);
UnityEngine.RaycastHit[] SweepTestAll(UnityEngine.Vector3,System.Single);
UnityEngine.RaycastHit[] SweepTestAll(UnityEngine.Vector3);
System.Void SetMaxAngularVelocity(System.Single);
UnityEngine.Vector3 get_velocity();
System.Void set_velocity(UnityEngine.Vector3);
UnityEngine.Vector3 get_angularVelocity();
System.Void set_angularVelocity(UnityEngine.Vector3);
System.Single get_drag();
System.Void set_drag(System.Single);
System.Single get_angularDrag();
System.Void set_angularDrag(System.Single);
System.Single get_mass();
System.Void set_mass(System.Single);
System.Void SetDensity(System.Single);
System.Boolean get_useGravity();
System.Void set_useGravity(System.Boolean);
System.Single get_maxDepenetrationVelocity();
System.Void set_maxDepenetrationVelocity(System.Single);
System.Boolean get_isKinematic();
System.Void set_isKinematic(System.Boolean);
System.Boolean get_freezeRotation();
System.Void set_freezeRotation(System.Boolean);
UnityEngine.RigidbodyConstraints get_constraints();
System.Void set_constraints(UnityEngine.RigidbodyConstraints);
UnityEngine.CollisionDetectionMode get_collisionDetectionMode();
System.Void set_collisionDetectionMode(UnityEngine.CollisionDetectionMode);
System.Void AddForce(UnityEngine.Vector3,UnityEngine.ForceMode);
System.Void AddForce(UnityEngine.Vector3);
System.Void AddForce(System.Single,System.Single,System.Single);
System.Void AddForce(System.Single,System.Single,System.Single,UnityEngine.ForceMode);
System.Void AddRelativeForce(UnityEngine.Vector3,UnityEngine.ForceMode);
System.Void AddRelativeForce(UnityEngine.Vector3);
System.Void AddRelativeForce(System.Single,System.Single,System.Single);
System.Void AddRelativeForce(System.Single,System.Single,System.Single,UnityEngine.ForceMode);
System.Void AddTorque(UnityEngine.Vector3,UnityEngine.ForceMode);
System.Void AddTorque(UnityEngine.Vector3);
System.Void AddTorque(System.Single,System.Single,System.Single);
System.Void AddTorque(System.Single,System.Single,System.Single,UnityEngine.ForceMode);
System.Void AddRelativeTorque(UnityEngine.Vector3,UnityEngine.ForceMode);
System.Void AddRelativeTorque(UnityEngine.Vector3);
System.Void AddRelativeTorque(System.Single,System.Single,System.Single);
System.Void AddRelativeTorque(System.Single,System.Single,System.Single,UnityEngine.ForceMode);
System.Void AddForceAtPosition(UnityEngine.Vector3,UnityEngine.Vector3,UnityEngine.ForceMode);
System.Void AddForceAtPosition(UnityEngine.Vector3,UnityEngine.Vector3);
System.Void AddExplosionForce(System.Single,UnityEngine.Vector3,System.Single,System.Single,UnityEngine.ForceMode);
System.Void AddExplosionForce(System.Single,UnityEngine.Vector3,System.Single,System.Single);
System.Void AddExplosionForce(System.Single,UnityEngine.Vector3,System.Single);
UnityEngine.Vector3 ClosestPointOnBounds(UnityEngine.Vector3);
UnityEngine.Vector3 GetRelativePointVelocity(UnityEngine.Vector3);
UnityEngine.Vector3 GetPointVelocity(UnityEngine.Vector3);
UnityEngine.Vector3 get_centerOfMass();
System.Void set_centerOfMass(UnityEngine.Vector3);
UnityEngine.Vector3 get_worldCenterOfMass();
UnityEngine.Quaternion get_inertiaTensorRotation();
System.Void set_inertiaTensorRotation(UnityEngine.Quaternion);
}
class RigidbodyInterpolation : System.Enum{
Int32 value__;
}
class JointMotor : System.ValueType{
System.Single get_targetVelocity();
System.Void set_targetVelocity(System.Single);
System.Single get_force();
System.Void set_force(System.Single);
System.Boolean get_freeSpin();
System.Void set_freeSpin(System.Boolean);
}
class JointSpring : System.ValueType{
Single spring;
Single damper;
Single targetPosition;
}
class JointLimits : System.ValueType{
Single minBounce;
Single maxBounce;
System.Single get_min();
System.Void set_min(System.Single);
System.Single get_max();
System.Void set_max(System.Single);
System.Single get_bounciness();
System.Void set_bounciness(System.Single);
System.Single get_bounceMinVelocity();
System.Void set_bounceMinVelocity(System.Single);
System.Single get_contactDistance();
System.Void set_contactDistance(System.Single);
}
class Joint : UnityEngine.Component{
this ();
UnityEngine.Rigidbody get_connectedBody();
System.Void set_connectedBody(UnityEngine.Rigidbody);
UnityEngine.Vector3 get_axis();
System.Void set_axis(UnityEngine.Vector3);
UnityEngine.Vector3 get_anchor();
System.Void set_anchor(UnityEngine.Vector3);
UnityEngine.Vector3 get_connectedAnchor();
System.Void set_connectedAnchor(UnityEngine.Vector3);
System.Boolean get_autoConfigureConnectedAnchor();
System.Void set_autoConfigureConnectedAnchor(System.Boolean);
System.Single get_breakForce();
System.Void set_breakForce(System.Single);
System.Single get_breakTorque();
System.Void set_breakTorque(System.Single);
System.Boolean get_enableCollision();
System.Void set_enableCollision(System.Boolean);
System.Boolean get_enablePreprocessing();
System.Void set_enablePreprocessing(System.Boolean);
}
class HingeJoint : UnityEngine.Joint{
this ();
UnityEngine.JointMotor get_motor();
System.Void set_motor(UnityEngine.JointMotor);
UnityEngine.JointLimits get_limits();
System.Void set_limits(UnityEngine.JointLimits);
UnityEngine.JointSpring get_spring();
System.Void set_spring(UnityEngine.JointSpring);
System.Boolean get_useMotor();
System.Void set_useMotor(System.Boolean);
System.Boolean get_useLimits();
System.Void set_useLimits(System.Boolean);
System.Boolean get_useSpring();
System.Void set_useSpring(System.Boolean);
System.Single get_velocity();
System.Single get_angle();
}
class SpringJoint : UnityEngine.Joint{
this ();
System.Single get_spring();
System.Void set_spring(System.Single);
System.Single get_damper();
System.Void set_damper(System.Single);
System.Single get_minDistance();
System.Void set_minDistance(System.Single);
System.Single get_maxDistance();
System.Void set_maxDistance(System.Single);
}
class FixedJoint : UnityEngine.Joint{
this ();
}
class SoftJointLimit : System.ValueType{
System.Single get_limit();
System.Void set_limit(System.Single);
System.Single get_spring();
System.Void set_spring(System.Single);
System.Single get_damper();
System.Void set_damper(System.Single);
System.Single get_bounciness();
System.Void set_bounciness(System.Single);
System.Single get_contactDistance();
System.Void set_contactDistance(System.Single);
System.Single get_bouncyness();
System.Void set_bouncyness(System.Single);
}
class SoftJointLimitSpring : System.ValueType{
System.Single get_spring();
System.Void set_spring(System.Single);
System.Single get_damper();
System.Void set_damper(System.Single);
}
class JointDriveMode : System.Enum{
Int32 value__;
}
class JointProjectionMode : System.Enum{
Int32 value__;
}
class JointDrive : System.ValueType{
UnityEngine.JointDriveMode get_mode();
System.Void set_mode(UnityEngine.JointDriveMode);
System.Single get_positionSpring();
System.Void set_positionSpring(System.Single);
System.Single get_positionDamper();
System.Void set_positionDamper(System.Single);
System.Single get_maximumForce();
System.Void set_maximumForce(System.Single);
}
class CharacterJoint : UnityEngine.Joint{
Quaternion targetRotation;
Vector3 targetAngularVelocity;
JointDrive rotationDrive;
this ();
UnityEngine.Vector3 get_swingAxis();
System.Void set_swingAxis(UnityEngine.Vector3);
UnityEngine.SoftJointLimitSpring get_twistLimitSpring();
System.Void set_twistLimitSpring(UnityEngine.SoftJointLimitSpring);
UnityEngine.SoftJointLimitSpring get_swingLimitSpring();
System.Void set_swingLimitSpring(UnityEngine.SoftJointLimitSpring);
UnityEngine.SoftJointLimit get_lowTwistLimit();
System.Void set_lowTwistLimit(UnityEngine.SoftJointLimit);
UnityEngine.SoftJointLimit get_highTwistLimit();
System.Void set_highTwistLimit(UnityEngine.SoftJointLimit);
UnityEngine.SoftJointLimit get_swing1Limit();
System.Void set_swing1Limit(UnityEngine.SoftJointLimit);
UnityEngine.SoftJointLimit get_swing2Limit();
System.Void set_swing2Limit(UnityEngine.SoftJointLimit);
System.Boolean get_enableProjection();
System.Void set_enableProjection(System.Boolean);
System.Single get_projectionDistance();
System.Void set_projectionDistance(System.Single);
System.Single get_projectionAngle();
System.Void set_projectionAngle(System.Single);
}
class ConfigurableJointMotion : System.Enum{
Int32 value__;
}
class RotationDriveMode : System.Enum{
Int32 value__;
}
class ConfigurableJoint : UnityEngine.Joint{
this ();
UnityEngine.Quaternion get_targetRotation();
System.Void set_targetRotation(UnityEngine.Quaternion);
UnityEngine.Vector3 get_targetAngularVelocity();
System.Void set_targetAngularVelocity(UnityEngine.Vector3);
UnityEngine.RotationDriveMode get_rotationDriveMode();
System.Void set_rotationDriveMode(UnityEngine.RotationDriveMode);
UnityEngine.JointDrive get_angularXDrive();
System.Void set_angularXDrive(UnityEngine.JointDrive);
UnityEngine.JointDrive get_angularYZDrive();
System.Void set_angularYZDrive(UnityEngine.JointDrive);
UnityEngine.JointDrive get_slerpDrive();
System.Void set_slerpDrive(UnityEngine.JointDrive);
UnityEngine.JointProjectionMode get_projectionMode();
System.Void set_projectionMode(UnityEngine.JointProjectionMode);
System.Single get_projectionDistance();
System.Void set_projectionDistance(System.Single);
System.Single get_projectionAngle();
System.Void set_projectionAngle(System.Single);
System.Boolean get_configuredInWorldSpace();
System.Void set_configuredInWorldSpace(System.Boolean);
System.Boolean get_swapBodies();
System.Void set_swapBodies(System.Boolean);
UnityEngine.Vector3 get_secondaryAxis();
System.Void set_secondaryAxis(UnityEngine.Vector3);
UnityEngine.ConfigurableJointMotion get_xMotion();
System.Void set_xMotion(UnityEngine.ConfigurableJointMotion);
UnityEngine.ConfigurableJointMotion get_yMotion();
System.Void set_yMotion(UnityEngine.ConfigurableJointMotion);
UnityEngine.ConfigurableJointMotion get_zMotion();
System.Void set_zMotion(UnityEngine.ConfigurableJointMotion);
UnityEngine.ConfigurableJointMotion get_angularXMotion();
System.Void set_angularXMotion(UnityEngine.ConfigurableJointMotion);
UnityEngine.ConfigurableJointMotion get_angularYMotion();
System.Void set_angularYMotion(UnityEngine.ConfigurableJointMotion);
UnityEngine.ConfigurableJointMotion get_angularZMotion();
System.Void set_angularZMotion(UnityEngine.ConfigurableJointMotion);
UnityEngine.SoftJointLimitSpring get_linearLimitSpring();
System.Void set_linearLimitSpring(UnityEngine.SoftJointLimitSpring);
UnityEngine.SoftJointLimitSpring get_angularXLimitSpring();
System.Void set_angularXLimitSpring(UnityEngine.SoftJointLimitSpring);
UnityEngine.SoftJointLimitSpring get_angularYZLimitSpring();
System.Void set_angularYZLimitSpring(UnityEngine.SoftJointLimitSpring);
UnityEngine.SoftJointLimit get_linearLimit();
System.Void set_linearLimit(UnityEngine.SoftJointLimit);
UnityEngine.SoftJointLimit get_lowAngularXLimit();
System.Void set_lowAngularXLimit(UnityEngine.SoftJointLimit);
UnityEngine.SoftJointLimit get_highAngularXLimit();
System.Void set_highAngularXLimit(UnityEngine.SoftJointLimit);
UnityEngine.SoftJointLimit get_angularYLimit();
System.Void set_angularYLimit(UnityEngine.SoftJointLimit);
UnityEngine.SoftJointLimit get_angularZLimit();
System.Void set_angularZLimit(UnityEngine.SoftJointLimit);
UnityEngine.Vector3 get_targetPosition();
System.Void set_targetPosition(UnityEngine.Vector3);
UnityEngine.Vector3 get_targetVelocity();
System.Void set_targetVelocity(UnityEngine.Vector3);
UnityEngine.JointDrive get_xDrive();
System.Void set_xDrive(UnityEngine.JointDrive);
UnityEngine.JointDrive get_yDrive();
System.Void set_yDrive(UnityEngine.JointDrive);
UnityEngine.JointDrive get_zDrive();
System.Void set_zDrive(UnityEngine.JointDrive);
}
class ConstantForce : UnityEngine.Behaviour{
this ();
UnityEngine.Vector3 get_force();
System.Void set_force(UnityEngine.Vector3);
UnityEngine.Vector3 get_relativeForce();
System.Void set_relativeForce(UnityEngine.Vector3);
UnityEngine.Vector3 get_torque();
System.Void set_torque(UnityEngine.Vector3);
UnityEngine.Vector3 get_relativeTorque();
System.Void set_relativeTorque(UnityEngine.Vector3);
}
class CollisionDetectionMode : System.Enum{
Int32 value__;
}
class Collider : UnityEngine.Component{
this ();
System.Boolean get_enabled();
System.Void set_enabled(System.Boolean);
UnityEngine.Rigidbody get_attachedRigidbody();
System.Boolean get_isTrigger();
System.Void set_isTrigger(System.Boolean);
System.Single get_contactOffset();
System.Void set_contactOffset(System.Single);
UnityEngine.PhysicMaterial get_material();
System.Void set_material(UnityEngine.PhysicMaterial);
UnityEngine.Vector3 ClosestPointOnBounds(UnityEngine.Vector3);
UnityEngine.PhysicMaterial get_sharedMaterial();
System.Void set_sharedMaterial(UnityEngine.PhysicMaterial);
UnityEngine.Bounds get_bounds();
}
class BoxCollider : UnityEngine.Collider{
this ();
UnityEngine.Vector3 get_center();
System.Void set_center(UnityEngine.Vector3);
UnityEngine.Vector3 get_size();
System.Void set_size(UnityEngine.Vector3);
UnityEngine.Vector3 get_extents();
System.Void set_extents(UnityEngine.Vector3);
}
class SphereCollider : UnityEngine.Collider{
this ();
UnityEngine.Vector3 get_center();
System.Void set_center(UnityEngine.Vector3);
System.Single get_radius();
System.Void set_radius(System.Single);
}
class MeshCollider : UnityEngine.Collider{
this ();
UnityEngine.Mesh get_sharedMesh();
System.Void set_sharedMesh(UnityEngine.Mesh);
System.Boolean get_convex();
System.Void set_convex(System.Boolean);
System.Boolean get_smoothSphereCollisions();
System.Void set_smoothSphereCollisions(System.Boolean);
}
class CapsuleCollider : UnityEngine.Collider{
this ();
UnityEngine.Vector3 get_center();
System.Void set_center(UnityEngine.Vector3);
System.Single get_radius();
System.Void set_radius(System.Single);
System.Single get_height();
System.Void set_height(System.Single);
System.Int32 get_direction();
System.Void set_direction(System.Int32);
}
class WheelFrictionCurve : System.ValueType{
System.Single get_extremumSlip();
System.Void set_extremumSlip(System.Single);
System.Single get_extremumValue();
System.Void set_extremumValue(System.Single);
System.Single get_asymptoteSlip();
System.Void set_asymptoteSlip(System.Single);
System.Single get_asymptoteValue();
System.Void set_asymptoteValue(System.Single);
System.Single get_stiffness();
System.Void set_stiffness(System.Single);
}
class WheelHit : System.ValueType{
UnityEngine.Collider get_collider();
System.Void set_collider(UnityEngine.Collider);
UnityEngine.Vector3 get_point();
System.Void set_point(UnityEngine.Vector3);
UnityEngine.Vector3 get_normal();
System.Void set_normal(UnityEngine.Vector3);
UnityEngine.Vector3 get_forwardDir();
System.Void set_forwardDir(UnityEngine.Vector3);
UnityEngine.Vector3 get_sidewaysDir();
System.Void set_sidewaysDir(UnityEngine.Vector3);
System.Single get_force();
System.Void set_force(System.Single);
System.Single get_forwardSlip();
System.Void set_forwardSlip(System.Single);
System.Single get_sidewaysSlip();
System.Void set_sidewaysSlip(System.Single);
}
class WheelCollider : UnityEngine.Collider{
this ();
UnityEngine.Vector3 get_center();
System.Void set_center(UnityEngine.Vector3);
System.Single get_radius();
System.Void set_radius(System.Single);
System.Single get_suspensionDistance();
System.Void set_suspensionDistance(System.Single);
UnityEngine.JointSpring get_suspensionSpring();
System.Void set_suspensionSpring(UnityEngine.JointSpring);
System.Single get_forceAppPointDistance();
System.Void set_forceAppPointDistance(System.Single);
System.Single get_mass();
System.Void set_mass(System.Single);
System.Single get_wheelDampingRate();
System.Void set_wheelDampingRate(System.Single);
UnityEngine.WheelFrictionCurve get_forwardFriction();
System.Void set_forwardFriction(UnityEngine.WheelFrictionCurve);
UnityEngine.WheelFrictionCurve get_sidewaysFriction();
System.Void set_sidewaysFriction(UnityEngine.WheelFrictionCurve);
System.Single get_motorTorque();
System.Void set_motorTorque(System.Single);
System.Single get_brakeTorque();
System.Void set_brakeTorque(System.Single);
System.Single get_steerAngle();
System.Void set_steerAngle(System.Single);
System.Boolean get_isGrounded();
System.Void ConfigureVehicleSubsteps(System.Single,System.Int32,System.Int32);
System.Single get_sprungMass();
System.Single get_rpm();
}
class RaycastHit : System.ValueType{
UnityEngine.Vector3 get_point();
System.Void set_point(UnityEngine.Vector3);
UnityEngine.Vector3 get_normal();
System.Void set_normal(UnityEngine.Vector3);
UnityEngine.Vector3 get_barycentricCoordinate();
System.Void set_barycentricCoordinate(UnityEngine.Vector3);
System.Single get_distance();
System.Void set_distance(System.Single);
System.Int32 get_triangleIndex();
UnityEngine.Vector2 get_textureCoord();
UnityEngine.Vector2 get_textureCoord2();
UnityEngine.Vector2 get_textureCoord1();
UnityEngine.Vector2 get_lightmapCoord();
UnityEngine.Collider get_collider();
UnityEngine.Rigidbody get_rigidbody();
UnityEngine.Transform get_transform();
}
class PhysicMaterialCombine : System.Enum{
Int32 value__;
}
class PhysicMaterial : UnityEngine.__UnityObject{
this ();
this (System.String);
System.Single get_dynamicFriction();
System.Void set_dynamicFriction(System.Single);
System.Single get_staticFriction();
System.Void set_staticFriction(System.Single);
System.Single get_bounciness();
System.Void set_bounciness(System.Single);
System.Single get_bouncyness();
System.Void set_bouncyness(System.Single);
UnityEngine.Vector3 get_frictionDirection2();
System.Void set_frictionDirection2(UnityEngine.Vector3);
System.Single get_dynamicFriction2();
System.Void set_dynamicFriction2(System.Single);
System.Single get_staticFriction2();
System.Void set_staticFriction2(System.Single);
UnityEngine.PhysicMaterialCombine get_frictionCombine();
System.Void set_frictionCombine(UnityEngine.PhysicMaterialCombine);
UnityEngine.PhysicMaterialCombine get_bounceCombine();
System.Void set_bounceCombine(UnityEngine.PhysicMaterialCombine);
UnityEngine.Vector3 get_frictionDirection();
System.Void set_frictionDirection(UnityEngine.Vector3);
}
class ContactPoint : System.ValueType{
UnityEngine.Vector3 get_point();
UnityEngine.Vector3 get_normal();
UnityEngine.Collider get_thisCollider();
UnityEngine.Collider get_otherCollider();
}
class Collision : System.__object{
this ();
UnityEngine.Vector3 get_relativeVelocity();
UnityEngine.Rigidbody get_rigidbody();
UnityEngine.Collider get_collider();
UnityEngine.Transform get_transform();
UnityEngine.GameObject get_gameObject();
UnityEngine.ContactPoint[] get_contacts();
System.Collections.IEnumerator GetEnumerator();
UnityEngine.Vector3 get_impactForceSum();
UnityEngine.Vector3 get_frictionForceSum();
UnityEngine.Component get_other();
}
class CollisionFlags : System.Enum{
Int32 value__;
}
class ControllerColliderHit : System.__object{
this ();
UnityEngine.CharacterController get_controller();
UnityEngine.Collider get_collider();
UnityEngine.Rigidbody get_rigidbody();
UnityEngine.GameObject get_gameObject();
UnityEngine.Transform get_transform();
UnityEngine.Vector3 get_point();
UnityEngine.Vector3 get_normal();
UnityEngine.Vector3 get_moveDirection();
System.Single get_moveLength();
}
class CharacterController : UnityEngine.Collider{
this ();
System.Boolean SimpleMove(UnityEngine.Vector3);
UnityEngine.CollisionFlags Move(UnityEngine.Vector3);
System.Boolean get_isGrounded();
UnityEngine.Vector3 get_velocity();
UnityEngine.CollisionFlags get_collisionFlags();
System.Single get_radius();
System.Void set_radius(System.Single);
System.Single get_height();
System.Void set_height(System.Single);
UnityEngine.Vector3 get_center();
System.Void set_center(UnityEngine.Vector3);
System.Single get_slopeLimit();
System.Void set_slopeLimit(System.Single);
System.Single get_stepOffset();
System.Void set_stepOffset(System.Single);
System.Boolean get_detectCollisions();
System.Void set_detectCollisions(System.Boolean);
}
class ClothSkinningCoefficient : System.ValueType{
Single maxDistance;
Single collisionSphereDistance;
}
class ClothSphereColliderPair : System.ValueType{
this (UnityEngine.SphereCollider);
this (UnityEngine.SphereCollider,UnityEngine.SphereCollider);
UnityEngine.SphereCollider get_first();
System.Void set_first(UnityEngine.SphereCollider);
UnityEngine.SphereCollider get_second();
System.Void set_second(UnityEngine.SphereCollider);
}
class Cloth : UnityEngine.Component{
this ();
System.Single get_sleepThreshold();
System.Void set_sleepThreshold(System.Single);
System.Single get_bendingStiffness();
System.Void set_bendingStiffness(System.Single);
System.Single get_stretchingStiffness();
System.Void set_stretchingStiffness(System.Single);
System.Single get_damping();
System.Void set_damping(System.Single);
UnityEngine.Vector3 get_externalAcceleration();
System.Void set_externalAcceleration(UnityEngine.Vector3);
UnityEngine.Vector3 get_randomAcceleration();
System.Void set_randomAcceleration(UnityEngine.Vector3);
System.Boolean get_useGravity();
System.Void set_useGravity(System.Boolean);
System.Boolean get_selfCollision();
System.Void set_selfCollision(System.Boolean);
System.Boolean get_enabled();
System.Void set_enabled(System.Boolean);
UnityEngine.Vector3[] get_vertices();
UnityEngine.Vector3[] get_normals();
System.Single get_friction();
System.Void set_friction(System.Single);
System.Single get_collisionMassScale();
System.Void set_collisionMassScale(System.Single);
System.Single get_useContinuousCollision();
System.Void set_useContinuousCollision(System.Single);
System.Single get_useVirtualParticles();
System.Void set_useVirtualParticles(System.Single);
System.Void ClearTransformMotion();
UnityEngine.ClothSkinningCoefficient[] get_coefficients();
System.Void set_coefficients(UnityEngine.ClothSkinningCoefficient[]);
System.Single get_worldVelocityScale();
System.Void set_worldVelocityScale(System.Single);
System.Single get_worldAccelerationScale();
System.Void set_worldAccelerationScale(System.Single);
System.Void SetEnabledFading(System.Boolean,System.Single);
System.Void SetEnabledFading(System.Boolean);
System.Boolean get_solverFrequency();
System.Void set_solverFrequency(System.Boolean);
UnityEngine.CapsuleCollider[] get_capsuleColliders();
System.Void set_capsuleColliders(UnityEngine.CapsuleCollider[]);
UnityEngine.ClothSphereColliderPair[] get_sphereColliders();
System.Void set_sphereColliders(UnityEngine.ClothSphereColliderPair[]);
}
class Physics2D : System.__object{
this ();
static UnityEngine.Collider2D OverlapCircle(UnityEngine.Vector2,System.Single,System.Int32,System.Single,System.Single);
static UnityEngine.Collider2D OverlapCircle(UnityEngine.Vector2,System.Single,System.Int32,System.Single);
static UnityEngine.Collider2D OverlapCircle(UnityEngine.Vector2,System.Single,System.Int32);
static UnityEngine.Collider2D OverlapCircle(UnityEngine.Vector2,System.Single);
static UnityEngine.Collider2D[] OverlapCircleAll(UnityEngine.Vector2,System.Single,System.Int32,System.Single,System.Single);
static UnityEngine.Collider2D[] OverlapCircleAll(UnityEngine.Vector2,System.Single,System.Int32,System.Single);
static UnityEngine.Collider2D[] OverlapCircleAll(UnityEngine.Vector2,System.Single,System.Int32);
static UnityEngine.Collider2D[] OverlapCircleAll(UnityEngine.Vector2,System.Single);
static System.Int32 OverlapCircleNonAlloc(UnityEngine.Vector2,System.Single,UnityEngine.Collider2D[],System.Int32,System.Single,System.Single);
static System.Int32 OverlapCircleNonAlloc(UnityEngine.Vector2,System.Single,UnityEngine.Collider2D[],System.Int32,System.Single);
static System.Int32 OverlapCircleNonAlloc(UnityEngine.Vector2,System.Single,UnityEngine.Collider2D[],System.Int32);
static System.Int32 OverlapCircleNonAlloc(UnityEngine.Vector2,System.Single,UnityEngine.Collider2D[]);
static UnityEngine.Collider2D OverlapArea(UnityEngine.Vector2,UnityEngine.Vector2,System.Int32,System.Single,System.Single);
static UnityEngine.Collider2D OverlapArea(UnityEngine.Vector2,UnityEngine.Vector2,System.Int32,System.Single);
static UnityEngine.Collider2D OverlapArea(UnityEngine.Vector2,UnityEngine.Vector2,System.Int32);
static UnityEngine.Collider2D OverlapArea(UnityEngine.Vector2,UnityEngine.Vector2);
static UnityEngine.Collider2D[] OverlapAreaAll(UnityEngine.Vector2,UnityEngine.Vector2,System.Int32,System.Single,System.Single);
static UnityEngine.Collider2D[] OverlapAreaAll(UnityEngine.Vector2,UnityEngine.Vector2,System.Int32,System.Single);
static UnityEngine.Collider2D[] OverlapAreaAll(UnityEngine.Vector2,UnityEngine.Vector2,System.Int32);
static UnityEngine.Collider2D[] OverlapAreaAll(UnityEngine.Vector2,UnityEngine.Vector2);
static System.Int32 OverlapAreaNonAlloc(UnityEngine.Vector2,UnityEngine.Vector2,UnityEngine.Collider2D[],System.Int32,System.Single,System.Single);
static System.Int32 OverlapAreaNonAlloc(UnityEngine.Vector2,UnityEngine.Vector2,UnityEngine.Collider2D[],System.Int32,System.Single);
static System.Int32 OverlapAreaNonAlloc(UnityEngine.Vector2,UnityEngine.Vector2,UnityEngine.Collider2D[],System.Int32);
static System.Int32 OverlapAreaNonAlloc(UnityEngine.Vector2,UnityEngine.Vector2,UnityEngine.Collider2D[]);
static UnityEngine.RaycastHit2D Raycast(UnityEngine.Vector2,UnityEngine.Vector2,System.Single);
static UnityEngine.RaycastHit2D Raycast(UnityEngine.Vector2,UnityEngine.Vector2);
static UnityEngine.RaycastHit2D Raycast(UnityEngine.Vector2,UnityEngine.Vector2,System.Single,System.Int32,System.Single,System.Single);
static UnityEngine.RaycastHit2D[] RaycastAll(UnityEngine.Vector2,UnityEngine.Vector2,System.Single,System.Int32,System.Single,System.Single);
static UnityEngine.RaycastHit2D[] RaycastAll(UnityEngine.Vector2,UnityEngine.Vector2,System.Single,System.Int32,System.Single);
static UnityEngine.RaycastHit2D[] RaycastAll(UnityEngine.Vector2,UnityEngine.Vector2,System.Single,System.Int32);
static UnityEngine.RaycastHit2D[] RaycastAll(UnityEngine.Vector2,UnityEngine.Vector2,System.Single);
static UnityEngine.RaycastHit2D[] RaycastAll(UnityEngine.Vector2,UnityEngine.Vector2);
static System.Int32 RaycastNonAlloc(UnityEngine.Vector2,UnityEngine.Vector2,UnityEngine.RaycastHit2D[],System.Single,System.Int32,System.Single,System.Single);
static System.Int32 RaycastNonAlloc(UnityEngine.Vector2,UnityEngine.Vector2,UnityEngine.RaycastHit2D[],System.Single,System.Int32,System.Single);
static System.Int32 RaycastNonAlloc(UnityEngine.Vector2,UnityEngine.Vector2,UnityEngine.RaycastHit2D[],System.Single,System.Int32);
static System.Int32 RaycastNonAlloc(UnityEngine.Vector2,UnityEngine.Vector2,UnityEngine.RaycastHit2D[],System.Single);
static System.Int32 RaycastNonAlloc(UnityEngine.Vector2,UnityEngine.Vector2,UnityEngine.RaycastHit2D[]);
static UnityEngine.RaycastHit2D CircleCast(UnityEngine.Vector2,System.Single,UnityEngine.Vector2,System.Single,System.Int32,System.Single);
static UnityEngine.RaycastHit2D CircleCast(UnityEngine.Vector2,System.Single,UnityEngine.Vector2,System.Single,System.Int32);
static UnityEngine.RaycastHit2D CircleCast(UnityEngine.Vector2,System.Single,UnityEngine.Vector2,System.Single);
static UnityEngine.RaycastHit2D CircleCast(UnityEngine.Vector2,System.Single,UnityEngine.Vector2);
static UnityEngine.RaycastHit2D CircleCast(UnityEngine.Vector2,System.Single,UnityEngine.Vector2,System.Single,System.Int32,System.Single,System.Single);
static UnityEngine.RaycastHit2D[] CircleCastAll(UnityEngine.Vector2,System.Single,UnityEngine.Vector2,System.Single,System.Int32,System.Single,System.Single);
static UnityEngine.RaycastHit2D[] CircleCastAll(UnityEngine.Vector2,System.Single,UnityEngine.Vector2,System.Single,System.Int32,System.Single);
static UnityEngine.RaycastHit2D[] CircleCastAll(UnityEngine.Vector2,System.Single,UnityEngine.Vector2,System.Single,System.Int32);
static UnityEngine.RaycastHit2D[] CircleCastAll(UnityEngine.Vector2,System.Single,UnityEngine.Vector2,System.Single);
static UnityEngine.RaycastHit2D[] CircleCastAll(UnityEngine.Vector2,System.Single,UnityEngine.Vector2);
static System.Int32 CircleCastNonAlloc(UnityEngine.Vector2,System.Single,UnityEngine.Vector2,UnityEngine.RaycastHit2D[],System.Single,System.Int32,System.Single,System.Single);
static System.Int32 CircleCastNonAlloc(UnityEngine.Vector2,System.Single,UnityEngine.Vector2,UnityEngine.RaycastHit2D[],System.Single,System.Int32,System.Single);
static System.Int32 CircleCastNonAlloc(UnityEngine.Vector2,System.Single,UnityEngine.Vector2,UnityEngine.RaycastHit2D[],System.Single,System.Int32);
static System.Int32 CircleCastNonAlloc(UnityEngine.Vector2,System.Single,UnityEngine.Vector2,UnityEngine.RaycastHit2D[],System.Single);
static System.Int32 CircleCastNonAlloc(UnityEngine.Vector2,System.Single,UnityEngine.Vector2,UnityEngine.RaycastHit2D[]);
static UnityEngine.RaycastHit2D BoxCast(UnityEngine.Vector2,UnityEngine.Vector2,System.Single,UnityEngine.Vector2,System.Single,System.Int32,System.Single);
static UnityEngine.RaycastHit2D BoxCast(UnityEngine.Vector2,UnityEngine.Vector2,System.Single,UnityEngine.Vector2,System.Single,System.Int32);
static UnityEngine.RaycastHit2D BoxCast(UnityEngine.Vector2,UnityEngine.Vector2,System.Single,UnityEngine.Vector2,System.Single);
static UnityEngine.RaycastHit2D BoxCast(UnityEngine.Vector2,UnityEngine.Vector2,System.Single,UnityEngine.Vector2);
static UnityEngine.RaycastHit2D BoxCast(UnityEngine.Vector2,UnityEngine.Vector2,System.Single,UnityEngine.Vector2,System.Single,System.Int32,System.Single,System.Single);
static UnityEngine.RaycastHit2D[] BoxCastAll(UnityEngine.Vector2,UnityEngine.Vector2,System.Single,UnityEngine.Vector2,System.Single,System.Int32,System.Single,System.Single);
static UnityEngine.RaycastHit2D[] BoxCastAll(UnityEngine.Vector2,UnityEngine.Vector2,System.Single,UnityEngine.Vector2,System.Single,System.Int32,System.Single);
static UnityEngine.RaycastHit2D[] BoxCastAll(UnityEngine.Vector2,UnityEngine.Vector2,System.Single,UnityEngine.Vector2,System.Single,System.Int32);
static UnityEngine.RaycastHit2D[] BoxCastAll(UnityEngine.Vector2,UnityEngine.Vector2,System.Single,UnityEngine.Vector2,System.Single);
static UnityEngine.RaycastHit2D[] BoxCastAll(UnityEngine.Vector2,UnityEngine.Vector2,System.Single,UnityEngine.Vector2);
static System.Int32 BoxCastNonAlloc(UnityEngine.Vector2,UnityEngine.Vector2,System.Single,UnityEngine.Vector2,UnityEngine.RaycastHit2D[],System.Single,System.Int32,System.Single,System.Single);
static System.Int32 BoxCastNonAlloc(UnityEngine.Vector2,UnityEngine.Vector2,System.Single,UnityEngine.Vector2,UnityEngine.RaycastHit2D[],System.Single,System.Int32,System.Single);
static System.Int32 BoxCastNonAlloc(UnityEngine.Vector2,UnityEngine.Vector2,System.Single,UnityEngine.Vector2,UnityEngine.RaycastHit2D[],System.Single,System.Int32);
static System.Int32 BoxCastNonAlloc(UnityEngine.Vector2,UnityEngine.Vector2,System.Single,UnityEngine.Vector2,UnityEngine.RaycastHit2D[],System.Single);
static System.Int32 BoxCastNonAlloc(UnityEngine.Vector2,UnityEngine.Vector2,System.Single,UnityEngine.Vector2,UnityEngine.RaycastHit2D[]);
static UnityEngine.RaycastHit2D GetRayIntersection(UnityEngine.Ray,System.Single);
static UnityEngine.RaycastHit2D GetRayIntersection(UnityEngine.Ray);
static UnityEngine.RaycastHit2D GetRayIntersection(UnityEngine.Ray,System.Single,System.Int32);
static UnityEngine.RaycastHit2D[] GetRayIntersectionAll(UnityEngine.Ray,System.Single,System.Int32);
static UnityEngine.RaycastHit2D[] GetRayIntersectionAll(UnityEngine.Ray,System.Single);
static UnityEngine.RaycastHit2D[] GetRayIntersectionAll(UnityEngine.Ray);
static System.Int32 GetRayIntersectionNonAlloc(UnityEngine.Ray,UnityEngine.RaycastHit2D[],System.Single,System.Int32);
static System.Int32 GetRayIntersectionNonAlloc(UnityEngine.Ray,UnityEngine.RaycastHit2D[],System.Single);
static System.Int32 GetRayIntersectionNonAlloc(UnityEngine.Ray,UnityEngine.RaycastHit2D[]);
static UnityEngine.Collider2D OverlapPoint(UnityEngine.Vector2,System.Int32,System.Single,System.Single);
static UnityEngine.Collider2D OverlapPoint(UnityEngine.Vector2,System.Int32,System.Single);
static UnityEngine.Collider2D OverlapPoint(UnityEngine.Vector2,System.Int32);
static UnityEngine.Collider2D OverlapPoint(UnityEngine.Vector2);
static UnityEngine.Collider2D[] OverlapPointAll(UnityEngine.Vector2,System.Int32,System.Single,System.Single);
static UnityEngine.Collider2D[] OverlapPointAll(UnityEngine.Vector2,System.Int32,System.Single);
static UnityEngine.Collider2D[] OverlapPointAll(UnityEngine.Vector2,System.Int32);
static UnityEngine.Collider2D[] OverlapPointAll(UnityEngine.Vector2);
static System.Int32 OverlapPointNonAlloc(UnityEngine.Vector2,UnityEngine.Collider2D[],System.Int32,System.Single,System.Single);
static System.Int32 OverlapPointNonAlloc(UnityEngine.Vector2,UnityEngine.Collider2D[],System.Int32,System.Single);
static System.Int32 OverlapPointNonAlloc(UnityEngine.Vector2,UnityEngine.Collider2D[],System.Int32);
static System.Int32 OverlapPointNonAlloc(UnityEngine.Vector2,UnityEngine.Collider2D[]);
static System.Int32 get_velocityIterations();
static System.Void set_velocityIterations(System.Int32);
static System.Int32 get_positionIterations();
static System.Void set_positionIterations(System.Int32);
static UnityEngine.Vector2 get_gravity();
static System.Void set_gravity(UnityEngine.Vector2);
static System.Boolean get_raycastsHitTriggers();
static System.Void set_raycastsHitTriggers(System.Boolean);
static System.Boolean get_raycastsStartInColliders();
static System.Void set_raycastsStartInColliders(System.Boolean);
static System.Boolean get_deleteStopsCallbacks();
static System.Void set_deleteStopsCallbacks(System.Boolean);
static System.Boolean get_changeStopsCallbacks();
static System.Void set_changeStopsCallbacks(System.Boolean);
static System.Single get_velocityThreshold();
static System.Void set_velocityThreshold(System.Single);
static System.Single get_maxLinearCorrection();
static System.Void set_maxLinearCorrection(System.Single);
static System.Single get_maxAngularCorrection();
static System.Void set_maxAngularCorrection(System.Single);
static System.Single get_maxTranslationSpeed();
static System.Void set_maxTranslationSpeed(System.Single);
static System.Single get_maxRotationSpeed();
static System.Void set_maxRotationSpeed(System.Single);
static System.Single get_minPenetrationForPenalty();
static System.Void set_minPenetrationForPenalty(System.Single);
static System.Single get_baumgarteScale();
static System.Void set_baumgarteScale(System.Single);
static System.Single get_baumgarteTOIScale();
static System.Void set_baumgarteTOIScale(System.Single);
static System.Single get_timeToSleep();
static System.Void set_timeToSleep(System.Single);
static System.Single get_linearSleepTolerance();
static System.Void set_linearSleepTolerance(System.Single);
static System.Single get_angularSleepTolerance();
static System.Void set_angularSleepTolerance(System.Single);
static System.Void IgnoreCollision(UnityEngine.Collider2D,UnityEngine.Collider2D,System.Boolean);
static System.Void IgnoreCollision(UnityEngine.Collider2D,UnityEngine.Collider2D);
static System.Boolean GetIgnoreCollision(UnityEngine.Collider2D,UnityEngine.Collider2D);
static System.Void IgnoreLayerCollision(System.Int32,System.Int32,System.Boolean);
static System.Void IgnoreLayerCollision(System.Int32,System.Int32);
static System.Boolean GetIgnoreLayerCollision(System.Int32,System.Int32);
static System.Boolean IsTouching(UnityEngine.Collider2D,UnityEngine.Collider2D);
static System.Boolean IsTouchingLayers(UnityEngine.Collider2D,System.Int32);
static System.Boolean IsTouchingLayers(UnityEngine.Collider2D);
static UnityEngine.RaycastHit2D Linecast(UnityEngine.Vector2,UnityEngine.Vector2,System.Int32,System.Single);
static UnityEngine.RaycastHit2D Linecast(UnityEngine.Vector2,UnityEngine.Vector2,System.Int32);
static UnityEngine.RaycastHit2D Linecast(UnityEngine.Vector2,UnityEngine.Vector2);
static UnityEngine.RaycastHit2D Linecast(UnityEngine.Vector2,UnityEngine.Vector2,System.Int32,System.Single,System.Single);
static UnityEngine.RaycastHit2D[] LinecastAll(UnityEngine.Vector2,UnityEngine.Vector2,System.Int32,System.Single,System.Single);
static UnityEngine.RaycastHit2D[] LinecastAll(UnityEngine.Vector2,UnityEngine.Vector2,System.Int32,System.Single);
static UnityEngine.RaycastHit2D[] LinecastAll(UnityEngine.Vector2,UnityEngine.Vector2,System.Int32);
static UnityEngine.RaycastHit2D[] LinecastAll(UnityEngine.Vector2,UnityEngine.Vector2);
static System.Int32 LinecastNonAlloc(UnityEngine.Vector2,UnityEngine.Vector2,UnityEngine.RaycastHit2D[],System.Int32,System.Single,System.Single);
static System.Int32 LinecastNonAlloc(UnityEngine.Vector2,UnityEngine.Vector2,UnityEngine.RaycastHit2D[],System.Int32,System.Single);
static System.Int32 LinecastNonAlloc(UnityEngine.Vector2,UnityEngine.Vector2,UnityEngine.RaycastHit2D[],System.Int32);
static System.Int32 LinecastNonAlloc(UnityEngine.Vector2,UnityEngine.Vector2,UnityEngine.RaycastHit2D[]);
static UnityEngine.RaycastHit2D Raycast(UnityEngine.Vector2,UnityEngine.Vector2,System.Single,System.Int32,System.Single);
static UnityEngine.RaycastHit2D Raycast(UnityEngine.Vector2,UnityEngine.Vector2,System.Single,System.Int32);
}
class RaycastHit2D : System.ValueType{
UnityEngine.Vector2 get_centroid();
System.Void set_centroid(UnityEngine.Vector2);
UnityEngine.Vector2 get_point();
System.Void set_point(UnityEngine.Vector2);
UnityEngine.Vector2 get_normal();
System.Void set_normal(UnityEngine.Vector2);
System.Single get_distance();
System.Void set_distance(System.Single);
System.Single get_fraction();
System.Void set_fraction(System.Single);
UnityEngine.Collider2D get_collider();
UnityEngine.Rigidbody2D get_rigidbody();
UnityEngine.Transform get_transform();
System.Int32 CompareTo(UnityEngine.RaycastHit2D);
static System.Boolean op_Implicit(UnityEngine.RaycastHit2D);
}
class RigidbodyInterpolation2D : System.Enum{
Int32 value__;
}
class RigidbodySleepMode2D : System.Enum{
Int32 value__;
}
class CollisionDetectionMode2D : System.Enum{
Int32 value__;
}
class ForceMode2D : System.Enum{
Int32 value__;
}
class RigidbodyConstraints2D : System.Enum{
Int32 value__;
}
class Rigidbody2D : UnityEngine.Component{
this ();
UnityEngine.Vector2 GetRelativePoint(UnityEngine.Vector2);
UnityEngine.Vector2 GetVector(UnityEngine.Vector2);
UnityEngine.Vector2 GetRelativeVector(UnityEngine.Vector2);
UnityEngine.Vector2 GetPointVelocity(UnityEngine.Vector2);
UnityEngine.Vector2 GetRelativePointVelocity(UnityEngine.Vector2);
UnityEngine.Vector2 get_position();
System.Void set_position(UnityEngine.Vector2);
System.Single get_rotation();
System.Void set_rotation(System.Single);
System.Void MovePosition(UnityEngine.Vector2);
System.Void MoveRotation(System.Single);
UnityEngine.Vector2 get_velocity();
System.Void set_velocity(UnityEngine.Vector2);
System.Single get_angularVelocity();
System.Void set_angularVelocity(System.Single);
System.Single get_mass();
System.Void set_mass(System.Single);
UnityEngine.Vector2 get_centerOfMass();
System.Void set_centerOfMass(UnityEngine.Vector2);
UnityEngine.Vector2 get_worldCenterOfMass();
System.Single get_inertia();
System.Void set_inertia(System.Single);
System.Single get_drag();
System.Void set_drag(System.Single);
System.Single get_angularDrag();
System.Void set_angularDrag(System.Single);
System.Single get_gravityScale();
System.Void set_gravityScale(System.Single);
System.Boolean get_isKinematic();
System.Void set_isKinematic(System.Boolean);
System.Boolean get_fixedAngle();
System.Void set_fixedAngle(System.Boolean);
System.Boolean get_freezeRotation();
System.Void set_freezeRotation(System.Boolean);
UnityEngine.RigidbodyConstraints2D get_constraints();
System.Void set_constraints(UnityEngine.RigidbodyConstraints2D);
System.Boolean IsSleeping();
System.Boolean IsAwake();
System.Void Sleep();
System.Void WakeUp();
System.Boolean get_simulated();
System.Void set_simulated(System.Boolean);
UnityEngine.RigidbodyInterpolation2D get_interpolation();
System.Void set_interpolation(UnityEngine.RigidbodyInterpolation2D);
UnityEngine.RigidbodySleepMode2D get_sleepMode();
System.Void set_sleepMode(UnityEngine.RigidbodySleepMode2D);
UnityEngine.CollisionDetectionMode2D get_collisionDetectionMode();
System.Void set_collisionDetectionMode(UnityEngine.CollisionDetectionMode2D);
System.Boolean IsTouching(UnityEngine.Collider2D);
System.Boolean IsTouchingLayers(System.Int32);
System.Boolean IsTouchingLayers();
System.Void AddForce(UnityEngine.Vector2,UnityEngine.ForceMode2D);
System.Void AddForce(UnityEngine.Vector2);
System.Void AddRelativeForce(UnityEngine.Vector2,UnityEngine.ForceMode2D);
System.Void AddRelativeForce(UnityEngine.Vector2);
System.Void AddForceAtPosition(UnityEngine.Vector2,UnityEngine.Vector2,UnityEngine.ForceMode2D);
System.Void AddForceAtPosition(UnityEngine.Vector2,UnityEngine.Vector2);
System.Void AddTorque(System.Single,UnityEngine.ForceMode2D);
System.Void AddTorque(System.Single);
UnityEngine.Vector2 GetPoint(UnityEngine.Vector2);
}
class Collider2D : UnityEngine.Behaviour{
this ();
System.Boolean get_isTrigger();
System.Void set_isTrigger(System.Boolean);
System.Boolean get_usedByEffector();
System.Void set_usedByEffector(System.Boolean);
UnityEngine.Vector2 get_offset();
System.Void set_offset(UnityEngine.Vector2);
UnityEngine.Rigidbody2D get_attachedRigidbody();
System.Int32 get_shapeCount();
UnityEngine.Bounds get_bounds();
System.Boolean OverlapPoint(UnityEngine.Vector2);
UnityEngine.PhysicsMaterial2D get_sharedMaterial();
System.Void set_sharedMaterial(UnityEngine.PhysicsMaterial2D);
System.Boolean IsTouching(UnityEngine.Collider2D);
System.Boolean IsTouchingLayers(System.Int32);
System.Boolean IsTouchingLayers();
}
class CircleCollider2D : UnityEngine.Collider2D{
this ();
System.Single get_radius();
System.Void set_radius(System.Single);
UnityEngine.Vector2 get_center();
System.Void set_center(UnityEngine.Vector2);
}
class BoxCollider2D : UnityEngine.Collider2D{
this ();
UnityEngine.Vector2 get_size();
System.Void set_size(UnityEngine.Vector2);
UnityEngine.Vector2 get_center();
System.Void set_center(UnityEngine.Vector2);
}
class EdgeCollider2D : UnityEngine.Collider2D{
this ();
System.Void Reset();
System.Int32 get_edgeCount();
System.Int32 get_pointCount();
UnityEngine.Vector2[] get_points();
System.Void set_points(UnityEngine.Vector2[]);
}
class PolygonCollider2D : UnityEngine.Collider2D{
this ();
UnityEngine.Vector2[] get_points();
System.Void set_points(UnityEngine.Vector2[]);
UnityEngine.Vector2[] GetPath(System.Int32);
System.Void SetPath(System.Int32,UnityEngine.Vector2[]);
System.Int32 get_pathCount();
System.Void set_pathCount(System.Int32);
System.Int32 GetTotalPointCount();
System.Void CreatePrimitive(System.Int32,UnityEngine.Vector2,UnityEngine.Vector2);
System.Void CreatePrimitive(System.Int32,UnityEngine.Vector2);
System.Void CreatePrimitive(System.Int32);
}
class ContactPoint2D : System.ValueType{
UnityEngine.Vector2 get_point();
UnityEngine.Vector2 get_normal();
UnityEngine.Collider2D get_collider();
UnityEngine.Collider2D get_otherCollider();
}
class Collision2D : System.__object{
this ();
System.Boolean get_enabled();
UnityEngine.Rigidbody2D get_rigidbody();
UnityEngine.Collider2D get_collider();
UnityEngine.Transform get_transform();
UnityEngine.GameObject get_gameObject();
UnityEngine.ContactPoint2D[] get_contacts();
UnityEngine.Vector2 get_relativeVelocity();
}
class JointLimitState2D : System.Enum{
Int32 value__;
}
class JointAngleLimits2D : System.ValueType{
System.Single get_min();
System.Void set_min(System.Single);
System.Single get_max();
System.Void set_max(System.Single);
}
class JointTranslationLimits2D : System.ValueType{
System.Single get_min();
System.Void set_min(System.Single);
System.Single get_max();
System.Void set_max(System.Single);
}
class JointMotor2D : System.ValueType{
System.Single get_motorSpeed();
System.Void set_motorSpeed(System.Single);
System.Single get_maxMotorTorque();
System.Void set_maxMotorTorque(System.Single);
}
class JointSuspension2D : System.ValueType{
System.Single get_dampingRatio();
System.Void set_dampingRatio(System.Single);
System.Single get_frequency();
System.Void set_frequency(System.Single);
System.Single get_angle();
System.Void set_angle(System.Single);
}
class Joint2D : UnityEngine.Behaviour{
this ();
UnityEngine.Rigidbody2D get_connectedBody();
System.Void set_connectedBody(UnityEngine.Rigidbody2D);
System.Boolean get_collideConnected();
System.Void set_collideConnected(System.Boolean);
System.Boolean get_enableCollision();
System.Void set_enableCollision(System.Boolean);
}
class AnchoredJoint2D : UnityEngine.Joint2D{
this ();
UnityEngine.Vector2 get_anchor();
System.Void set_anchor(UnityEngine.Vector2);
UnityEngine.Vector2 get_connectedAnchor();
System.Void set_connectedAnchor(UnityEngine.Vector2);
}
class SpringJoint2D : UnityEngine.AnchoredJoint2D{
this ();
System.Single get_distance();
System.Void set_distance(System.Single);
System.Single get_dampingRatio();
System.Void set_dampingRatio(System.Single);
System.Single get_frequency();
System.Void set_frequency(System.Single);
UnityEngine.Vector2 GetReactionForce(System.Single);
System.Single GetReactionTorque(System.Single);
}
class DistanceJoint2D : UnityEngine.AnchoredJoint2D{
this ();
System.Single get_distance();
System.Void set_distance(System.Single);
System.Boolean get_maxDistanceOnly();
System.Void set_maxDistanceOnly(System.Boolean);
UnityEngine.Vector2 GetReactionForce(System.Single);
System.Single GetReactionTorque(System.Single);
}
class HingeJoint2D : UnityEngine.AnchoredJoint2D{
this ();
System.Boolean get_useMotor();
System.Void set_useMotor(System.Boolean);
System.Boolean get_useLimits();
System.Void set_useLimits(System.Boolean);
UnityEngine.JointMotor2D get_motor();
System.Void set_motor(UnityEngine.JointMotor2D);
UnityEngine.JointAngleLimits2D get_limits();
System.Void set_limits(UnityEngine.JointAngleLimits2D);
UnityEngine.JointLimitState2D get_limitState();
System.Single get_referenceAngle();
System.Single get_jointAngle();
System.Single get_jointSpeed();
UnityEngine.Vector2 GetReactionForce(System.Single);
System.Single GetReactionTorque(System.Single);
System.Single GetMotorTorque(System.Single);
}
class SliderJoint2D : UnityEngine.AnchoredJoint2D{
this ();
System.Single get_angle();
System.Void set_angle(System.Single);
System.Boolean get_useMotor();
System.Void set_useMotor(System.Boolean);
System.Boolean get_useLimits();
System.Void set_useLimits(System.Boolean);
UnityEngine.JointMotor2D get_motor();
System.Void set_motor(UnityEngine.JointMotor2D);
UnityEngine.JointTranslationLimits2D get_limits();
System.Void set_limits(UnityEngine.JointTranslationLimits2D);
UnityEngine.JointLimitState2D get_limitState();
System.Single get_referenceAngle();
System.Single get_jointTranslation();
System.Single get_jointSpeed();
System.Single GetMotorForce(System.Single);
}
class WheelJoint2D : UnityEngine.AnchoredJoint2D{
this ();
UnityEngine.JointSuspension2D get_suspension();
System.Void set_suspension(UnityEngine.JointSuspension2D);
System.Boolean get_useMotor();
System.Void set_useMotor(System.Boolean);
UnityEngine.JointMotor2D get_motor();
System.Void set_motor(UnityEngine.JointMotor2D);
System.Single get_jointTranslation();
System.Single get_jointSpeed();
System.Single GetMotorTorque(System.Single);
}
class PhysicsMaterial2D : UnityEngine.__UnityObject{
this ();
this (System.String);
System.Single get_bounciness();
System.Void set_bounciness(System.Single);
System.Single get_friction();
System.Void set_friction(System.Single);
}
class PhysicsUpdateBehaviour2D : UnityEngine.Behaviour{
this ();
}
class ConstantForce2D : UnityEngine.PhysicsUpdateBehaviour2D{
this ();
UnityEngine.Vector2 get_force();
System.Void set_force(UnityEngine.Vector2);
UnityEngine.Vector2 get_relativeForce();
System.Void set_relativeForce(UnityEngine.Vector2);
System.Single get_torque();
System.Void set_torque(System.Single);
}
class EffectorSelection2D : System.Enum{
Int32 value__;
}
class EffectorForceMode2D : System.Enum{
Int32 value__;
}
class Effector2D : UnityEngine.Behaviour{
this ();
System.Boolean get_useColliderMask();
System.Void set_useColliderMask(System.Boolean);
System.Int32 get_colliderMask();
System.Void set_colliderMask(System.Int32);
}
class AreaEffector2D : UnityEngine.Effector2D{
this ();
System.Single get_forceDirection();
System.Void set_forceDirection(System.Single);
System.Single get_forceAngle();
System.Void set_forceAngle(System.Single);
System.Boolean get_useGlobalAngle();
System.Void set_useGlobalAngle(System.Boolean);
System.Single get_forceMagnitude();
System.Void set_forceMagnitude(System.Single);
System.Single get_forceVariation();
System.Void set_forceVariation(System.Single);
System.Single get_drag();
System.Void set_drag(System.Single);
System.Single get_angularDrag();
System.Void set_angularDrag(System.Single);
UnityEngine.EffectorSelection2D get_forceTarget();
System.Void set_forceTarget(UnityEngine.EffectorSelection2D);
}
class PointEffector2D : UnityEngine.Effector2D{
this ();
System.Single get_forceMagnitude();
System.Void set_forceMagnitude(System.Single);
System.Single get_forceVariation();
System.Void set_forceVariation(System.Single);
System.Single get_distanceScale();
System.Void set_distanceScale(System.Single);
System.Single get_drag();
System.Void set_drag(System.Single);
System.Single get_angularDrag();
System.Void set_angularDrag(System.Single);
UnityEngine.EffectorSelection2D get_forceSource();
System.Void set_forceSource(UnityEngine.EffectorSelection2D);
UnityEngine.EffectorSelection2D get_forceTarget();
System.Void set_forceTarget(UnityEngine.EffectorSelection2D);
UnityEngine.EffectorForceMode2D get_forceMode();
System.Void set_forceMode(UnityEngine.EffectorForceMode2D);
}
class PlatformEffector2D : UnityEngine.Effector2D{
this ();
System.Boolean get_oneWay();
System.Void set_oneWay(System.Boolean);
System.Boolean get_sideFriction();
System.Void set_sideFriction(System.Boolean);
System.Boolean get_sideBounce();
System.Void set_sideBounce(System.Boolean);
System.Boolean get_useOneWay();
System.Void set_useOneWay(System.Boolean);
System.Boolean get_useSideFriction();
System.Void set_useSideFriction(System.Boolean);
System.Boolean get_useSideBounce();
System.Void set_useSideBounce(System.Boolean);
System.Single get_sideAngleVariance();
System.Void set_sideAngleVariance(System.Single);
}
class SurfaceEffector2D : UnityEngine.Effector2D{
this ();
System.Single get_speed();
System.Void set_speed(System.Single);
System.Single get_speedVariation();
System.Void set_speedVariation(System.Single);
System.Single get_forceScale();
System.Void set_forceScale(System.Single);
System.Boolean get_useContactForce();
System.Void set_useContactForce(System.Boolean);
System.Boolean get_useFriction();
System.Void set_useFriction(System.Boolean);
System.Boolean get_useBounce();
System.Void set_useBounce(System.Boolean);
}
class ObstacleAvoidanceType : System.Enum{
Int32 value__;
}
class NavMeshAgent : UnityEngine.Behaviour{
this ();
System.Int32 get_areaMask();
System.Void set_areaMask(System.Int32);
System.Single get_speed();
System.Void set_speed(System.Single);
System.Single get_angularSpeed();
System.Void set_angularSpeed(System.Single);
System.Single get_acceleration();
System.Void set_acceleration(System.Single);
System.Boolean get_updatePosition();
System.Void set_updatePosition(System.Boolean);
System.Boolean get_updateRotation();
System.Void set_updateRotation(System.Boolean);
System.Single get_radius();
System.Void set_radius(System.Single);
System.Single get_height();
System.Void set_height(System.Single);
UnityEngine.ObstacleAvoidanceType get_obstacleAvoidanceType();
System.Void set_obstacleAvoidanceType(UnityEngine.ObstacleAvoidanceType);
System.Int32 get_avoidancePriority();
System.Void set_avoidancePriority(System.Int32);
System.Boolean get_isOnNavMesh();
System.Boolean SetDestination(UnityEngine.Vector3);
UnityEngine.Vector3 get_destination();
System.Void set_destination(UnityEngine.Vector3);
System.Single get_stoppingDistance();
System.Void set_stoppingDistance(System.Single);
UnityEngine.Vector3 get_velocity();
System.Void set_velocity(UnityEngine.Vector3);
UnityEngine.Vector3 get_nextPosition();
System.Void set_nextPosition(UnityEngine.Vector3);
UnityEngine.Vector3 get_steeringTarget();
UnityEngine.Vector3 get_desiredVelocity();
System.Single get_remainingDistance();
System.Single get_baseOffset();
System.Void set_baseOffset(System.Single);
System.Boolean get_isOnOffMeshLink();
System.Void ActivateCurrentOffMeshLink(System.Boolean);
UnityEngine.OffMeshLinkData get_currentOffMeshLinkData();
UnityEngine.OffMeshLinkData get_nextOffMeshLinkData();
System.Void CompleteOffMeshLink();
System.Boolean get_autoTraverseOffMeshLink();
System.Void set_autoTraverseOffMeshLink(System.Boolean);
System.Boolean get_autoBraking();
System.Void set_autoBraking(System.Boolean);
System.Boolean get_autoRepath();
System.Void set_autoRepath(System.Boolean);
System.Boolean get_hasPath();
System.Boolean get_pathPending();
System.Boolean get_isPathStale();
UnityEngine.NavMeshPathStatus get_pathStatus();
UnityEngine.Vector3 get_pathEndPosition();
System.Boolean Warp(UnityEngine.Vector3);
System.Void Move(UnityEngine.Vector3);
System.Void Stop();
System.Void Stop(System.Boolean);
System.Void Resume();
System.Void ResetPath();
System.Boolean SetPath(UnityEngine.NavMeshPath);
UnityEngine.NavMeshPath get_path();
System.Void set_path(UnityEngine.NavMeshPath);
System.Boolean CalculatePath(UnityEngine.Vector3,UnityEngine.NavMeshPath);
System.Void SetLayerCost(System.Int32,System.Single);
System.Single GetLayerCost(System.Int32);
System.Void SetAreaCost(System.Int32,System.Single);
System.Single GetAreaCost(System.Int32);
System.Int32 get_walkableMask();
System.Void set_walkableMask(System.Int32);
}
class NavMeshHit : System.ValueType{
UnityEngine.Vector3 get_position();
System.Void set_position(UnityEngine.Vector3);
UnityEngine.Vector3 get_normal();
System.Void set_normal(UnityEngine.Vector3);
System.Single get_distance();
System.Void set_distance(System.Single);
System.Int32 get_mask();
System.Void set_mask(System.Int32);
System.Boolean get_hit();
System.Void set_hit(System.Boolean);
}
class NavMeshTriangulation : System.ValueType{
Vector3[] vertices;
Int32[] indices;
Int32[] areas;
System.Int32[] get_layers();
}
class NavMesh : System.__object{
this ();
static System.Boolean CalculatePath(UnityEngine.Vector3,UnityEngine.Vector3,System.Int32,UnityEngine.NavMeshPath);
static System.Void SetLayerCost(System.Int32,System.Single);
static System.Single GetLayerCost(System.Int32);
static System.Int32 GetNavMeshLayerFromName(System.String);
static System.Void SetAreaCost(System.Int32,System.Single);
static System.Single GetAreaCost(System.Int32);
static System.Int32 GetAreaFromName(System.String);
static UnityEngine.NavMeshTriangulation CalculateTriangulation();
static System.Void AddOffMeshLinks();
static System.Void RestoreNavMesh();
static System.Single get_avoidancePredictionTime();
static System.Void set_avoidancePredictionTime(System.Single);
static System.Int32 get_pathfindingIterationsPerFrame();
static System.Void set_pathfindingIterationsPerFrame(System.Int32);
}
class NavMeshObstacleShape : System.Enum{
Int32 value__;
}
class NavMeshObstacle : UnityEngine.Behaviour{
this ();
System.Single get_height();
System.Void set_height(System.Single);
System.Single get_radius();
System.Void set_radius(System.Single);
UnityEngine.Vector3 get_velocity();
System.Void set_velocity(UnityEngine.Vector3);
System.Boolean get_carving();
System.Void set_carving(System.Boolean);
System.Boolean get_carveOnlyStationary();
System.Void set_carveOnlyStationary(System.Boolean);
System.Single get_carvingMoveThreshold();
System.Void set_carvingMoveThreshold(System.Single);
System.Single get_carvingTimeToStationary();
System.Void set_carvingTimeToStationary(System.Single);
UnityEngine.NavMeshObstacleShape get_shape();
System.Void set_shape(UnityEngine.NavMeshObstacleShape);
UnityEngine.Vector3 get_center();
System.Void set_center(UnityEngine.Vector3);
UnityEngine.Vector3 get_size();
System.Void set_size(UnityEngine.Vector3);
}
class NavMeshPathStatus : System.Enum{
Int32 value__;
}
class NavMeshPath : System.__object{
this ();
System.Int32 GetCornersNonAlloc(UnityEngine.Vector3[]);
System.Void ClearCorners();
UnityEngine.Vector3[] get_corners();
UnityEngine.NavMeshPathStatus get_status();
}
class OffMeshLinkType : System.Enum{
Int32 value__;
}
class OffMeshLinkData : System.ValueType{
System.Boolean get_valid();
System.Boolean get_activated();
UnityEngine.OffMeshLinkType get_linkType();
UnityEngine.Vector3 get_startPos();
UnityEngine.Vector3 get_endPos();
UnityEngine.OffMeshLink get_offMeshLink();
}
class OffMeshLink : UnityEngine.Component{
this ();
System.Boolean get_activated();
System.Void set_activated(System.Boolean);
System.Boolean get_occupied();
System.Single get_costOverride();
System.Void set_costOverride(System.Single);
System.Boolean get_biDirectional();
System.Void set_biDirectional(System.Boolean);
System.Void UpdatePositions();
System.Int32 get_navMeshLayer();
System.Void set_navMeshLayer(System.Int32);
System.Int32 get_area();
System.Void set_area(System.Int32);
System.Boolean get_autoUpdatePositions();
System.Void set_autoUpdatePositions(System.Boolean);
UnityEngine.Transform get_startTransform();
System.Void set_startTransform(UnityEngine.Transform);
UnityEngine.Transform get_endTransform();
System.Void set_endTransform(UnityEngine.Transform);
}
class AudioSpeakerMode : System.Enum{
Int32 value__;
}
class AudioDataLoadState : System.Enum{
Int32 value__;
}
class AudioConfiguration : System.ValueType{
AudioSpeakerMode speakerMode;
Int32 dspBufferSize;
Int32 sampleRate;
Int32 numRealVoices;
Int32 numVirtualVoices;
}
class AudioSettings : System.__object{
static class AudioConfigurationChangeHandler : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.Void Invoke(System.Boolean);
System.IAsyncResult BeginInvoke(System.Boolean,System.AsyncCallback,System.__object);
System.Void EndInvoke(System.IAsyncResult);
}
this ();
static System.Void add_OnAudioConfigurationChanged(UnityEngine.AudioSettings.AudioConfigurationChangeHandler);
static System.Void remove_OnAudioConfigurationChanged(UnityEngine.AudioSettings.AudioConfigurationChangeHandler);
static UnityEngine.AudioSpeakerMode get_driverCapabilities();
static UnityEngine.AudioSpeakerMode get_driverCaps();
static UnityEngine.AudioSpeakerMode get_speakerMode();
static System.Void set_speakerMode(UnityEngine.AudioSpeakerMode);
static System.Double get_dspTime();
static System.Int32 get_outputSampleRate();
static System.Void set_outputSampleRate(System.Int32);
static System.Void SetDSPBufferSize(System.Int32,System.Int32);
static UnityEngine.AudioConfiguration GetConfiguration();
static System.Boolean Reset(UnityEngine.AudioConfiguration);
}
class AudioType : System.Enum{
Int32 value__;
}
class AudioCompressionFormat : System.Enum{
Int32 value__;
}
class AudioClipLoadType : System.Enum{
Int32 value__;
}
class AudioClip : UnityEngine.__UnityObject{
static class PCMReaderCallback : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.Void Invoke(System.Single[]);
System.IAsyncResult BeginInvoke(System.Single[],System.AsyncCallback,System.__object);
System.Void EndInvoke(System.IAsyncResult);
}
static class PCMSetPositionCallback : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.Void Invoke(System.Int32);
System.IAsyncResult BeginInvoke(System.Int32,System.AsyncCallback,System.__object);
System.Void EndInvoke(System.IAsyncResult);
}
this ();
System.Single get_length();
System.Int32 get_samples();
System.Int32 get_channels();
System.Int32 get_frequency();
System.Boolean get_isReadyToPlay();
UnityEngine.AudioClipLoadType get_loadType();
System.Boolean LoadAudioData();
System.Boolean UnloadAudioData();
System.Boolean get_preloadAudioData();
UnityEngine.AudioDataLoadState get_loadState();
System.Boolean get_loadInBackground();
System.Boolean GetData(System.Single[],System.Int32);
System.Boolean SetData(System.Single[],System.Int32);
static UnityEngine.AudioClip Create(System.String,System.Int32,System.Int32,System.Int32,System.Boolean,System.Boolean);
static UnityEngine.AudioClip Create(System.String,System.Int32,System.Int32,System.Int32,System.Boolean,System.Boolean,UnityEngine.AudioClip.PCMReaderCallback);
static UnityEngine.AudioClip Create(System.String,System.Int32,System.Int32,System.Int32,System.Boolean,System.Boolean,UnityEngine.AudioClip.PCMReaderCallback,UnityEngine.AudioClip.PCMSetPositionCallback);
static UnityEngine.AudioClip Create(System.String,System.Int32,System.Int32,System.Int32,System.Boolean);
static UnityEngine.AudioClip Create(System.String,System.Int32,System.Int32,System.Int32,System.Boolean,UnityEngine.AudioClip.PCMReaderCallback);
static UnityEngine.AudioClip Create(System.String,System.Int32,System.Int32,System.Int32,System.Boolean,UnityEngine.AudioClip.PCMReaderCallback,UnityEngine.AudioClip.PCMSetPositionCallback);
}
class AudioVelocityUpdateMode : System.Enum{
Int32 value__;
}
class AudioListener : UnityEngine.Behaviour{
this ();
static System.Single get_volume();
static System.Void set_volume(System.Single);
static System.Boolean get_pause();
static System.Void set_pause(System.Boolean);
UnityEngine.AudioVelocityUpdateMode get_velocityUpdateMode();
System.Void set_velocityUpdateMode(UnityEngine.AudioVelocityUpdateMode);
static System.Single[] GetOutputData(System.Int32,System.Int32);
static System.Void GetOutputData(System.Single[],System.Int32);
static System.Single[] GetSpectrumData(System.Int32,System.Int32,UnityEngine.FFTWindow);
static System.Void GetSpectrumData(System.Single[],System.Int32,UnityEngine.FFTWindow);
}
class FFTWindow : System.Enum{
Int32 value__;
}
class AudioRolloffMode : System.Enum{
Int32 value__;
}
class AudioSource : UnityEngine.Behaviour{
this ();
System.Void set_maxDistance(System.Single);
UnityEngine.AudioRolloffMode get_rolloffMode();
System.Void set_rolloffMode(UnityEngine.AudioRolloffMode);
System.Single[] GetOutputData(System.Int32,System.Int32);
System.Void GetOutputData(System.Single[],System.Int32);
System.Single[] GetSpectrumData(System.Int32,System.Int32,UnityEngine.FFTWindow);
System.Void GetSpectrumData(System.Single[],System.Int32,UnityEngine.FFTWindow);
System.Single get_minVolume();
System.Void set_minVolume(System.Single);
System.Single get_maxVolume();
System.Void set_maxVolume(System.Single);
System.Single get_rolloffFactor();
System.Void set_rolloffFactor(System.Single);
System.Single get_volume();
System.Void set_volume(System.Single);
System.Single get_pitch();
System.Void set_pitch(System.Single);
System.Single get_time();
System.Void set_time(System.Single);
System.Int32 get_timeSamples();
System.Void set_timeSamples(System.Int32);
UnityEngine.AudioClip get_clip();
System.Void set_clip(UnityEngine.AudioClip);
UnityEngine.Audio.AudioMixerGroup get_outputAudioMixerGroup();
System.Void set_outputAudioMixerGroup(UnityEngine.Audio.AudioMixerGroup);
System.Void Play(System.UInt64);
System.Void Play();
System.Void PlayDelayed(System.Single);
System.Void PlayScheduled(System.Double);
System.Void SetScheduledStartTime(System.Double);
System.Void SetScheduledEndTime(System.Double);
System.Void Stop();
System.Void Pause();
System.Void UnPause();
System.Boolean get_isPlaying();
System.Void PlayOneShot(UnityEngine.AudioClip,System.Single);
System.Void PlayOneShot(UnityEngine.AudioClip);
static System.Void PlayClipAtPoint(UnityEngine.AudioClip,UnityEngine.Vector3);
static System.Void PlayClipAtPoint(UnityEngine.AudioClip,UnityEngine.Vector3,System.Single);
System.Boolean get_loop();
System.Void set_loop(System.Boolean);
System.Boolean get_ignoreListenerVolume();
System.Void set_ignoreListenerVolume(System.Boolean);
System.Boolean get_playOnAwake();
System.Void set_playOnAwake(System.Boolean);
System.Boolean get_ignoreListenerPause();
System.Void set_ignoreListenerPause(System.Boolean);
UnityEngine.AudioVelocityUpdateMode get_velocityUpdateMode();
System.Void set_velocityUpdateMode(UnityEngine.AudioVelocityUpdateMode);
System.Single get_panStereo();
System.Void set_panStereo(System.Single);
System.Single get_spatialBlend();
System.Void set_spatialBlend(System.Single);
System.Single get_reverbZoneMix();
System.Void set_reverbZoneMix(System.Single);
System.Single get_panLevel();
System.Void set_panLevel(System.Single);
System.Single get_pan();
System.Void set_pan(System.Single);
System.Boolean get_bypassEffects();
System.Void set_bypassEffects(System.Boolean);
System.Boolean get_bypassListenerEffects();
System.Void set_bypassListenerEffects(System.Boolean);
System.Boolean get_bypassReverbZones();
System.Void set_bypassReverbZones(System.Boolean);
System.Single get_dopplerLevel();
System.Void set_dopplerLevel(System.Single);
System.Single get_spread();
System.Void set_spread(System.Single);
System.Int32 get_priority();
System.Void set_priority(System.Int32);
System.Boolean get_mute();
System.Void set_mute(System.Boolean);
System.Single get_minDistance();
System.Void set_minDistance(System.Single);
System.Single get_maxDistance();
}
class AudioReverbPreset : System.Enum{
Int32 value__;
}
class AudioReverbZone : UnityEngine.Behaviour{
this ();
System.Single get_minDistance();
System.Void set_minDistance(System.Single);
System.Single get_maxDistance();
System.Void set_maxDistance(System.Single);
UnityEngine.AudioReverbPreset get_reverbPreset();
System.Void set_reverbPreset(UnityEngine.AudioReverbPreset);
System.Int32 get_room();
System.Void set_room(System.Int32);
System.Int32 get_roomHF();
System.Void set_roomHF(System.Int32);
System.Int32 get_roomLF();
System.Void set_roomLF(System.Int32);
System.Single get_decayTime();
System.Void set_decayTime(System.Single);
System.Single get_decayHFRatio();
System.Void set_decayHFRatio(System.Single);
System.Int32 get_reflections();
System.Void set_reflections(System.Int32);
System.Single get_reflectionsDelay();
System.Void set_reflectionsDelay(System.Single);
System.Int32 get_reverb();
System.Void set_reverb(System.Int32);
System.Single get_reverbDelay();
System.Void set_reverbDelay(System.Single);
System.Single get_HFReference();
System.Void set_HFReference(System.Single);
System.Single get_LFReference();
System.Void set_LFReference(System.Single);
System.Single get_roomRolloffFactor();
System.Void set_roomRolloffFactor(System.Single);
System.Single get_diffusion();
System.Void set_diffusion(System.Single);
System.Single get_density();
System.Void set_density(System.Single);
}
class AudioLowPassFilter : UnityEngine.Behaviour{
this ();
System.Single get_cutoffFrequency();
System.Void set_cutoffFrequency(System.Single);
System.Single get_lowpassResonanceQ();
System.Void set_lowpassResonanceQ(System.Single);
System.Single get_lowpassResonaceQ();
System.Void set_lowpassResonaceQ(System.Single);
}
class AudioHighPassFilter : UnityEngine.Behaviour{
this ();
System.Single get_cutoffFrequency();
System.Void set_cutoffFrequency(System.Single);
System.Single get_highpassResonanceQ();
System.Void set_highpassResonanceQ(System.Single);
System.Single get_highpassResonaceQ();
System.Void set_highpassResonaceQ(System.Single);
}
class AudioDistortionFilter : UnityEngine.Behaviour{
this ();
System.Single get_distortionLevel();
System.Void set_distortionLevel(System.Single);
}
class AudioEchoFilter : UnityEngine.Behaviour{
this ();
System.Single get_delay();
System.Void set_delay(System.Single);
System.Single get_decayRatio();
System.Void set_decayRatio(System.Single);
System.Single get_dryMix();
System.Void set_dryMix(System.Single);
System.Single get_wetMix();
System.Void set_wetMix(System.Single);
}
class AudioChorusFilter : UnityEngine.Behaviour{
this ();
System.Single get_dryMix();
System.Void set_dryMix(System.Single);
System.Single get_wetMix1();
System.Void set_wetMix1(System.Single);
System.Single get_wetMix2();
System.Void set_wetMix2(System.Single);
System.Single get_wetMix3();
System.Void set_wetMix3(System.Single);
System.Single get_delay();
System.Void set_delay(System.Single);
System.Single get_rate();
System.Void set_rate(System.Single);
System.Single get_depth();
System.Void set_depth(System.Single);
System.Single get_feedback();
System.Void set_feedback(System.Single);
}
class AudioReverbFilter : UnityEngine.Behaviour{
this ();
UnityEngine.AudioReverbPreset get_reverbPreset();
System.Void set_reverbPreset(UnityEngine.AudioReverbPreset);
System.Single get_dryLevel();
System.Void set_dryLevel(System.Single);
System.Single get_room();
System.Void set_room(System.Single);
System.Single get_roomHF();
System.Void set_roomHF(System.Single);
System.Single get_roomRolloff();
System.Void set_roomRolloff(System.Single);
System.Single get_decayTime();
System.Void set_decayTime(System.Single);
System.Single get_decayHFRatio();
System.Void set_decayHFRatio(System.Single);
System.Single get_reflectionsLevel();
System.Void set_reflectionsLevel(System.Single);
System.Single get_reflectionsDelay();
System.Void set_reflectionsDelay(System.Single);
System.Single get_reverbLevel();
System.Void set_reverbLevel(System.Single);
System.Single get_reverbDelay();
System.Void set_reverbDelay(System.Single);
System.Single get_diffusion();
System.Void set_diffusion(System.Single);
System.Single get_density();
System.Void set_density(System.Single);
System.Single get_hfReference();
System.Void set_hfReference(System.Single);
System.Single get_roomLF();
System.Void set_roomLF(System.Single);
System.Single get_lfReference();
System.Void set_lfReference(System.Single);
System.Single get_lFReference();
System.Void set_lFReference(System.Single);
}
class Microphone : System.__object{
this ();
static UnityEngine.AudioClip Start(System.String,System.Boolean,System.Int32,System.Int32);
static System.Void End(System.String);
static System.String[] get_devices();
static System.Boolean IsRecording(System.String);
static System.Int32 GetPosition(System.String);
}
class MovieTexture : UnityEngine.Texture{
this ();
System.Void Play();
System.Void Stop();
System.Void Pause();
UnityEngine.AudioClip get_audioClip();
System.Boolean get_loop();
System.Void set_loop(System.Boolean);
System.Boolean get_isPlaying();
System.Boolean get_isReadyToPlay();
System.Single get_duration();
}
class WebCamFlags : System.Enum{
Int32 value__;
}
class WebCamDevice : System.ValueType{
System.String get_name();
System.Boolean get_isFrontFacing();
}
class WebCamTexture : UnityEngine.Texture{
this (System.String,System.Int32,System.Int32,System.Int32);
this (System.String,System.Int32,System.Int32);
this (System.String);
this (System.Int32,System.Int32,System.Int32);
this (System.Int32,System.Int32);
this ();
System.Void Play();
System.Void Pause();
System.Void Stop();
System.Boolean get_isPlaying();
System.String get_deviceName();
System.Void set_deviceName(System.String);
System.Single get_requestedFPS();
System.Void set_requestedFPS(System.Single);
System.Int32 get_requestedWidth();
System.Void set_requestedWidth(System.Int32);
System.Int32 get_requestedHeight();
System.Void set_requestedHeight(System.Int32);
System.Boolean get_isReadable();
System.Void MarkNonReadable();
static UnityEngine.WebCamDevice[] get_devices();
UnityEngine.Color GetPixel(System.Int32,System.Int32);
UnityEngine.Color[] GetPixels();
UnityEngine.Color[] GetPixels(System.Int32,System.Int32,System.Int32,System.Int32);
UnityEngine.Color32[] GetPixels32(UnityEngine.Color32[]);
UnityEngine.Color32[] GetPixels32();
System.Int32 get_videoRotationAngle();
System.Boolean get_videoVerticallyMirrored();
System.Boolean get_didUpdateThisFrame();
}
class AnimationClipPair : System.__object{
AnimationClip originalClip;
AnimationClip overrideClip;
this ();
}
class AnimatorOverrideController : UnityEngine.RuntimeAnimatorController{
this ();
UnityEngine.RuntimeAnimatorController get_runtimeAnimatorController();
System.Void set_runtimeAnimatorController(UnityEngine.RuntimeAnimatorController);
UnityEngine.AnimationClip get_Item(System.String);
System.Void set_Item(System.String,UnityEngine.AnimationClip);
UnityEngine.AnimationClip get_Item(UnityEngine.AnimationClip);
System.Void set_Item(UnityEngine.AnimationClip,UnityEngine.AnimationClip);
UnityEngine.AnimationClipPair[] get_clips();
System.Void set_clips(UnityEngine.AnimationClipPair[]);
}
class WrapMode : System.Enum{
Int32 value__;
}
class AnimationEvent : System.__object{
this ();
System.String get_data();
System.Void set_data(System.String);
System.String get_stringParameter();
System.Void set_stringParameter(System.String);
System.Single get_floatParameter();
System.Void set_floatParameter(System.Single);
System.Int32 get_intParameter();
System.Void set_intParameter(System.Int32);
UnityEngine.__UnityObject get_objectReferenceParameter();
System.Void set_objectReferenceParameter(UnityEngine.__UnityObject);
System.String get_functionName();
System.Void set_functionName(System.String);
System.Single get_time();
System.Void set_time(System.Single);
UnityEngine.SendMessageOptions get_messageOptions();
System.Void set_messageOptions(UnityEngine.SendMessageOptions);
System.Boolean get_isFiredByLegacy();
System.Boolean get_isFiredByAnimator();
UnityEngine.AnimationState get_animationState();
UnityEngine.AnimatorStateInfo get_animatorStateInfo();
UnityEngine.AnimatorClipInfo get_animatorClipInfo();
}
class AnimationClip : UnityEngine.Motion{
this ();
System.Void SampleAnimation(UnityEngine.GameObject,System.Single);
System.Single get_length();
System.Single get_frameRate();
System.Void set_frameRate(System.Single);
System.Void SetCurve(System.String,System.Type,System.String,UnityEngine.AnimationCurve);
System.Void EnsureQuaternionContinuity();
System.Void ClearCurves();
UnityEngine.WrapMode get_wrapMode();
System.Void set_wrapMode(UnityEngine.WrapMode);
UnityEngine.Bounds get_localBounds();
System.Void set_localBounds(UnityEngine.Bounds);
System.Boolean get_legacy();
System.Void set_legacy(System.Boolean);
System.Boolean get_humanMotion();
System.Void AddEvent(UnityEngine.AnimationEvent);
UnityEngine.AnimationEvent[] get_events();
System.Void set_events(UnityEngine.AnimationEvent[]);
}
class Keyframe : System.ValueType{
this (System.Single,System.Single);
this (System.Single,System.Single,System.Single,System.Single);
System.Single get_time();
System.Void set_time(System.Single);
System.Single get_value();
System.Void set_value(System.Single);
System.Single get_inTangent();
System.Void set_inTangent(System.Single);
System.Single get_outTangent();
System.Void set_outTangent(System.Single);
System.Int32 get_tangentMode();
System.Void set_tangentMode(System.Int32);
}
class AnimationCurve : System.__object{
this (UnityEngine.Keyframe[]);
this ();
System.Single Evaluate(System.Single);
UnityEngine.Keyframe[] get_keys();
System.Void set_keys(UnityEngine.Keyframe[]);
System.Int32 AddKey(System.Single,System.Single);
System.Int32 AddKey(UnityEngine.Keyframe);
System.Int32 MoveKey(System.Int32,UnityEngine.Keyframe);
System.Void RemoveKey(System.Int32);
UnityEngine.Keyframe get_Item(System.Int32);
System.Int32 get_length();
System.Void SmoothTangents(System.Int32,System.Single);
static UnityEngine.AnimationCurve Linear(System.Single,System.Single,System.Single,System.Single);
static UnityEngine.AnimationCurve EaseInOut(System.Single,System.Single,System.Single,System.Single);
UnityEngine.WrapMode get_preWrapMode();
System.Void set_preWrapMode(UnityEngine.WrapMode);
UnityEngine.WrapMode get_postWrapMode();
System.Void set_postWrapMode(UnityEngine.WrapMode);
}
class PlayMode : System.Enum{
Int32 value__;
}
class QueueMode : System.Enum{
Int32 value__;
}
class AnimationBlendMode : System.Enum{
Int32 value__;
}
class AnimationPlayMode : System.Enum{
Int32 value__;
}
class AnimationCullingType : System.Enum{
Int32 value__;
}
class Animation : UnityEngine.Behaviour{
this ();
UnityEngine.AnimationClip get_clip();
System.Void set_clip(UnityEngine.AnimationClip);
System.Boolean get_playAutomatically();
System.Void set_playAutomatically(System.Boolean);
UnityEngine.WrapMode get_wrapMode();
System.Void set_wrapMode(UnityEngine.WrapMode);
System.Void Stop();
System.Void Stop(System.String);
System.Void Rewind(System.String);
System.Void Rewind();
System.Void Sample();
System.Boolean get_isPlaying();
System.Boolean IsPlaying(System.String);
UnityEngine.AnimationState get_Item(System.String);
System.Boolean Play();
System.Boolean Play(UnityEngine.PlayMode);
System.Boolean Play(System.String,UnityEngine.PlayMode);
System.Boolean Play(System.String);
System.Void CrossFade(System.String,System.Single,UnityEngine.PlayMode);
System.Void CrossFade(System.String,System.Single);
System.Void CrossFade(System.String);
System.Void Blend(System.String,System.Single,System.Single);
System.Void Blend(System.String,System.Single);
System.Void Blend(System.String);
UnityEngine.AnimationState CrossFadeQueued(System.String,System.Single,UnityEngine.QueueMode,UnityEngine.PlayMode);
UnityEngine.AnimationState CrossFadeQueued(System.String,System.Single,UnityEngine.QueueMode);
UnityEngine.AnimationState CrossFadeQueued(System.String,System.Single);
UnityEngine.AnimationState CrossFadeQueued(System.String);
UnityEngine.AnimationState PlayQueued(System.String,UnityEngine.QueueMode,UnityEngine.PlayMode);
UnityEngine.AnimationState PlayQueued(System.String,UnityEngine.QueueMode);
UnityEngine.AnimationState PlayQueued(System.String);
System.Void AddClip(UnityEngine.AnimationClip,System.String);
System.Void AddClip(UnityEngine.AnimationClip,System.String,System.Int32,System.Int32,System.Boolean);
System.Void AddClip(UnityEngine.AnimationClip,System.String,System.Int32,System.Int32);
System.Void RemoveClip(UnityEngine.AnimationClip);
System.Void RemoveClip(System.String);
System.Int32 GetClipCount();
System.Boolean Play(UnityEngine.AnimationPlayMode);
System.Boolean Play(System.String,UnityEngine.AnimationPlayMode);
System.Void SyncLayer(System.Int32);
System.Collections.IEnumerator GetEnumerator();
UnityEngine.AnimationClip GetClip(System.String);
System.Boolean get_animatePhysics();
System.Void set_animatePhysics(System.Boolean);
System.Boolean get_animateOnlyIfVisible();
System.Void set_animateOnlyIfVisible(System.Boolean);
UnityEngine.AnimationCullingType get_cullingType();
System.Void set_cullingType(UnityEngine.AnimationCullingType);
UnityEngine.Bounds get_localBounds();
System.Void set_localBounds(UnityEngine.Bounds);
}
class AnimationState : UnityEngine.TrackedReference{
this ();
System.Boolean get_enabled();
System.Void set_enabled(System.Boolean);
System.Single get_weight();
System.Void set_weight(System.Single);
UnityEngine.WrapMode get_wrapMode();
System.Void set_wrapMode(UnityEngine.WrapMode);
System.Single get_time();
System.Void set_time(System.Single);
System.Single get_normalizedTime();
System.Void set_normalizedTime(System.Single);
System.Single get_speed();
System.Void set_speed(System.Single);
System.Single get_normalizedSpeed();
System.Void set_normalizedSpeed(System.Single);
System.Single get_length();
System.Int32 get_layer();
System.Void set_layer(System.Int32);
UnityEngine.AnimationClip get_clip();
System.Void AddMixingTransform(UnityEngine.Transform,System.Boolean);
System.Void AddMixingTransform(UnityEngine.Transform);
System.Void RemoveMixingTransform(UnityEngine.Transform);
System.String get_name();
System.Void set_name(System.String);
UnityEngine.AnimationBlendMode get_blendMode();
System.Void set_blendMode(UnityEngine.AnimationBlendMode);
}
class AvatarTarget : System.Enum{
Int32 value__;
}
class AvatarIKGoal : System.Enum{
Int32 value__;
}
class AvatarIKHint : System.Enum{
Int32 value__;
}
class AnimatorControllerParameterType : System.Enum{
Int32 value__;
}
class AnimatorRecorderMode : System.Enum{
Int32 value__;
}
class AnimationInfo : System.ValueType{
}
class AnimatorClipInfo : System.ValueType{
UnityEngine.AnimationClip get_clip();
System.Single get_weight();
}
class AnimatorCullingMode : System.Enum{
Int32 value__;
}
class AnimatorUpdateMode : System.Enum{
Int32 value__;
}
class AnimatorStateInfo : System.ValueType{
System.Boolean IsName(System.String);
System.Int32 get_fullPathHash();
System.Int32 get_nameHash();
System.Int32 get_shortNameHash();
System.Single get_normalizedTime();
System.Single get_length();
System.Int32 get_tagHash();
System.Boolean IsTag(System.String);
System.Boolean get_loop();
}
class AnimatorTransitionInfo : System.ValueType{
System.Boolean IsName(System.String);
System.Boolean IsUserName(System.String);
System.Int32 get_fullPathHash();
System.Int32 get_nameHash();
System.Int32 get_userNameHash();
System.Single get_normalizedTime();
System.Boolean get_anyState();
}
class MatchTargetWeightMask : System.ValueType{
this (UnityEngine.Vector3,System.Single);
UnityEngine.Vector3 get_positionXYZWeight();
System.Void set_positionXYZWeight(UnityEngine.Vector3);
System.Single get_rotationWeight();
System.Void set_rotationWeight(System.Single);
}
class Animator : UnityEngine.Behaviour{
this ();
System.Void Update(System.Single);
System.Void Rebind();
System.Void ApplyBuiltinRootMotion();
System.Boolean get_logWarnings();
System.Void set_logWarnings(System.Boolean);
System.Boolean get_fireEvents();
System.Void set_fireEvents(System.Boolean);
UnityEngine.Vector3 GetVector(System.String);
UnityEngine.Vector3 GetVector(System.Int32);
System.Void SetVector(System.String,UnityEngine.Vector3);
System.Void SetVector(System.Int32,UnityEngine.Vector3);
UnityEngine.Quaternion GetQuaternion(System.String);
UnityEngine.Quaternion GetQuaternion(System.Int32);
System.Void SetQuaternion(System.String,UnityEngine.Quaternion);
System.Void SetQuaternion(System.Int32,UnityEngine.Quaternion);
System.Void PlayInFixedTime(System.String);
System.Void PlayInFixedTime(System.String,System.Int32,System.Single);
System.Void PlayInFixedTime(System.Int32,System.Int32,System.Single);
System.Void PlayInFixedTime(System.Int32,System.Int32);
System.Void PlayInFixedTime(System.Int32);
System.Void Play(System.String,System.Int32);
System.Void Play(System.String);
System.Void Play(System.String,System.Int32,System.Single);
System.Void Play(System.Int32,System.Int32,System.Single);
System.Void Play(System.Int32,System.Int32);
System.Void Play(System.Int32);
System.Void SetTarget(UnityEngine.AvatarTarget,System.Single);
UnityEngine.Vector3 get_targetPosition();
UnityEngine.Quaternion get_targetRotation();
System.Boolean IsControlled(UnityEngine.Transform);
UnityEngine.Transform GetBoneTransform(UnityEngine.HumanBodyBones);
UnityEngine.AnimatorCullingMode get_cullingMode();
System.Void set_cullingMode(UnityEngine.AnimatorCullingMode);
System.Void StartPlayback();
System.Void StopPlayback();
System.Single get_playbackTime();
System.Void set_playbackTime(System.Single);
System.Void StartRecording(System.Int32);
System.Void StopRecording();
System.Single get_recorderStartTime();
System.Void set_recorderStartTime(System.Single);
System.Single get_recorderStopTime();
System.Void set_recorderStopTime(System.Single);
UnityEngine.AnimatorRecorderMode get_recorderMode();
UnityEngine.RuntimeAnimatorController get_runtimeAnimatorController();
System.Void set_runtimeAnimatorController(UnityEngine.RuntimeAnimatorController);
System.Boolean HasState(System.Int32,System.Int32);
static System.Int32 StringToHash(System.String);
UnityEngine.Avatar get_avatar();
System.Void set_avatar(UnityEngine.Avatar);
System.Boolean get_layersAffectMassCenter();
System.Void set_layersAffectMassCenter(System.Boolean);
System.Single get_leftFeetBottomHeight();
System.Single get_rightFeetBottomHeight();
System.Void SetIKRotationWeight(UnityEngine.AvatarIKGoal,System.Single);
UnityEngine.Vector3 GetIKHintPosition(UnityEngine.AvatarIKHint);
System.Void SetIKHintPosition(UnityEngine.AvatarIKHint,UnityEngine.Vector3);
System.Single GetIKHintPositionWeight(UnityEngine.AvatarIKHint);
System.Void SetIKHintPositionWeight(UnityEngine.AvatarIKHint,System.Single);
System.Void SetLookAtPosition(UnityEngine.Vector3);
System.Void SetLookAtWeight(System.Single,System.Single,System.Single,System.Single);
System.Void SetLookAtWeight(System.Single,System.Single,System.Single);
System.Void SetLookAtWeight(System.Single,System.Single);
System.Void SetLookAtWeight(System.Single);
System.Void SetLookAtWeight(System.Single,System.Single,System.Single,System.Single,System.Single);
System.Boolean get_stabilizeFeet();
System.Void set_stabilizeFeet(System.Boolean);
System.Int32 get_layerCount();
System.String GetLayerName(System.Int32);
System.Int32 GetLayerIndex(System.String);
System.Single GetLayerWeight(System.Int32);
System.Void SetLayerWeight(System.Int32,System.Single);
UnityEngine.AnimatorStateInfo GetCurrentAnimatorStateInfo(System.Int32);
UnityEngine.AnimatorStateInfo GetNextAnimatorStateInfo(System.Int32);
UnityEngine.AnimatorTransitionInfo GetAnimatorTransitionInfo(System.Int32);
UnityEngine.AnimatorClipInfo[] GetCurrentAnimationClipState(System.Int32);
UnityEngine.AnimatorClipInfo[] GetNextAnimationClipState(System.Int32);
UnityEngine.AnimatorClipInfo[] GetCurrentAnimatorClipInfo(System.Int32);
UnityEngine.AnimatorClipInfo[] GetNextAnimatorClipInfo(System.Int32);
System.Boolean IsInTransition(System.Int32);
UnityEngine.AnimatorControllerParameter[] get_parameters();
System.Single get_feetPivotActive();
System.Void set_feetPivotActive(System.Single);
System.Single get_pivotWeight();
UnityEngine.Vector3 get_pivotPosition();
System.Void MatchTarget(UnityEngine.Vector3,UnityEngine.Quaternion,UnityEngine.AvatarTarget,UnityEngine.MatchTargetWeightMask,System.Single,System.Single);
System.Void MatchTarget(UnityEngine.Vector3,UnityEngine.Quaternion,UnityEngine.AvatarTarget,UnityEngine.MatchTargetWeightMask,System.Single);
System.Void InterruptMatchTarget(System.Boolean);
System.Void InterruptMatchTarget();
System.Boolean get_isMatchingTarget();
System.Single get_speed();
System.Void set_speed(System.Single);
System.Void ForceStateNormalizedTime(System.Single);
System.Void CrossFadeInFixedTime(System.String,System.Single,System.Int32);
System.Void CrossFadeInFixedTime(System.String,System.Single);
System.Void CrossFadeInFixedTime(System.String,System.Single,System.Int32,System.Single);
System.Void CrossFadeInFixedTime(System.Int32,System.Single,System.Int32,System.Single);
System.Void CrossFadeInFixedTime(System.Int32,System.Single,System.Int32);
System.Void CrossFadeInFixedTime(System.Int32,System.Single);
System.Void CrossFade(System.String,System.Single,System.Int32);
System.Void CrossFade(System.String,System.Single);
System.Void CrossFade(System.String,System.Single,System.Int32,System.Single);
System.Void CrossFade(System.Int32,System.Single,System.Int32,System.Single);
System.Void CrossFade(System.Int32,System.Single,System.Int32);
System.Void CrossFade(System.Int32,System.Single);
System.Void PlayInFixedTime(System.String,System.Int32);
System.Boolean get_isOptimizable();
System.Boolean get_isHuman();
System.Boolean get_hasRootMotion();
System.Single get_humanScale();
System.Single GetFloat(System.String);
System.Single GetFloat(System.Int32);
System.Void SetFloat(System.String,System.Single);
System.Void SetFloat(System.String,System.Single,System.Single,System.Single);
System.Void SetFloat(System.Int32,System.Single);
System.Void SetFloat(System.Int32,System.Single,System.Single,System.Single);
System.Boolean GetBool(System.String);
System.Boolean GetBool(System.Int32);
System.Void SetBool(System.String,System.Boolean);
System.Void SetBool(System.Int32,System.Boolean);
System.Int32 GetInteger(System.String);
System.Int32 GetInteger(System.Int32);
System.Void SetInteger(System.String,System.Int32);
System.Void SetInteger(System.Int32,System.Int32);
System.Void SetTrigger(System.String);
System.Void SetTrigger(System.Int32);
System.Void ResetTrigger(System.String);
System.Void ResetTrigger(System.Int32);
System.Boolean IsParameterControlledByCurve(System.String);
System.Boolean IsParameterControlledByCurve(System.Int32);
UnityEngine.Vector3 get_deltaPosition();
UnityEngine.Quaternion get_deltaRotation();
UnityEngine.Vector3 get_velocity();
UnityEngine.Vector3 get_angularVelocity();
UnityEngine.Vector3 get_rootPosition();
System.Void set_rootPosition(UnityEngine.Vector3);
UnityEngine.Quaternion get_rootRotation();
System.Void set_rootRotation(UnityEngine.Quaternion);
System.Boolean get_applyRootMotion();
System.Void set_applyRootMotion(System.Boolean);
System.Boolean get_linearVelocityBlending();
System.Void set_linearVelocityBlending(System.Boolean);
System.Boolean get_animatePhysics();
System.Void set_animatePhysics(System.Boolean);
UnityEngine.AnimatorUpdateMode get_updateMode();
System.Void set_updateMode(UnityEngine.AnimatorUpdateMode);
System.Boolean get_hasTransformHierarchy();
System.Single get_gravityWeight();
UnityEngine.Vector3 get_bodyPosition();
System.Void set_bodyPosition(UnityEngine.Vector3);
UnityEngine.Quaternion get_bodyRotation();
System.Void set_bodyRotation(UnityEngine.Quaternion);
UnityEngine.Vector3 GetIKPosition(UnityEngine.AvatarIKGoal);
System.Void SetIKPosition(UnityEngine.AvatarIKGoal,UnityEngine.Vector3);
UnityEngine.Quaternion GetIKRotation(UnityEngine.AvatarIKGoal);
System.Void SetIKRotation(UnityEngine.AvatarIKGoal,UnityEngine.Quaternion);
System.Single GetIKPositionWeight(UnityEngine.AvatarIKGoal);
System.Void SetIKPositionWeight(UnityEngine.AvatarIKGoal,System.Single);
System.Single GetIKRotationWeight(UnityEngine.AvatarIKGoal);
}
class AnimatorControllerParameter : System.__object{
this ();
System.String get_name();
System.Void set_name(System.String);
System.Int32 get_nameHash();
UnityEngine.AnimatorControllerParameterType get_type();
System.Void set_type(UnityEngine.AnimatorControllerParameterType);
System.Single get_defaultFloat();
System.Void set_defaultFloat(System.Single);
System.Int32 get_defaultInt();
System.Void set_defaultInt(System.Int32);
System.Boolean get_defaultBool();
System.Void set_defaultBool(System.Boolean);
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
}
class AnimatorUtility : System.__object{
this ();
static System.Void OptimizeTransformHierarchy(UnityEngine.GameObject,System.String[]);
static System.Void DeoptimizeTransformHierarchy(UnityEngine.GameObject);
}
class SkeletonBone : System.ValueType{
String name;
Vector3 position;
Quaternion rotation;
Vector3 scale;
Int32 transformModified;
}
class HumanLimit : System.ValueType{
System.Boolean get_useDefaultValues();
System.Void set_useDefaultValues(System.Boolean);
UnityEngine.Vector3 get_min();
System.Void set_min(UnityEngine.Vector3);
UnityEngine.Vector3 get_max();
System.Void set_max(UnityEngine.Vector3);
UnityEngine.Vector3 get_center();
System.Void set_center(UnityEngine.Vector3);
System.Single get_axisLength();
System.Void set_axisLength(System.Single);
}
class HumanBone : System.ValueType{
HumanLimit limit;
System.String get_boneName();
System.Void set_boneName(System.String);
System.String get_humanName();
System.Void set_humanName(System.String);
}
class HumanDescription : System.ValueType{
HumanBone[] human;
SkeletonBone[] skeleton;
System.Single get_upperArmTwist();
System.Void set_upperArmTwist(System.Single);
System.Single get_lowerArmTwist();
System.Void set_lowerArmTwist(System.Single);
System.Single get_upperLegTwist();
System.Void set_upperLegTwist(System.Single);
System.Single get_lowerLegTwist();
System.Void set_lowerLegTwist(System.Single);
System.Single get_armStretch();
System.Void set_armStretch(System.Single);
System.Single get_legStretch();
System.Void set_legStretch(System.Single);
System.Single get_feetSpacing();
System.Void set_feetSpacing(System.Single);
}
class AvatarBuilder : System.__object{
this ();
static UnityEngine.Avatar BuildHumanAvatar(UnityEngine.GameObject,UnityEngine.HumanDescription);
static UnityEngine.Avatar BuildGenericAvatar(UnityEngine.GameObject,System.String);
}
class RuntimeAnimatorController : UnityEngine.__UnityObject{
this ();
UnityEngine.AnimationClip[] get_animationClips();
}
class HumanBodyBones : System.Enum{
Int32 value__;
}
class Avatar : UnityEngine.__UnityObject{
this ();
System.Boolean get_isValid();
System.Boolean get_isHuman();
}
class HumanTrait : UnityEngine.__UnityObject{
this ();
static System.Int32 get_MuscleCount();
static System.String[] get_MuscleName();
static System.Int32 get_BoneCount();
static System.String[] get_BoneName();
static System.Int32 MuscleFromBone(System.Int32,System.Int32);
static System.Int32 BoneFromMuscle(System.Int32);
static System.Boolean RequiredBone(System.Int32);
static System.Int32 get_RequiredBoneCount();
static System.Single GetMuscleDefaultMin(System.Int32);
static System.Single GetMuscleDefaultMax(System.Int32);
}
class TreePrototype : System.__object{
this ();
UnityEngine.GameObject get_prefab();
System.Void set_prefab(UnityEngine.GameObject);
System.Single get_bendFactor();
System.Void set_bendFactor(System.Single);
}
class DetailRenderMode : System.Enum{
Int32 value__;
}
class DetailPrototype : System.__object{
this ();
UnityEngine.GameObject get_prototype();
System.Void set_prototype(UnityEngine.GameObject);
UnityEngine.Texture2D get_prototypeTexture();
System.Void set_prototypeTexture(UnityEngine.Texture2D);
System.Single get_minWidth();
System.Void set_minWidth(System.Single);
System.Single get_maxWidth();
System.Void set_maxWidth(System.Single);
System.Single get_minHeight();
System.Void set_minHeight(System.Single);
System.Single get_maxHeight();
System.Void set_maxHeight(System.Single);
System.Single get_noiseSpread();
System.Void set_noiseSpread(System.Single);
System.Single get_bendFactor();
System.Void set_bendFactor(System.Single);
UnityEngine.Color get_healthyColor();
System.Void set_healthyColor(UnityEngine.Color);
UnityEngine.Color get_dryColor();
System.Void set_dryColor(UnityEngine.Color);
UnityEngine.DetailRenderMode get_renderMode();
System.Void set_renderMode(UnityEngine.DetailRenderMode);
System.Boolean get_usePrototypeMesh();
System.Void set_usePrototypeMesh(System.Boolean);
}
class SplatPrototype : System.__object{
this ();
UnityEngine.Texture2D get_texture();
System.Void set_texture(UnityEngine.Texture2D);
UnityEngine.Texture2D get_normalMap();
System.Void set_normalMap(UnityEngine.Texture2D);
UnityEngine.Vector2 get_tileSize();
System.Void set_tileSize(UnityEngine.Vector2);
UnityEngine.Vector2 get_tileOffset();
System.Void set_tileOffset(UnityEngine.Vector2);
UnityEngine.Color get_specular();
System.Void set_specular(UnityEngine.Color);
System.Single get_metallic();
System.Void set_metallic(System.Single);
System.Single get_smoothness();
System.Void set_smoothness(System.Single);
}
class TreeInstance : System.ValueType{
Vector3 position;
Single widthScale;
Single heightScale;
Single rotation;
Color32 color;
Color32 lightmapColor;
Int32 prototypeIndex;
}
class TerrainData : UnityEngine.__UnityObject{
this ();
System.Int32 get_baseMapResolution();
System.Void set_baseMapResolution(System.Int32);
UnityEngine.Texture2D[] get_alphamapTextures();
UnityEngine.SplatPrototype[] get_splatPrototypes();
System.Void set_splatPrototypes(UnityEngine.SplatPrototype[]);
System.Int32 get_heightmapWidth();
System.Int32 get_heightmapHeight();
System.Int32 get_heightmapResolution();
System.Void set_heightmapResolution(System.Int32);
UnityEngine.Vector3 get_heightmapScale();
UnityEngine.Vector3 get_size();
System.Void set_size(UnityEngine.Vector3);
System.Single get_thickness();
System.Void set_thickness(System.Single);
System.Single GetHeight(System.Int32,System.Int32);
System.Single GetInterpolatedHeight(System.Single,System.Single);
System.Single GetSteepness(System.Single,System.Single);
UnityEngine.Vector3 GetInterpolatedNormal(System.Single,System.Single);
System.Single get_wavingGrassStrength();
System.Void set_wavingGrassStrength(System.Single);
System.Single get_wavingGrassAmount();
System.Void set_wavingGrassAmount(System.Single);
System.Single get_wavingGrassSpeed();
System.Void set_wavingGrassSpeed(System.Single);
UnityEngine.Color get_wavingGrassTint();
System.Void set_wavingGrassTint(UnityEngine.Color);
System.Int32 get_detailWidth();
System.Int32 get_detailHeight();
System.Void SetDetailResolution(System.Int32,System.Int32);
System.Int32 get_detailResolution();
System.Void RefreshPrototypes();
UnityEngine.DetailPrototype[] get_detailPrototypes();
System.Void set_detailPrototypes(UnityEngine.DetailPrototype[]);
System.Int32[] GetSupportedLayers(System.Int32,System.Int32,System.Int32,System.Int32);
UnityEngine.TreeInstance[] get_treeInstances();
System.Void set_treeInstances(UnityEngine.TreeInstance[]);
UnityEngine.TreeInstance GetTreeInstance(System.Int32);
System.Void SetTreeInstance(System.Int32,UnityEngine.TreeInstance);
System.Int32 get_treeInstanceCount();
UnityEngine.TreePrototype[] get_treePrototypes();
System.Void set_treePrototypes(UnityEngine.TreePrototype[]);
System.Int32 get_alphamapLayers();
System.Int32 get_alphamapResolution();
System.Void set_alphamapResolution(System.Int32);
System.Int32 get_alphamapWidth();
System.Int32 get_alphamapHeight();
}
class TerrainRenderFlags : System.Enum{
Int32 value__;
}
class Terrain : UnityEngine.Behaviour{
static class MaterialType : System.Enum{
Int32 value__;
}
this ();
UnityEngine.TerrainRenderFlags get_editorRenderFlags();
System.Void set_editorRenderFlags(UnityEngine.TerrainRenderFlags);
UnityEngine.TerrainData get_terrainData();
System.Void set_terrainData(UnityEngine.TerrainData);
System.Single get_treeDistance();
System.Void set_treeDistance(System.Single);
System.Single get_treeBillboardDistance();
System.Void set_treeBillboardDistance(System.Single);
System.Single get_treeCrossFadeLength();
System.Void set_treeCrossFadeLength(System.Single);
System.Int32 get_treeMaximumFullLODCount();
System.Void set_treeMaximumFullLODCount(System.Int32);
System.Single get_detailObjectDistance();
System.Void set_detailObjectDistance(System.Single);
System.Single get_detailObjectDensity();
System.Void set_detailObjectDensity(System.Single);
System.Boolean get_collectDetailPatches();
System.Void set_collectDetailPatches(System.Boolean);
System.Single get_heightmapPixelError();
System.Void set_heightmapPixelError(System.Single);
System.Int32 get_heightmapMaximumLOD();
System.Void set_heightmapMaximumLOD(System.Int32);
System.Single get_basemapDistance();
System.Void set_basemapDistance(System.Single);
System.Single get_splatmapDistance();
System.Void set_splatmapDistance(System.Single);
System.Int32 get_lightmapIndex();
System.Void set_lightmapIndex(System.Int32);
System.Boolean get_castShadows();
System.Void set_castShadows(System.Boolean);
UnityEngine.Rendering.ReflectionProbeUsage get_reflectionProbeUsage();
System.Void set_reflectionProbeUsage(UnityEngine.Rendering.ReflectionProbeUsage);
UnityEngine.Terrain.MaterialType get_materialType();
System.Void set_materialType(UnityEngine.Terrain.MaterialType);
UnityEngine.Material get_materialTemplate();
System.Void set_materialTemplate(UnityEngine.Material);
UnityEngine.Color get_legacySpecular();
System.Void set_legacySpecular(UnityEngine.Color);
System.Single get_legacyShininess();
System.Void set_legacyShininess(System.Single);
System.Boolean get_drawHeightmap();
System.Void set_drawHeightmap(System.Boolean);
System.Boolean get_drawTreesAndFoliage();
System.Void set_drawTreesAndFoliage(System.Boolean);
System.Single SampleHeight(UnityEngine.Vector3);
System.Void AddTreeInstance(UnityEngine.TreeInstance);
System.Void SetNeighbors(UnityEngine.Terrain,UnityEngine.Terrain,UnityEngine.Terrain,UnityEngine.Terrain);
UnityEngine.Vector3 GetPosition();
System.Void Flush();
System.Boolean get_bakeLightProbesForTrees();
System.Void set_bakeLightProbesForTrees(System.Boolean);
static UnityEngine.Terrain get_activeTerrain();
static UnityEngine.Terrain[] get_activeTerrains();
static UnityEngine.GameObject CreateTerrainGameObject(UnityEngine.TerrainData);
}
class Tree : UnityEngine.Component{
this ();
UnityEngine.ScriptableObject get_data();
System.Void set_data(UnityEngine.ScriptableObject);
System.Boolean get_hasSpeedTreeWind();
}
class TextAlignment : System.Enum{
Int32 value__;
}
class TextAnchor : System.Enum{
Int32 value__;
}
class HorizontalWrapMode : System.Enum{
Int32 value__;
}
class VerticalWrapMode : System.Enum{
Int32 value__;
}
class GUIText : UnityEngine.GUIElement{
this ();
System.String get_text();
System.Void set_text(System.String);
UnityEngine.Material get_material();
System.Void set_material(UnityEngine.Material);
UnityEngine.Vector2 get_pixelOffset();
System.Void set_pixelOffset(UnityEngine.Vector2);
UnityEngine.Font get_font();
System.Void set_font(UnityEngine.Font);
UnityEngine.TextAlignment get_alignment();
System.Void set_alignment(UnityEngine.TextAlignment);
UnityEngine.TextAnchor get_anchor();
System.Void set_anchor(UnityEngine.TextAnchor);
System.Single get_lineSpacing();
System.Void set_lineSpacing(System.Single);
System.Single get_tabSize();
System.Void set_tabSize(System.Single);
System.Int32 get_fontSize();
System.Void set_fontSize(System.Int32);
UnityEngine.FontStyle get_fontStyle();
System.Void set_fontStyle(UnityEngine.FontStyle);
System.Boolean get_richText();
System.Void set_richText(System.Boolean);
UnityEngine.Color get_color();
System.Void set_color(UnityEngine.Color);
}
class TextMesh : UnityEngine.Component{
this ();
System.String get_text();
System.Void set_text(System.String);
UnityEngine.Font get_font();
System.Void set_font(UnityEngine.Font);
System.Int32 get_fontSize();
System.Void set_fontSize(System.Int32);
UnityEngine.FontStyle get_fontStyle();
System.Void set_fontStyle(UnityEngine.FontStyle);
System.Single get_offsetZ();
System.Void set_offsetZ(System.Single);
UnityEngine.TextAlignment get_alignment();
System.Void set_alignment(UnityEngine.TextAlignment);
UnityEngine.TextAnchor get_anchor();
System.Void set_anchor(UnityEngine.TextAnchor);
System.Single get_characterSize();
System.Void set_characterSize(System.Single);
System.Single get_lineSpacing();
System.Void set_lineSpacing(System.Single);
System.Single get_tabSize();
System.Void set_tabSize(System.Single);
System.Boolean get_richText();
System.Void set_richText(System.Boolean);
UnityEngine.Color get_color();
System.Void set_color(UnityEngine.Color);
}
class CharacterInfo : System.ValueType{
Int32 index;
Rect uv;
Rect vert;
Single width;
Int32 size;
FontStyle style;
Boolean flipped;
System.Int32 get_advance();
System.Int32 get_glyphWidth();
System.Int32 get_glyphHeight();
System.Int32 get_bearing();
System.Int32 get_minY();
System.Int32 get_maxY();
System.Int32 get_minX();
System.Int32 get_maxX();
UnityEngine.Vector2 get_uvBottomLeft();
UnityEngine.Vector2 get_uvBottomRight();
UnityEngine.Vector2 get_uvTopRight();
UnityEngine.Vector2 get_uvTopLeft();
}
class Font : UnityEngine.__UnityObject{
static class FontTextureRebuildCallback : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.Void Invoke();
System.IAsyncResult BeginInvoke(System.AsyncCallback,System.__object);
System.Void EndInvoke(System.IAsyncResult);
}
this ();
this (System.String);
static System.String[] GetOSInstalledFontNames();
static UnityEngine.Font CreateDynamicFontFromOSFont(System.String,System.Int32);
static UnityEngine.Font CreateDynamicFontFromOSFont(System.String[],System.Int32);
UnityEngine.Material get_material();
System.Void set_material(UnityEngine.Material);
System.Boolean HasCharacter(System.Char);
System.String[] get_fontNames();
System.Void set_fontNames(System.String[]);
UnityEngine.CharacterInfo[] get_characterInfo();
System.Void set_characterInfo(UnityEngine.CharacterInfo[]);
System.Void RequestCharactersInTexture(System.String,System.Int32,UnityEngine.FontStyle);
System.Void RequestCharactersInTexture(System.String,System.Int32);
System.Void RequestCharactersInTexture(System.String);
UnityEngine.Font.FontTextureRebuildCallback get_textureRebuildCallback();
System.Void set_textureRebuildCallback(UnityEngine.Font.FontTextureRebuildCallback);
static System.Int32 GetMaxVertsForString(System.String);
System.Boolean get_dynamic();
System.Int32 get_ascent();
System.Int32 get_lineHeight();
System.Int32 get_fontSize();
}
class UICharInfo : System.ValueType{
Vector2 cursorPos;
Single charWidth;
}
class UILineInfo : System.ValueType{
Int32 startCharIdx;
Int32 height;
}
class TextGenerator : System.__object{
this ();
this (System.Int32);
UnityEngine.Rect get_rectExtents();
System.Int32 get_vertexCount();
UnityEngine.UIVertex[] GetVerticesArray();
System.Int32 get_characterCount();
System.Int32 get_characterCountVisible();
UnityEngine.UICharInfo[] GetCharactersArray();
System.Int32 get_lineCount();
UnityEngine.UILineInfo[] GetLinesArray();
System.Int32 get_fontSizeUsedForBestFit();
System.Void Invalidate();
System.Single GetPreferredWidth(System.String,UnityEngine.TextGenerationSettings);
System.Single GetPreferredHeight(System.String,UnityEngine.TextGenerationSettings);
System.Boolean Populate(System.String,UnityEngine.TextGenerationSettings);
}
class RenderMode : System.Enum{
Int32 value__;
}
class Canvas : UnityEngine.Behaviour{
static class WillRenderCanvases : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.Void Invoke();
System.IAsyncResult BeginInvoke(System.AsyncCallback,System.__object);
System.Void EndInvoke(System.IAsyncResult);
}
this ();
static System.Void add_willRenderCanvases(UnityEngine.Canvas.WillRenderCanvases);
static System.Void remove_willRenderCanvases(UnityEngine.Canvas.WillRenderCanvases);
UnityEngine.RenderMode get_renderMode();
System.Void set_renderMode(UnityEngine.RenderMode);
System.Boolean get_isRootCanvas();
UnityEngine.Camera get_worldCamera();
System.Void set_worldCamera(UnityEngine.Camera);
UnityEngine.Rect get_pixelRect();
System.Single get_scaleFactor();
System.Void set_scaleFactor(System.Single);
System.Single get_referencePixelsPerUnit();
System.Void set_referencePixelsPerUnit(System.Single);
System.Boolean get_overridePixelPerfect();
System.Void set_overridePixelPerfect(System.Boolean);
System.Boolean get_pixelPerfect();
System.Void set_pixelPerfect(System.Boolean);
System.Single get_planeDistance();
System.Void set_planeDistance(System.Single);
System.Int32 get_renderOrder();
System.Boolean get_overrideSorting();
System.Void set_overrideSorting(System.Boolean);
System.Int32 get_sortingOrder();
System.Void set_sortingOrder(System.Int32);
System.Int32 get_sortingLayerID();
System.Void set_sortingLayerID(System.Int32);
System.Int32 get_cachedSortingLayerValue();
System.String get_sortingLayerName();
System.Void set_sortingLayerName(System.String);
static UnityEngine.Material GetDefaultCanvasMaterial();
static UnityEngine.Material GetDefaultCanvasTextMaterial();
static System.Void ForceUpdateCanvases();
}
interface ICanvasRaycastFilter{
System.Boolean IsRaycastLocationValid(UnityEngine.Vector2,UnityEngine.Camera);
}
class CanvasGroup : UnityEngine.Component{
this ();
System.Single get_alpha();
System.Void set_alpha(System.Single);
System.Boolean get_interactable();
System.Void set_interactable(System.Boolean);
System.Boolean get_blocksRaycasts();
System.Void set_blocksRaycasts(System.Boolean);
System.Boolean get_ignoreParentGroups();
System.Void set_ignoreParentGroups(System.Boolean);
System.Boolean IsRaycastLocationValid(UnityEngine.Vector2,UnityEngine.Camera);
}
class UIVertex : System.ValueType{
Vector3 position;
Vector3 normal;
Color32 color;
Vector2 uv0;
Vector2 uv1;
Vector4 tangent;
}
class CanvasRenderer : UnityEngine.Component{
static class OnRequestRebuild : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.Void Invoke();
System.IAsyncResult BeginInvoke(System.AsyncCallback,System.__object);
System.Void EndInvoke(System.IAsyncResult);
}
this ();
static System.Void add_onRequestRebuild(UnityEngine.CanvasRenderer.OnRequestRebuild);
static System.Void remove_onRequestRebuild(UnityEngine.CanvasRenderer.OnRequestRebuild);
System.Void SetColor(UnityEngine.Color);
UnityEngine.Color GetColor();
System.Single GetAlpha();
System.Void SetAlpha(System.Single);
System.Boolean get_isMask();
System.Void set_isMask(System.Boolean);
System.Void SetMaterial(UnityEngine.Material,UnityEngine.Texture);
UnityEngine.Material GetMaterial();
System.Void SetVertices(UnityEngine.UIVertex[],System.Int32);
System.Void Clear();
System.Int32 get_relativeDepth();
System.Int32 get_absoluteDepth();
}
class RectTransformUtility : System.__object{
static System.Boolean RectangleContainsScreenPoint(UnityEngine.RectTransform,UnityEngine.Vector2,UnityEngine.Camera);
static UnityEngine.Vector2 PixelAdjustPoint(UnityEngine.Vector2,UnityEngine.Transform,UnityEngine.Canvas);
static UnityEngine.Rect PixelAdjustRect(UnityEngine.RectTransform,UnityEngine.Canvas);
static UnityEngine.Ray ScreenPointToRay(UnityEngine.Camera,UnityEngine.Vector2);
static UnityEngine.Vector2 WorldToScreenPoint(UnityEngine.Camera,UnityEngine.Vector3);
static UnityEngine.Bounds CalculateRelativeRectTransformBounds(UnityEngine.Transform,UnityEngine.Transform);
static UnityEngine.Bounds CalculateRelativeRectTransformBounds(UnityEngine.Transform);
static System.Void FlipLayoutOnAxis(UnityEngine.RectTransform,System.Int32,System.Boolean,System.Boolean);
static System.Void FlipLayoutAxes(UnityEngine.RectTransform,System.Boolean,System.Boolean);
}
class TerrainCollider : UnityEngine.Collider{
this ();
UnityEngine.TerrainData get_terrainData();
System.Void set_terrainData(UnityEngine.TerrainData);
}
class AndroidJavaProxy : System.__object{
AndroidJavaClass javaInterface;
this (System.String);
this (UnityEngine.AndroidJavaClass);
UnityEngine.AndroidJavaObject Invoke(System.String,System.__object[]);
UnityEngine.AndroidJavaObject Invoke(System.String,UnityEngine.AndroidJavaObject[]);
}
class DisallowMultipleComponent : System.Attribute{
this ();
}
class RequireComponent : System.Attribute{
Type m_Type0;
Type m_Type1;
Type m_Type2;
this (System.Type);
this (System.Type,System.Type);
this (System.Type,System.Type,System.Type);
}
class AddComponentMenu : System.Attribute{
this (System.String);
this (System.String,System.Int32);
System.String get_componentMenu();
System.Int32 get_componentOrder();
}
class CreateAssetMenuAttribute : System.Attribute{
this ();
System.String get_menuName();
System.Void set_menuName(System.String);
System.String get_fileName();
System.Void set_fileName(System.String);
System.Int32 get_order();
System.Void set_order(System.Int32);
}
class ContextMenu : System.Attribute{
this (System.String);
System.String get_menuItem();
}
class ExecuteInEditMode : System.Attribute{
this ();
}
class HideInInspector : System.Attribute{
this ();
}
class HelpURLAttribute : System.Attribute{
this (System.String);
System.String get_URL();
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
System.Int32 get_width();
System.Void set_width(System.Int32);
System.Int32 get_height();
System.Void set_height(System.Int32);
System.Int32 get_refreshRate();
System.Void set_refreshRate(System.Int32);
System.String ToString();
}
class RenderBuffer : System.ValueType{
System.IntPtr GetNativeRenderBufferPtr();
}
class LightType : System.Enum{
Int32 value__;
}
class LightRenderMode : System.Enum{
Int32 value__;
}
class LightShadows : System.Enum{
Int32 value__;
}
class FogMode : System.Enum{
Int32 value__;
}
class QualityLevel : System.Enum{
Int32 value__;
}
class ShadowProjection : System.Enum{
Int32 value__;
}
class CameraClearFlags : System.Enum{
Int32 value__;
}
class DepthTextureMode : System.Enum{
Int32 value__;
}
class TexGenMode : System.Enum{
Int32 value__;
}
class AnisotropicFiltering : System.Enum{
Int32 value__;
}
class BlendWeights : System.Enum{
Int32 value__;
}
class MeshTopology : System.Enum{
Int32 value__;
}
class SkinQuality : System.Enum{
Int32 value__;
}
class ColorSpace : System.Enum{
Int32 value__;
}
class ScreenOrientation : System.Enum{
Int32 value__;
}
class FilterMode : System.Enum{
Int32 value__;
}
class TextureWrapMode : System.Enum{
Int32 value__;
}
class NPOTSupport : System.Enum{
Int32 value__;
}
class TextureFormat : System.Enum{
Int32 value__;
}
class CubemapFace : System.Enum{
Int32 value__;
}
class RenderTextureFormat : System.Enum{
Int32 value__;
}
class RenderTextureReadWrite : System.Enum{
Int32 value__;
}
class LightmapsMode : System.Enum{
Int32 value__;
}
class MaterialGlobalIlluminationFlags : System.Enum{
Int32 value__;
}
class ImplementedInActionScriptAttribute : System.Attribute{
this ();
}
class Social : System.__object{
static UnityEngine.SocialPlatforms.ISocialPlatform get_Active();
static System.Void set_Active(UnityEngine.SocialPlatforms.ISocialPlatform);
static UnityEngine.SocialPlatforms.ILocalUser get_localUser();
static UnityEngine.SocialPlatforms.ILeaderboard CreateLeaderboard();
static UnityEngine.SocialPlatforms.IAchievement CreateAchievement();
static System.Void ShowAchievementsUI();
static System.Void ShowLeaderboardUI();
}
class PropertyAttribute : System.Attribute{
System.Int32 get_order();
System.Void set_order(System.Int32);
}
class ContextMenuItemAttribute : UnityEngine.PropertyAttribute{
String name;
//Conflict!
//String function;
this (System.String,System.String);
}
class TooltipAttribute : UnityEngine.PropertyAttribute{
String tooltip;
this (System.String);
}
class SpaceAttribute : UnityEngine.PropertyAttribute{
Single height;
this (System.Single);
}
class HeaderAttribute : UnityEngine.PropertyAttribute{
String header;
this (System.String);
}
class RangeAttribute : UnityEngine.PropertyAttribute{
Single min;
Single max;
this (System.Single,System.Single);
}
class MultilineAttribute : UnityEngine.PropertyAttribute{
Int32 lines;
this ();
this (System.Int32);
}
class TextAreaAttribute : UnityEngine.PropertyAttribute{
Int32 minLines;
Int32 maxLines;
this ();
this (System.Int32,System.Int32);
}
class ColorUsageAttribute : UnityEngine.PropertyAttribute{
Boolean showAlpha;
Boolean hdr;
Single minBrightness;
Single maxBrightness;
Single minExposureValue;
Single maxExposureValue;
this (System.Boolean);
this (System.Boolean,System.Boolean,System.Single,System.Single,System.Single,System.Single);
}
class RuntimeInitializeOnLoadMethodAttribute : System.Attribute{
this ();
}
class Types : System.__object{
static System.Type GetType(System.String,System.String);
}
class SelectionBaseAttribute : System.Attribute{
this ();
}
class StackTraceUtility : System.__object{
this ();
static System.String ExtractStackTrace();
static System.String ExtractStringFromException(System.__object);
}
class SharedBetweenAnimatorsAttribute : System.Attribute{
this ();
}
class StateMachineBehaviour : UnityEngine.ScriptableObject{
System.Void OnStateEnter(UnityEngine.Animator,UnityEngine.AnimatorStateInfo,System.Int32);
System.Void OnStateUpdate(UnityEngine.Animator,UnityEngine.AnimatorStateInfo,System.Int32);
System.Void OnStateExit(UnityEngine.Animator,UnityEngine.AnimatorStateInfo,System.Int32);
System.Void OnStateMove(UnityEngine.Animator,UnityEngine.AnimatorStateInfo,System.Int32);
System.Void OnStateIK(UnityEngine.Animator,UnityEngine.AnimatorStateInfo,System.Int32);
System.Void OnStateMachineEnter(UnityEngine.Animator,System.Int32);
System.Void OnStateMachineExit(UnityEngine.Animator,System.Int32);
}
class TextEditor : System.__object{
static class DblClickSnapping : System.Enum{
Byte value__;
}
Int32 pos;
Int32 selectPos;
Int32 controlID;
GUIContent content;
GUIStyle style;
Rect position;
Boolean multiline;
Boolean hasHorizontalCursorPos;
Boolean isPasswordField;
Vector2 scrollOffset;
Vector2 graphicalCursorPos;
Vector2 graphicalSelectCursorPos;
this ();
System.Void OnFocus();
System.Void OnLostFocus();
System.Boolean HandleKeyEvent(UnityEngine.Event);
System.Boolean DeleteLineBack();
System.Boolean DeleteWordBack();
System.Boolean DeleteWordForward();
System.Boolean Delete();
System.Boolean CanPaste();
System.Boolean Backspace();
System.Void SelectAll();
System.Void SelectNone();
System.Boolean get_hasSelection();
System.String get_SelectedText();
System.Boolean DeleteSelection();
System.Void ReplaceSelection(System.String);
System.Void Insert(System.Char);
System.Void MoveSelectionToAltCursor();
System.Void MoveRight();
System.Void MoveLeft();
System.Void MoveUp();
System.Void MoveDown();
System.Void MoveLineStart();
System.Void MoveLineEnd();
System.Void MoveGraphicalLineStart();
System.Void MoveGraphicalLineEnd();
System.Void MoveTextStart();
System.Void MoveTextEnd();
System.Void MoveParagraphForward();
System.Void MoveParagraphBackward();
System.Void MoveCursorToPosition(UnityEngine.Vector2);
System.Void MoveAltCursorToPosition(UnityEngine.Vector2);
System.Boolean IsOverSelection(UnityEngine.Vector2);
System.Void SelectToPosition(UnityEngine.Vector2);
System.Void SelectLeft();
System.Void SelectRight();
System.Void SelectUp();
System.Void SelectDown();
System.Void SelectTextEnd();
System.Void SelectTextStart();
System.Void MouseDragSelectsWholeWords(System.Boolean);
System.Void DblClickSnap(UnityEngine.TextEditor.DblClickSnapping);
System.Void MoveWordRight();
System.Void MoveToStartOfNextWord();
System.Void MoveToEndOfPreviousWord();
System.Void SelectToStartOfNextWord();
System.Void SelectToEndOfPreviousWord();
System.Int32 FindStartOfNextWord(System.Int32);
System.Void MoveWordLeft();
System.Void SelectWordRight();
System.Void SelectWordLeft();
System.Void ExpandSelectGraphicalLineStart();
System.Void ExpandSelectGraphicalLineEnd();
System.Void SelectGraphicalLineStart();
System.Void SelectGraphicalLineEnd();
System.Void SelectParagraphForward();
System.Void SelectParagraphBackward();
System.Void SelectCurrentWord();
System.Void SelectCurrentParagraph();
System.Void UpdateScrollOffsetIfNeeded();
System.Void DrawCursor(System.String);
System.Void SaveBackup();
System.Void Undo();
System.Boolean Cut();
System.Void Copy();
System.Boolean Paste();
System.Void ClampPos();
}
class TextGenerationSettings : System.ValueType{
Font font;
Color color;
Int32 fontSize;
Single lineSpacing;
Boolean richText;
Single scaleFactor;
FontStyle fontStyle;
TextAnchor textAnchor;
Boolean resizeTextForBestFit;
Int32 resizeTextMinSize;
Int32 resizeTextMaxSize;
Boolean updateBounds;
VerticalWrapMode verticalOverflow;
HorizontalWrapMode horizontalOverflow;
Vector2 generationExtents;
Vector2 pivot;
Boolean generateOutOfBounds;
System.Boolean Equals(UnityEngine.TextGenerationSettings);
}
class TrackedReference : System.__object{
System.Boolean Equals(System.__object);
System.Int32 GetHashCode();
static System.Boolean op_Equality(UnityEngine.TrackedReference,UnityEngine.TrackedReference);
static System.Boolean op_Inequality(UnityEngine.TrackedReference,UnityEngine.TrackedReference);
static System.Boolean op_Implicit(UnityEngine.TrackedReference);
}
class UnityAPICompatibilityVersionAttribute : System.Attribute{
this (System.String);
System.String get_version();
}
class AndroidJavaRunnable : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.Void Invoke();
System.IAsyncResult BeginInvoke(System.AsyncCallback,System.__object);
System.Void EndInvoke(System.IAsyncResult);
}
}
