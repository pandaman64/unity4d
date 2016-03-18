module UnityEngine.Rendering;
import System;
import UnityEngine;
public:
pragma(assembly,"UnityEngine"){
class CommandBuffer : System.__object{
this ();
System.Void Dispose();
System.Void Release();
System.String get_name();
System.Void set_name(System.String);
System.Int32 get_sizeInBytes();
System.Void Clear();
System.Void DrawMesh(UnityEngine.Mesh,UnityEngine.Matrix4x4,UnityEngine.Material,System.Int32,System.Int32,UnityEngine.MaterialPropertyBlock);
System.Void DrawMesh(UnityEngine.Mesh,UnityEngine.Matrix4x4,UnityEngine.Material,System.Int32,System.Int32);
System.Void DrawMesh(UnityEngine.Mesh,UnityEngine.Matrix4x4,UnityEngine.Material,System.Int32);
System.Void DrawMesh(UnityEngine.Mesh,UnityEngine.Matrix4x4,UnityEngine.Material);
System.Void DrawRenderer(UnityEngine.Renderer,UnityEngine.Material,System.Int32,System.Int32);
System.Void DrawRenderer(UnityEngine.Renderer,UnityEngine.Material,System.Int32);
System.Void DrawRenderer(UnityEngine.Renderer,UnityEngine.Material);
System.Void DrawProcedural(UnityEngine.Matrix4x4,UnityEngine.Material,System.Int32,UnityEngine.MeshTopology,System.Int32,System.Int32,UnityEngine.MaterialPropertyBlock);
System.Void DrawProcedural(UnityEngine.Matrix4x4,UnityEngine.Material,System.Int32,UnityEngine.MeshTopology,System.Int32,System.Int32);
System.Void DrawProcedural(UnityEngine.Matrix4x4,UnityEngine.Material,System.Int32,UnityEngine.MeshTopology,System.Int32);
System.Void DrawProceduralIndirect(UnityEngine.Matrix4x4,UnityEngine.Material,System.Int32,UnityEngine.MeshTopology,UnityEngine.ComputeBuffer,System.Int32,UnityEngine.MaterialPropertyBlock);
System.Void DrawProceduralIndirect(UnityEngine.Matrix4x4,UnityEngine.Material,System.Int32,UnityEngine.MeshTopology,UnityEngine.ComputeBuffer,System.Int32);
System.Void DrawProceduralIndirect(UnityEngine.Matrix4x4,UnityEngine.Material,System.Int32,UnityEngine.MeshTopology,UnityEngine.ComputeBuffer);
System.Void SetRenderTarget(UnityEngine.Rendering.RenderTargetIdentifier);
System.Void SetRenderTarget(UnityEngine.Rendering.RenderTargetIdentifier,UnityEngine.Rendering.RenderTargetIdentifier);
System.Void SetRenderTarget(UnityEngine.Rendering.RenderTargetIdentifier[],UnityEngine.Rendering.RenderTargetIdentifier);
System.Void Blit(UnityEngine.Texture,UnityEngine.Rendering.RenderTargetIdentifier);
System.Void Blit(UnityEngine.Texture,UnityEngine.Rendering.RenderTargetIdentifier,UnityEngine.Material);
System.Void Blit(UnityEngine.Texture,UnityEngine.Rendering.RenderTargetIdentifier,UnityEngine.Material,System.Int32);
System.Void Blit(UnityEngine.Rendering.RenderTargetIdentifier,UnityEngine.Rendering.RenderTargetIdentifier);
System.Void Blit(UnityEngine.Rendering.RenderTargetIdentifier,UnityEngine.Rendering.RenderTargetIdentifier,UnityEngine.Material);
System.Void Blit(UnityEngine.Rendering.RenderTargetIdentifier,UnityEngine.Rendering.RenderTargetIdentifier,UnityEngine.Material,System.Int32);
System.Void GetTemporaryRT(System.Int32,System.Int32,System.Int32,System.Int32,UnityEngine.FilterMode,UnityEngine.RenderTextureFormat,UnityEngine.RenderTextureReadWrite,System.Int32);
System.Void GetTemporaryRT(System.Int32,System.Int32,System.Int32,System.Int32,UnityEngine.FilterMode,UnityEngine.RenderTextureFormat,UnityEngine.RenderTextureReadWrite);
System.Void GetTemporaryRT(System.Int32,System.Int32,System.Int32,System.Int32,UnityEngine.FilterMode,UnityEngine.RenderTextureFormat);
System.Void GetTemporaryRT(System.Int32,System.Int32,System.Int32,System.Int32,UnityEngine.FilterMode);
System.Void GetTemporaryRT(System.Int32,System.Int32,System.Int32,System.Int32);
System.Void GetTemporaryRT(System.Int32,System.Int32,System.Int32);
System.Void ReleaseTemporaryRT(System.Int32);
System.Void ClearRenderTarget(System.Boolean,System.Boolean,UnityEngine.Color,System.Single);
System.Void ClearRenderTarget(System.Boolean,System.Boolean,UnityEngine.Color);
System.Void SetGlobalFloat(System.String,System.Single);
System.Void SetGlobalFloat(System.Int32,System.Single);
System.Void SetGlobalVector(System.String,UnityEngine.Vector4);
System.Void SetGlobalVector(System.Int32,UnityEngine.Vector4);
System.Void SetGlobalColor(System.String,UnityEngine.Color);
System.Void SetGlobalColor(System.Int32,UnityEngine.Color);
System.Void SetGlobalMatrix(System.String,UnityEngine.Matrix4x4);
System.Void SetGlobalMatrix(System.Int32,UnityEngine.Matrix4x4);
System.Void SetGlobalTexture(System.String,UnityEngine.Rendering.RenderTargetIdentifier);
System.Void SetGlobalTexture(System.Int32,UnityEngine.Rendering.RenderTargetIdentifier);
}
class SphericalHarmonicsL2 : System.ValueType{
System.Void Clear();
System.Void AddAmbientLight(UnityEngine.Color);
System.Void AddDirectionalLight(UnityEngine.Vector3,UnityEngine.Color,System.Single);
System.Single get_Item(System.Int32,System.Int32);
System.Void set_Item(System.Int32,System.Int32,System.Single);
System.Int32 GetHashCode();
System.Boolean Equals(System.__object);
static UnityEngine.Rendering.SphericalHarmonicsL2 op_Multiply(UnityEngine.Rendering.SphericalHarmonicsL2,System.Single);
static UnityEngine.Rendering.SphericalHarmonicsL2 op_Multiply(System.Single,UnityEngine.Rendering.SphericalHarmonicsL2);
static UnityEngine.Rendering.SphericalHarmonicsL2 op_Addition(UnityEngine.Rendering.SphericalHarmonicsL2,UnityEngine.Rendering.SphericalHarmonicsL2);
static System.Boolean op_Equality(UnityEngine.Rendering.SphericalHarmonicsL2,UnityEngine.Rendering.SphericalHarmonicsL2);
static System.Boolean op_Inequality(UnityEngine.Rendering.SphericalHarmonicsL2,UnityEngine.Rendering.SphericalHarmonicsL2);
}
class RenderBufferLoadAction : System.Enum{
Int32 value__;
}
class RenderBufferStoreAction : System.Enum{
Int32 value__;
}
class BlendMode : System.Enum{
Int32 value__;
}
class BlendOp : System.Enum{
Int32 value__;
}
class CompareFunction : System.Enum{
Int32 value__;
}
class CullMode : System.Enum{
Int32 value__;
}
class ColorWriteMask : System.Enum{
Int32 value__;
}
class StencilOp : System.Enum{
Int32 value__;
}
class AmbientMode : System.Enum{
Int32 value__;
}
class DefaultReflectionMode : System.Enum{
Int32 value__;
}
class CameraEvent : System.Enum{
Int32 value__;
}
class LightEvent : System.Enum{
Int32 value__;
}
class BuiltinRenderTextureType : System.Enum{
Int32 value__;
}
class PassType : System.Enum{
Int32 value__;
}
class ShadowCastingMode : System.Enum{
Int32 value__;
}
class GraphicsDeviceType : System.Enum{
Int32 value__;
}
class RenderTargetIdentifier : System.ValueType{
this (UnityEngine.Rendering.BuiltinRenderTextureType);
this (System.String);
this (System.Int32);
this (UnityEngine.RenderTexture);
static UnityEngine.Rendering.RenderTargetIdentifier op_Implicit(UnityEngine.Rendering.BuiltinRenderTextureType);
static UnityEngine.Rendering.RenderTargetIdentifier op_Implicit(System.String);
static UnityEngine.Rendering.RenderTargetIdentifier op_Implicit(System.Int32);
static UnityEngine.Rendering.RenderTargetIdentifier op_Implicit(UnityEngine.RenderTexture);
}
class ReflectionProbeUsage : System.Enum{
Int32 value__;
}
class ReflectionProbeType : System.Enum{
Int32 value__;
}
class ReflectionProbeClearFlags : System.Enum{
Int32 value__;
}
class ReflectionProbeMode : System.Enum{
Int32 value__;
}
class ReflectionProbeBlendInfo : System.ValueType{
ReflectionProbe probe;
Single weight;
}
class ReflectionProbeRefreshMode : System.Enum{
Int32 value__;
}
class ReflectionProbeTimeSlicingMode : System.Enum{
Int32 value__;
}
}
