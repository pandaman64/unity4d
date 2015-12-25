module UnityEngine.Rendering;
import System;
import UnityEngine;
public:
pragma(assembly,"UnityEngine"){
class CommandBuffer : System.Object{
this ();
Void Dispose();
Void Release();
String get_name();
Void set_name(System.String);
Int32 get_sizeInBytes();
Void Clear();
Void DrawMesh(UnityEngine.Mesh,UnityEngine.Matrix4x4,UnityEngine.Material,System.Int32,System.Int32,UnityEngine.MaterialPropertyBlock);
Void DrawMesh(UnityEngine.Mesh,UnityEngine.Matrix4x4,UnityEngine.Material,System.Int32,System.Int32);
Void DrawMesh(UnityEngine.Mesh,UnityEngine.Matrix4x4,UnityEngine.Material,System.Int32);
Void DrawMesh(UnityEngine.Mesh,UnityEngine.Matrix4x4,UnityEngine.Material);
Void DrawRenderer(UnityEngine.Renderer,UnityEngine.Material,System.Int32,System.Int32);
Void DrawRenderer(UnityEngine.Renderer,UnityEngine.Material,System.Int32);
Void DrawRenderer(UnityEngine.Renderer,UnityEngine.Material);
Void DrawProcedural(UnityEngine.Matrix4x4,UnityEngine.Material,System.Int32,UnityEngine.MeshTopology,System.Int32,System.Int32,UnityEngine.MaterialPropertyBlock);
Void DrawProcedural(UnityEngine.Matrix4x4,UnityEngine.Material,System.Int32,UnityEngine.MeshTopology,System.Int32,System.Int32);
Void DrawProcedural(UnityEngine.Matrix4x4,UnityEngine.Material,System.Int32,UnityEngine.MeshTopology,System.Int32);
Void DrawProceduralIndirect(UnityEngine.Matrix4x4,UnityEngine.Material,System.Int32,UnityEngine.MeshTopology,UnityEngine.ComputeBuffer,System.Int32,UnityEngine.MaterialPropertyBlock);
Void DrawProceduralIndirect(UnityEngine.Matrix4x4,UnityEngine.Material,System.Int32,UnityEngine.MeshTopology,UnityEngine.ComputeBuffer,System.Int32);
Void DrawProceduralIndirect(UnityEngine.Matrix4x4,UnityEngine.Material,System.Int32,UnityEngine.MeshTopology,UnityEngine.ComputeBuffer);
Void SetRenderTarget(UnityEngine.Rendering.RenderTargetIdentifier);
Void SetRenderTarget(UnityEngine.Rendering.RenderTargetIdentifier,UnityEngine.Rendering.RenderTargetIdentifier);
Void SetRenderTarget(UnityEngine.Rendering.RenderTargetIdentifier[],UnityEngine.Rendering.RenderTargetIdentifier);
Void Blit(UnityEngine.Texture,UnityEngine.Rendering.RenderTargetIdentifier);
Void Blit(UnityEngine.Texture,UnityEngine.Rendering.RenderTargetIdentifier,UnityEngine.Material);
Void Blit(UnityEngine.Texture,UnityEngine.Rendering.RenderTargetIdentifier,UnityEngine.Material,System.Int32);
Void Blit(UnityEngine.Rendering.RenderTargetIdentifier,UnityEngine.Rendering.RenderTargetIdentifier);
Void Blit(UnityEngine.Rendering.RenderTargetIdentifier,UnityEngine.Rendering.RenderTargetIdentifier,UnityEngine.Material);
Void Blit(UnityEngine.Rendering.RenderTargetIdentifier,UnityEngine.Rendering.RenderTargetIdentifier,UnityEngine.Material,System.Int32);
Void GetTemporaryRT(System.Int32,System.Int32,System.Int32,System.Int32,UnityEngine.FilterMode,UnityEngine.RenderTextureFormat,UnityEngine.RenderTextureReadWrite,System.Int32);
Void GetTemporaryRT(System.Int32,System.Int32,System.Int32,System.Int32,UnityEngine.FilterMode,UnityEngine.RenderTextureFormat,UnityEngine.RenderTextureReadWrite);
Void GetTemporaryRT(System.Int32,System.Int32,System.Int32,System.Int32,UnityEngine.FilterMode,UnityEngine.RenderTextureFormat);
Void GetTemporaryRT(System.Int32,System.Int32,System.Int32,System.Int32,UnityEngine.FilterMode);
Void GetTemporaryRT(System.Int32,System.Int32,System.Int32,System.Int32);
Void GetTemporaryRT(System.Int32,System.Int32,System.Int32);
Void ReleaseTemporaryRT(System.Int32);
Void ClearRenderTarget(System.Boolean,System.Boolean,UnityEngine.Color,System.Single);
Void ClearRenderTarget(System.Boolean,System.Boolean,UnityEngine.Color);
Void SetGlobalFloat(System.String,System.Single);
Void SetGlobalFloat(System.Int32,System.Single);
Void SetGlobalVector(System.String,UnityEngine.Vector4);
Void SetGlobalVector(System.Int32,UnityEngine.Vector4);
Void SetGlobalColor(System.String,UnityEngine.Color);
Void SetGlobalColor(System.Int32,UnityEngine.Color);
Void SetGlobalMatrix(System.String,UnityEngine.Matrix4x4);
Void SetGlobalMatrix(System.Int32,UnityEngine.Matrix4x4);
Void SetGlobalTexture(System.String,UnityEngine.Rendering.RenderTargetIdentifier);
Void SetGlobalTexture(System.Int32,UnityEngine.Rendering.RenderTargetIdentifier);
}
class SphericalHarmonicsL2 : System.ValueType{
Void Clear();
Void AddAmbientLight(UnityEngine.Color);
Void AddDirectionalLight(UnityEngine.Vector3,UnityEngine.Color,System.Single);
Single get_Item(System.Int32,System.Int32);
Void set_Item(System.Int32,System.Int32,System.Single);
Int32 GetHashCode();
Boolean Equals(System.Object);
static SphericalHarmonicsL2 op_Multiply(UnityEngine.Rendering.SphericalHarmonicsL2,System.Single);
static SphericalHarmonicsL2 op_Multiply(System.Single,UnityEngine.Rendering.SphericalHarmonicsL2);
static SphericalHarmonicsL2 op_Addition(UnityEngine.Rendering.SphericalHarmonicsL2,UnityEngine.Rendering.SphericalHarmonicsL2);
static Boolean op_Equality(UnityEngine.Rendering.SphericalHarmonicsL2,UnityEngine.Rendering.SphericalHarmonicsL2);
static Boolean op_Inequality(UnityEngine.Rendering.SphericalHarmonicsL2,UnityEngine.Rendering.SphericalHarmonicsL2);
}
class RenderBufferLoadAction : System.Enum{
}
class RenderBufferStoreAction : System.Enum{
}
class BlendMode : System.Enum{
}
class BlendOp : System.Enum{
}
class CompareFunction : System.Enum{
}
class CullMode : System.Enum{
}
class ColorWriteMask : System.Enum{
}
class StencilOp : System.Enum{
}
class AmbientMode : System.Enum{
}
class DefaultReflectionMode : System.Enum{
}
class CameraEvent : System.Enum{
}
class LightEvent : System.Enum{
}
class BuiltinRenderTextureType : System.Enum{
}
class PassType : System.Enum{
}
class ShadowCastingMode : System.Enum{
}
class GraphicsDeviceType : System.Enum{
}
class RenderTargetIdentifier : System.ValueType{
this (UnityEngine.Rendering.BuiltinRenderTextureType);
this (System.String);
this (System.Int32);
this (UnityEngine.RenderTexture);
static RenderTargetIdentifier op_Implicit(UnityEngine.Rendering.BuiltinRenderTextureType);
static RenderTargetIdentifier op_Implicit(System.String);
static RenderTargetIdentifier op_Implicit(System.Int32);
static RenderTargetIdentifier op_Implicit(UnityEngine.RenderTexture);
}
class ReflectionProbeUsage : System.Enum{
}
class ReflectionProbeType : System.Enum{
}
class ReflectionProbeClearFlags : System.Enum{
}
class ReflectionProbeMode : System.Enum{
}
class ReflectionProbeBlendInfo : System.ValueType{
}
class ReflectionProbeRefreshMode : System.Enum{
}
class ReflectionProbeTimeSlicingMode : System.Enum{
}
}
