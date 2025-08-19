Shader "NatureManufacture/HDRP/Foliage/Cross 2 WS"
{
    Properties
    {
        [NoScaleOffset]_Mask("Backface (R) Leaves (G) Trunk (B) Thickness Map (A)", 2D) = "white" {}
        _AlphaCutoff("Alpha Cutoff", Float) = 0.5
        _AlphaShadowThreshold("Alpha Shadow Threshold", Float) = 0.5
        [NoScaleOffset]_BaseColorMap("Base Map", 2D) = "white" {}
        _TilingOffset("Tiling and Offset", Vector) = (1, 1, 0, 0)
        _TrunkBaseColor("Trunk Base Color", Color) = (1, 1, 1, 0)
        _BarkBaseColor("Bark Base Color", Color) = (1, 1, 1, 0)
        _Global_Base_Brightness("Global Base Brightness", Range(0, 2)) = 1
        _HealthyColor("Healthy Color", Color) = (1, 1, 1, 0)
        _DryColor("Dry Color", Color) = (0.8196079, 0.8196079, 0.8196079, 0)
        _ColorNoiseTilling("Healthy and Dry Color Noise Tilling", Float) = 2
        _HealthyandDryColorNoisePower("Healthy and Dry Color Noise Power", Range(0.01, 10)) = 1
        _Cross_Backface_Mask_Power("Cross Backface Mask Power", Range(0, 3)) = 1
        _Backface_Saturation("Backface Saturation", Range(0, 2)) = 1
        _Backface_Brightness("Backface Brightness", Range(-1, 1)) = 0
        _Backface_Thickness_Mask_Remap("Backface Thickness Mask Remap", Vector) = (0.01, 1, 0, 0)
        _Backface_Thickness_Mask_Threshold("Backface Thickness Mask Threshold", Range(0.01, 1)) = 1
        [Normal][NoScaleOffset]_NormalMap("Normal Map", 2D) = "bump" {}
        _NormalScale("Leaves Normal Scale", Range(0, 10)) = 6
        _Trunk_Normal_Scale("Trunk Normal Scale", Range(0, 5)) = 1
        _AORemapMax("AO Remap Max", Range(0, 1)) = 1
        _SmoothnessRemapMax("Leaves Smoothness Remap Max", Range(0, 1)) = 1
        _Trunk_Smoothness_Remap_Max("Trunk Smoothness Remap Max", Range(0, 1)) = 1
        _Thickness("Thickness", Range(0, 1)) = 1
        _WindNormalInfluence("Wind Normal Influence", Float) = 0
        _VertexNormalMultiply("Wind Vertex Normal Multiply", Vector) = (0, 0, 0, 0)
        [HideInInspector]_DiffusionProfileHash("Float", Float) = 0
        [HideInInspector]_DiffusionProfileAsset("Vector4", Vector) = (0, 0, 0, 0)
        [HideInInspector]_EmissionColor("Color", Color) = (1, 1, 1, 1)
        [HideInInspector]_RenderQueueType("Float", Float) = 1
        [HideInInspector][ToggleUI]_AddPrecomputedVelocity("Boolean", Float) = 0
        [HideInInspector][ToggleUI]_DepthOffsetEnable("Boolean", Float) = 0
        [HideInInspector][ToggleUI]_ConservativeDepthOffsetEnable("Boolean", Float) = 0
        [HideInInspector][ToggleUI]_TransparentWritingMotionVec("Boolean", Float) = 0
        [HideInInspector][ToggleUI]_AlphaCutoffEnable("Boolean", Float) = 1
        [HideInInspector]_TransparentSortPriority("_TransparentSortPriority", Float) = 0
        [HideInInspector][ToggleUI]_UseShadowThreshold("Boolean", Float) = 1
        [HideInInspector][ToggleUI]_DoubleSidedEnable("Boolean", Float) = 1
        [HideInInspector][Enum(Flip, 0, Mirror, 1, None, 2)]_DoubleSidedNormalMode("Float", Float) = 1
        [HideInInspector]_DoubleSidedConstants("Vector4", Vector) = (1, 1, -1, 0)
        [HideInInspector][Enum(Auto, 0, On, 1, Off, 2)]_DoubleSidedGIMode("Float", Float) = 0
        [HideInInspector][ToggleUI]_TransparentDepthPrepassEnable("Boolean", Float) = 0
        [HideInInspector][ToggleUI]_TransparentDepthPostpassEnable("Boolean", Float) = 0
        [HideInInspector]_SurfaceType("Float", Float) = 0
        [HideInInspector]_BlendMode("Float", Float) = 0
        [HideInInspector]_SrcBlend("Float", Float) = 1
        [HideInInspector]_DstBlend("Float", Float) = 0
        [HideInInspector]_AlphaSrcBlend("Float", Float) = 1
        [HideInInspector]_AlphaDstBlend("Float", Float) = 0
        [HideInInspector][ToggleUI]_ZWrite("Boolean", Float) = 1
        [HideInInspector][ToggleUI]_TransparentZWrite("Boolean", Float) = 0
        [HideInInspector]_CullMode("Float", Float) = 2
        [HideInInspector][ToggleUI]_EnableFogOnTransparent("Boolean", Float) = 1
        [HideInInspector]_CullModeForward("Float", Float) = 2
        [HideInInspector][Enum(Front, 1, Back, 2)]_TransparentCullMode("Float", Float) = 2
        [HideInInspector][Enum(UnityEditor.Rendering.HighDefinition.OpaqueCullMode)]_OpaqueCullMode("Float", Float) = 2
        [HideInInspector]_ZTestDepthEqualForOpaque("Float", Int) = 3
        [HideInInspector][Enum(UnityEngine.Rendering.CompareFunction)]_ZTestTransparent("Float", Float) = 4
        [HideInInspector][ToggleUI]_TransparentBackfaceEnable("Boolean", Float) = 0
        [HideInInspector][ToggleUI]_RequireSplitLighting("Boolean", Float) = 0
        [HideInInspector][ToggleUI]_ReceivesSSR("Boolean", Float) = 1
        [HideInInspector][ToggleUI]_ReceivesSSRTransparent("Boolean", Float) = 0
        [HideInInspector][ToggleUI]_EnableBlendModePreserveSpecularLighting("Boolean", Float) = 1
        [HideInInspector][ToggleUI]_SupportDecals("Boolean", Float) = 1
        [HideInInspector][ToggleUI]_ExcludeFromTUAndAA("Boolean", Float) = 0
        [HideInInspector]_StencilRef("Float", Int) = 0
        [HideInInspector]_StencilWriteMask("Float", Int) = 6
        [HideInInspector]_StencilRefDepth("Float", Int) = 8
        [HideInInspector]_StencilWriteMaskDepth("Float", Int) = 9
        [HideInInspector]_StencilRefMV("Float", Int) = 40
        [HideInInspector]_StencilWriteMaskMV("Float", Int) = 41
        [HideInInspector]_StencilRefDistortionVec("Float", Int) = 4
        [HideInInspector]_StencilWriteMaskDistortionVec("Float", Int) = 4
        [HideInInspector]_StencilWriteMaskGBuffer("Float", Int) = 15
        [HideInInspector]_StencilRefGBuffer("Float", Int) = 10
        [HideInInspector]_ZTestGBuffer("Float", Int) = 4
        [HideInInspector][ToggleUI]_RayTracing("Boolean", Float) = 0
        [HideInInspector][Enum(None, 0, Planar, 1, Sphere, 2, Thin, 3)]_RefractionModel("Float", Float) = 0
        [HideInInspector][NoScaleOffset]unity_Lightmaps("unity_Lightmaps", 2DArray) = "" {}
        [HideInInspector][NoScaleOffset]unity_LightmapsInd("unity_LightmapsInd", 2DArray) = "" {}
        [HideInInspector][NoScaleOffset]unity_ShadowMasks("unity_ShadowMasks", 2DArray) = "" {}
    }
    SubShader
    {
        Tags
        {
            "RenderPipeline"="HDRenderPipeline"
            "RenderType"="HDLitShader"
            "Queue"="AlphaTest+25"
            "DisableBatching"="LODFading"
            "ShaderGraphShader"="true"
            "ShaderGraphTargetId"="HDLitSubTarget"
        }
        Pass
        {
            Name "ShadowCaster"
            Tags
            {
                "LightMode" = "ShadowCaster"
            }
        
            // Render State
            Cull [_CullMode]
        ZWrite On
        ColorMask 0
        ZClip [_ZClip]
        
            // Debug
            // <None>
        
            // --------------------------------------------------
            // Pass
        
            HLSLPROGRAM
        
            // Pragmas
            #pragma multi_compile _ DOTS_INSTANCING_ON
        #pragma instancing_options renderinglayer
        #pragma target 4.5
        #pragma vertex Vert
        #pragma fragment Frag
        #pragma only_renderers d3d11 playstation xboxone xboxseries vulkan metal switch
        #pragma multi_compile_instancing
        
            // Keywords
            #pragma shader_feature_local _ _ALPHATEST_ON
        #pragma shader_feature _ _SURFACE_TYPE_TRANSPARENT
        #pragma shader_feature_local _ _DOUBLESIDED_ON
        #pragma shader_feature_local _ _ADD_PRECOMPUTED_VELOCITY
        #pragma shader_feature_local _ _TRANSPARENT_WRITES_MOTION_VEC
        #pragma shader_feature_local_fragment _ _ENABLE_FOG_ON_TRANSPARENT
        #pragma multi_compile _ LOD_FADE_CROSSFADE
        #pragma shader_feature_local_fragment _ _DISABLE_DECALS
        #pragma shader_feature_local_raytracing _ _DISABLE_DECALS
        #pragma shader_feature_local_fragment _ _DISABLE_SSR
        #pragma shader_feature_local_raytracing _ _DISABLE_SSR
        #pragma shader_feature_local_fragment _ _DISABLE_SSR_TRANSPARENT
        #pragma shader_feature_local_raytracing _ _DISABLE_SSR_TRANSPARENT
        #pragma shader_feature_local _ _REFRACTION_PLANE _REFRACTION_SPHERE _REFRACTION_THIN
            // GraphKeywords: <None>
        
            // For custom interpolators to inject a substruct definition before FragInputs definition,
            // allowing for FragInputs to capture CI's intended for ShaderGraph's SDI.
            struct CustomInterpolators
        {
        };
        #define USE_CUSTOMINTERP_SUBSTRUCT
        
        
        
            // TODO: Merge FragInputsVFX substruct with CustomInterpolators.
        	#ifdef HAVE_VFX_MODIFICATION
        	struct FragInputsVFX
            {
                /* WARNING: $splice Could not find named fragment 'FragInputsVFX' */
            };
            #endif
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/GeometricTools.hlsl" // Required by Tessellation.hlsl
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Tessellation.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl" // Required to be include before we include properties as it define DECLARE_STACK_CB
            // Always include Shader Graph version
            // Always include last to avoid double macros
            #include "Packages/com.unity.shadergraph/ShaderGraphLibrary/Functions.hlsl" // Need to be here for Gradient struct definition
        
            // --------------------------------------------------
            // Defines
        
            // Attribute
            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TANGENT
            #define ATTRIBUTES_NEED_TEXCOORD0
            #define VARYINGS_NEED_TEXCOORD0
        
            #define HAVE_MESH_MODIFICATION
        
            //Strip down the FragInputs.hlsl (on graphics), so we can only optimize the interpolators we use.
            //if by accident something requests contents of FragInputs.hlsl, it will be caught as a compiler error
            //Frag inputs stripping is only enabled when FRAG_INPUTS_ENABLE_STRIPPING is set
            #if !defined(SHADER_STAGE_RAY_TRACING) && SHADERPASS != SHADERPASS_RAYTRACING_GBUFFER && SHADERPASS != SHADERPASS_FULL_SCREEN_DEBUG
            #define FRAG_INPUTS_ENABLE_STRIPPING
            #endif
            #define FRAG_INPUTS_USE_TEXCOORD0
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
        
        
        
            #define SHADERPASS SHADERPASS_SHADOWS
        
        
            // Following two define are a workaround introduce in 10.1.x for RaytracingQualityNode
            // The ShaderGraph don't support correctly migration of this node as it serialize all the node data
            // in the json file making it impossible to uprgrade. Until we get a fix, we do a workaround here
            // to still allow us to rename the field and keyword of this node without breaking existing code.
            #ifdef RAYTRACING_SHADER_GRAPH_DEFAULT
            #define RAYTRACING_SHADER_GRAPH_HIGH
            #endif
        
            #ifdef RAYTRACING_SHADER_GRAPH_RAYTRACED
            #define RAYTRACING_SHADER_GRAPH_LOW
            #endif
            // end
        
            #ifndef SHADER_UNLIT
            // We need isFrontFace when using double sided - it is not required for unlit as in case of unlit double sided only drive the cullmode
            // VARYINGS_NEED_CULLFACE can be define by VaryingsMeshToPS.FaceSign input if a IsFrontFace Node is included in the shader graph.
            #if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
                #define VARYINGS_NEED_CULLFACE
            #endif
            #endif
        
            // Specific Material Define
        #define _MATERIAL_FEATURE_TRANSMISSION 1
        #define _SPECULAR_OCCLUSION_FROM_AO 1
        #define _ENERGY_CONSERVING_SPECULAR 1
        
        // If we use subsurface scattering, enable output split lighting (for forward pass)
        #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
            #define OUTPUT_SPLIT_LIGHTING
        #endif
        
        // This shader support recursive rendering for raytracing
        #define HAVE_RECURSIVE_RENDERING
        
        // In Path Tracing, For all single-sided, refractive materials, we want to force a thin refraction model
        #if (SHADERPASS == SHADERPASS_PATH_TRACING) && !defined(_DOUBLESIDED_ON) && (defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE))
            #undef  _REFRACTION_PLANE
            #undef  _REFRACTION_SPHERE
            #define _REFRACTION_THIN
        #endif
            // Caution: we can use the define SHADER_UNLIT onlit after the above Material include as it is the Unlit template who define it
        
            // To handle SSR on transparent correctly with a possibility to enable/disable it per framesettings
            // we should have a code like this:
            // if !defined(_DISABLE_SSR_TRANSPARENT)
            // pragma multi_compile _ WRITE_NORMAL_BUFFER
            // endif
            // i.e we enable the multicompile only if we can receive SSR or not, and then C# code drive
            // it based on if SSR transparent in frame settings and not (and stripper can strip it).
            // this is currently not possible with our current preprocessor as _DISABLE_SSR_TRANSPARENT is a keyword not a define
            // so instead we used this and chose to pay the extra cost of normal write even if SSR transaprent is disabled.
            // Ideally the shader graph generator should handle it but condition below can't be handle correctly for now.
            #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
            #if !defined(_DISABLE_SSR_TRANSPARENT) && !defined(SHADER_UNLIT)
                #define WRITE_NORMAL_BUFFER
            #endif
            #endif
        
            #ifndef DEBUG_DISPLAY
                // In case of opaque we don't want to perform the alpha test, it is done in depth prepass and we use depth equal for ztest (setup from UI)
                // Don't do it with debug display mode as it is possible there is no depth prepass in this case
                #if !defined(_SURFACE_TYPE_TRANSPARENT)
                    #if SHADERPASS == SHADERPASS_FORWARD
                    #define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
                    #elif SHADERPASS == SHADERPASS_GBUFFER
                    #define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
                    #endif
                #endif
            #endif
        
            // Define _DEFERRED_CAPABLE_MATERIAL for shader capable to run in deferred pass
            #if defined(SHADER_LIT) && !defined(_SURFACE_TYPE_TRANSPARENT)
                #define _DEFERRED_CAPABLE_MATERIAL
            #endif
        
            // Translate transparent motion vector define
            #if defined(_TRANSPARENT_WRITES_MOTION_VEC) && defined(_SURFACE_TYPE_TRANSPARENT)
                #define _WRITE_TRANSPARENT_MOTION_VECTOR
            #endif
        
            // -- Graph Properties
            CBUFFER_START(UnityPerMaterial)
        float4 _DiffusionProfileAsset;
        float _DiffusionProfileHash;
        float4 _TrunkBaseColor;
        float4 _BarkBaseColor;
        float _Backface_Thickness_Mask_Threshold;
        float2 _Backface_Thickness_Mask_Remap;
        float _Backface_Brightness;
        float _Cross_Backface_Mask_Power;
        float _Backface_Saturation;
        float4 _HealthyColor;
        float4 _DryColor;
        float _AlphaCutoff;
        float _AlphaShadowThreshold;
        float4 _BaseColorMap_TexelSize;
        float4 _TilingOffset;
        float _HealthyandDryColorNoisePower;
        float4 _NormalMap_TexelSize;
        float _NormalScale;
        float _AORemapMax;
        float _SmoothnessRemapMax;
        float4 _Mask_TexelSize;
        float _Thickness;
        float _WindNormalInfluence;
        float4 _VertexNormalMultiply;
        float _ColorNoiseTilling;
        float _Trunk_Normal_Scale;
        float _Global_Base_Brightness;
        float _Trunk_Smoothness_Remap_Max;
        float4 _EmissionColor;
        float _UseShadowThreshold;
        float4 _DoubleSidedConstants;
        float _BlendMode;
        float _EnableBlendModePreserveSpecularLighting;
        float _RayTracing;
        float _RefractionModel;
        CBUFFER_END
        
        
        // Object and Global properties
        SAMPLER(SamplerState_Linear_Repeat);
        SAMPLER(SamplerState_Linear_Repeat_Aniso8);
        TEXTURE2D(_BaseColorMap);
        SAMPLER(sampler_BaseColorMap);
        TEXTURE2D(_NormalMap);
        SAMPLER(sampler_NormalMap);
        TEXTURE2D(_Mask);
        SAMPLER(sampler_Mask);
        
            // -- Property used by ScenePickingPass
            #ifdef SCENEPICKINGPASS
            float4 _SelectionID;
            #endif
        
            // -- Properties used by SceneSelectionPass
            #ifdef SCENESELECTIONPASS
            int _ObjectId;
            int _PassValue;
            #endif
        
            // Includes
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
        #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
        	// GraphIncludes: <None>
        
            // --------------------------------------------------
            // Structs and Packing
        
            struct AttributesMesh
        {
             float3 positionOS : POSITION;
             float3 normalOS : NORMAL;
             float4 tangentOS : TANGENT;
             float4 uv0 : TEXCOORD0;
            #if UNITY_ANY_INSTANCING_ENABLED
             uint instanceID : INSTANCEID_SEMANTIC;
            #endif
        };
        struct VaryingsMeshToPS
        {
            SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
             float4 texCoord0;
            #if UNITY_ANY_INSTANCING_ENABLED
             uint instanceID : CUSTOM_INSTANCE_ID;
            #endif
        };
        struct VertexDescriptionInputs
        {
             float3 ObjectSpaceNormal;
             float3 ObjectSpaceTangent;
             float3 ObjectSpacePosition;
        };
        struct SurfaceDescriptionInputs
        {
             float4 uv0;
        };
        struct PackedVaryingsMeshToPS
        {
            SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
             float4 texCoord0 : INTERP0;
            #if UNITY_ANY_INSTANCING_ENABLED
             uint instanceID : CUSTOM_INSTANCE_ID;
            #endif
        };
        
            PackedVaryingsMeshToPS PackVaryingsMeshToPS (VaryingsMeshToPS input)
        {
            PackedVaryingsMeshToPS output;
            ZERO_INITIALIZE(PackedVaryingsMeshToPS, output);
            output.positionCS = input.positionCS;
            output.texCoord0.xyzw = input.texCoord0;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif
            return output;
        }
        
        VaryingsMeshToPS UnpackVaryingsMeshToPS (PackedVaryingsMeshToPS input)
        {
            VaryingsMeshToPS output;
            output.positionCS = input.positionCS;
            output.texCoord0 = input.texCoord0.xyzw;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif
            return output;
        }
        
        
            // --------------------------------------------------
            // Graph
        
        
            // Graph Functions
            
        void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
        {
            Out = UV * Tiling + Offset;
        }
        
            // Graph Vertex
            struct VertexDescription
        {
            float3 Position;
            float3 Normal;
            float3 Tangent;
        };
        
        VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
        {
            VertexDescription description = (VertexDescription)0;
            description.Position = IN.ObjectSpacePosition;
            description.Normal = IN.ObjectSpaceNormal;
            description.Tangent = IN.ObjectSpaceTangent;
            return description;
        }
        
            // Graph Pixel
            struct SurfaceDescription
        {
            float Alpha;
            float AlphaClipThreshold;
            float AlphaClipThresholdShadow;
            float DiffusionProfileHash;
        };
        
        SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
        {
            SurfaceDescription surface = (SurfaceDescription)0;
            UnityTexture2D _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_BaseColorMap);
            float4 _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4 = _TilingOffset;
            float _Split_60538633130155809820b3185c81057f_R_1_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[0];
            float _Split_60538633130155809820b3185c81057f_G_2_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[1];
            float _Split_60538633130155809820b3185c81057f_B_3_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[2];
            float _Split_60538633130155809820b3185c81057f_A_4_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[3];
            float2 _Vector2_83b2ea7a32ab548fb8c20dce14204561_Out_0_Vector2 = float2(_Split_60538633130155809820b3185c81057f_R_1_Float, _Split_60538633130155809820b3185c81057f_G_2_Float);
            float2 _Vector2_188e122ac0c7888f9f5fbde73f9edd75_Out_0_Vector2 = float2(_Split_60538633130155809820b3185c81057f_B_3_Float, _Split_60538633130155809820b3185c81057f_A_4_Float);
            float2 _TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2;
            Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_83b2ea7a32ab548fb8c20dce14204561_Out_0_Vector2, _Vector2_188e122ac0c7888f9f5fbde73f9edd75_Out_0_Vector2, _TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2);
            float4 _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.tex, _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.samplerstate, _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_R_4_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.r;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_G_5_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.g;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_B_6_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.b;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_A_7_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.a;
            float _Property_067d68a770a25e8f978ca090306a96d8_Out_0_Float = _AlphaCutoff;
            float _Property_4b59dc86107847d5b565cde1e47efb8f_Out_0_Float = _AlphaShadowThreshold;
            surface.Alpha = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_A_7_Float;
            surface.AlphaClipThreshold = _Property_067d68a770a25e8f978ca090306a96d8_Out_0_Float;
            surface.AlphaClipThresholdShadow = _Property_4b59dc86107847d5b565cde1e47efb8f_Out_0_Float;
            surface.DiffusionProfileHash = _DiffusionProfileHash;
            return surface;
        }
        
            // --------------------------------------------------
            // Build Graph Inputs
            #ifdef HAVE_VFX_MODIFICATION
            #define VFX_SRP_ATTRIBUTES AttributesMesh
            #define VaryingsMeshType VaryingsMeshToPS
            #define VFX_SRP_VARYINGS VaryingsMeshType
            #define VFX_SRP_SURFACE_INPUTS FragInputs
            #endif
            
        VertexDescriptionInputs AttributesMeshToVertexDescriptionInputs(AttributesMesh input)
        {
            VertexDescriptionInputs output;
            ZERO_INITIALIZE(VertexDescriptionInputs, output);
        
            output.ObjectSpaceNormal =                          input.normalOS;
            output.ObjectSpaceTangent =                         input.tangentOS.xyz;
            output.ObjectSpacePosition =                        input.positionOS;
        
            return output;
        }
        
        VertexDescription GetVertexDescription(AttributesMesh input, float3 timeParameters
        #ifdef HAVE_VFX_MODIFICATION
            , AttributesElement element
        #endif
        )
        {
            // build graph inputs
            VertexDescriptionInputs vertexDescriptionInputs = AttributesMeshToVertexDescriptionInputs(input);
            // Override time parameters with used one (This is required to correctly handle motion vectors for vertex animation based on time)
        
            // evaluate vertex graph
        #ifdef HAVE_VFX_MODIFICATION
            GraphProperties properties;
            ZERO_INITIALIZE(GraphProperties, properties);
        
            // Fetch the vertex graph properties for the particle instance.
            GetElementVertexProperties(element, properties);
        
            VertexDescription vertexDescription = VertexDescriptionFunction(vertexDescriptionInputs, properties);
        #else
            VertexDescription vertexDescription = VertexDescriptionFunction(vertexDescriptionInputs);
        #endif
            return vertexDescription;
        
        }
        
        AttributesMesh ApplyMeshModification(AttributesMesh input, float3 timeParameters
        #ifdef USE_CUSTOMINTERP_SUBSTRUCT
            #ifdef TESSELLATION_ON
            , inout VaryingsMeshToDS varyings
            #else
            , inout VaryingsMeshToPS varyings
            #endif
        #endif
        #ifdef HAVE_VFX_MODIFICATION
                , AttributesElement element
        #endif
            )
        {
            VertexDescription vertexDescription = GetVertexDescription(input, timeParameters
        #ifdef HAVE_VFX_MODIFICATION
                , element
        #endif
            );
        
            // copy graph output to the results
            input.positionOS = vertexDescription.Position;
            input.normalOS = vertexDescription.Normal;
            input.tangentOS.xyz = vertexDescription.Tangent;
        
            
        
            return input;
        }
        
        #if defined(_ADD_CUSTOM_VELOCITY) // For shader graph custom velocity
        // Return precomputed Velocity in object space
        float3 GetCustomVelocity(AttributesMesh input
        #ifdef HAVE_VFX_MODIFICATION
            , AttributesElement element
        #endif
        )
        {
            VertexDescription vertexDescription = GetVertexDescription(input, _TimeParameters.xyz
        #ifdef HAVE_VFX_MODIFICATION
                , element
        #endif
            );
            return vertexDescription.CustomVelocity;
        }
        #endif
        
        FragInputs BuildFragInputs(VaryingsMeshToPS input)
        {
            FragInputs output;
            ZERO_INITIALIZE(FragInputs, output);
        
            // Init to some default value to make the computer quiet (else it output 'divide by zero' warning even if value is not used).
            // TODO: this is a really poor workaround, but the variable is used in a bunch of places
            // to compute normals which are then passed on elsewhere to compute other values...
            output.tangentToWorld = k_identity3x3;
            output.positionSS = input.positionCS;       // input.positionCS is SV_Position
        
            output.texCoord0 =                  input.texCoord0;
        
        #ifdef HAVE_VFX_MODIFICATION
            // FragInputs from VFX come from two places: Interpolator or CBuffer.
        #if VFX_USE_GRAPH_VALUES
            uint instanceActiveIndex = asuint(UNITY_ACCESS_INSTANCED_PROP(PerInstance, _InstanceActiveIndex));
            /* WARNING: $splice Could not find named fragment 'VFXLoadGraphValues' */
        #endif
        
            /* WARNING: $splice Could not find named fragment 'VFXSetFragInputs' */
        
        #endif
        
            // splice point to copy custom interpolator fields from varyings to frag inputs
            
        
            return output;
        }
        
        // existing HDRP code uses the combined function to go directly from packed to frag inputs
        FragInputs UnpackVaryingsMeshToFragInputs(PackedVaryingsMeshToPS input)
        {
            UNITY_SETUP_INSTANCE_ID(input);
        #if defined(HAVE_VFX_MODIFICATION) && defined(UNITY_INSTANCING_ENABLED)
            unity_InstanceID = input.instanceID;
        #endif
            VaryingsMeshToPS unpacked = UnpackVaryingsMeshToPS(input);
            return BuildFragInputs(unpacked);
        }
            SurfaceDescriptionInputs FragInputsToSurfaceDescriptionInputs(FragInputs input, float3 viewWS)
        {
            SurfaceDescriptionInputs output;
            ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
        
            #if defined(SHADER_STAGE_RAY_TRACING)
            #else
            #endif
        
        #if UNITY_UV_STARTS_AT_TOP
        #else
        #endif
        
        
            output.uv0 =                                        input.texCoord0;
        
            // splice point to copy frag inputs custom interpolator pack into the SDI
            
        
            return output;
        }
        
            // --------------------------------------------------
            // Build Surface Data (Specific Material)
        
        void ApplyDecalToSurfaceDataNoNormal(DecalSurfaceData decalSurfaceData, inout SurfaceData surfaceData);
        
        void ApplyDecalAndGetNormal(FragInputs fragInputs, PositionInputs posInput, SurfaceDescription surfaceDescription,
            inout SurfaceData surfaceData)
        {
            float3 doubleSidedConstants = GetDoubleSidedConstants();
        
        #ifdef DECAL_NORMAL_BLENDING
            // SG nodes don't ouptut surface gradients, so if decals require surf grad blending, we have to convert
            // the normal to gradient before applying the decal. We then have to resolve the gradient back to world space
            float3 normalTS;
        
        
        
            #if HAVE_DECALS
            if (_EnableDecals)
            {
                float alpha = 1.0;
                alpha = surfaceDescription.Alpha;
        
                DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                ApplyDecalToSurfaceNormal(decalSurfaceData, fragInputs.tangentToWorld[2], normalTS);
                ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
            }
            #endif
        
            GetNormalWS_SG(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);
        #else
            // normal delivered to master node
        
            #if HAVE_DECALS
            if (_EnableDecals)
            {
                float alpha = 1.0;
                alpha = surfaceDescription.Alpha;
        
                // Both uses and modifies 'surfaceData.normalWS'.
                DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                ApplyDecalToSurfaceNormal(decalSurfaceData, surfaceData.normalWS.xyz);
                ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
            }
            #endif
        #endif
        }
        void BuildSurfaceData(FragInputs fragInputs, inout SurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
        {
            ZERO_INITIALIZE(SurfaceData, surfaceData);
        
            // specularOcclusion need to be init ahead of decal to quiet the compiler that modify the SurfaceData struct
            // however specularOcclusion can come from the graph, so need to be init here so it can be override.
            surfaceData.specularOcclusion = 1.0;
        
            surfaceData.diffusionProfileHash =      asuint(surfaceDescription.DiffusionProfileHash);
        
            #if defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE) || defined(_REFRACTION_THIN)
                if (_EnableSSRefraction)
                {
        
                    surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                    surfaceDescription.Alpha = 1.0;
                }
                else
                {
                    surfaceData.ior = 1.0;
                    surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                    surfaceData.atDistance = 1.0;
                    surfaceData.transmittanceMask = 0.0;
                    surfaceDescription.Alpha = 1.0;
                }
            #else
                surfaceData.ior = 1.0;
                surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                surfaceData.atDistance = 1.0;
                surfaceData.transmittanceMask = 0.0;
            #endif
        
            // These static material feature allow compile time optimization
            surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
            #ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
            #endif
        
            #ifdef _MATERIAL_FEATURE_TRANSMISSION
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
            #endif
        
            #ifdef _MATERIAL_FEATURE_ANISOTROPY
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
        
                // Initialize the normal to something non-zero to avoid a div-zero warning for anisotropy.
                surfaceData.normalWS = float3(0, 1, 0);
            #endif
        
            #ifdef _MATERIAL_FEATURE_IRIDESCENCE
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
            #endif
        
            #ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
            #endif
        
            #ifdef _MATERIAL_FEATURE_CLEAR_COAT
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
            #endif
        
            #if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                // Require to have setup baseColor
                // Reproduce the energy conservation done in legacy Unity. Not ideal but better for compatibility and users can unchek it
                surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
            #endif
        
            float3 doubleSidedConstants = GetDoubleSidedConstants();
        
            ApplyDecalAndGetNormal(fragInputs, posInput, surfaceDescription, surfaceData);
        
            surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
        
            surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
        
        
            bentNormalWS = surfaceData.normalWS;
        
            surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);
        
            #ifdef DEBUG_DISPLAY
                if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                {
                    // TODO: need to update mip info
                    surfaceData.metallic = 0;
                }
        
                // We need to call ApplyDebugToSurfaceData after filling the surfarcedata and before filling builtinData
                // as it can modify attribute use for static lighting
                ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
            #endif
        
            // By default we use the ambient occlusion with Tri-ace trick (apply outside) for specular occlusion.
            // If user provide bent normal then we process a better term
            #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                // Just use the value passed through via the slot (not active otherwise)
            #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                // If we have bent normal and ambient occlusion, process a specular occlusion
                surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
            #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
                surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
            #endif
        
            #if defined(_ENABLE_GEOMETRIC_SPECULAR_AA) && !defined(SHADER_STAGE_RAY_TRACING)
                surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
            #endif
        }
        
            // --------------------------------------------------
            // Get Surface And BuiltinData
        
            void GetSurfaceAndBuiltinData(FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData RAY_TRACING_OPTIONAL_PARAMETERS)
            {
                // Don't dither if displaced tessellation (we're fading out the displacement instead to match the next LOD)
                #if !defined(SHADER_STAGE_RAY_TRACING) && !defined(_TESSELLATION_DISPLACEMENT)
                #ifdef LOD_FADE_CROSSFADE // enable dithering LOD transition if user select CrossFade transition in LOD group
                LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
                #endif
                #endif
        
                #ifndef SHADER_UNLIT
                #ifdef _DOUBLESIDED_ON
                    float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
                #else
                    float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
                #endif
        
                ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants); // Apply double sided flip on the vertex normal
                #endif // SHADER_UNLIT
        
                SurfaceDescriptionInputs surfaceDescriptionInputs = FragInputsToSurfaceDescriptionInputs(fragInputs, V);
        
                #if defined(HAVE_VFX_MODIFICATION)
                GraphProperties properties;
                ZERO_INITIALIZE(GraphProperties, properties);
        
                GetElementPixelProperties(fragInputs, properties);
        
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs, properties);
                #else
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs);
                #endif
        
                // Perform alpha test very early to save performance (a killed pixel will not sample textures)
                // TODO: split graph evaluation to grab just alpha dependencies first? tricky..
                #ifdef _ALPHATEST_ON
                    float alphaCutoff = surfaceDescription.AlphaClipThreshold;
                    #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
                    // The TransparentDepthPrepass is also used with SSR transparent.
                    // If an artists enable transaprent SSR but not the TransparentDepthPrepass itself, then we use AlphaClipThreshold
                    // otherwise if TransparentDepthPrepass is enabled we use AlphaClipThresholdDepthPrepass
                    #elif SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_POSTPASS
                    // DepthPostpass always use its own alpha threshold
                    alphaCutoff = surfaceDescription.AlphaClipThresholdDepthPostpass;
                    #elif (SHADERPASS == SHADERPASS_SHADOWS) || (SHADERPASS == SHADERPASS_RAYTRACING_VISIBILITY)
                    // If use shadow threshold isn't enable we don't allow any test
                    alphaCutoff = _UseShadowThreshold ? surfaceDescription.AlphaClipThresholdShadow : alphaCutoff;
                    #endif
        
                    GENERIC_ALPHA_TEST(surfaceDescription.Alpha, alphaCutoff);
                #endif
        
                #if !defined(SHADER_STAGE_RAY_TRACING) && _DEPTHOFFSET_ON
                ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
                #endif
        
                #ifndef SHADER_UNLIT
                float3 bentNormalWS;
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS);
        
                #ifdef FRAG_INPUTS_USE_TEXCOORD1
                    float4 lightmapTexCoord1 = fragInputs.texCoord1;
                #else
                    float4 lightmapTexCoord1 = float4(0,0,0,0);
                #endif
        
                #ifdef FRAG_INPUTS_USE_TEXCOORD2
                    float4 lightmapTexCoord2 = fragInputs.texCoord2;
                #else
                    float4 lightmapTexCoord2 = float4(0,0,0,0);
                #endif
        
                // Builtin Data
                // For back lighting we use the oposite vertex normal
                InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], lightmapTexCoord1, lightmapTexCoord2, builtinData);
        
                #else
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData);
        
                ZERO_BUILTIN_INITIALIZE(builtinData); // No call to InitBuiltinData as we don't have any lighting
                builtinData.opacity = surfaceDescription.Alpha;
        
                #if defined(DEBUG_DISPLAY)
                    // Light Layers are currently not used for the Unlit shader (because it is not lit)
                    // But Unlit objects do cast shadows according to their rendering layer mask, which is what we want to
                    // display in the light layers visualization mode, therefore we need the renderingLayers
                    builtinData.renderingLayers = GetMeshRenderingLightLayer();
                #endif
        
                #endif // SHADER_UNLIT
        
                #ifdef _ALPHATEST_ON
                    // Used for sharpening by alpha to mask - Alpha to covertage is only used with depth only and forward pass (no shadow pass, no transparent pass)
                    builtinData.alphaClipTreshold = alphaCutoff;
                #endif
        
                // override sampleBakedGI - not used by Unlit
        
        
                // Note this will not fully work on transparent surfaces (can check with _SURFACE_TYPE_TRANSPARENT define)
                // We will always overwrite vt feeback with the nearest. So behind transparent surfaces vt will not be resolved
                // This is a limitation of the current MRT approach.
                #ifdef UNITY_VIRTUAL_TEXTURING
                #endif
        
                #if _DEPTHOFFSET_ON
                builtinData.depthOffset = surfaceDescription.DepthOffset;
                #endif
        
                // TODO: We should generate distortion / distortionBlur for non distortion pass
                #if (SHADERPASS == SHADERPASS_DISTORTION)
                builtinData.distortion = surfaceDescription.Distortion;
                builtinData.distortionBlur = surfaceDescription.DistortionBlur;
                #endif
        
                #ifndef SHADER_UNLIT
                // PostInitBuiltinData call ApplyDebugToBuiltinData
                PostInitBuiltinData(V, posInput, surfaceData, builtinData);
                #else
                ApplyDebugToBuiltinData(builtinData);
                #endif
        
                RAY_TRACING_OPTIONAL_ALPHA_TEST_PASS
            }
        
            // --------------------------------------------------
            // Main
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPassDepthOnly.hlsl"
        
            // --------------------------------------------------
            // Visual Effect Vertex Invocations
        
        	#ifdef HAVE_VFX_MODIFICATION
        	#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/VisualEffectVertex.hlsl"
        	#endif
        
            ENDHLSL
        }
        Pass
        {
            Name "META"
            Tags
            {
                "LightMode" = "META"
            }
        
            // Render State
            Cull Off
        
            // Debug
            // <None>
        
            // --------------------------------------------------
            // Pass
        
            HLSLPROGRAM
        
            // Pragmas
            #pragma multi_compile _ DOTS_INSTANCING_ON
        #pragma instancing_options renderinglayer
        #pragma target 4.5
        #pragma vertex Vert
        #pragma fragment Frag
        #pragma only_renderers d3d11 playstation xboxone xboxseries vulkan metal switch
        #pragma multi_compile_instancing
        
            // Keywords
            #pragma shader_feature _ EDITOR_VISUALIZATION
        #pragma shader_feature_local _ _ALPHATEST_ON
        #pragma shader_feature _ _SURFACE_TYPE_TRANSPARENT
        #pragma shader_feature_local _ _DOUBLESIDED_ON
        #pragma shader_feature_local _ _ADD_PRECOMPUTED_VELOCITY
        #pragma shader_feature_local _ _TRANSPARENT_WRITES_MOTION_VEC
        #pragma shader_feature_local_fragment _ _ENABLE_FOG_ON_TRANSPARENT
        #pragma multi_compile _ LOD_FADE_CROSSFADE
        #pragma shader_feature_local_fragment _ _DISABLE_DECALS
        #pragma shader_feature_local_raytracing _ _DISABLE_DECALS
        #pragma shader_feature_local_fragment _ _DISABLE_SSR
        #pragma shader_feature_local_raytracing _ _DISABLE_SSR
        #pragma shader_feature_local_fragment _ _DISABLE_SSR_TRANSPARENT
        #pragma shader_feature_local_raytracing _ _DISABLE_SSR_TRANSPARENT
        #pragma shader_feature_local _ _REFRACTION_PLANE _REFRACTION_SPHERE _REFRACTION_THIN
            // GraphKeywords: <None>
        
            // For custom interpolators to inject a substruct definition before FragInputs definition,
            // allowing for FragInputs to capture CI's intended for ShaderGraph's SDI.
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPreInclude' */
        
        
            // TODO: Merge FragInputsVFX substruct with CustomInterpolators.
        	#ifdef HAVE_VFX_MODIFICATION
        	struct FragInputsVFX
            {
                /* WARNING: $splice Could not find named fragment 'FragInputsVFX' */
            };
            #endif
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/GeometricTools.hlsl" // Required by Tessellation.hlsl
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Tessellation.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl" // Required to be include before we include properties as it define DECLARE_STACK_CB
            // Always include Shader Graph version
            // Always include last to avoid double macros
            #include "Packages/com.unity.shadergraph/ShaderGraphLibrary/Functions.hlsl" // Need to be here for Gradient struct definition
        
            // --------------------------------------------------
            // Defines
        
            // Attribute
            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TEXCOORD0
            #define ATTRIBUTES_NEED_TEXCOORD1
            #define ATTRIBUTES_NEED_TEXCOORD2
            #define ATTRIBUTES_NEED_TEXCOORD3
            #define VARYINGS_NEED_POSITION_WS
            #define VARYINGS_NEED_POSITIONPREDISPLACEMENT_WS
            #define VARYINGS_NEED_TEXCOORD0
            #define VARYINGS_NEED_TEXCOORD1
            #define VARYINGS_NEED_TEXCOORD2
            #define VARYINGS_NEED_TEXCOORD3
        
            #define HAVE_MESH_MODIFICATION
        
            //Strip down the FragInputs.hlsl (on graphics), so we can only optimize the interpolators we use.
            //if by accident something requests contents of FragInputs.hlsl, it will be caught as a compiler error
            //Frag inputs stripping is only enabled when FRAG_INPUTS_ENABLE_STRIPPING is set
            #if !defined(SHADER_STAGE_RAY_TRACING) && SHADERPASS != SHADERPASS_RAYTRACING_GBUFFER && SHADERPASS != SHADERPASS_FULL_SCREEN_DEBUG
            #define FRAG_INPUTS_ENABLE_STRIPPING
            #endif
            #define FRAG_INPUTS_USE_TEXCOORD0
            #define FRAG_INPUTS_USE_TEXCOORD1
            #define FRAG_INPUTS_USE_TEXCOORD2
            #define FRAG_INPUTS_USE_TEXCOORD3
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
        
        
        
            #define SHADERPASS SHADERPASS_LIGHT_TRANSPORT
        #define RAYTRACING_SHADER_GRAPH_DEFAULT
        #define SCENEPICKINGPASS 1
        
        
            // Following two define are a workaround introduce in 10.1.x for RaytracingQualityNode
            // The ShaderGraph don't support correctly migration of this node as it serialize all the node data
            // in the json file making it impossible to uprgrade. Until we get a fix, we do a workaround here
            // to still allow us to rename the field and keyword of this node without breaking existing code.
            #ifdef RAYTRACING_SHADER_GRAPH_DEFAULT
            #define RAYTRACING_SHADER_GRAPH_HIGH
            #endif
        
            #ifdef RAYTRACING_SHADER_GRAPH_RAYTRACED
            #define RAYTRACING_SHADER_GRAPH_LOW
            #endif
            // end
        
            #ifndef SHADER_UNLIT
            // We need isFrontFace when using double sided - it is not required for unlit as in case of unlit double sided only drive the cullmode
            // VARYINGS_NEED_CULLFACE can be define by VaryingsMeshToPS.FaceSign input if a IsFrontFace Node is included in the shader graph.
            #if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
                #define VARYINGS_NEED_CULLFACE
            #endif
            #endif
        
            // Specific Material Define
        #define _MATERIAL_FEATURE_TRANSMISSION 1
        #define _AMBIENT_OCCLUSION 1
        #define _SPECULAR_OCCLUSION_FROM_AO 1
        #define _ENERGY_CONSERVING_SPECULAR 1
        
        // If we use subsurface scattering, enable output split lighting (for forward pass)
        #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
            #define OUTPUT_SPLIT_LIGHTING
        #endif
        
        // This shader support recursive rendering for raytracing
        #define HAVE_RECURSIVE_RENDERING
        
        // In Path Tracing, For all single-sided, refractive materials, we want to force a thin refraction model
        #if (SHADERPASS == SHADERPASS_PATH_TRACING) && !defined(_DOUBLESIDED_ON) && (defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE))
            #undef  _REFRACTION_PLANE
            #undef  _REFRACTION_SPHERE
            #define _REFRACTION_THIN
        #endif
            // Caution: we can use the define SHADER_UNLIT onlit after the above Material include as it is the Unlit template who define it
        
            // To handle SSR on transparent correctly with a possibility to enable/disable it per framesettings
            // we should have a code like this:
            // if !defined(_DISABLE_SSR_TRANSPARENT)
            // pragma multi_compile _ WRITE_NORMAL_BUFFER
            // endif
            // i.e we enable the multicompile only if we can receive SSR or not, and then C# code drive
            // it based on if SSR transparent in frame settings and not (and stripper can strip it).
            // this is currently not possible with our current preprocessor as _DISABLE_SSR_TRANSPARENT is a keyword not a define
            // so instead we used this and chose to pay the extra cost of normal write even if SSR transaprent is disabled.
            // Ideally the shader graph generator should handle it but condition below can't be handle correctly for now.
            #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
            #if !defined(_DISABLE_SSR_TRANSPARENT) && !defined(SHADER_UNLIT)
                #define WRITE_NORMAL_BUFFER
            #endif
            #endif
        
            #ifndef DEBUG_DISPLAY
                // In case of opaque we don't want to perform the alpha test, it is done in depth prepass and we use depth equal for ztest (setup from UI)
                // Don't do it with debug display mode as it is possible there is no depth prepass in this case
                #if !defined(_SURFACE_TYPE_TRANSPARENT)
                    #if SHADERPASS == SHADERPASS_FORWARD
                    #define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
                    #elif SHADERPASS == SHADERPASS_GBUFFER
                    #define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
                    #endif
                #endif
            #endif
        
            // Define _DEFERRED_CAPABLE_MATERIAL for shader capable to run in deferred pass
            #if defined(SHADER_LIT) && !defined(_SURFACE_TYPE_TRANSPARENT)
                #define _DEFERRED_CAPABLE_MATERIAL
            #endif
        
            // Translate transparent motion vector define
            #if defined(_TRANSPARENT_WRITES_MOTION_VEC) && defined(_SURFACE_TYPE_TRANSPARENT)
                #define _WRITE_TRANSPARENT_MOTION_VECTOR
            #endif
        
            // -- Graph Properties
            CBUFFER_START(UnityPerMaterial)
        float4 _DiffusionProfileAsset;
        float _DiffusionProfileHash;
        float4 _TrunkBaseColor;
        float4 _BarkBaseColor;
        float _Backface_Thickness_Mask_Threshold;
        float2 _Backface_Thickness_Mask_Remap;
        float _Backface_Brightness;
        float _Cross_Backface_Mask_Power;
        float _Backface_Saturation;
        float4 _HealthyColor;
        float4 _DryColor;
        float _AlphaCutoff;
        float _AlphaShadowThreshold;
        float4 _BaseColorMap_TexelSize;
        float4 _TilingOffset;
        float _HealthyandDryColorNoisePower;
        float4 _NormalMap_TexelSize;
        float _NormalScale;
        float _AORemapMax;
        float _SmoothnessRemapMax;
        float4 _Mask_TexelSize;
        float _Thickness;
        float _WindNormalInfluence;
        float4 _VertexNormalMultiply;
        float _ColorNoiseTilling;
        float _Trunk_Normal_Scale;
        float _Global_Base_Brightness;
        float _Trunk_Smoothness_Remap_Max;
        float4 _EmissionColor;
        float _UseShadowThreshold;
        float4 _DoubleSidedConstants;
        float _BlendMode;
        float _EnableBlendModePreserveSpecularLighting;
        float _RayTracing;
        float _RefractionModel;
        CBUFFER_END
        
        
        // Object and Global properties
        SAMPLER(SamplerState_Linear_Repeat);
        SAMPLER(SamplerState_Linear_Repeat_Aniso8);
        TEXTURE2D(_BaseColorMap);
        SAMPLER(sampler_BaseColorMap);
        TEXTURE2D(_NormalMap);
        SAMPLER(sampler_NormalMap);
        TEXTURE2D(_Mask);
        SAMPLER(sampler_Mask);
        
            // -- Property used by ScenePickingPass
            #ifdef SCENEPICKINGPASS
            float4 _SelectionID;
            #endif
        
            // -- Properties used by SceneSelectionPass
            #ifdef SCENESELECTIONPASS
            int _ObjectId;
            int _PassValue;
            #endif
        
            // Includes
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/PickingSpaceTransforms.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
        #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Hashes.hlsl"
        
            // --------------------------------------------------
            // Structs and Packing
        
            struct AttributesMesh
        {
             float3 positionOS : POSITION;
             float3 normalOS : NORMAL;
             float4 uv0 : TEXCOORD0;
             float4 uv1 : TEXCOORD1;
             float4 uv2 : TEXCOORD2;
             float4 uv3 : TEXCOORD3;
            #if UNITY_ANY_INSTANCING_ENABLED
             uint instanceID : INSTANCEID_SEMANTIC;
            #endif
        };
        struct VaryingsMeshToPS
        {
            SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
             float3 positionRWS;
             float3 positionPredisplacementRWS;
             float4 texCoord0;
             float4 texCoord1;
             float4 texCoord2;
             float4 texCoord3;
            #if UNITY_ANY_INSTANCING_ENABLED
             uint instanceID : CUSTOM_INSTANCE_ID;
            #endif
        };
        struct VertexDescriptionInputs
        {
        };
        struct SurfaceDescriptionInputs
        {
             float3 TangentSpaceNormal;
             float3 AbsoluteWorldSpacePosition;
             float4 uv0;
        };
        struct PackedVaryingsMeshToPS
        {
            SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
             float4 texCoord0 : INTERP0;
             float4 texCoord1 : INTERP1;
             float4 texCoord2 : INTERP2;
             float4 texCoord3 : INTERP3;
             float3 positionRWS : INTERP4;
             float3 positionPredisplacementRWS : INTERP5;
            #if UNITY_ANY_INSTANCING_ENABLED
             uint instanceID : CUSTOM_INSTANCE_ID;
            #endif
        };
        
            PackedVaryingsMeshToPS PackVaryingsMeshToPS (VaryingsMeshToPS input)
        {
            PackedVaryingsMeshToPS output;
            ZERO_INITIALIZE(PackedVaryingsMeshToPS, output);
            output.positionCS = input.positionCS;
            output.texCoord0.xyzw = input.texCoord0;
            output.texCoord1.xyzw = input.texCoord1;
            output.texCoord2.xyzw = input.texCoord2;
            output.texCoord3.xyzw = input.texCoord3;
            output.positionRWS.xyz = input.positionRWS;
            output.positionPredisplacementRWS.xyz = input.positionPredisplacementRWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif
            return output;
        }
        
        VaryingsMeshToPS UnpackVaryingsMeshToPS (PackedVaryingsMeshToPS input)
        {
            VaryingsMeshToPS output;
            output.positionCS = input.positionCS;
            output.texCoord0 = input.texCoord0.xyzw;
            output.texCoord1 = input.texCoord1.xyzw;
            output.texCoord2 = input.texCoord2.xyzw;
            output.texCoord3 = input.texCoord3.xyzw;
            output.positionRWS = input.positionRWS.xyz;
            output.positionPredisplacementRWS = input.positionPredisplacementRWS.xyz;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif
            return output;
        }
        
        
            // --------------------------------------------------
            // Graph
        
        
            // Graph Functions
            
        void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
        {
            Out = UV * Tiling + Offset;
        }
        
        void Unity_Multiply_float4_float4(float4 A, float4 B, out float4 Out)
        {
            Out = A * B;
        }
        
        void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
        {
            Out = lerp(A, B, T);
        }
        
        float Unity_SimpleNoise_ValueNoise_LegacySine_float (float2 uv)
        {
            float2 i = floor(uv);
            float2 f = frac(uv);
            f = f * f * (3.0 - 2.0 * f);
            uv = abs(frac(uv) - 0.5);
            float2 c0 = i + float2(0.0, 0.0);
            float2 c1 = i + float2(1.0, 0.0);
            float2 c2 = i + float2(0.0, 1.0);
            float2 c3 = i + float2(1.0, 1.0);
            float r0; Hash_LegacySine_2_1_float(c0, r0);
            float r1; Hash_LegacySine_2_1_float(c1, r1);
            float r2; Hash_LegacySine_2_1_float(c2, r2);
            float r3; Hash_LegacySine_2_1_float(c3, r3);
            float bottomOfGrid = lerp(r0, r1, f.x);
            float topOfGrid = lerp(r2, r3, f.x);
            float t = lerp(bottomOfGrid, topOfGrid, f.y);
            return t;
        }
        
        void Unity_SimpleNoise_LegacySine_float(float2 UV, float Scale, out float Out)
        {
            float freq, amp;
            Out = 0.0f;
            freq = pow(2.0, float(0));
            amp = pow(0.5, float(3-0));
            Out += Unity_SimpleNoise_ValueNoise_LegacySine_float(float2(UV.xy*(Scale/freq)))*amp;
            freq = pow(2.0, float(1));
            amp = pow(0.5, float(3-1));
            Out += Unity_SimpleNoise_ValueNoise_LegacySine_float(float2(UV.xy*(Scale/freq)))*amp;
            freq = pow(2.0, float(2));
            amp = pow(0.5, float(3-2));
            Out += Unity_SimpleNoise_ValueNoise_LegacySine_float(float2(UV.xy*(Scale/freq)))*amp;
        }
        
        void Unity_Absolute_float(float In, out float Out)
        {
            Out = abs(In);
        }
        
        void Unity_Power_float(float A, float B, out float Out)
        {
            Out = pow(A, B);
        }
        
        void Unity_Clamp_float(float In, float Min, float Max, out float Out)
        {
            Out = clamp(In, Min, Max);
        }
        
        void Unity_Saturation_float(float3 In, float Saturation, out float3 Out)
        {
            float luma = dot(In, float3(0.2126729, 0.7151522, 0.0721750));
            Out =  luma.xxx + Saturation.xxx * (In - luma.xxx);
        }
        
        void Unity_Blend_Screen_float3(float3 Base, float3 Blend, out float3 Out, float Opacity)
        {
            Out = 1.0 - (1.0 - Blend) * (1.0 - Base);
            Out = lerp(Base, Out, Opacity);
        }
        
        void Unity_Clamp_float3(float3 In, float3 Min, float3 Max, out float3 Out)
        {
            Out = clamp(In, Min, Max);
        }
        
        void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
        {
            Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
        }
        
        void Unity_OneMinus_float(float In, out float Out)
        {
            Out = 1 - In;
        }
        
        void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
        {
            Out = lerp(A, B, T);
        }
        
        void Unity_Multiply_float3_float3(float3 A, float3 B, out float3 Out)
        {
            Out = A * B;
        }
        
        void Unity_Lerp_float(float A, float B, float T, out float Out)
        {
            Out = lerp(A, B, T);
        }
        
        void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
        {
            Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
        }
        
        void Unity_Multiply_float_float(float A, float B, out float Out)
        {
            Out = A * B;
        }
        
            // Graph Vertex
            struct VertexDescription
        {
        };
        
        VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
        {
            VertexDescription description = (VertexDescription)0;
            return description;
        }
        
            // Graph Pixel
            struct SurfaceDescription
        {
            float3 BaseColor;
            float3 Emission;
            float Alpha;
            float AlphaClipThreshold;
            float AlphaClipThresholdShadow;
            float3 BentNormal;
            float Smoothness;
            float Occlusion;
            float3 NormalTS;
            float TransmissionMask;
            float Thickness;
            float DiffusionProfileHash;
        };
        
        SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
        {
            SurfaceDescription surface = (SurfaceDescription)0;
            UnityTexture2D _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_BaseColorMap);
            float4 _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4 = _TilingOffset;
            float _Split_60538633130155809820b3185c81057f_R_1_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[0];
            float _Split_60538633130155809820b3185c81057f_G_2_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[1];
            float _Split_60538633130155809820b3185c81057f_B_3_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[2];
            float _Split_60538633130155809820b3185c81057f_A_4_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[3];
            float2 _Vector2_83b2ea7a32ab548fb8c20dce14204561_Out_0_Vector2 = float2(_Split_60538633130155809820b3185c81057f_R_1_Float, _Split_60538633130155809820b3185c81057f_G_2_Float);
            float2 _Vector2_188e122ac0c7888f9f5fbde73f9edd75_Out_0_Vector2 = float2(_Split_60538633130155809820b3185c81057f_B_3_Float, _Split_60538633130155809820b3185c81057f_A_4_Float);
            float2 _TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2;
            Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_83b2ea7a32ab548fb8c20dce14204561_Out_0_Vector2, _Vector2_188e122ac0c7888f9f5fbde73f9edd75_Out_0_Vector2, _TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2);
            float4 _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.tex, _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.samplerstate, _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_R_4_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.r;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_G_5_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.g;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_B_6_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.b;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_A_7_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.a;
            float4 _Property_d37c4e2cc4f949f581f76dcb73d50e87_Out_0_Vector4 = _BarkBaseColor;
            float4 _Multiply_e4794b5d7e19433599f2b4e150644bea_Out_2_Vector4;
            Unity_Multiply_float4_float4(_SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4, _Property_d37c4e2cc4f949f581f76dcb73d50e87_Out_0_Vector4, _Multiply_e4794b5d7e19433599f2b4e150644bea_Out_2_Vector4);
            float4 _Property_0f3c5f287e8145bc95fd52cfba4b8fcc_Out_0_Vector4 = _TrunkBaseColor;
            float4 _Multiply_2453fa0c275a46cca1a866a080d90ddf_Out_2_Vector4;
            Unity_Multiply_float4_float4(_SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4, _Property_0f3c5f287e8145bc95fd52cfba4b8fcc_Out_0_Vector4, _Multiply_2453fa0c275a46cca1a866a080d90ddf_Out_2_Vector4);
            UnityTexture2D _Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_Mask);
            float4 _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_R_4_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.r;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.g;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_B_6_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.b;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_A_7_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.a;
            float4 _Lerp_9056381ab3034355b45968f0d1ff2f1a_Out_3_Vector4;
            Unity_Lerp_float4(_Multiply_e4794b5d7e19433599f2b4e150644bea_Out_2_Vector4, _Multiply_2453fa0c275a46cca1a866a080d90ddf_Out_2_Vector4, (_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_B_6_Float.xxxx), _Lerp_9056381ab3034355b45968f0d1ff2f1a_Out_3_Vector4);
            float4 _Property_944e0c60198849afb235eb9940da5dd9_Out_0_Vector4 = _DryColor;
            float4 _Property_621f9271d8734c81b9001229b0296656_Out_0_Vector4 = _HealthyColor;
            float _Split_99caf98864a9e980997a02cedd282dd0_R_1_Float = IN.AbsoluteWorldSpacePosition[0];
            float _Split_99caf98864a9e980997a02cedd282dd0_G_2_Float = IN.AbsoluteWorldSpacePosition[1];
            float _Split_99caf98864a9e980997a02cedd282dd0_B_3_Float = IN.AbsoluteWorldSpacePosition[2];
            float _Split_99caf98864a9e980997a02cedd282dd0_A_4_Float = 0;
            float2 _Vector2_ddc95fa04fb4858daf984190322978b9_Out_0_Vector2 = float2(_Split_99caf98864a9e980997a02cedd282dd0_R_1_Float, _Split_99caf98864a9e980997a02cedd282dd0_B_3_Float);
            float _Property_4d778d1ae72a416b96bf6cb1986a7d5d_Out_0_Float = _ColorNoiseTilling;
            float _SimpleNoise_96327065e2b0428f83e25f93c7e5a748_Out_2_Float;
            Unity_SimpleNoise_LegacySine_float(_Vector2_ddc95fa04fb4858daf984190322978b9_Out_0_Vector2, _Property_4d778d1ae72a416b96bf6cb1986a7d5d_Out_0_Float, _SimpleNoise_96327065e2b0428f83e25f93c7e5a748_Out_2_Float);
            float _Absolute_3da7acf58a45403cad1e7c432d78f027_Out_1_Float;
            Unity_Absolute_float(_SimpleNoise_96327065e2b0428f83e25f93c7e5a748_Out_2_Float, _Absolute_3da7acf58a45403cad1e7c432d78f027_Out_1_Float);
            float _Property_0dff529d33cb42e388c9d874effe6e19_Out_0_Float = _HealthyandDryColorNoisePower;
            float _Power_77b7c0eba07f4b9da46f2fa461c49201_Out_2_Float;
            Unity_Power_float(_Absolute_3da7acf58a45403cad1e7c432d78f027_Out_1_Float, _Property_0dff529d33cb42e388c9d874effe6e19_Out_0_Float, _Power_77b7c0eba07f4b9da46f2fa461c49201_Out_2_Float);
            float _Clamp_efb2cde09ec64325a2f78a848b0827b2_Out_3_Float;
            Unity_Clamp_float(_Power_77b7c0eba07f4b9da46f2fa461c49201_Out_2_Float, float(0), float(1), _Clamp_efb2cde09ec64325a2f78a848b0827b2_Out_3_Float);
            float4 _Lerp_b995ffde83d24283ac272745617fa60c_Out_3_Vector4;
            Unity_Lerp_float4(_Property_944e0c60198849afb235eb9940da5dd9_Out_0_Vector4, _Property_621f9271d8734c81b9001229b0296656_Out_0_Vector4, (_Clamp_efb2cde09ec64325a2f78a848b0827b2_Out_3_Float.xxxx), _Lerp_b995ffde83d24283ac272745617fa60c_Out_3_Vector4);
            float4 _Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4;
            Unity_Multiply_float4_float4(_SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4, _Lerp_b995ffde83d24283ac272745617fa60c_Out_3_Vector4, _Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4);
            float _Property_a52cc4db448642208842be98e18796fb_Out_0_Float = _Backface_Saturation;
            float3 _Saturation_1a5be2ae12084c59883f7d315d09cd80_Out_2_Vector3;
            Unity_Saturation_float((_Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4.xyz), _Property_a52cc4db448642208842be98e18796fb_Out_0_Float, _Saturation_1a5be2ae12084c59883f7d315d09cd80_Out_2_Vector3);
            float _Property_547f6c365f204d14a383183448811966_Out_0_Float = _Backface_Brightness;
            float3 _Blend_9d43ee127ca04ec09dd9151a833d8d61_Out_2_Vector3;
            Unity_Blend_Screen_float3(_Saturation_1a5be2ae12084c59883f7d315d09cd80_Out_2_Vector3, (_Property_547f6c365f204d14a383183448811966_Out_0_Float.xxx), _Blend_9d43ee127ca04ec09dd9151a833d8d61_Out_2_Vector3, float(1));
            float3 _Clamp_f7855b2ac55c4d43b25a4a1e56dbbbf7_Out_3_Vector3;
            Unity_Clamp_float3(_Blend_9d43ee127ca04ec09dd9151a833d8d61_Out_2_Vector3, float3(0, 0, 0), float3(1, 1, 1), _Clamp_f7855b2ac55c4d43b25a4a1e56dbbbf7_Out_3_Vector3);
            float2 _Property_b0a46b9c34574501a2f500d2f5745793_Out_0_Vector2 = _Backface_Thickness_Mask_Remap;
            float _Remap_bbbefbf0fbaf41d8a6d07b465d45488f_Out_3_Float;
            Unity_Remap_float(_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_A_7_Float, float2 (0, 1), _Property_b0a46b9c34574501a2f500d2f5745793_Out_0_Vector2, _Remap_bbbefbf0fbaf41d8a6d07b465d45488f_Out_3_Float);
            float _Clamp_6ac81c92e9a64e958055eca61b82e791_Out_3_Float;
            Unity_Clamp_float(_Remap_bbbefbf0fbaf41d8a6d07b465d45488f_Out_3_Float, float(0), float(1), _Clamp_6ac81c92e9a64e958055eca61b82e791_Out_3_Float);
            float _Property_3a1e9cc1507b46b2af88ab75dfc37b44_Out_0_Float = _Backface_Thickness_Mask_Threshold;
            float _Power_1fccfa34ffba46ceac25f1238aa4e1b5_Out_2_Float;
            Unity_Power_float(_Clamp_6ac81c92e9a64e958055eca61b82e791_Out_3_Float, _Property_3a1e9cc1507b46b2af88ab75dfc37b44_Out_0_Float, _Power_1fccfa34ffba46ceac25f1238aa4e1b5_Out_2_Float);
            float _Clamp_e55b4d1f4fda4e97bcfe15cfe9c6fd05_Out_3_Float;
            Unity_Clamp_float(_Power_1fccfa34ffba46ceac25f1238aa4e1b5_Out_2_Float, float(0), float(1), _Clamp_e55b4d1f4fda4e97bcfe15cfe9c6fd05_Out_3_Float);
            float _OneMinus_16a8ddad0aee4e5ca379aef306048984_Out_1_Float;
            Unity_OneMinus_float(_Clamp_e55b4d1f4fda4e97bcfe15cfe9c6fd05_Out_3_Float, _OneMinus_16a8ddad0aee4e5ca379aef306048984_Out_1_Float);
            float3 _Lerp_9c8a6dd2927446309acc26d9f217de99_Out_3_Vector3;
            Unity_Lerp_float3((_Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4.xyz), _Clamp_f7855b2ac55c4d43b25a4a1e56dbbbf7_Out_3_Vector3, (_OneMinus_16a8ddad0aee4e5ca379aef306048984_Out_1_Float.xxx), _Lerp_9c8a6dd2927446309acc26d9f217de99_Out_3_Vector3);
            float _Absolute_98dfaf1178334fc287f9e4d4b5f3a0f0_Out_1_Float;
            Unity_Absolute_float(_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_R_4_Float, _Absolute_98dfaf1178334fc287f9e4d4b5f3a0f0_Out_1_Float);
            float _Property_08b97a5bb158439e9155434b6637ac33_Out_0_Float = _Cross_Backface_Mask_Power;
            float _Power_c8f61d8af16945f9b82731ed18d38dd9_Out_2_Float;
            Unity_Power_float(_Absolute_98dfaf1178334fc287f9e4d4b5f3a0f0_Out_1_Float, _Property_08b97a5bb158439e9155434b6637ac33_Out_0_Float, _Power_c8f61d8af16945f9b82731ed18d38dd9_Out_2_Float);
            float _Clamp_c8b7bf714ebb484d8aa73d545b2f9d59_Out_3_Float;
            Unity_Clamp_float(_Power_c8f61d8af16945f9b82731ed18d38dd9_Out_2_Float, float(0), float(1), _Clamp_c8b7bf714ebb484d8aa73d545b2f9d59_Out_3_Float);
            float3 _Lerp_343d7507e4664bd7bc5108bcf0d55854_Out_3_Vector3;
            Unity_Lerp_float3(_Lerp_9c8a6dd2927446309acc26d9f217de99_Out_3_Vector3, (_Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4.xyz), (_Clamp_c8b7bf714ebb484d8aa73d545b2f9d59_Out_3_Float.xxx), _Lerp_343d7507e4664bd7bc5108bcf0d55854_Out_3_Vector3);
            float3 _Lerp_0d72c41eff034cfaaaf0208f4bf42433_Out_3_Vector3;
            Unity_Lerp_float3((_Lerp_9056381ab3034355b45968f0d1ff2f1a_Out_3_Vector4.xyz), _Lerp_343d7507e4664bd7bc5108bcf0d55854_Out_3_Vector3, (_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float.xxx), _Lerp_0d72c41eff034cfaaaf0208f4bf42433_Out_3_Vector3);
            float _Property_09c643c04af64fb18f3a77b935844ecc_Out_0_Float = _Global_Base_Brightness;
            float3 _Multiply_61b0f4818da94adfa23e13d8e3e376a8_Out_2_Vector3;
            Unity_Multiply_float3_float3(_Lerp_0d72c41eff034cfaaaf0208f4bf42433_Out_3_Vector3, (_Property_09c643c04af64fb18f3a77b935844ecc_Out_0_Float.xxx), _Multiply_61b0f4818da94adfa23e13d8e3e376a8_Out_2_Vector3);
            float3 _Clamp_359788e8ad134650b865e76600af6700_Out_3_Vector3;
            Unity_Clamp_float3(_Multiply_61b0f4818da94adfa23e13d8e3e376a8_Out_2_Vector3, float3(0, 0, 0), float3(1, 1, 1), _Clamp_359788e8ad134650b865e76600af6700_Out_3_Vector3);
            float _Property_067d68a770a25e8f978ca090306a96d8_Out_0_Float = _AlphaCutoff;
            float _Property_4b59dc86107847d5b565cde1e47efb8f_Out_0_Float = _AlphaShadowThreshold;
            float _Property_c35305c7157c4d3ba1db4ba61b2e2ebc_Out_0_Float = _Trunk_Smoothness_Remap_Max;
            float _Property_0edea7916ed7a189a62b0faf2c274601_Out_0_Float = _SmoothnessRemapMax;
            float _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float;
            Unity_Lerp_float(_Property_c35305c7157c4d3ba1db4ba61b2e2ebc_Out_0_Float, _Property_0edea7916ed7a189a62b0faf2c274601_Out_0_Float, _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float, _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float);
            float _Property_48e1c5285b48c78e8af19e38f4bd77f9_Out_0_Float = _AORemapMax;
            UnityTexture2D _Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_NormalMap);
            float4 _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.rgb = UnpackNormal(_SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4);
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_R_4_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.r;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_G_5_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.g;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_B_6_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.b;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_A_7_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.a;
            float _Property_b07156802a1240f7a8c14a272c5f1b36_Out_0_Float = _Trunk_Normal_Scale;
            float _Property_72e436a108ad64868e46d548c585c5f3_Out_0_Float = _NormalScale;
            float _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float;
            Unity_Lerp_float(_Property_b07156802a1240f7a8c14a272c5f1b36_Out_0_Float, _Property_72e436a108ad64868e46d548c585c5f3_Out_0_Float, _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float, _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float);
            float3 _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3;
            Unity_NormalStrength_float((_SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.xyz), _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float, _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3);
            float _Property_2fa2ab76399ae48aaf1180768279e6b9_Out_0_Float = _Thickness;
            float _Multiply_aed8020082acc482b9303a61b01a1a1a_Out_2_Float;
            Unity_Multiply_float_float(_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_A_7_Float, _Property_2fa2ab76399ae48aaf1180768279e6b9_Out_0_Float, _Multiply_aed8020082acc482b9303a61b01a1a1a_Out_2_Float);
            surface.BaseColor = _Clamp_359788e8ad134650b865e76600af6700_Out_3_Vector3;
            surface.Emission = float3(0, 0, 0);
            surface.Alpha = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_A_7_Float;
            surface.AlphaClipThreshold = _Property_067d68a770a25e8f978ca090306a96d8_Out_0_Float;
            surface.AlphaClipThresholdShadow = _Property_4b59dc86107847d5b565cde1e47efb8f_Out_0_Float;
            surface.BentNormal = IN.TangentSpaceNormal;
            surface.Smoothness = _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float;
            surface.Occlusion = _Property_48e1c5285b48c78e8af19e38f4bd77f9_Out_0_Float;
            surface.NormalTS = _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3;
            surface.TransmissionMask = float(1);
            surface.Thickness = _Multiply_aed8020082acc482b9303a61b01a1a1a_Out_2_Float;
            surface.DiffusionProfileHash = _DiffusionProfileHash;
            return surface;
        }
        
            // --------------------------------------------------
            // Build Graph Inputs
            #ifdef HAVE_VFX_MODIFICATION
            #define VFX_SRP_ATTRIBUTES AttributesMesh
            #define VaryingsMeshType VaryingsMeshToPS
            #define VFX_SRP_VARYINGS VaryingsMeshType
            #define VFX_SRP_SURFACE_INPUTS FragInputs
            #endif
            
        VertexDescriptionInputs AttributesMeshToVertexDescriptionInputs(AttributesMesh input)
        {
            VertexDescriptionInputs output;
            ZERO_INITIALIZE(VertexDescriptionInputs, output);
        
        
            return output;
        }
        
        VertexDescription GetVertexDescription(AttributesMesh input, float3 timeParameters
        #ifdef HAVE_VFX_MODIFICATION
            , AttributesElement element
        #endif
        )
        {
            // build graph inputs
            VertexDescriptionInputs vertexDescriptionInputs = AttributesMeshToVertexDescriptionInputs(input);
            // Override time parameters with used one (This is required to correctly handle motion vectors for vertex animation based on time)
        
            // evaluate vertex graph
        #ifdef HAVE_VFX_MODIFICATION
            GraphProperties properties;
            ZERO_INITIALIZE(GraphProperties, properties);
        
            // Fetch the vertex graph properties for the particle instance.
            GetElementVertexProperties(element, properties);
        
            VertexDescription vertexDescription = VertexDescriptionFunction(vertexDescriptionInputs, properties);
        #else
            VertexDescription vertexDescription = VertexDescriptionFunction(vertexDescriptionInputs);
        #endif
            return vertexDescription;
        
        }
        
        AttributesMesh ApplyMeshModification(AttributesMesh input, float3 timeParameters
        #ifdef USE_CUSTOMINTERP_SUBSTRUCT
            #ifdef TESSELLATION_ON
            , inout VaryingsMeshToDS varyings
            #else
            , inout VaryingsMeshToPS varyings
            #endif
        #endif
        #ifdef HAVE_VFX_MODIFICATION
                , AttributesElement element
        #endif
            )
        {
            VertexDescription vertexDescription = GetVertexDescription(input, timeParameters
        #ifdef HAVE_VFX_MODIFICATION
                , element
        #endif
            );
        
            // copy graph output to the results
        
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorVertMeshCustomInterpolation' */
        
            return input;
        }
        
        #if defined(_ADD_CUSTOM_VELOCITY) // For shader graph custom velocity
        // Return precomputed Velocity in object space
        float3 GetCustomVelocity(AttributesMesh input
        #ifdef HAVE_VFX_MODIFICATION
            , AttributesElement element
        #endif
        )
        {
            VertexDescription vertexDescription = GetVertexDescription(input, _TimeParameters.xyz
        #ifdef HAVE_VFX_MODIFICATION
                , element
        #endif
            );
            return vertexDescription.CustomVelocity;
        }
        #endif
        
        FragInputs BuildFragInputs(VaryingsMeshToPS input)
        {
            FragInputs output;
            ZERO_INITIALIZE(FragInputs, output);
        
            // Init to some default value to make the computer quiet (else it output 'divide by zero' warning even if value is not used).
            // TODO: this is a really poor workaround, but the variable is used in a bunch of places
            // to compute normals which are then passed on elsewhere to compute other values...
            output.tangentToWorld = k_identity3x3;
            output.positionSS = input.positionCS;       // input.positionCS is SV_Position
        
            output.positionRWS =                input.positionRWS;
            output.positionPredisplacementRWS = input.positionPredisplacementRWS;
            output.texCoord0 =                  input.texCoord0;
            output.texCoord1 =                  input.texCoord1;
            output.texCoord2 =                  input.texCoord2;
            output.texCoord3 =                  input.texCoord3;
        
        #ifdef HAVE_VFX_MODIFICATION
            // FragInputs from VFX come from two places: Interpolator or CBuffer.
        #if VFX_USE_GRAPH_VALUES
            uint instanceActiveIndex = asuint(UNITY_ACCESS_INSTANCED_PROP(PerInstance, _InstanceActiveIndex));
            /* WARNING: $splice Could not find named fragment 'VFXLoadGraphValues' */
        #endif
        
            /* WARNING: $splice Could not find named fragment 'VFXSetFragInputs' */
        
        #endif
        
            // splice point to copy custom interpolator fields from varyings to frag inputs
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorVaryingsToFragInputs' */
        
            return output;
        }
        
        // existing HDRP code uses the combined function to go directly from packed to frag inputs
        FragInputs UnpackVaryingsMeshToFragInputs(PackedVaryingsMeshToPS input)
        {
            UNITY_SETUP_INSTANCE_ID(input);
        #if defined(HAVE_VFX_MODIFICATION) && defined(UNITY_INSTANCING_ENABLED)
            unity_InstanceID = input.instanceID;
        #endif
            VaryingsMeshToPS unpacked = UnpackVaryingsMeshToPS(input);
            return BuildFragInputs(unpacked);
        }
            SurfaceDescriptionInputs FragInputsToSurfaceDescriptionInputs(FragInputs input, float3 viewWS)
        {
            SurfaceDescriptionInputs output;
            ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
        
            #if defined(SHADER_STAGE_RAY_TRACING)
            #else
            #endif
            output.TangentSpaceNormal =                         float3(0.0f, 0.0f, 1.0f);
            output.AbsoluteWorldSpacePosition =                 GetAbsolutePositionWS(input.positionRWS);
        
        #if UNITY_UV_STARTS_AT_TOP
        #else
        #endif
        
        
            output.uv0 =                                        input.texCoord0;
        
            // splice point to copy frag inputs custom interpolator pack into the SDI
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorCopyToSDI' */
        
            return output;
        }
        
            // --------------------------------------------------
            // Build Surface Data (Specific Material)
        
        void ApplyDecalToSurfaceDataNoNormal(DecalSurfaceData decalSurfaceData, inout SurfaceData surfaceData);
        
        void ApplyDecalAndGetNormal(FragInputs fragInputs, PositionInputs posInput, SurfaceDescription surfaceDescription,
            inout SurfaceData surfaceData)
        {
            float3 doubleSidedConstants = GetDoubleSidedConstants();
        
        #ifdef DECAL_NORMAL_BLENDING
            // SG nodes don't ouptut surface gradients, so if decals require surf grad blending, we have to convert
            // the normal to gradient before applying the decal. We then have to resolve the gradient back to world space
            float3 normalTS;
        
            normalTS = SurfaceGradientFromTangentSpaceNormalAndFromTBN(surfaceDescription.NormalTS,
            fragInputs.tangentToWorld[0], fragInputs.tangentToWorld[1]);
        
        
            #if HAVE_DECALS
            if (_EnableDecals)
            {
                float alpha = 1.0;
                alpha = surfaceDescription.Alpha;
        
                DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                ApplyDecalToSurfaceNormal(decalSurfaceData, fragInputs.tangentToWorld[2], normalTS);
                ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
            }
            #endif
        
            GetNormalWS_SG(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);
        #else
            // normal delivered to master node
            GetNormalWS(fragInputs, surfaceDescription.NormalTS, surfaceData.normalWS, doubleSidedConstants);
        
            #if HAVE_DECALS
            if (_EnableDecals)
            {
                float alpha = 1.0;
                alpha = surfaceDescription.Alpha;
        
                // Both uses and modifies 'surfaceData.normalWS'.
                DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                ApplyDecalToSurfaceNormal(decalSurfaceData, surfaceData.normalWS.xyz);
                ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
            }
            #endif
        #endif
        }
        void BuildSurfaceData(FragInputs fragInputs, inout SurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
        {
            ZERO_INITIALIZE(SurfaceData, surfaceData);
        
            // specularOcclusion need to be init ahead of decal to quiet the compiler that modify the SurfaceData struct
            // however specularOcclusion can come from the graph, so need to be init here so it can be override.
            surfaceData.specularOcclusion = 1.0;
        
            surfaceData.baseColor =                 surfaceDescription.BaseColor;
            surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
            surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
            surfaceData.transmissionMask =          surfaceDescription.TransmissionMask;
            surfaceData.thickness =                 surfaceDescription.Thickness;
            surfaceData.diffusionProfileHash =      asuint(surfaceDescription.DiffusionProfileHash);
        
            #if defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE) || defined(_REFRACTION_THIN)
                if (_EnableSSRefraction)
                {
        
                    surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                    surfaceDescription.Alpha = 1.0;
                }
                else
                {
                    surfaceData.ior = 1.0;
                    surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                    surfaceData.atDistance = 1.0;
                    surfaceData.transmittanceMask = 0.0;
                    surfaceDescription.Alpha = 1.0;
                }
            #else
                surfaceData.ior = 1.0;
                surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                surfaceData.atDistance = 1.0;
                surfaceData.transmittanceMask = 0.0;
            #endif
        
            // These static material feature allow compile time optimization
            surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
            #ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
            #endif
        
            #ifdef _MATERIAL_FEATURE_TRANSMISSION
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
            #endif
        
            #ifdef _MATERIAL_FEATURE_ANISOTROPY
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
        
                // Initialize the normal to something non-zero to avoid a div-zero warning for anisotropy.
                surfaceData.normalWS = float3(0, 1, 0);
            #endif
        
            #ifdef _MATERIAL_FEATURE_IRIDESCENCE
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
            #endif
        
            #ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
            #endif
        
            #ifdef _MATERIAL_FEATURE_CLEAR_COAT
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
            #endif
        
            #if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                // Require to have setup baseColor
                // Reproduce the energy conservation done in legacy Unity. Not ideal but better for compatibility and users can unchek it
                surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
            #endif
        
            float3 doubleSidedConstants = GetDoubleSidedConstants();
        
            ApplyDecalAndGetNormal(fragInputs, posInput, surfaceDescription, surfaceData);
        
            surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
        
            surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
        
        
            bentNormalWS = surfaceData.normalWS;
        
            surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);
        
            #ifdef DEBUG_DISPLAY
                if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                {
                    // TODO: need to update mip info
                    surfaceData.metallic = 0;
                }
        
                // We need to call ApplyDebugToSurfaceData after filling the surfarcedata and before filling builtinData
                // as it can modify attribute use for static lighting
                ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
            #endif
        
            // By default we use the ambient occlusion with Tri-ace trick (apply outside) for specular occlusion.
            // If user provide bent normal then we process a better term
            #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                // Just use the value passed through via the slot (not active otherwise)
            #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                // If we have bent normal and ambient occlusion, process a specular occlusion
                surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
            #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
                surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
            #endif
        
            #if defined(_ENABLE_GEOMETRIC_SPECULAR_AA) && !defined(SHADER_STAGE_RAY_TRACING)
                surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
            #endif
        }
        
            // --------------------------------------------------
            // Get Surface And BuiltinData
        
            void GetSurfaceAndBuiltinData(FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData RAY_TRACING_OPTIONAL_PARAMETERS)
            {
                // Don't dither if displaced tessellation (we're fading out the displacement instead to match the next LOD)
                #if !defined(SHADER_STAGE_RAY_TRACING) && !defined(_TESSELLATION_DISPLACEMENT)
                #ifdef LOD_FADE_CROSSFADE // enable dithering LOD transition if user select CrossFade transition in LOD group
                LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
                #endif
                #endif
        
                #ifndef SHADER_UNLIT
                #ifdef _DOUBLESIDED_ON
                    float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
                #else
                    float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
                #endif
        
                ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants); // Apply double sided flip on the vertex normal
                #endif // SHADER_UNLIT
        
                SurfaceDescriptionInputs surfaceDescriptionInputs = FragInputsToSurfaceDescriptionInputs(fragInputs, V);
        
                #if defined(HAVE_VFX_MODIFICATION)
                GraphProperties properties;
                ZERO_INITIALIZE(GraphProperties, properties);
        
                GetElementPixelProperties(fragInputs, properties);
        
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs, properties);
                #else
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs);
                #endif
        
                // Perform alpha test very early to save performance (a killed pixel will not sample textures)
                // TODO: split graph evaluation to grab just alpha dependencies first? tricky..
                #ifdef _ALPHATEST_ON
                    float alphaCutoff = surfaceDescription.AlphaClipThreshold;
                    #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
                    // The TransparentDepthPrepass is also used with SSR transparent.
                    // If an artists enable transaprent SSR but not the TransparentDepthPrepass itself, then we use AlphaClipThreshold
                    // otherwise if TransparentDepthPrepass is enabled we use AlphaClipThresholdDepthPrepass
                    #elif SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_POSTPASS
                    // DepthPostpass always use its own alpha threshold
                    alphaCutoff = surfaceDescription.AlphaClipThresholdDepthPostpass;
                    #elif (SHADERPASS == SHADERPASS_SHADOWS) || (SHADERPASS == SHADERPASS_RAYTRACING_VISIBILITY)
                    // If use shadow threshold isn't enable we don't allow any test
                    #endif
        
                    GENERIC_ALPHA_TEST(surfaceDescription.Alpha, alphaCutoff);
                #endif
        
                #if !defined(SHADER_STAGE_RAY_TRACING) && _DEPTHOFFSET_ON
                ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
                #endif
        
                #ifndef SHADER_UNLIT
                float3 bentNormalWS;
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS);
        
                #ifdef FRAG_INPUTS_USE_TEXCOORD1
                    float4 lightmapTexCoord1 = fragInputs.texCoord1;
                #else
                    float4 lightmapTexCoord1 = float4(0,0,0,0);
                #endif
        
                #ifdef FRAG_INPUTS_USE_TEXCOORD2
                    float4 lightmapTexCoord2 = fragInputs.texCoord2;
                #else
                    float4 lightmapTexCoord2 = float4(0,0,0,0);
                #endif
        
                // Builtin Data
                // For back lighting we use the oposite vertex normal
                InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], lightmapTexCoord1, lightmapTexCoord2, builtinData);
        
                #else
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData);
        
                ZERO_BUILTIN_INITIALIZE(builtinData); // No call to InitBuiltinData as we don't have any lighting
                builtinData.opacity = surfaceDescription.Alpha;
        
                #if defined(DEBUG_DISPLAY)
                    // Light Layers are currently not used for the Unlit shader (because it is not lit)
                    // But Unlit objects do cast shadows according to their rendering layer mask, which is what we want to
                    // display in the light layers visualization mode, therefore we need the renderingLayers
                    builtinData.renderingLayers = GetMeshRenderingLightLayer();
                #endif
        
                #endif // SHADER_UNLIT
        
                #ifdef _ALPHATEST_ON
                    // Used for sharpening by alpha to mask - Alpha to covertage is only used with depth only and forward pass (no shadow pass, no transparent pass)
                    builtinData.alphaClipTreshold = alphaCutoff;
                #endif
        
                // override sampleBakedGI - not used by Unlit
        
                builtinData.emissiveColor = surfaceDescription.Emission;
        
                // Note this will not fully work on transparent surfaces (can check with _SURFACE_TYPE_TRANSPARENT define)
                // We will always overwrite vt feeback with the nearest. So behind transparent surfaces vt will not be resolved
                // This is a limitation of the current MRT approach.
                #ifdef UNITY_VIRTUAL_TEXTURING
                #endif
        
                #if _DEPTHOFFSET_ON
                builtinData.depthOffset = surfaceDescription.DepthOffset;
                #endif
        
                // TODO: We should generate distortion / distortionBlur for non distortion pass
                #if (SHADERPASS == SHADERPASS_DISTORTION)
                builtinData.distortion = surfaceDescription.Distortion;
                builtinData.distortionBlur = surfaceDescription.DistortionBlur;
                #endif
        
                #ifndef SHADER_UNLIT
                // PostInitBuiltinData call ApplyDebugToBuiltinData
                PostInitBuiltinData(V, posInput, surfaceData, builtinData);
                #else
                ApplyDebugToBuiltinData(builtinData);
                #endif
        
                RAY_TRACING_OPTIONAL_ALPHA_TEST_PASS
            }
        
            // --------------------------------------------------
            // Main
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPassLightTransport.hlsl"
        
            // --------------------------------------------------
            // Visual Effect Vertex Invocations
        
        	#ifdef HAVE_VFX_MODIFICATION
        	#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/VisualEffectVertex.hlsl"
        	#endif
        
            ENDHLSL
        }
        Pass
        {
            Name "ScenePickingPass"
            Tags
            {
                "LightMode" = "Picking"
            }
        
            // Render State
            Cull [_CullMode]
        
            // Debug
            // <None>
        
            // --------------------------------------------------
            // Pass
        
            HLSLPROGRAM
        
            // Pragmas
            #pragma multi_compile _ DOTS_INSTANCING_ON
        #pragma editor_sync_compilation
        #pragma instancing_options renderinglayer
        #pragma target 4.5
        #pragma vertex Vert
        #pragma fragment Frag
        #pragma only_renderers d3d11 playstation xboxone xboxseries vulkan metal switch
        #pragma multi_compile_instancing
        
            // Keywords
            #pragma shader_feature_local _ _ALPHATEST_ON
        #pragma shader_feature _ _SURFACE_TYPE_TRANSPARENT
        #pragma shader_feature_local _ _DOUBLESIDED_ON
        #pragma shader_feature_local _ _ADD_PRECOMPUTED_VELOCITY
        #pragma shader_feature_local _ _TRANSPARENT_WRITES_MOTION_VEC
        #pragma shader_feature_local_fragment _ _ENABLE_FOG_ON_TRANSPARENT
        #pragma multi_compile _ LOD_FADE_CROSSFADE
        #pragma shader_feature_local_fragment _ _DISABLE_DECALS
        #pragma shader_feature_local_raytracing _ _DISABLE_DECALS
        #pragma shader_feature_local_fragment _ _DISABLE_SSR
        #pragma shader_feature_local_raytracing _ _DISABLE_SSR
        #pragma shader_feature_local_fragment _ _DISABLE_SSR_TRANSPARENT
        #pragma shader_feature_local_raytracing _ _DISABLE_SSR_TRANSPARENT
        #pragma shader_feature_local _ _REFRACTION_PLANE _REFRACTION_SPHERE _REFRACTION_THIN
            // GraphKeywords: <None>
        
            // For custom interpolators to inject a substruct definition before FragInputs definition,
            // allowing for FragInputs to capture CI's intended for ShaderGraph's SDI.
            struct CustomInterpolators
        {
        };
        #define USE_CUSTOMINTERP_SUBSTRUCT
        
        
        
            // TODO: Merge FragInputsVFX substruct with CustomInterpolators.
        	#ifdef HAVE_VFX_MODIFICATION
        	struct FragInputsVFX
            {
                /* WARNING: $splice Could not find named fragment 'FragInputsVFX' */
            };
            #endif
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/GeometricTools.hlsl" // Required by Tessellation.hlsl
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Tessellation.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl" // Required to be include before we include properties as it define DECLARE_STACK_CB
            // Always include Shader Graph version
            // Always include last to avoid double macros
            #include "Packages/com.unity.shadergraph/ShaderGraphLibrary/Functions.hlsl" // Need to be here for Gradient struct definition
        
            // --------------------------------------------------
            // Defines
        
            // Attribute
            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TANGENT
            #define ATTRIBUTES_NEED_TEXCOORD0
            #define VARYINGS_NEED_POSITION_WS
            #define VARYINGS_NEED_TANGENT_TO_WORLD
            #define VARYINGS_NEED_TEXCOORD0
        
            #define HAVE_MESH_MODIFICATION
        
            //Strip down the FragInputs.hlsl (on graphics), so we can only optimize the interpolators we use.
            //if by accident something requests contents of FragInputs.hlsl, it will be caught as a compiler error
            //Frag inputs stripping is only enabled when FRAG_INPUTS_ENABLE_STRIPPING is set
            #if !defined(SHADER_STAGE_RAY_TRACING) && SHADERPASS != SHADERPASS_RAYTRACING_GBUFFER && SHADERPASS != SHADERPASS_FULL_SCREEN_DEBUG
            #define FRAG_INPUTS_ENABLE_STRIPPING
            #endif
            #define FRAG_INPUTS_USE_TEXCOORD0
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
        
        
        
            #define SHADERPASS SHADERPASS_DEPTH_ONLY
        #define SCENEPICKINGPASS 1
        
        
            // Following two define are a workaround introduce in 10.1.x for RaytracingQualityNode
            // The ShaderGraph don't support correctly migration of this node as it serialize all the node data
            // in the json file making it impossible to uprgrade. Until we get a fix, we do a workaround here
            // to still allow us to rename the field and keyword of this node without breaking existing code.
            #ifdef RAYTRACING_SHADER_GRAPH_DEFAULT
            #define RAYTRACING_SHADER_GRAPH_HIGH
            #endif
        
            #ifdef RAYTRACING_SHADER_GRAPH_RAYTRACED
            #define RAYTRACING_SHADER_GRAPH_LOW
            #endif
            // end
        
            #ifndef SHADER_UNLIT
            // We need isFrontFace when using double sided - it is not required for unlit as in case of unlit double sided only drive the cullmode
            // VARYINGS_NEED_CULLFACE can be define by VaryingsMeshToPS.FaceSign input if a IsFrontFace Node is included in the shader graph.
            #if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
                #define VARYINGS_NEED_CULLFACE
            #endif
            #endif
        
            // Specific Material Define
        #define _MATERIAL_FEATURE_TRANSMISSION 1
        #define _AMBIENT_OCCLUSION 1
        #define _SPECULAR_OCCLUSION_FROM_AO 1
        #define _ENERGY_CONSERVING_SPECULAR 1
        
        // If we use subsurface scattering, enable output split lighting (for forward pass)
        #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
            #define OUTPUT_SPLIT_LIGHTING
        #endif
        
        // This shader support recursive rendering for raytracing
        #define HAVE_RECURSIVE_RENDERING
        
        // In Path Tracing, For all single-sided, refractive materials, we want to force a thin refraction model
        #if (SHADERPASS == SHADERPASS_PATH_TRACING) && !defined(_DOUBLESIDED_ON) && (defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE))
            #undef  _REFRACTION_PLANE
            #undef  _REFRACTION_SPHERE
            #define _REFRACTION_THIN
        #endif
            // Caution: we can use the define SHADER_UNLIT onlit after the above Material include as it is the Unlit template who define it
        
            // To handle SSR on transparent correctly with a possibility to enable/disable it per framesettings
            // we should have a code like this:
            // if !defined(_DISABLE_SSR_TRANSPARENT)
            // pragma multi_compile _ WRITE_NORMAL_BUFFER
            // endif
            // i.e we enable the multicompile only if we can receive SSR or not, and then C# code drive
            // it based on if SSR transparent in frame settings and not (and stripper can strip it).
            // this is currently not possible with our current preprocessor as _DISABLE_SSR_TRANSPARENT is a keyword not a define
            // so instead we used this and chose to pay the extra cost of normal write even if SSR transaprent is disabled.
            // Ideally the shader graph generator should handle it but condition below can't be handle correctly for now.
            #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
            #if !defined(_DISABLE_SSR_TRANSPARENT) && !defined(SHADER_UNLIT)
                #define WRITE_NORMAL_BUFFER
            #endif
            #endif
        
            #ifndef DEBUG_DISPLAY
                // In case of opaque we don't want to perform the alpha test, it is done in depth prepass and we use depth equal for ztest (setup from UI)
                // Don't do it with debug display mode as it is possible there is no depth prepass in this case
                #if !defined(_SURFACE_TYPE_TRANSPARENT)
                    #if SHADERPASS == SHADERPASS_FORWARD
                    #define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
                    #elif SHADERPASS == SHADERPASS_GBUFFER
                    #define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
                    #endif
                #endif
            #endif
        
            // Define _DEFERRED_CAPABLE_MATERIAL for shader capable to run in deferred pass
            #if defined(SHADER_LIT) && !defined(_SURFACE_TYPE_TRANSPARENT)
                #define _DEFERRED_CAPABLE_MATERIAL
            #endif
        
            // Translate transparent motion vector define
            #if defined(_TRANSPARENT_WRITES_MOTION_VEC) && defined(_SURFACE_TYPE_TRANSPARENT)
                #define _WRITE_TRANSPARENT_MOTION_VECTOR
            #endif
        
            // -- Graph Properties
            CBUFFER_START(UnityPerMaterial)
        float4 _DiffusionProfileAsset;
        float _DiffusionProfileHash;
        float4 _TrunkBaseColor;
        float4 _BarkBaseColor;
        float _Backface_Thickness_Mask_Threshold;
        float2 _Backface_Thickness_Mask_Remap;
        float _Backface_Brightness;
        float _Cross_Backface_Mask_Power;
        float _Backface_Saturation;
        float4 _HealthyColor;
        float4 _DryColor;
        float _AlphaCutoff;
        float _AlphaShadowThreshold;
        float4 _BaseColorMap_TexelSize;
        float4 _TilingOffset;
        float _HealthyandDryColorNoisePower;
        float4 _NormalMap_TexelSize;
        float _NormalScale;
        float _AORemapMax;
        float _SmoothnessRemapMax;
        float4 _Mask_TexelSize;
        float _Thickness;
        float _WindNormalInfluence;
        float4 _VertexNormalMultiply;
        float _ColorNoiseTilling;
        float _Trunk_Normal_Scale;
        float _Global_Base_Brightness;
        float _Trunk_Smoothness_Remap_Max;
        float4 _EmissionColor;
        float _UseShadowThreshold;
        float4 _DoubleSidedConstants;
        float _BlendMode;
        float _EnableBlendModePreserveSpecularLighting;
        float _RayTracing;
        float _RefractionModel;
        CBUFFER_END
        
        
        // Object and Global properties
        SAMPLER(SamplerState_Linear_Repeat);
        SAMPLER(SamplerState_Linear_Repeat_Aniso8);
        TEXTURE2D(_BaseColorMap);
        SAMPLER(sampler_BaseColorMap);
        TEXTURE2D(_NormalMap);
        SAMPLER(sampler_NormalMap);
        TEXTURE2D(_Mask);
        SAMPLER(sampler_Mask);
        
            // -- Property used by ScenePickingPass
            #ifdef SCENEPICKINGPASS
            float4 _SelectionID;
            #endif
        
            // -- Properties used by SceneSelectionPass
            #ifdef SCENESELECTIONPASS
            int _ObjectId;
            int _PassValue;
            #endif
        
            // Includes
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/PickingSpaceTransforms.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
        #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Hashes.hlsl"
        
            // --------------------------------------------------
            // Structs and Packing
        
            struct AttributesMesh
        {
             float3 positionOS : POSITION;
             float3 normalOS : NORMAL;
             float4 tangentOS : TANGENT;
             float4 uv0 : TEXCOORD0;
            #if UNITY_ANY_INSTANCING_ENABLED
             uint instanceID : INSTANCEID_SEMANTIC;
            #endif
        };
        struct VaryingsMeshToPS
        {
            SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
             float3 positionRWS;
             float3 normalWS;
             float4 tangentWS;
             float4 texCoord0;
            #if UNITY_ANY_INSTANCING_ENABLED
             uint instanceID : CUSTOM_INSTANCE_ID;
            #endif
        };
        struct VertexDescriptionInputs
        {
             float3 ObjectSpaceNormal;
             float3 ObjectSpaceTangent;
             float3 ObjectSpacePosition;
        };
        struct SurfaceDescriptionInputs
        {
             float3 TangentSpaceNormal;
             float3 AbsoluteWorldSpacePosition;
             float4 uv0;
        };
        struct PackedVaryingsMeshToPS
        {
            SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
             float4 tangentWS : INTERP0;
             float4 texCoord0 : INTERP1;
             float3 positionRWS : INTERP2;
             float3 normalWS : INTERP3;
            #if UNITY_ANY_INSTANCING_ENABLED
             uint instanceID : CUSTOM_INSTANCE_ID;
            #endif
        };
        
            PackedVaryingsMeshToPS PackVaryingsMeshToPS (VaryingsMeshToPS input)
        {
            PackedVaryingsMeshToPS output;
            ZERO_INITIALIZE(PackedVaryingsMeshToPS, output);
            output.positionCS = input.positionCS;
            output.tangentWS.xyzw = input.tangentWS;
            output.texCoord0.xyzw = input.texCoord0;
            output.positionRWS.xyz = input.positionRWS;
            output.normalWS.xyz = input.normalWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif
            return output;
        }
        
        VaryingsMeshToPS UnpackVaryingsMeshToPS (PackedVaryingsMeshToPS input)
        {
            VaryingsMeshToPS output;
            output.positionCS = input.positionCS;
            output.tangentWS = input.tangentWS.xyzw;
            output.texCoord0 = input.texCoord0.xyzw;
            output.positionRWS = input.positionRWS.xyz;
            output.normalWS = input.normalWS.xyz;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif
            return output;
        }
        
        
            // --------------------------------------------------
            // Graph
        
        
            // Graph Functions
            
        void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
        {
            Out = UV * Tiling + Offset;
        }
        
        void Unity_Multiply_float4_float4(float4 A, float4 B, out float4 Out)
        {
            Out = A * B;
        }
        
        void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
        {
            Out = lerp(A, B, T);
        }
        
        float Unity_SimpleNoise_ValueNoise_LegacySine_float (float2 uv)
        {
            float2 i = floor(uv);
            float2 f = frac(uv);
            f = f * f * (3.0 - 2.0 * f);
            uv = abs(frac(uv) - 0.5);
            float2 c0 = i + float2(0.0, 0.0);
            float2 c1 = i + float2(1.0, 0.0);
            float2 c2 = i + float2(0.0, 1.0);
            float2 c3 = i + float2(1.0, 1.0);
            float r0; Hash_LegacySine_2_1_float(c0, r0);
            float r1; Hash_LegacySine_2_1_float(c1, r1);
            float r2; Hash_LegacySine_2_1_float(c2, r2);
            float r3; Hash_LegacySine_2_1_float(c3, r3);
            float bottomOfGrid = lerp(r0, r1, f.x);
            float topOfGrid = lerp(r2, r3, f.x);
            float t = lerp(bottomOfGrid, topOfGrid, f.y);
            return t;
        }
        
        void Unity_SimpleNoise_LegacySine_float(float2 UV, float Scale, out float Out)
        {
            float freq, amp;
            Out = 0.0f;
            freq = pow(2.0, float(0));
            amp = pow(0.5, float(3-0));
            Out += Unity_SimpleNoise_ValueNoise_LegacySine_float(float2(UV.xy*(Scale/freq)))*amp;
            freq = pow(2.0, float(1));
            amp = pow(0.5, float(3-1));
            Out += Unity_SimpleNoise_ValueNoise_LegacySine_float(float2(UV.xy*(Scale/freq)))*amp;
            freq = pow(2.0, float(2));
            amp = pow(0.5, float(3-2));
            Out += Unity_SimpleNoise_ValueNoise_LegacySine_float(float2(UV.xy*(Scale/freq)))*amp;
        }
        
        void Unity_Absolute_float(float In, out float Out)
        {
            Out = abs(In);
        }
        
        void Unity_Power_float(float A, float B, out float Out)
        {
            Out = pow(A, B);
        }
        
        void Unity_Clamp_float(float In, float Min, float Max, out float Out)
        {
            Out = clamp(In, Min, Max);
        }
        
        void Unity_Saturation_float(float3 In, float Saturation, out float3 Out)
        {
            float luma = dot(In, float3(0.2126729, 0.7151522, 0.0721750));
            Out =  luma.xxx + Saturation.xxx * (In - luma.xxx);
        }
        
        void Unity_Blend_Screen_float3(float3 Base, float3 Blend, out float3 Out, float Opacity)
        {
            Out = 1.0 - (1.0 - Blend) * (1.0 - Base);
            Out = lerp(Base, Out, Opacity);
        }
        
        void Unity_Clamp_float3(float3 In, float3 Min, float3 Max, out float3 Out)
        {
            Out = clamp(In, Min, Max);
        }
        
        void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
        {
            Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
        }
        
        void Unity_OneMinus_float(float In, out float Out)
        {
            Out = 1 - In;
        }
        
        void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
        {
            Out = lerp(A, B, T);
        }
        
        void Unity_Multiply_float3_float3(float3 A, float3 B, out float3 Out)
        {
            Out = A * B;
        }
        
        void Unity_Lerp_float(float A, float B, float T, out float Out)
        {
            Out = lerp(A, B, T);
        }
        
        void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
        {
            Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
        }
        
        void Unity_Multiply_float_float(float A, float B, out float Out)
        {
            Out = A * B;
        }
        
            // Graph Vertex
            struct VertexDescription
        {
            float3 Position;
            float3 Normal;
            float3 Tangent;
        };
        
        VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
        {
            VertexDescription description = (VertexDescription)0;
            description.Position = IN.ObjectSpacePosition;
            description.Normal = IN.ObjectSpaceNormal;
            description.Tangent = IN.ObjectSpaceTangent;
            return description;
        }
        
            // Graph Pixel
            struct SurfaceDescription
        {
            float3 BaseColor;
            float3 Emission;
            float Alpha;
            float AlphaClipThreshold;
            float AlphaClipThresholdShadow;
            float3 BentNormal;
            float Smoothness;
            float Occlusion;
            float3 NormalTS;
            float TransmissionMask;
            float Thickness;
            float DiffusionProfileHash;
        };
        
        SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
        {
            SurfaceDescription surface = (SurfaceDescription)0;
            UnityTexture2D _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_BaseColorMap);
            float4 _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4 = _TilingOffset;
            float _Split_60538633130155809820b3185c81057f_R_1_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[0];
            float _Split_60538633130155809820b3185c81057f_G_2_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[1];
            float _Split_60538633130155809820b3185c81057f_B_3_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[2];
            float _Split_60538633130155809820b3185c81057f_A_4_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[3];
            float2 _Vector2_83b2ea7a32ab548fb8c20dce14204561_Out_0_Vector2 = float2(_Split_60538633130155809820b3185c81057f_R_1_Float, _Split_60538633130155809820b3185c81057f_G_2_Float);
            float2 _Vector2_188e122ac0c7888f9f5fbde73f9edd75_Out_0_Vector2 = float2(_Split_60538633130155809820b3185c81057f_B_3_Float, _Split_60538633130155809820b3185c81057f_A_4_Float);
            float2 _TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2;
            Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_83b2ea7a32ab548fb8c20dce14204561_Out_0_Vector2, _Vector2_188e122ac0c7888f9f5fbde73f9edd75_Out_0_Vector2, _TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2);
            float4 _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.tex, _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.samplerstate, _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_R_4_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.r;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_G_5_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.g;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_B_6_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.b;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_A_7_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.a;
            float4 _Property_d37c4e2cc4f949f581f76dcb73d50e87_Out_0_Vector4 = _BarkBaseColor;
            float4 _Multiply_e4794b5d7e19433599f2b4e150644bea_Out_2_Vector4;
            Unity_Multiply_float4_float4(_SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4, _Property_d37c4e2cc4f949f581f76dcb73d50e87_Out_0_Vector4, _Multiply_e4794b5d7e19433599f2b4e150644bea_Out_2_Vector4);
            float4 _Property_0f3c5f287e8145bc95fd52cfba4b8fcc_Out_0_Vector4 = _TrunkBaseColor;
            float4 _Multiply_2453fa0c275a46cca1a866a080d90ddf_Out_2_Vector4;
            Unity_Multiply_float4_float4(_SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4, _Property_0f3c5f287e8145bc95fd52cfba4b8fcc_Out_0_Vector4, _Multiply_2453fa0c275a46cca1a866a080d90ddf_Out_2_Vector4);
            UnityTexture2D _Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_Mask);
            float4 _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_R_4_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.r;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.g;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_B_6_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.b;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_A_7_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.a;
            float4 _Lerp_9056381ab3034355b45968f0d1ff2f1a_Out_3_Vector4;
            Unity_Lerp_float4(_Multiply_e4794b5d7e19433599f2b4e150644bea_Out_2_Vector4, _Multiply_2453fa0c275a46cca1a866a080d90ddf_Out_2_Vector4, (_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_B_6_Float.xxxx), _Lerp_9056381ab3034355b45968f0d1ff2f1a_Out_3_Vector4);
            float4 _Property_944e0c60198849afb235eb9940da5dd9_Out_0_Vector4 = _DryColor;
            float4 _Property_621f9271d8734c81b9001229b0296656_Out_0_Vector4 = _HealthyColor;
            float _Split_99caf98864a9e980997a02cedd282dd0_R_1_Float = IN.AbsoluteWorldSpacePosition[0];
            float _Split_99caf98864a9e980997a02cedd282dd0_G_2_Float = IN.AbsoluteWorldSpacePosition[1];
            float _Split_99caf98864a9e980997a02cedd282dd0_B_3_Float = IN.AbsoluteWorldSpacePosition[2];
            float _Split_99caf98864a9e980997a02cedd282dd0_A_4_Float = 0;
            float2 _Vector2_ddc95fa04fb4858daf984190322978b9_Out_0_Vector2 = float2(_Split_99caf98864a9e980997a02cedd282dd0_R_1_Float, _Split_99caf98864a9e980997a02cedd282dd0_B_3_Float);
            float _Property_4d778d1ae72a416b96bf6cb1986a7d5d_Out_0_Float = _ColorNoiseTilling;
            float _SimpleNoise_96327065e2b0428f83e25f93c7e5a748_Out_2_Float;
            Unity_SimpleNoise_LegacySine_float(_Vector2_ddc95fa04fb4858daf984190322978b9_Out_0_Vector2, _Property_4d778d1ae72a416b96bf6cb1986a7d5d_Out_0_Float, _SimpleNoise_96327065e2b0428f83e25f93c7e5a748_Out_2_Float);
            float _Absolute_3da7acf58a45403cad1e7c432d78f027_Out_1_Float;
            Unity_Absolute_float(_SimpleNoise_96327065e2b0428f83e25f93c7e5a748_Out_2_Float, _Absolute_3da7acf58a45403cad1e7c432d78f027_Out_1_Float);
            float _Property_0dff529d33cb42e388c9d874effe6e19_Out_0_Float = _HealthyandDryColorNoisePower;
            float _Power_77b7c0eba07f4b9da46f2fa461c49201_Out_2_Float;
            Unity_Power_float(_Absolute_3da7acf58a45403cad1e7c432d78f027_Out_1_Float, _Property_0dff529d33cb42e388c9d874effe6e19_Out_0_Float, _Power_77b7c0eba07f4b9da46f2fa461c49201_Out_2_Float);
            float _Clamp_efb2cde09ec64325a2f78a848b0827b2_Out_3_Float;
            Unity_Clamp_float(_Power_77b7c0eba07f4b9da46f2fa461c49201_Out_2_Float, float(0), float(1), _Clamp_efb2cde09ec64325a2f78a848b0827b2_Out_3_Float);
            float4 _Lerp_b995ffde83d24283ac272745617fa60c_Out_3_Vector4;
            Unity_Lerp_float4(_Property_944e0c60198849afb235eb9940da5dd9_Out_0_Vector4, _Property_621f9271d8734c81b9001229b0296656_Out_0_Vector4, (_Clamp_efb2cde09ec64325a2f78a848b0827b2_Out_3_Float.xxxx), _Lerp_b995ffde83d24283ac272745617fa60c_Out_3_Vector4);
            float4 _Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4;
            Unity_Multiply_float4_float4(_SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4, _Lerp_b995ffde83d24283ac272745617fa60c_Out_3_Vector4, _Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4);
            float _Property_a52cc4db448642208842be98e18796fb_Out_0_Float = _Backface_Saturation;
            float3 _Saturation_1a5be2ae12084c59883f7d315d09cd80_Out_2_Vector3;
            Unity_Saturation_float((_Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4.xyz), _Property_a52cc4db448642208842be98e18796fb_Out_0_Float, _Saturation_1a5be2ae12084c59883f7d315d09cd80_Out_2_Vector3);
            float _Property_547f6c365f204d14a383183448811966_Out_0_Float = _Backface_Brightness;
            float3 _Blend_9d43ee127ca04ec09dd9151a833d8d61_Out_2_Vector3;
            Unity_Blend_Screen_float3(_Saturation_1a5be2ae12084c59883f7d315d09cd80_Out_2_Vector3, (_Property_547f6c365f204d14a383183448811966_Out_0_Float.xxx), _Blend_9d43ee127ca04ec09dd9151a833d8d61_Out_2_Vector3, float(1));
            float3 _Clamp_f7855b2ac55c4d43b25a4a1e56dbbbf7_Out_3_Vector3;
            Unity_Clamp_float3(_Blend_9d43ee127ca04ec09dd9151a833d8d61_Out_2_Vector3, float3(0, 0, 0), float3(1, 1, 1), _Clamp_f7855b2ac55c4d43b25a4a1e56dbbbf7_Out_3_Vector3);
            float2 _Property_b0a46b9c34574501a2f500d2f5745793_Out_0_Vector2 = _Backface_Thickness_Mask_Remap;
            float _Remap_bbbefbf0fbaf41d8a6d07b465d45488f_Out_3_Float;
            Unity_Remap_float(_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_A_7_Float, float2 (0, 1), _Property_b0a46b9c34574501a2f500d2f5745793_Out_0_Vector2, _Remap_bbbefbf0fbaf41d8a6d07b465d45488f_Out_3_Float);
            float _Clamp_6ac81c92e9a64e958055eca61b82e791_Out_3_Float;
            Unity_Clamp_float(_Remap_bbbefbf0fbaf41d8a6d07b465d45488f_Out_3_Float, float(0), float(1), _Clamp_6ac81c92e9a64e958055eca61b82e791_Out_3_Float);
            float _Property_3a1e9cc1507b46b2af88ab75dfc37b44_Out_0_Float = _Backface_Thickness_Mask_Threshold;
            float _Power_1fccfa34ffba46ceac25f1238aa4e1b5_Out_2_Float;
            Unity_Power_float(_Clamp_6ac81c92e9a64e958055eca61b82e791_Out_3_Float, _Property_3a1e9cc1507b46b2af88ab75dfc37b44_Out_0_Float, _Power_1fccfa34ffba46ceac25f1238aa4e1b5_Out_2_Float);
            float _Clamp_e55b4d1f4fda4e97bcfe15cfe9c6fd05_Out_3_Float;
            Unity_Clamp_float(_Power_1fccfa34ffba46ceac25f1238aa4e1b5_Out_2_Float, float(0), float(1), _Clamp_e55b4d1f4fda4e97bcfe15cfe9c6fd05_Out_3_Float);
            float _OneMinus_16a8ddad0aee4e5ca379aef306048984_Out_1_Float;
            Unity_OneMinus_float(_Clamp_e55b4d1f4fda4e97bcfe15cfe9c6fd05_Out_3_Float, _OneMinus_16a8ddad0aee4e5ca379aef306048984_Out_1_Float);
            float3 _Lerp_9c8a6dd2927446309acc26d9f217de99_Out_3_Vector3;
            Unity_Lerp_float3((_Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4.xyz), _Clamp_f7855b2ac55c4d43b25a4a1e56dbbbf7_Out_3_Vector3, (_OneMinus_16a8ddad0aee4e5ca379aef306048984_Out_1_Float.xxx), _Lerp_9c8a6dd2927446309acc26d9f217de99_Out_3_Vector3);
            float _Absolute_98dfaf1178334fc287f9e4d4b5f3a0f0_Out_1_Float;
            Unity_Absolute_float(_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_R_4_Float, _Absolute_98dfaf1178334fc287f9e4d4b5f3a0f0_Out_1_Float);
            float _Property_08b97a5bb158439e9155434b6637ac33_Out_0_Float = _Cross_Backface_Mask_Power;
            float _Power_c8f61d8af16945f9b82731ed18d38dd9_Out_2_Float;
            Unity_Power_float(_Absolute_98dfaf1178334fc287f9e4d4b5f3a0f0_Out_1_Float, _Property_08b97a5bb158439e9155434b6637ac33_Out_0_Float, _Power_c8f61d8af16945f9b82731ed18d38dd9_Out_2_Float);
            float _Clamp_c8b7bf714ebb484d8aa73d545b2f9d59_Out_3_Float;
            Unity_Clamp_float(_Power_c8f61d8af16945f9b82731ed18d38dd9_Out_2_Float, float(0), float(1), _Clamp_c8b7bf714ebb484d8aa73d545b2f9d59_Out_3_Float);
            float3 _Lerp_343d7507e4664bd7bc5108bcf0d55854_Out_3_Vector3;
            Unity_Lerp_float3(_Lerp_9c8a6dd2927446309acc26d9f217de99_Out_3_Vector3, (_Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4.xyz), (_Clamp_c8b7bf714ebb484d8aa73d545b2f9d59_Out_3_Float.xxx), _Lerp_343d7507e4664bd7bc5108bcf0d55854_Out_3_Vector3);
            float3 _Lerp_0d72c41eff034cfaaaf0208f4bf42433_Out_3_Vector3;
            Unity_Lerp_float3((_Lerp_9056381ab3034355b45968f0d1ff2f1a_Out_3_Vector4.xyz), _Lerp_343d7507e4664bd7bc5108bcf0d55854_Out_3_Vector3, (_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float.xxx), _Lerp_0d72c41eff034cfaaaf0208f4bf42433_Out_3_Vector3);
            float _Property_09c643c04af64fb18f3a77b935844ecc_Out_0_Float = _Global_Base_Brightness;
            float3 _Multiply_61b0f4818da94adfa23e13d8e3e376a8_Out_2_Vector3;
            Unity_Multiply_float3_float3(_Lerp_0d72c41eff034cfaaaf0208f4bf42433_Out_3_Vector3, (_Property_09c643c04af64fb18f3a77b935844ecc_Out_0_Float.xxx), _Multiply_61b0f4818da94adfa23e13d8e3e376a8_Out_2_Vector3);
            float3 _Clamp_359788e8ad134650b865e76600af6700_Out_3_Vector3;
            Unity_Clamp_float3(_Multiply_61b0f4818da94adfa23e13d8e3e376a8_Out_2_Vector3, float3(0, 0, 0), float3(1, 1, 1), _Clamp_359788e8ad134650b865e76600af6700_Out_3_Vector3);
            float _Property_067d68a770a25e8f978ca090306a96d8_Out_0_Float = _AlphaCutoff;
            float _Property_4b59dc86107847d5b565cde1e47efb8f_Out_0_Float = _AlphaShadowThreshold;
            float _Property_c35305c7157c4d3ba1db4ba61b2e2ebc_Out_0_Float = _Trunk_Smoothness_Remap_Max;
            float _Property_0edea7916ed7a189a62b0faf2c274601_Out_0_Float = _SmoothnessRemapMax;
            float _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float;
            Unity_Lerp_float(_Property_c35305c7157c4d3ba1db4ba61b2e2ebc_Out_0_Float, _Property_0edea7916ed7a189a62b0faf2c274601_Out_0_Float, _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float, _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float);
            float _Property_48e1c5285b48c78e8af19e38f4bd77f9_Out_0_Float = _AORemapMax;
            UnityTexture2D _Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_NormalMap);
            float4 _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.rgb = UnpackNormal(_SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4);
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_R_4_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.r;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_G_5_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.g;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_B_6_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.b;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_A_7_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.a;
            float _Property_b07156802a1240f7a8c14a272c5f1b36_Out_0_Float = _Trunk_Normal_Scale;
            float _Property_72e436a108ad64868e46d548c585c5f3_Out_0_Float = _NormalScale;
            float _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float;
            Unity_Lerp_float(_Property_b07156802a1240f7a8c14a272c5f1b36_Out_0_Float, _Property_72e436a108ad64868e46d548c585c5f3_Out_0_Float, _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float, _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float);
            float3 _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3;
            Unity_NormalStrength_float((_SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.xyz), _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float, _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3);
            float _Property_2fa2ab76399ae48aaf1180768279e6b9_Out_0_Float = _Thickness;
            float _Multiply_aed8020082acc482b9303a61b01a1a1a_Out_2_Float;
            Unity_Multiply_float_float(_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_A_7_Float, _Property_2fa2ab76399ae48aaf1180768279e6b9_Out_0_Float, _Multiply_aed8020082acc482b9303a61b01a1a1a_Out_2_Float);
            surface.BaseColor = _Clamp_359788e8ad134650b865e76600af6700_Out_3_Vector3;
            surface.Emission = float3(0, 0, 0);
            surface.Alpha = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_A_7_Float;
            surface.AlphaClipThreshold = _Property_067d68a770a25e8f978ca090306a96d8_Out_0_Float;
            surface.AlphaClipThresholdShadow = _Property_4b59dc86107847d5b565cde1e47efb8f_Out_0_Float;
            surface.BentNormal = IN.TangentSpaceNormal;
            surface.Smoothness = _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float;
            surface.Occlusion = _Property_48e1c5285b48c78e8af19e38f4bd77f9_Out_0_Float;
            surface.NormalTS = _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3;
            surface.TransmissionMask = float(1);
            surface.Thickness = _Multiply_aed8020082acc482b9303a61b01a1a1a_Out_2_Float;
            surface.DiffusionProfileHash = _DiffusionProfileHash;
            return surface;
        }
        
            // --------------------------------------------------
            // Build Graph Inputs
            #ifdef HAVE_VFX_MODIFICATION
            #define VFX_SRP_ATTRIBUTES AttributesMesh
            #define VaryingsMeshType VaryingsMeshToPS
            #define VFX_SRP_VARYINGS VaryingsMeshType
            #define VFX_SRP_SURFACE_INPUTS FragInputs
            #endif
            
        VertexDescriptionInputs AttributesMeshToVertexDescriptionInputs(AttributesMesh input)
        {
            VertexDescriptionInputs output;
            ZERO_INITIALIZE(VertexDescriptionInputs, output);
        
            output.ObjectSpaceNormal =                          input.normalOS;
            output.ObjectSpaceTangent =                         input.tangentOS.xyz;
            output.ObjectSpacePosition =                        input.positionOS;
        
            return output;
        }
        
        VertexDescription GetVertexDescription(AttributesMesh input, float3 timeParameters
        #ifdef HAVE_VFX_MODIFICATION
            , AttributesElement element
        #endif
        )
        {
            // build graph inputs
            VertexDescriptionInputs vertexDescriptionInputs = AttributesMeshToVertexDescriptionInputs(input);
            // Override time parameters with used one (This is required to correctly handle motion vectors for vertex animation based on time)
        
            // evaluate vertex graph
        #ifdef HAVE_VFX_MODIFICATION
            GraphProperties properties;
            ZERO_INITIALIZE(GraphProperties, properties);
        
            // Fetch the vertex graph properties for the particle instance.
            GetElementVertexProperties(element, properties);
        
            VertexDescription vertexDescription = VertexDescriptionFunction(vertexDescriptionInputs, properties);
        #else
            VertexDescription vertexDescription = VertexDescriptionFunction(vertexDescriptionInputs);
        #endif
            return vertexDescription;
        
        }
        
        AttributesMesh ApplyMeshModification(AttributesMesh input, float3 timeParameters
        #ifdef USE_CUSTOMINTERP_SUBSTRUCT
            #ifdef TESSELLATION_ON
            , inout VaryingsMeshToDS varyings
            #else
            , inout VaryingsMeshToPS varyings
            #endif
        #endif
        #ifdef HAVE_VFX_MODIFICATION
                , AttributesElement element
        #endif
            )
        {
            VertexDescription vertexDescription = GetVertexDescription(input, timeParameters
        #ifdef HAVE_VFX_MODIFICATION
                , element
        #endif
            );
        
            // copy graph output to the results
            input.positionOS = vertexDescription.Position;
            input.normalOS = vertexDescription.Normal;
            input.tangentOS.xyz = vertexDescription.Tangent;
        
            
        
            return input;
        }
        
        #if defined(_ADD_CUSTOM_VELOCITY) // For shader graph custom velocity
        // Return precomputed Velocity in object space
        float3 GetCustomVelocity(AttributesMesh input
        #ifdef HAVE_VFX_MODIFICATION
            , AttributesElement element
        #endif
        )
        {
            VertexDescription vertexDescription = GetVertexDescription(input, _TimeParameters.xyz
        #ifdef HAVE_VFX_MODIFICATION
                , element
        #endif
            );
            return vertexDescription.CustomVelocity;
        }
        #endif
        
        FragInputs BuildFragInputs(VaryingsMeshToPS input)
        {
            FragInputs output;
            ZERO_INITIALIZE(FragInputs, output);
        
            // Init to some default value to make the computer quiet (else it output 'divide by zero' warning even if value is not used).
            // TODO: this is a really poor workaround, but the variable is used in a bunch of places
            // to compute normals which are then passed on elsewhere to compute other values...
            output.tangentToWorld = k_identity3x3;
            output.positionSS = input.positionCS;       // input.positionCS is SV_Position
        
            output.positionRWS =                input.positionRWS;
            output.tangentToWorld =             BuildTangentToWorld(input.tangentWS, input.normalWS);
            output.texCoord0 =                  input.texCoord0;
        
        #ifdef HAVE_VFX_MODIFICATION
            // FragInputs from VFX come from two places: Interpolator or CBuffer.
        #if VFX_USE_GRAPH_VALUES
            uint instanceActiveIndex = asuint(UNITY_ACCESS_INSTANCED_PROP(PerInstance, _InstanceActiveIndex));
            /* WARNING: $splice Could not find named fragment 'VFXLoadGraphValues' */
        #endif
        
            /* WARNING: $splice Could not find named fragment 'VFXSetFragInputs' */
        
        #endif
        
            // splice point to copy custom interpolator fields from varyings to frag inputs
            
        
            return output;
        }
        
        // existing HDRP code uses the combined function to go directly from packed to frag inputs
        FragInputs UnpackVaryingsMeshToFragInputs(PackedVaryingsMeshToPS input)
        {
            UNITY_SETUP_INSTANCE_ID(input);
        #if defined(HAVE_VFX_MODIFICATION) && defined(UNITY_INSTANCING_ENABLED)
            unity_InstanceID = input.instanceID;
        #endif
            VaryingsMeshToPS unpacked = UnpackVaryingsMeshToPS(input);
            return BuildFragInputs(unpacked);
        }
            SurfaceDescriptionInputs FragInputsToSurfaceDescriptionInputs(FragInputs input, float3 viewWS)
        {
            SurfaceDescriptionInputs output;
            ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
        
            #if defined(SHADER_STAGE_RAY_TRACING)
            #else
            #endif
            output.TangentSpaceNormal =                         float3(0.0f, 0.0f, 1.0f);
            output.AbsoluteWorldSpacePosition =                 GetAbsolutePositionWS(input.positionRWS);
        
        #if UNITY_UV_STARTS_AT_TOP
        #else
        #endif
        
        
            output.uv0 =                                        input.texCoord0;
        
            // splice point to copy frag inputs custom interpolator pack into the SDI
            
        
            return output;
        }
        
            // --------------------------------------------------
            // Build Surface Data (Specific Material)
        
        void ApplyDecalToSurfaceDataNoNormal(DecalSurfaceData decalSurfaceData, inout SurfaceData surfaceData);
        
        void ApplyDecalAndGetNormal(FragInputs fragInputs, PositionInputs posInput, SurfaceDescription surfaceDescription,
            inout SurfaceData surfaceData)
        {
            float3 doubleSidedConstants = GetDoubleSidedConstants();
        
        #ifdef DECAL_NORMAL_BLENDING
            // SG nodes don't ouptut surface gradients, so if decals require surf grad blending, we have to convert
            // the normal to gradient before applying the decal. We then have to resolve the gradient back to world space
            float3 normalTS;
        
            normalTS = SurfaceGradientFromTangentSpaceNormalAndFromTBN(surfaceDescription.NormalTS,
            fragInputs.tangentToWorld[0], fragInputs.tangentToWorld[1]);
        
        
            #if HAVE_DECALS
            if (_EnableDecals)
            {
                float alpha = 1.0;
                alpha = surfaceDescription.Alpha;
        
                DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                ApplyDecalToSurfaceNormal(decalSurfaceData, fragInputs.tangentToWorld[2], normalTS);
                ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
            }
            #endif
        
            GetNormalWS_SG(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);
        #else
            // normal delivered to master node
            GetNormalWS(fragInputs, surfaceDescription.NormalTS, surfaceData.normalWS, doubleSidedConstants);
        
            #if HAVE_DECALS
            if (_EnableDecals)
            {
                float alpha = 1.0;
                alpha = surfaceDescription.Alpha;
        
                // Both uses and modifies 'surfaceData.normalWS'.
                DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                ApplyDecalToSurfaceNormal(decalSurfaceData, surfaceData.normalWS.xyz);
                ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
            }
            #endif
        #endif
        }
        void BuildSurfaceData(FragInputs fragInputs, inout SurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
        {
            ZERO_INITIALIZE(SurfaceData, surfaceData);
        
            // specularOcclusion need to be init ahead of decal to quiet the compiler that modify the SurfaceData struct
            // however specularOcclusion can come from the graph, so need to be init here so it can be override.
            surfaceData.specularOcclusion = 1.0;
        
            surfaceData.baseColor =                 surfaceDescription.BaseColor;
            surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
            surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
            surfaceData.transmissionMask =          surfaceDescription.TransmissionMask;
            surfaceData.thickness =                 surfaceDescription.Thickness;
            surfaceData.diffusionProfileHash =      asuint(surfaceDescription.DiffusionProfileHash);
        
            #if defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE) || defined(_REFRACTION_THIN)
                if (_EnableSSRefraction)
                {
        
                    surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                    surfaceDescription.Alpha = 1.0;
                }
                else
                {
                    surfaceData.ior = 1.0;
                    surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                    surfaceData.atDistance = 1.0;
                    surfaceData.transmittanceMask = 0.0;
                    surfaceDescription.Alpha = 1.0;
                }
            #else
                surfaceData.ior = 1.0;
                surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                surfaceData.atDistance = 1.0;
                surfaceData.transmittanceMask = 0.0;
            #endif
        
            // These static material feature allow compile time optimization
            surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
            #ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
            #endif
        
            #ifdef _MATERIAL_FEATURE_TRANSMISSION
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
            #endif
        
            #ifdef _MATERIAL_FEATURE_ANISOTROPY
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
        
                // Initialize the normal to something non-zero to avoid a div-zero warning for anisotropy.
                surfaceData.normalWS = float3(0, 1, 0);
            #endif
        
            #ifdef _MATERIAL_FEATURE_IRIDESCENCE
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
            #endif
        
            #ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
            #endif
        
            #ifdef _MATERIAL_FEATURE_CLEAR_COAT
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
            #endif
        
            #if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                // Require to have setup baseColor
                // Reproduce the energy conservation done in legacy Unity. Not ideal but better for compatibility and users can unchek it
                surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
            #endif
        
            float3 doubleSidedConstants = GetDoubleSidedConstants();
        
            ApplyDecalAndGetNormal(fragInputs, posInput, surfaceDescription, surfaceData);
        
            surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
        
            surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
        
        
            bentNormalWS = surfaceData.normalWS;
        
            surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);
        
            #ifdef DEBUG_DISPLAY
                if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                {
                    // TODO: need to update mip info
                    surfaceData.metallic = 0;
                }
        
                // We need to call ApplyDebugToSurfaceData after filling the surfarcedata and before filling builtinData
                // as it can modify attribute use for static lighting
                ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
            #endif
        
            // By default we use the ambient occlusion with Tri-ace trick (apply outside) for specular occlusion.
            // If user provide bent normal then we process a better term
            #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                // Just use the value passed through via the slot (not active otherwise)
            #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                // If we have bent normal and ambient occlusion, process a specular occlusion
                surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
            #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
                surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
            #endif
        
            #if defined(_ENABLE_GEOMETRIC_SPECULAR_AA) && !defined(SHADER_STAGE_RAY_TRACING)
                surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
            #endif
        }
        
            // --------------------------------------------------
            // Get Surface And BuiltinData
        
            void GetSurfaceAndBuiltinData(FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData RAY_TRACING_OPTIONAL_PARAMETERS)
            {
                // Don't dither if displaced tessellation (we're fading out the displacement instead to match the next LOD)
                #if !defined(SHADER_STAGE_RAY_TRACING) && !defined(_TESSELLATION_DISPLACEMENT)
                #ifdef LOD_FADE_CROSSFADE // enable dithering LOD transition if user select CrossFade transition in LOD group
                LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
                #endif
                #endif
        
                #ifndef SHADER_UNLIT
                #ifdef _DOUBLESIDED_ON
                    float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
                #else
                    float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
                #endif
        
                ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants); // Apply double sided flip on the vertex normal
                #endif // SHADER_UNLIT
        
                SurfaceDescriptionInputs surfaceDescriptionInputs = FragInputsToSurfaceDescriptionInputs(fragInputs, V);
        
                #if defined(HAVE_VFX_MODIFICATION)
                GraphProperties properties;
                ZERO_INITIALIZE(GraphProperties, properties);
        
                GetElementPixelProperties(fragInputs, properties);
        
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs, properties);
                #else
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs);
                #endif
        
                // Perform alpha test very early to save performance (a killed pixel will not sample textures)
                // TODO: split graph evaluation to grab just alpha dependencies first? tricky..
                #ifdef _ALPHATEST_ON
                    float alphaCutoff = surfaceDescription.AlphaClipThreshold;
                    #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
                    // The TransparentDepthPrepass is also used with SSR transparent.
                    // If an artists enable transaprent SSR but not the TransparentDepthPrepass itself, then we use AlphaClipThreshold
                    // otherwise if TransparentDepthPrepass is enabled we use AlphaClipThresholdDepthPrepass
                    #elif SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_POSTPASS
                    // DepthPostpass always use its own alpha threshold
                    alphaCutoff = surfaceDescription.AlphaClipThresholdDepthPostpass;
                    #elif (SHADERPASS == SHADERPASS_SHADOWS) || (SHADERPASS == SHADERPASS_RAYTRACING_VISIBILITY)
                    // If use shadow threshold isn't enable we don't allow any test
                    #endif
        
                    GENERIC_ALPHA_TEST(surfaceDescription.Alpha, alphaCutoff);
                #endif
        
                #if !defined(SHADER_STAGE_RAY_TRACING) && _DEPTHOFFSET_ON
                ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
                #endif
        
                #ifndef SHADER_UNLIT
                float3 bentNormalWS;
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS);
        
                #ifdef FRAG_INPUTS_USE_TEXCOORD1
                    float4 lightmapTexCoord1 = fragInputs.texCoord1;
                #else
                    float4 lightmapTexCoord1 = float4(0,0,0,0);
                #endif
        
                #ifdef FRAG_INPUTS_USE_TEXCOORD2
                    float4 lightmapTexCoord2 = fragInputs.texCoord2;
                #else
                    float4 lightmapTexCoord2 = float4(0,0,0,0);
                #endif
        
                // Builtin Data
                // For back lighting we use the oposite vertex normal
                InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], lightmapTexCoord1, lightmapTexCoord2, builtinData);
        
                #else
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData);
        
                ZERO_BUILTIN_INITIALIZE(builtinData); // No call to InitBuiltinData as we don't have any lighting
                builtinData.opacity = surfaceDescription.Alpha;
        
                #if defined(DEBUG_DISPLAY)
                    // Light Layers are currently not used for the Unlit shader (because it is not lit)
                    // But Unlit objects do cast shadows according to their rendering layer mask, which is what we want to
                    // display in the light layers visualization mode, therefore we need the renderingLayers
                    builtinData.renderingLayers = GetMeshRenderingLightLayer();
                #endif
        
                #endif // SHADER_UNLIT
        
                #ifdef _ALPHATEST_ON
                    // Used for sharpening by alpha to mask - Alpha to covertage is only used with depth only and forward pass (no shadow pass, no transparent pass)
                    builtinData.alphaClipTreshold = alphaCutoff;
                #endif
        
                // override sampleBakedGI - not used by Unlit
        
                builtinData.emissiveColor = surfaceDescription.Emission;
        
                // Note this will not fully work on transparent surfaces (can check with _SURFACE_TYPE_TRANSPARENT define)
                // We will always overwrite vt feeback with the nearest. So behind transparent surfaces vt will not be resolved
                // This is a limitation of the current MRT approach.
                #ifdef UNITY_VIRTUAL_TEXTURING
                #endif
        
                #if _DEPTHOFFSET_ON
                builtinData.depthOffset = surfaceDescription.DepthOffset;
                #endif
        
                // TODO: We should generate distortion / distortionBlur for non distortion pass
                #if (SHADERPASS == SHADERPASS_DISTORTION)
                builtinData.distortion = surfaceDescription.Distortion;
                builtinData.distortionBlur = surfaceDescription.DistortionBlur;
                #endif
        
                #ifndef SHADER_UNLIT
                // PostInitBuiltinData call ApplyDebugToBuiltinData
                PostInitBuiltinData(V, posInput, surfaceData, builtinData);
                #else
                ApplyDebugToBuiltinData(builtinData);
                #endif
        
                RAY_TRACING_OPTIONAL_ALPHA_TEST_PASS
            }
        
            // --------------------------------------------------
            // Main
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPassDepthOnly.hlsl"
        
            // --------------------------------------------------
            // Visual Effect Vertex Invocations
        
        	#ifdef HAVE_VFX_MODIFICATION
        	#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/VisualEffectVertex.hlsl"
        	#endif
        
            ENDHLSL
        }
        Pass
        {
            Name "SceneSelectionPass"
            Tags
            {
                "LightMode" = "SceneSelectionPass"
            }
        
            // Render State
            Cull Off
        
            // Debug
            // <None>
        
            // --------------------------------------------------
            // Pass
        
            HLSLPROGRAM
        
            // Pragmas
            #pragma multi_compile _ DOTS_INSTANCING_ON
        #pragma editor_sync_compilation
        #pragma instancing_options renderinglayer
        #pragma target 4.5
        #pragma vertex Vert
        #pragma fragment Frag
        #pragma only_renderers d3d11 playstation xboxone xboxseries vulkan metal switch
        #pragma multi_compile_instancing
        
            // Keywords
            #pragma shader_feature_local _ _ALPHATEST_ON
        #pragma shader_feature _ _SURFACE_TYPE_TRANSPARENT
        #pragma shader_feature_local _ _DOUBLESIDED_ON
        #pragma shader_feature_local _ _ADD_PRECOMPUTED_VELOCITY
        #pragma shader_feature_local _ _TRANSPARENT_WRITES_MOTION_VEC
        #pragma shader_feature_local_fragment _ _ENABLE_FOG_ON_TRANSPARENT
        #pragma multi_compile _ LOD_FADE_CROSSFADE
        #pragma shader_feature_local_fragment _ _DISABLE_DECALS
        #pragma shader_feature_local_raytracing _ _DISABLE_DECALS
        #pragma shader_feature_local_fragment _ _DISABLE_SSR
        #pragma shader_feature_local_raytracing _ _DISABLE_SSR
        #pragma shader_feature_local_fragment _ _DISABLE_SSR_TRANSPARENT
        #pragma shader_feature_local_raytracing _ _DISABLE_SSR_TRANSPARENT
        #pragma shader_feature_local _ _REFRACTION_PLANE _REFRACTION_SPHERE _REFRACTION_THIN
            // GraphKeywords: <None>
        
            // For custom interpolators to inject a substruct definition before FragInputs definition,
            // allowing for FragInputs to capture CI's intended for ShaderGraph's SDI.
            struct CustomInterpolators
        {
        };
        #define USE_CUSTOMINTERP_SUBSTRUCT
        
        
        
            // TODO: Merge FragInputsVFX substruct with CustomInterpolators.
        	#ifdef HAVE_VFX_MODIFICATION
        	struct FragInputsVFX
            {
                /* WARNING: $splice Could not find named fragment 'FragInputsVFX' */
            };
            #endif
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/GeometricTools.hlsl" // Required by Tessellation.hlsl
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Tessellation.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl" // Required to be include before we include properties as it define DECLARE_STACK_CB
            // Always include Shader Graph version
            // Always include last to avoid double macros
            #include "Packages/com.unity.shadergraph/ShaderGraphLibrary/Functions.hlsl" // Need to be here for Gradient struct definition
        
            // --------------------------------------------------
            // Defines
        
            // Attribute
            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TANGENT
            #define ATTRIBUTES_NEED_TEXCOORD0
            #define VARYINGS_NEED_POSITION_WS
            #define VARYINGS_NEED_TEXCOORD0
        
            #define HAVE_MESH_MODIFICATION
        
            //Strip down the FragInputs.hlsl (on graphics), so we can only optimize the interpolators we use.
            //if by accident something requests contents of FragInputs.hlsl, it will be caught as a compiler error
            //Frag inputs stripping is only enabled when FRAG_INPUTS_ENABLE_STRIPPING is set
            #if !defined(SHADER_STAGE_RAY_TRACING) && SHADERPASS != SHADERPASS_RAYTRACING_GBUFFER && SHADERPASS != SHADERPASS_FULL_SCREEN_DEBUG
            #define FRAG_INPUTS_ENABLE_STRIPPING
            #endif
            #define FRAG_INPUTS_USE_TEXCOORD0
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
        
        
        
            #define SHADERPASS SHADERPASS_DEPTH_ONLY
        #define RAYTRACING_SHADER_GRAPH_DEFAULT
        #define SCENESELECTIONPASS 1
        
        
            // Following two define are a workaround introduce in 10.1.x for RaytracingQualityNode
            // The ShaderGraph don't support correctly migration of this node as it serialize all the node data
            // in the json file making it impossible to uprgrade. Until we get a fix, we do a workaround here
            // to still allow us to rename the field and keyword of this node without breaking existing code.
            #ifdef RAYTRACING_SHADER_GRAPH_DEFAULT
            #define RAYTRACING_SHADER_GRAPH_HIGH
            #endif
        
            #ifdef RAYTRACING_SHADER_GRAPH_RAYTRACED
            #define RAYTRACING_SHADER_GRAPH_LOW
            #endif
            // end
        
            #ifndef SHADER_UNLIT
            // We need isFrontFace when using double sided - it is not required for unlit as in case of unlit double sided only drive the cullmode
            // VARYINGS_NEED_CULLFACE can be define by VaryingsMeshToPS.FaceSign input if a IsFrontFace Node is included in the shader graph.
            #if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
                #define VARYINGS_NEED_CULLFACE
            #endif
            #endif
        
            // Specific Material Define
        #define _MATERIAL_FEATURE_TRANSMISSION 1
        #define _AMBIENT_OCCLUSION 1
        #define _SPECULAR_OCCLUSION_FROM_AO 1
        #define _ENERGY_CONSERVING_SPECULAR 1
        
        // If we use subsurface scattering, enable output split lighting (for forward pass)
        #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
            #define OUTPUT_SPLIT_LIGHTING
        #endif
        
        // This shader support recursive rendering for raytracing
        #define HAVE_RECURSIVE_RENDERING
        
        // In Path Tracing, For all single-sided, refractive materials, we want to force a thin refraction model
        #if (SHADERPASS == SHADERPASS_PATH_TRACING) && !defined(_DOUBLESIDED_ON) && (defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE))
            #undef  _REFRACTION_PLANE
            #undef  _REFRACTION_SPHERE
            #define _REFRACTION_THIN
        #endif
            // Caution: we can use the define SHADER_UNLIT onlit after the above Material include as it is the Unlit template who define it
        
            // To handle SSR on transparent correctly with a possibility to enable/disable it per framesettings
            // we should have a code like this:
            // if !defined(_DISABLE_SSR_TRANSPARENT)
            // pragma multi_compile _ WRITE_NORMAL_BUFFER
            // endif
            // i.e we enable the multicompile only if we can receive SSR or not, and then C# code drive
            // it based on if SSR transparent in frame settings and not (and stripper can strip it).
            // this is currently not possible with our current preprocessor as _DISABLE_SSR_TRANSPARENT is a keyword not a define
            // so instead we used this and chose to pay the extra cost of normal write even if SSR transaprent is disabled.
            // Ideally the shader graph generator should handle it but condition below can't be handle correctly for now.
            #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
            #if !defined(_DISABLE_SSR_TRANSPARENT) && !defined(SHADER_UNLIT)
                #define WRITE_NORMAL_BUFFER
            #endif
            #endif
        
            #ifndef DEBUG_DISPLAY
                // In case of opaque we don't want to perform the alpha test, it is done in depth prepass and we use depth equal for ztest (setup from UI)
                // Don't do it with debug display mode as it is possible there is no depth prepass in this case
                #if !defined(_SURFACE_TYPE_TRANSPARENT)
                    #if SHADERPASS == SHADERPASS_FORWARD
                    #define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
                    #elif SHADERPASS == SHADERPASS_GBUFFER
                    #define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
                    #endif
                #endif
            #endif
        
            // Define _DEFERRED_CAPABLE_MATERIAL for shader capable to run in deferred pass
            #if defined(SHADER_LIT) && !defined(_SURFACE_TYPE_TRANSPARENT)
                #define _DEFERRED_CAPABLE_MATERIAL
            #endif
        
            // Translate transparent motion vector define
            #if defined(_TRANSPARENT_WRITES_MOTION_VEC) && defined(_SURFACE_TYPE_TRANSPARENT)
                #define _WRITE_TRANSPARENT_MOTION_VECTOR
            #endif
        
            // -- Graph Properties
            CBUFFER_START(UnityPerMaterial)
        float4 _DiffusionProfileAsset;
        float _DiffusionProfileHash;
        float4 _TrunkBaseColor;
        float4 _BarkBaseColor;
        float _Backface_Thickness_Mask_Threshold;
        float2 _Backface_Thickness_Mask_Remap;
        float _Backface_Brightness;
        float _Cross_Backface_Mask_Power;
        float _Backface_Saturation;
        float4 _HealthyColor;
        float4 _DryColor;
        float _AlphaCutoff;
        float _AlphaShadowThreshold;
        float4 _BaseColorMap_TexelSize;
        float4 _TilingOffset;
        float _HealthyandDryColorNoisePower;
        float4 _NormalMap_TexelSize;
        float _NormalScale;
        float _AORemapMax;
        float _SmoothnessRemapMax;
        float4 _Mask_TexelSize;
        float _Thickness;
        float _WindNormalInfluence;
        float4 _VertexNormalMultiply;
        float _ColorNoiseTilling;
        float _Trunk_Normal_Scale;
        float _Global_Base_Brightness;
        float _Trunk_Smoothness_Remap_Max;
        float4 _EmissionColor;
        float _UseShadowThreshold;
        float4 _DoubleSidedConstants;
        float _BlendMode;
        float _EnableBlendModePreserveSpecularLighting;
        float _RayTracing;
        float _RefractionModel;
        CBUFFER_END
        
        
        // Object and Global properties
        SAMPLER(SamplerState_Linear_Repeat);
        SAMPLER(SamplerState_Linear_Repeat_Aniso8);
        TEXTURE2D(_BaseColorMap);
        SAMPLER(sampler_BaseColorMap);
        TEXTURE2D(_NormalMap);
        SAMPLER(sampler_NormalMap);
        TEXTURE2D(_Mask);
        SAMPLER(sampler_Mask);
        
            // -- Property used by ScenePickingPass
            #ifdef SCENEPICKINGPASS
            float4 _SelectionID;
            #endif
        
            // -- Properties used by SceneSelectionPass
            #ifdef SCENESELECTIONPASS
            int _ObjectId;
            int _PassValue;
            #endif
        
            // Includes
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/PickingSpaceTransforms.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
        #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Hashes.hlsl"
        
            // --------------------------------------------------
            // Structs and Packing
        
            struct AttributesMesh
        {
             float3 positionOS : POSITION;
             float3 normalOS : NORMAL;
             float4 tangentOS : TANGENT;
             float4 uv0 : TEXCOORD0;
            #if UNITY_ANY_INSTANCING_ENABLED
             uint instanceID : INSTANCEID_SEMANTIC;
            #endif
        };
        struct VaryingsMeshToPS
        {
            SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
             float3 positionRWS;
             float4 texCoord0;
            #if UNITY_ANY_INSTANCING_ENABLED
             uint instanceID : CUSTOM_INSTANCE_ID;
            #endif
        };
        struct VertexDescriptionInputs
        {
             float3 ObjectSpaceNormal;
             float3 ObjectSpaceTangent;
             float3 ObjectSpacePosition;
        };
        struct SurfaceDescriptionInputs
        {
             float3 TangentSpaceNormal;
             float3 AbsoluteWorldSpacePosition;
             float4 uv0;
        };
        struct PackedVaryingsMeshToPS
        {
            SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
             float4 texCoord0 : INTERP0;
             float3 positionRWS : INTERP1;
            #if UNITY_ANY_INSTANCING_ENABLED
             uint instanceID : CUSTOM_INSTANCE_ID;
            #endif
        };
        
            PackedVaryingsMeshToPS PackVaryingsMeshToPS (VaryingsMeshToPS input)
        {
            PackedVaryingsMeshToPS output;
            ZERO_INITIALIZE(PackedVaryingsMeshToPS, output);
            output.positionCS = input.positionCS;
            output.texCoord0.xyzw = input.texCoord0;
            output.positionRWS.xyz = input.positionRWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif
            return output;
        }
        
        VaryingsMeshToPS UnpackVaryingsMeshToPS (PackedVaryingsMeshToPS input)
        {
            VaryingsMeshToPS output;
            output.positionCS = input.positionCS;
            output.texCoord0 = input.texCoord0.xyzw;
            output.positionRWS = input.positionRWS.xyz;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif
            return output;
        }
        
        
            // --------------------------------------------------
            // Graph
        
        
            // Graph Functions
            
        void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
        {
            Out = UV * Tiling + Offset;
        }
        
        void Unity_Multiply_float4_float4(float4 A, float4 B, out float4 Out)
        {
            Out = A * B;
        }
        
        void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
        {
            Out = lerp(A, B, T);
        }
        
        float Unity_SimpleNoise_ValueNoise_LegacySine_float (float2 uv)
        {
            float2 i = floor(uv);
            float2 f = frac(uv);
            f = f * f * (3.0 - 2.0 * f);
            uv = abs(frac(uv) - 0.5);
            float2 c0 = i + float2(0.0, 0.0);
            float2 c1 = i + float2(1.0, 0.0);
            float2 c2 = i + float2(0.0, 1.0);
            float2 c3 = i + float2(1.0, 1.0);
            float r0; Hash_LegacySine_2_1_float(c0, r0);
            float r1; Hash_LegacySine_2_1_float(c1, r1);
            float r2; Hash_LegacySine_2_1_float(c2, r2);
            float r3; Hash_LegacySine_2_1_float(c3, r3);
            float bottomOfGrid = lerp(r0, r1, f.x);
            float topOfGrid = lerp(r2, r3, f.x);
            float t = lerp(bottomOfGrid, topOfGrid, f.y);
            return t;
        }
        
        void Unity_SimpleNoise_LegacySine_float(float2 UV, float Scale, out float Out)
        {
            float freq, amp;
            Out = 0.0f;
            freq = pow(2.0, float(0));
            amp = pow(0.5, float(3-0));
            Out += Unity_SimpleNoise_ValueNoise_LegacySine_float(float2(UV.xy*(Scale/freq)))*amp;
            freq = pow(2.0, float(1));
            amp = pow(0.5, float(3-1));
            Out += Unity_SimpleNoise_ValueNoise_LegacySine_float(float2(UV.xy*(Scale/freq)))*amp;
            freq = pow(2.0, float(2));
            amp = pow(0.5, float(3-2));
            Out += Unity_SimpleNoise_ValueNoise_LegacySine_float(float2(UV.xy*(Scale/freq)))*amp;
        }
        
        void Unity_Absolute_float(float In, out float Out)
        {
            Out = abs(In);
        }
        
        void Unity_Power_float(float A, float B, out float Out)
        {
            Out = pow(A, B);
        }
        
        void Unity_Clamp_float(float In, float Min, float Max, out float Out)
        {
            Out = clamp(In, Min, Max);
        }
        
        void Unity_Saturation_float(float3 In, float Saturation, out float3 Out)
        {
            float luma = dot(In, float3(0.2126729, 0.7151522, 0.0721750));
            Out =  luma.xxx + Saturation.xxx * (In - luma.xxx);
        }
        
        void Unity_Blend_Screen_float3(float3 Base, float3 Blend, out float3 Out, float Opacity)
        {
            Out = 1.0 - (1.0 - Blend) * (1.0 - Base);
            Out = lerp(Base, Out, Opacity);
        }
        
        void Unity_Clamp_float3(float3 In, float3 Min, float3 Max, out float3 Out)
        {
            Out = clamp(In, Min, Max);
        }
        
        void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
        {
            Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
        }
        
        void Unity_OneMinus_float(float In, out float Out)
        {
            Out = 1 - In;
        }
        
        void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
        {
            Out = lerp(A, B, T);
        }
        
        void Unity_Multiply_float3_float3(float3 A, float3 B, out float3 Out)
        {
            Out = A * B;
        }
        
        void Unity_Lerp_float(float A, float B, float T, out float Out)
        {
            Out = lerp(A, B, T);
        }
        
        void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
        {
            Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
        }
        
        void Unity_Multiply_float_float(float A, float B, out float Out)
        {
            Out = A * B;
        }
        
            // Graph Vertex
            struct VertexDescription
        {
            float3 Position;
            float3 Normal;
            float3 Tangent;
        };
        
        VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
        {
            VertexDescription description = (VertexDescription)0;
            description.Position = IN.ObjectSpacePosition;
            description.Normal = IN.ObjectSpaceNormal;
            description.Tangent = IN.ObjectSpaceTangent;
            return description;
        }
        
            // Graph Pixel
            struct SurfaceDescription
        {
            float3 BaseColor;
            float3 Emission;
            float Alpha;
            float AlphaClipThreshold;
            float AlphaClipThresholdShadow;
            float3 BentNormal;
            float Smoothness;
            float Occlusion;
            float3 NormalTS;
            float TransmissionMask;
            float Thickness;
            float DiffusionProfileHash;
        };
        
        SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
        {
            SurfaceDescription surface = (SurfaceDescription)0;
            UnityTexture2D _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_BaseColorMap);
            float4 _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4 = _TilingOffset;
            float _Split_60538633130155809820b3185c81057f_R_1_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[0];
            float _Split_60538633130155809820b3185c81057f_G_2_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[1];
            float _Split_60538633130155809820b3185c81057f_B_3_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[2];
            float _Split_60538633130155809820b3185c81057f_A_4_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[3];
            float2 _Vector2_83b2ea7a32ab548fb8c20dce14204561_Out_0_Vector2 = float2(_Split_60538633130155809820b3185c81057f_R_1_Float, _Split_60538633130155809820b3185c81057f_G_2_Float);
            float2 _Vector2_188e122ac0c7888f9f5fbde73f9edd75_Out_0_Vector2 = float2(_Split_60538633130155809820b3185c81057f_B_3_Float, _Split_60538633130155809820b3185c81057f_A_4_Float);
            float2 _TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2;
            Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_83b2ea7a32ab548fb8c20dce14204561_Out_0_Vector2, _Vector2_188e122ac0c7888f9f5fbde73f9edd75_Out_0_Vector2, _TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2);
            float4 _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.tex, _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.samplerstate, _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_R_4_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.r;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_G_5_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.g;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_B_6_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.b;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_A_7_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.a;
            float4 _Property_d37c4e2cc4f949f581f76dcb73d50e87_Out_0_Vector4 = _BarkBaseColor;
            float4 _Multiply_e4794b5d7e19433599f2b4e150644bea_Out_2_Vector4;
            Unity_Multiply_float4_float4(_SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4, _Property_d37c4e2cc4f949f581f76dcb73d50e87_Out_0_Vector4, _Multiply_e4794b5d7e19433599f2b4e150644bea_Out_2_Vector4);
            float4 _Property_0f3c5f287e8145bc95fd52cfba4b8fcc_Out_0_Vector4 = _TrunkBaseColor;
            float4 _Multiply_2453fa0c275a46cca1a866a080d90ddf_Out_2_Vector4;
            Unity_Multiply_float4_float4(_SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4, _Property_0f3c5f287e8145bc95fd52cfba4b8fcc_Out_0_Vector4, _Multiply_2453fa0c275a46cca1a866a080d90ddf_Out_2_Vector4);
            UnityTexture2D _Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_Mask);
            float4 _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_R_4_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.r;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.g;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_B_6_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.b;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_A_7_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.a;
            float4 _Lerp_9056381ab3034355b45968f0d1ff2f1a_Out_3_Vector4;
            Unity_Lerp_float4(_Multiply_e4794b5d7e19433599f2b4e150644bea_Out_2_Vector4, _Multiply_2453fa0c275a46cca1a866a080d90ddf_Out_2_Vector4, (_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_B_6_Float.xxxx), _Lerp_9056381ab3034355b45968f0d1ff2f1a_Out_3_Vector4);
            float4 _Property_944e0c60198849afb235eb9940da5dd9_Out_0_Vector4 = _DryColor;
            float4 _Property_621f9271d8734c81b9001229b0296656_Out_0_Vector4 = _HealthyColor;
            float _Split_99caf98864a9e980997a02cedd282dd0_R_1_Float = IN.AbsoluteWorldSpacePosition[0];
            float _Split_99caf98864a9e980997a02cedd282dd0_G_2_Float = IN.AbsoluteWorldSpacePosition[1];
            float _Split_99caf98864a9e980997a02cedd282dd0_B_3_Float = IN.AbsoluteWorldSpacePosition[2];
            float _Split_99caf98864a9e980997a02cedd282dd0_A_4_Float = 0;
            float2 _Vector2_ddc95fa04fb4858daf984190322978b9_Out_0_Vector2 = float2(_Split_99caf98864a9e980997a02cedd282dd0_R_1_Float, _Split_99caf98864a9e980997a02cedd282dd0_B_3_Float);
            float _Property_4d778d1ae72a416b96bf6cb1986a7d5d_Out_0_Float = _ColorNoiseTilling;
            float _SimpleNoise_96327065e2b0428f83e25f93c7e5a748_Out_2_Float;
            Unity_SimpleNoise_LegacySine_float(_Vector2_ddc95fa04fb4858daf984190322978b9_Out_0_Vector2, _Property_4d778d1ae72a416b96bf6cb1986a7d5d_Out_0_Float, _SimpleNoise_96327065e2b0428f83e25f93c7e5a748_Out_2_Float);
            float _Absolute_3da7acf58a45403cad1e7c432d78f027_Out_1_Float;
            Unity_Absolute_float(_SimpleNoise_96327065e2b0428f83e25f93c7e5a748_Out_2_Float, _Absolute_3da7acf58a45403cad1e7c432d78f027_Out_1_Float);
            float _Property_0dff529d33cb42e388c9d874effe6e19_Out_0_Float = _HealthyandDryColorNoisePower;
            float _Power_77b7c0eba07f4b9da46f2fa461c49201_Out_2_Float;
            Unity_Power_float(_Absolute_3da7acf58a45403cad1e7c432d78f027_Out_1_Float, _Property_0dff529d33cb42e388c9d874effe6e19_Out_0_Float, _Power_77b7c0eba07f4b9da46f2fa461c49201_Out_2_Float);
            float _Clamp_efb2cde09ec64325a2f78a848b0827b2_Out_3_Float;
            Unity_Clamp_float(_Power_77b7c0eba07f4b9da46f2fa461c49201_Out_2_Float, float(0), float(1), _Clamp_efb2cde09ec64325a2f78a848b0827b2_Out_3_Float);
            float4 _Lerp_b995ffde83d24283ac272745617fa60c_Out_3_Vector4;
            Unity_Lerp_float4(_Property_944e0c60198849afb235eb9940da5dd9_Out_0_Vector4, _Property_621f9271d8734c81b9001229b0296656_Out_0_Vector4, (_Clamp_efb2cde09ec64325a2f78a848b0827b2_Out_3_Float.xxxx), _Lerp_b995ffde83d24283ac272745617fa60c_Out_3_Vector4);
            float4 _Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4;
            Unity_Multiply_float4_float4(_SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4, _Lerp_b995ffde83d24283ac272745617fa60c_Out_3_Vector4, _Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4);
            float _Property_a52cc4db448642208842be98e18796fb_Out_0_Float = _Backface_Saturation;
            float3 _Saturation_1a5be2ae12084c59883f7d315d09cd80_Out_2_Vector3;
            Unity_Saturation_float((_Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4.xyz), _Property_a52cc4db448642208842be98e18796fb_Out_0_Float, _Saturation_1a5be2ae12084c59883f7d315d09cd80_Out_2_Vector3);
            float _Property_547f6c365f204d14a383183448811966_Out_0_Float = _Backface_Brightness;
            float3 _Blend_9d43ee127ca04ec09dd9151a833d8d61_Out_2_Vector3;
            Unity_Blend_Screen_float3(_Saturation_1a5be2ae12084c59883f7d315d09cd80_Out_2_Vector3, (_Property_547f6c365f204d14a383183448811966_Out_0_Float.xxx), _Blend_9d43ee127ca04ec09dd9151a833d8d61_Out_2_Vector3, float(1));
            float3 _Clamp_f7855b2ac55c4d43b25a4a1e56dbbbf7_Out_3_Vector3;
            Unity_Clamp_float3(_Blend_9d43ee127ca04ec09dd9151a833d8d61_Out_2_Vector3, float3(0, 0, 0), float3(1, 1, 1), _Clamp_f7855b2ac55c4d43b25a4a1e56dbbbf7_Out_3_Vector3);
            float2 _Property_b0a46b9c34574501a2f500d2f5745793_Out_0_Vector2 = _Backface_Thickness_Mask_Remap;
            float _Remap_bbbefbf0fbaf41d8a6d07b465d45488f_Out_3_Float;
            Unity_Remap_float(_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_A_7_Float, float2 (0, 1), _Property_b0a46b9c34574501a2f500d2f5745793_Out_0_Vector2, _Remap_bbbefbf0fbaf41d8a6d07b465d45488f_Out_3_Float);
            float _Clamp_6ac81c92e9a64e958055eca61b82e791_Out_3_Float;
            Unity_Clamp_float(_Remap_bbbefbf0fbaf41d8a6d07b465d45488f_Out_3_Float, float(0), float(1), _Clamp_6ac81c92e9a64e958055eca61b82e791_Out_3_Float);
            float _Property_3a1e9cc1507b46b2af88ab75dfc37b44_Out_0_Float = _Backface_Thickness_Mask_Threshold;
            float _Power_1fccfa34ffba46ceac25f1238aa4e1b5_Out_2_Float;
            Unity_Power_float(_Clamp_6ac81c92e9a64e958055eca61b82e791_Out_3_Float, _Property_3a1e9cc1507b46b2af88ab75dfc37b44_Out_0_Float, _Power_1fccfa34ffba46ceac25f1238aa4e1b5_Out_2_Float);
            float _Clamp_e55b4d1f4fda4e97bcfe15cfe9c6fd05_Out_3_Float;
            Unity_Clamp_float(_Power_1fccfa34ffba46ceac25f1238aa4e1b5_Out_2_Float, float(0), float(1), _Clamp_e55b4d1f4fda4e97bcfe15cfe9c6fd05_Out_3_Float);
            float _OneMinus_16a8ddad0aee4e5ca379aef306048984_Out_1_Float;
            Unity_OneMinus_float(_Clamp_e55b4d1f4fda4e97bcfe15cfe9c6fd05_Out_3_Float, _OneMinus_16a8ddad0aee4e5ca379aef306048984_Out_1_Float);
            float3 _Lerp_9c8a6dd2927446309acc26d9f217de99_Out_3_Vector3;
            Unity_Lerp_float3((_Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4.xyz), _Clamp_f7855b2ac55c4d43b25a4a1e56dbbbf7_Out_3_Vector3, (_OneMinus_16a8ddad0aee4e5ca379aef306048984_Out_1_Float.xxx), _Lerp_9c8a6dd2927446309acc26d9f217de99_Out_3_Vector3);
            float _Absolute_98dfaf1178334fc287f9e4d4b5f3a0f0_Out_1_Float;
            Unity_Absolute_float(_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_R_4_Float, _Absolute_98dfaf1178334fc287f9e4d4b5f3a0f0_Out_1_Float);
            float _Property_08b97a5bb158439e9155434b6637ac33_Out_0_Float = _Cross_Backface_Mask_Power;
            float _Power_c8f61d8af16945f9b82731ed18d38dd9_Out_2_Float;
            Unity_Power_float(_Absolute_98dfaf1178334fc287f9e4d4b5f3a0f0_Out_1_Float, _Property_08b97a5bb158439e9155434b6637ac33_Out_0_Float, _Power_c8f61d8af16945f9b82731ed18d38dd9_Out_2_Float);
            float _Clamp_c8b7bf714ebb484d8aa73d545b2f9d59_Out_3_Float;
            Unity_Clamp_float(_Power_c8f61d8af16945f9b82731ed18d38dd9_Out_2_Float, float(0), float(1), _Clamp_c8b7bf714ebb484d8aa73d545b2f9d59_Out_3_Float);
            float3 _Lerp_343d7507e4664bd7bc5108bcf0d55854_Out_3_Vector3;
            Unity_Lerp_float3(_Lerp_9c8a6dd2927446309acc26d9f217de99_Out_3_Vector3, (_Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4.xyz), (_Clamp_c8b7bf714ebb484d8aa73d545b2f9d59_Out_3_Float.xxx), _Lerp_343d7507e4664bd7bc5108bcf0d55854_Out_3_Vector3);
            float3 _Lerp_0d72c41eff034cfaaaf0208f4bf42433_Out_3_Vector3;
            Unity_Lerp_float3((_Lerp_9056381ab3034355b45968f0d1ff2f1a_Out_3_Vector4.xyz), _Lerp_343d7507e4664bd7bc5108bcf0d55854_Out_3_Vector3, (_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float.xxx), _Lerp_0d72c41eff034cfaaaf0208f4bf42433_Out_3_Vector3);
            float _Property_09c643c04af64fb18f3a77b935844ecc_Out_0_Float = _Global_Base_Brightness;
            float3 _Multiply_61b0f4818da94adfa23e13d8e3e376a8_Out_2_Vector3;
            Unity_Multiply_float3_float3(_Lerp_0d72c41eff034cfaaaf0208f4bf42433_Out_3_Vector3, (_Property_09c643c04af64fb18f3a77b935844ecc_Out_0_Float.xxx), _Multiply_61b0f4818da94adfa23e13d8e3e376a8_Out_2_Vector3);
            float3 _Clamp_359788e8ad134650b865e76600af6700_Out_3_Vector3;
            Unity_Clamp_float3(_Multiply_61b0f4818da94adfa23e13d8e3e376a8_Out_2_Vector3, float3(0, 0, 0), float3(1, 1, 1), _Clamp_359788e8ad134650b865e76600af6700_Out_3_Vector3);
            float _Property_067d68a770a25e8f978ca090306a96d8_Out_0_Float = _AlphaCutoff;
            float _Property_4b59dc86107847d5b565cde1e47efb8f_Out_0_Float = _AlphaShadowThreshold;
            float _Property_c35305c7157c4d3ba1db4ba61b2e2ebc_Out_0_Float = _Trunk_Smoothness_Remap_Max;
            float _Property_0edea7916ed7a189a62b0faf2c274601_Out_0_Float = _SmoothnessRemapMax;
            float _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float;
            Unity_Lerp_float(_Property_c35305c7157c4d3ba1db4ba61b2e2ebc_Out_0_Float, _Property_0edea7916ed7a189a62b0faf2c274601_Out_0_Float, _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float, _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float);
            float _Property_48e1c5285b48c78e8af19e38f4bd77f9_Out_0_Float = _AORemapMax;
            UnityTexture2D _Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_NormalMap);
            float4 _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.rgb = UnpackNormal(_SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4);
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_R_4_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.r;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_G_5_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.g;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_B_6_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.b;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_A_7_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.a;
            float _Property_b07156802a1240f7a8c14a272c5f1b36_Out_0_Float = _Trunk_Normal_Scale;
            float _Property_72e436a108ad64868e46d548c585c5f3_Out_0_Float = _NormalScale;
            float _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float;
            Unity_Lerp_float(_Property_b07156802a1240f7a8c14a272c5f1b36_Out_0_Float, _Property_72e436a108ad64868e46d548c585c5f3_Out_0_Float, _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float, _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float);
            float3 _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3;
            Unity_NormalStrength_float((_SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.xyz), _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float, _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3);
            float _Property_2fa2ab76399ae48aaf1180768279e6b9_Out_0_Float = _Thickness;
            float _Multiply_aed8020082acc482b9303a61b01a1a1a_Out_2_Float;
            Unity_Multiply_float_float(_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_A_7_Float, _Property_2fa2ab76399ae48aaf1180768279e6b9_Out_0_Float, _Multiply_aed8020082acc482b9303a61b01a1a1a_Out_2_Float);
            surface.BaseColor = _Clamp_359788e8ad134650b865e76600af6700_Out_3_Vector3;
            surface.Emission = float3(0, 0, 0);
            surface.Alpha = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_A_7_Float;
            surface.AlphaClipThreshold = _Property_067d68a770a25e8f978ca090306a96d8_Out_0_Float;
            surface.AlphaClipThresholdShadow = _Property_4b59dc86107847d5b565cde1e47efb8f_Out_0_Float;
            surface.BentNormal = IN.TangentSpaceNormal;
            surface.Smoothness = _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float;
            surface.Occlusion = _Property_48e1c5285b48c78e8af19e38f4bd77f9_Out_0_Float;
            surface.NormalTS = _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3;
            surface.TransmissionMask = float(1);
            surface.Thickness = _Multiply_aed8020082acc482b9303a61b01a1a1a_Out_2_Float;
            surface.DiffusionProfileHash = _DiffusionProfileHash;
            return surface;
        }
        
            // --------------------------------------------------
            // Build Graph Inputs
            #ifdef HAVE_VFX_MODIFICATION
            #define VFX_SRP_ATTRIBUTES AttributesMesh
            #define VaryingsMeshType VaryingsMeshToPS
            #define VFX_SRP_VARYINGS VaryingsMeshType
            #define VFX_SRP_SURFACE_INPUTS FragInputs
            #endif
            
        VertexDescriptionInputs AttributesMeshToVertexDescriptionInputs(AttributesMesh input)
        {
            VertexDescriptionInputs output;
            ZERO_INITIALIZE(VertexDescriptionInputs, output);
        
            output.ObjectSpaceNormal =                          input.normalOS;
            output.ObjectSpaceTangent =                         input.tangentOS.xyz;
            output.ObjectSpacePosition =                        input.positionOS;
        
            return output;
        }
        
        VertexDescription GetVertexDescription(AttributesMesh input, float3 timeParameters
        #ifdef HAVE_VFX_MODIFICATION
            , AttributesElement element
        #endif
        )
        {
            // build graph inputs
            VertexDescriptionInputs vertexDescriptionInputs = AttributesMeshToVertexDescriptionInputs(input);
            // Override time parameters with used one (This is required to correctly handle motion vectors for vertex animation based on time)
        
            // evaluate vertex graph
        #ifdef HAVE_VFX_MODIFICATION
            GraphProperties properties;
            ZERO_INITIALIZE(GraphProperties, properties);
        
            // Fetch the vertex graph properties for the particle instance.
            GetElementVertexProperties(element, properties);
        
            VertexDescription vertexDescription = VertexDescriptionFunction(vertexDescriptionInputs, properties);
        #else
            VertexDescription vertexDescription = VertexDescriptionFunction(vertexDescriptionInputs);
        #endif
            return vertexDescription;
        
        }
        
        AttributesMesh ApplyMeshModification(AttributesMesh input, float3 timeParameters
        #ifdef USE_CUSTOMINTERP_SUBSTRUCT
            #ifdef TESSELLATION_ON
            , inout VaryingsMeshToDS varyings
            #else
            , inout VaryingsMeshToPS varyings
            #endif
        #endif
        #ifdef HAVE_VFX_MODIFICATION
                , AttributesElement element
        #endif
            )
        {
            VertexDescription vertexDescription = GetVertexDescription(input, timeParameters
        #ifdef HAVE_VFX_MODIFICATION
                , element
        #endif
            );
        
            // copy graph output to the results
            input.positionOS = vertexDescription.Position;
            input.normalOS = vertexDescription.Normal;
            input.tangentOS.xyz = vertexDescription.Tangent;
        
            
        
            return input;
        }
        
        #if defined(_ADD_CUSTOM_VELOCITY) // For shader graph custom velocity
        // Return precomputed Velocity in object space
        float3 GetCustomVelocity(AttributesMesh input
        #ifdef HAVE_VFX_MODIFICATION
            , AttributesElement element
        #endif
        )
        {
            VertexDescription vertexDescription = GetVertexDescription(input, _TimeParameters.xyz
        #ifdef HAVE_VFX_MODIFICATION
                , element
        #endif
            );
            return vertexDescription.CustomVelocity;
        }
        #endif
        
        FragInputs BuildFragInputs(VaryingsMeshToPS input)
        {
            FragInputs output;
            ZERO_INITIALIZE(FragInputs, output);
        
            // Init to some default value to make the computer quiet (else it output 'divide by zero' warning even if value is not used).
            // TODO: this is a really poor workaround, but the variable is used in a bunch of places
            // to compute normals which are then passed on elsewhere to compute other values...
            output.tangentToWorld = k_identity3x3;
            output.positionSS = input.positionCS;       // input.positionCS is SV_Position
        
            output.positionRWS =                input.positionRWS;
            output.texCoord0 =                  input.texCoord0;
        
        #ifdef HAVE_VFX_MODIFICATION
            // FragInputs from VFX come from two places: Interpolator or CBuffer.
        #if VFX_USE_GRAPH_VALUES
            uint instanceActiveIndex = asuint(UNITY_ACCESS_INSTANCED_PROP(PerInstance, _InstanceActiveIndex));
            /* WARNING: $splice Could not find named fragment 'VFXLoadGraphValues' */
        #endif
        
            /* WARNING: $splice Could not find named fragment 'VFXSetFragInputs' */
        
        #endif
        
            // splice point to copy custom interpolator fields from varyings to frag inputs
            
        
            return output;
        }
        
        // existing HDRP code uses the combined function to go directly from packed to frag inputs
        FragInputs UnpackVaryingsMeshToFragInputs(PackedVaryingsMeshToPS input)
        {
            UNITY_SETUP_INSTANCE_ID(input);
        #if defined(HAVE_VFX_MODIFICATION) && defined(UNITY_INSTANCING_ENABLED)
            unity_InstanceID = input.instanceID;
        #endif
            VaryingsMeshToPS unpacked = UnpackVaryingsMeshToPS(input);
            return BuildFragInputs(unpacked);
        }
            SurfaceDescriptionInputs FragInputsToSurfaceDescriptionInputs(FragInputs input, float3 viewWS)
        {
            SurfaceDescriptionInputs output;
            ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
        
            #if defined(SHADER_STAGE_RAY_TRACING)
            #else
            #endif
            output.TangentSpaceNormal =                         float3(0.0f, 0.0f, 1.0f);
            output.AbsoluteWorldSpacePosition =                 GetAbsolutePositionWS(input.positionRWS);
        
        #if UNITY_UV_STARTS_AT_TOP
        #else
        #endif
        
        
            output.uv0 =                                        input.texCoord0;
        
            // splice point to copy frag inputs custom interpolator pack into the SDI
            
        
            return output;
        }
        
            // --------------------------------------------------
            // Build Surface Data (Specific Material)
        
        void ApplyDecalToSurfaceDataNoNormal(DecalSurfaceData decalSurfaceData, inout SurfaceData surfaceData);
        
        void ApplyDecalAndGetNormal(FragInputs fragInputs, PositionInputs posInput, SurfaceDescription surfaceDescription,
            inout SurfaceData surfaceData)
        {
            float3 doubleSidedConstants = GetDoubleSidedConstants();
        
        #ifdef DECAL_NORMAL_BLENDING
            // SG nodes don't ouptut surface gradients, so if decals require surf grad blending, we have to convert
            // the normal to gradient before applying the decal. We then have to resolve the gradient back to world space
            float3 normalTS;
        
            normalTS = SurfaceGradientFromTangentSpaceNormalAndFromTBN(surfaceDescription.NormalTS,
            fragInputs.tangentToWorld[0], fragInputs.tangentToWorld[1]);
        
        
            #if HAVE_DECALS
            if (_EnableDecals)
            {
                float alpha = 1.0;
                alpha = surfaceDescription.Alpha;
        
                DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                ApplyDecalToSurfaceNormal(decalSurfaceData, fragInputs.tangentToWorld[2], normalTS);
                ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
            }
            #endif
        
            GetNormalWS_SG(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);
        #else
            // normal delivered to master node
            GetNormalWS(fragInputs, surfaceDescription.NormalTS, surfaceData.normalWS, doubleSidedConstants);
        
            #if HAVE_DECALS
            if (_EnableDecals)
            {
                float alpha = 1.0;
                alpha = surfaceDescription.Alpha;
        
                // Both uses and modifies 'surfaceData.normalWS'.
                DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                ApplyDecalToSurfaceNormal(decalSurfaceData, surfaceData.normalWS.xyz);
                ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
            }
            #endif
        #endif
        }
        void BuildSurfaceData(FragInputs fragInputs, inout SurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
        {
            ZERO_INITIALIZE(SurfaceData, surfaceData);
        
            // specularOcclusion need to be init ahead of decal to quiet the compiler that modify the SurfaceData struct
            // however specularOcclusion can come from the graph, so need to be init here so it can be override.
            surfaceData.specularOcclusion = 1.0;
        
            surfaceData.baseColor =                 surfaceDescription.BaseColor;
            surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
            surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
            surfaceData.transmissionMask =          surfaceDescription.TransmissionMask;
            surfaceData.thickness =                 surfaceDescription.Thickness;
            surfaceData.diffusionProfileHash =      asuint(surfaceDescription.DiffusionProfileHash);
        
            #if defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE) || defined(_REFRACTION_THIN)
                if (_EnableSSRefraction)
                {
        
                    surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                    surfaceDescription.Alpha = 1.0;
                }
                else
                {
                    surfaceData.ior = 1.0;
                    surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                    surfaceData.atDistance = 1.0;
                    surfaceData.transmittanceMask = 0.0;
                    surfaceDescription.Alpha = 1.0;
                }
            #else
                surfaceData.ior = 1.0;
                surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                surfaceData.atDistance = 1.0;
                surfaceData.transmittanceMask = 0.0;
            #endif
        
            // These static material feature allow compile time optimization
            surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
            #ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
            #endif
        
            #ifdef _MATERIAL_FEATURE_TRANSMISSION
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
            #endif
        
            #ifdef _MATERIAL_FEATURE_ANISOTROPY
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
        
                // Initialize the normal to something non-zero to avoid a div-zero warning for anisotropy.
                surfaceData.normalWS = float3(0, 1, 0);
            #endif
        
            #ifdef _MATERIAL_FEATURE_IRIDESCENCE
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
            #endif
        
            #ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
            #endif
        
            #ifdef _MATERIAL_FEATURE_CLEAR_COAT
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
            #endif
        
            #if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                // Require to have setup baseColor
                // Reproduce the energy conservation done in legacy Unity. Not ideal but better for compatibility and users can unchek it
                surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
            #endif
        
            float3 doubleSidedConstants = GetDoubleSidedConstants();
        
            ApplyDecalAndGetNormal(fragInputs, posInput, surfaceDescription, surfaceData);
        
            surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
        
            surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
        
        
            bentNormalWS = surfaceData.normalWS;
        
            surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);
        
            #ifdef DEBUG_DISPLAY
                if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                {
                    // TODO: need to update mip info
                    surfaceData.metallic = 0;
                }
        
                // We need to call ApplyDebugToSurfaceData after filling the surfarcedata and before filling builtinData
                // as it can modify attribute use for static lighting
                ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
            #endif
        
            // By default we use the ambient occlusion with Tri-ace trick (apply outside) for specular occlusion.
            // If user provide bent normal then we process a better term
            #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                // Just use the value passed through via the slot (not active otherwise)
            #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                // If we have bent normal and ambient occlusion, process a specular occlusion
                surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
            #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
                surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
            #endif
        
            #if defined(_ENABLE_GEOMETRIC_SPECULAR_AA) && !defined(SHADER_STAGE_RAY_TRACING)
                surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
            #endif
        }
        
            // --------------------------------------------------
            // Get Surface And BuiltinData
        
            void GetSurfaceAndBuiltinData(FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData RAY_TRACING_OPTIONAL_PARAMETERS)
            {
                // Don't dither if displaced tessellation (we're fading out the displacement instead to match the next LOD)
                #if !defined(SHADER_STAGE_RAY_TRACING) && !defined(_TESSELLATION_DISPLACEMENT)
                #ifdef LOD_FADE_CROSSFADE // enable dithering LOD transition if user select CrossFade transition in LOD group
                LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
                #endif
                #endif
        
                #ifndef SHADER_UNLIT
                #ifdef _DOUBLESIDED_ON
                    float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
                #else
                    float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
                #endif
        
                ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants); // Apply double sided flip on the vertex normal
                #endif // SHADER_UNLIT
        
                SurfaceDescriptionInputs surfaceDescriptionInputs = FragInputsToSurfaceDescriptionInputs(fragInputs, V);
        
                #if defined(HAVE_VFX_MODIFICATION)
                GraphProperties properties;
                ZERO_INITIALIZE(GraphProperties, properties);
        
                GetElementPixelProperties(fragInputs, properties);
        
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs, properties);
                #else
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs);
                #endif
        
                // Perform alpha test very early to save performance (a killed pixel will not sample textures)
                // TODO: split graph evaluation to grab just alpha dependencies first? tricky..
                #ifdef _ALPHATEST_ON
                    float alphaCutoff = surfaceDescription.AlphaClipThreshold;
                    #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
                    // The TransparentDepthPrepass is also used with SSR transparent.
                    // If an artists enable transaprent SSR but not the TransparentDepthPrepass itself, then we use AlphaClipThreshold
                    // otherwise if TransparentDepthPrepass is enabled we use AlphaClipThresholdDepthPrepass
                    #elif SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_POSTPASS
                    // DepthPostpass always use its own alpha threshold
                    alphaCutoff = surfaceDescription.AlphaClipThresholdDepthPostpass;
                    #elif (SHADERPASS == SHADERPASS_SHADOWS) || (SHADERPASS == SHADERPASS_RAYTRACING_VISIBILITY)
                    // If use shadow threshold isn't enable we don't allow any test
                    #endif
        
                    GENERIC_ALPHA_TEST(surfaceDescription.Alpha, alphaCutoff);
                #endif
        
                #if !defined(SHADER_STAGE_RAY_TRACING) && _DEPTHOFFSET_ON
                ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
                #endif
        
                #ifndef SHADER_UNLIT
                float3 bentNormalWS;
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS);
        
                #ifdef FRAG_INPUTS_USE_TEXCOORD1
                    float4 lightmapTexCoord1 = fragInputs.texCoord1;
                #else
                    float4 lightmapTexCoord1 = float4(0,0,0,0);
                #endif
        
                #ifdef FRAG_INPUTS_USE_TEXCOORD2
                    float4 lightmapTexCoord2 = fragInputs.texCoord2;
                #else
                    float4 lightmapTexCoord2 = float4(0,0,0,0);
                #endif
        
                // Builtin Data
                // For back lighting we use the oposite vertex normal
                InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], lightmapTexCoord1, lightmapTexCoord2, builtinData);
        
                #else
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData);
        
                ZERO_BUILTIN_INITIALIZE(builtinData); // No call to InitBuiltinData as we don't have any lighting
                builtinData.opacity = surfaceDescription.Alpha;
        
                #if defined(DEBUG_DISPLAY)
                    // Light Layers are currently not used for the Unlit shader (because it is not lit)
                    // But Unlit objects do cast shadows according to their rendering layer mask, which is what we want to
                    // display in the light layers visualization mode, therefore we need the renderingLayers
                    builtinData.renderingLayers = GetMeshRenderingLightLayer();
                #endif
        
                #endif // SHADER_UNLIT
        
                #ifdef _ALPHATEST_ON
                    // Used for sharpening by alpha to mask - Alpha to covertage is only used with depth only and forward pass (no shadow pass, no transparent pass)
                    builtinData.alphaClipTreshold = alphaCutoff;
                #endif
        
                // override sampleBakedGI - not used by Unlit
        
                builtinData.emissiveColor = surfaceDescription.Emission;
        
                // Note this will not fully work on transparent surfaces (can check with _SURFACE_TYPE_TRANSPARENT define)
                // We will always overwrite vt feeback with the nearest. So behind transparent surfaces vt will not be resolved
                // This is a limitation of the current MRT approach.
                #ifdef UNITY_VIRTUAL_TEXTURING
                #endif
        
                #if _DEPTHOFFSET_ON
                builtinData.depthOffset = surfaceDescription.DepthOffset;
                #endif
        
                // TODO: We should generate distortion / distortionBlur for non distortion pass
                #if (SHADERPASS == SHADERPASS_DISTORTION)
                builtinData.distortion = surfaceDescription.Distortion;
                builtinData.distortionBlur = surfaceDescription.DistortionBlur;
                #endif
        
                #ifndef SHADER_UNLIT
                // PostInitBuiltinData call ApplyDebugToBuiltinData
                PostInitBuiltinData(V, posInput, surfaceData, builtinData);
                #else
                ApplyDebugToBuiltinData(builtinData);
                #endif
        
                RAY_TRACING_OPTIONAL_ALPHA_TEST_PASS
            }
        
            // --------------------------------------------------
            // Main
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPassDepthOnly.hlsl"
        
            // --------------------------------------------------
            // Visual Effect Vertex Invocations
        
        	#ifdef HAVE_VFX_MODIFICATION
        	#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/VisualEffectVertex.hlsl"
        	#endif
        
            ENDHLSL
        }
        Pass
        {
            Name "MotionVectors"
            Tags
            {
                "LightMode" = "MotionVectors"
            }
        
            // Render State
            Cull [_CullMode]
        ZWrite On
        Stencil
        {
        WriteMask [_StencilWriteMaskMV]
        Ref [_StencilRefMV]
        CompFront Always
        PassFront Replace
        CompBack Always
        PassBack Replace
        }
        AlphaToMask [_AlphaCutoffEnable]
        
            // Debug
            // <None>
        
            // --------------------------------------------------
            // Pass
        
            HLSLPROGRAM
        
            // Pragmas
            #pragma multi_compile _ DOTS_INSTANCING_ON
        #pragma instancing_options renderinglayer
        #pragma target 4.5
        #pragma vertex Vert
        #pragma fragment Frag
        #pragma only_renderers d3d11 playstation xboxone xboxseries vulkan metal switch
        #pragma multi_compile_instancing
        
            // Keywords
            #pragma shader_feature_local _ _ALPHATEST_ON
        #pragma multi_compile_fragment _ WRITE_MSAA_DEPTH
        #pragma shader_feature _ _SURFACE_TYPE_TRANSPARENT
        #pragma shader_feature_local _ _DOUBLESIDED_ON
        #pragma shader_feature_local _ _ADD_PRECOMPUTED_VELOCITY
        #pragma shader_feature_local _ _TRANSPARENT_WRITES_MOTION_VEC
        #pragma shader_feature_local_fragment _ _ENABLE_FOG_ON_TRANSPARENT
        #pragma multi_compile _ LOD_FADE_CROSSFADE
        #pragma multi_compile _ WRITE_NORMAL_BUFFER
        #pragma shader_feature_local_fragment _ _DISABLE_DECALS
        #pragma shader_feature_local_raytracing _ _DISABLE_DECALS
        #pragma shader_feature_local_fragment _ _DISABLE_SSR
        #pragma shader_feature_local_raytracing _ _DISABLE_SSR
        #pragma shader_feature_local_fragment _ _DISABLE_SSR_TRANSPARENT
        #pragma shader_feature_local_raytracing _ _DISABLE_SSR_TRANSPARENT
        #pragma multi_compile _ WRITE_DECAL_BUFFER
        #pragma shader_feature_local _ _REFRACTION_PLANE _REFRACTION_SPHERE _REFRACTION_THIN
            // GraphKeywords: <None>
        
            // For custom interpolators to inject a substruct definition before FragInputs definition,
            // allowing for FragInputs to capture CI's intended for ShaderGraph's SDI.
            struct CustomInterpolators
        {
        };
        #define USE_CUSTOMINTERP_SUBSTRUCT
        
        
        
            // TODO: Merge FragInputsVFX substruct with CustomInterpolators.
        	#ifdef HAVE_VFX_MODIFICATION
        	struct FragInputsVFX
            {
                /* WARNING: $splice Could not find named fragment 'FragInputsVFX' */
            };
            #endif
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/GeometricTools.hlsl" // Required by Tessellation.hlsl
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Tessellation.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl" // Required to be include before we include properties as it define DECLARE_STACK_CB
            // Always include Shader Graph version
            // Always include last to avoid double macros
            #include "Packages/com.unity.shadergraph/ShaderGraphLibrary/Functions.hlsl" // Need to be here for Gradient struct definition
        
            // --------------------------------------------------
            // Defines
        
            // Attribute
            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TANGENT
            #define ATTRIBUTES_NEED_TEXCOORD0
            #define VARYINGS_NEED_POSITION_WS
            #define VARYINGS_NEED_TANGENT_TO_WORLD
            #define VARYINGS_NEED_TEXCOORD0
        
            #define HAVE_MESH_MODIFICATION
        
            //Strip down the FragInputs.hlsl (on graphics), so we can only optimize the interpolators we use.
            //if by accident something requests contents of FragInputs.hlsl, it will be caught as a compiler error
            //Frag inputs stripping is only enabled when FRAG_INPUTS_ENABLE_STRIPPING is set
            #if !defined(SHADER_STAGE_RAY_TRACING) && SHADERPASS != SHADERPASS_RAYTRACING_GBUFFER && SHADERPASS != SHADERPASS_FULL_SCREEN_DEBUG
            #define FRAG_INPUTS_ENABLE_STRIPPING
            #endif
            #define FRAG_INPUTS_USE_TEXCOORD0
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
        
        
        
            #define SHADERPASS SHADERPASS_MOTION_VECTORS
        
        
            // Following two define are a workaround introduce in 10.1.x for RaytracingQualityNode
            // The ShaderGraph don't support correctly migration of this node as it serialize all the node data
            // in the json file making it impossible to uprgrade. Until we get a fix, we do a workaround here
            // to still allow us to rename the field and keyword of this node without breaking existing code.
            #ifdef RAYTRACING_SHADER_GRAPH_DEFAULT
            #define RAYTRACING_SHADER_GRAPH_HIGH
            #endif
        
            #ifdef RAYTRACING_SHADER_GRAPH_RAYTRACED
            #define RAYTRACING_SHADER_GRAPH_LOW
            #endif
            // end
        
            #ifndef SHADER_UNLIT
            // We need isFrontFace when using double sided - it is not required for unlit as in case of unlit double sided only drive the cullmode
            // VARYINGS_NEED_CULLFACE can be define by VaryingsMeshToPS.FaceSign input if a IsFrontFace Node is included in the shader graph.
            #if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
                #define VARYINGS_NEED_CULLFACE
            #endif
            #endif
        
            // Specific Material Define
        #define _MATERIAL_FEATURE_TRANSMISSION 1
        #define _AMBIENT_OCCLUSION 1
        #define _SPECULAR_OCCLUSION_FROM_AO 1
        #define _ENERGY_CONSERVING_SPECULAR 1
        
        // If we use subsurface scattering, enable output split lighting (for forward pass)
        #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
            #define OUTPUT_SPLIT_LIGHTING
        #endif
        
        // This shader support recursive rendering for raytracing
        #define HAVE_RECURSIVE_RENDERING
        
        // In Path Tracing, For all single-sided, refractive materials, we want to force a thin refraction model
        #if (SHADERPASS == SHADERPASS_PATH_TRACING) && !defined(_DOUBLESIDED_ON) && (defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE))
            #undef  _REFRACTION_PLANE
            #undef  _REFRACTION_SPHERE
            #define _REFRACTION_THIN
        #endif
            // Caution: we can use the define SHADER_UNLIT onlit after the above Material include as it is the Unlit template who define it
        
            // To handle SSR on transparent correctly with a possibility to enable/disable it per framesettings
            // we should have a code like this:
            // if !defined(_DISABLE_SSR_TRANSPARENT)
            // pragma multi_compile _ WRITE_NORMAL_BUFFER
            // endif
            // i.e we enable the multicompile only if we can receive SSR or not, and then C# code drive
            // it based on if SSR transparent in frame settings and not (and stripper can strip it).
            // this is currently not possible with our current preprocessor as _DISABLE_SSR_TRANSPARENT is a keyword not a define
            // so instead we used this and chose to pay the extra cost of normal write even if SSR transaprent is disabled.
            // Ideally the shader graph generator should handle it but condition below can't be handle correctly for now.
            #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
            #if !defined(_DISABLE_SSR_TRANSPARENT) && !defined(SHADER_UNLIT)
                #define WRITE_NORMAL_BUFFER
            #endif
            #endif
        
            #ifndef DEBUG_DISPLAY
                // In case of opaque we don't want to perform the alpha test, it is done in depth prepass and we use depth equal for ztest (setup from UI)
                // Don't do it with debug display mode as it is possible there is no depth prepass in this case
                #if !defined(_SURFACE_TYPE_TRANSPARENT)
                    #if SHADERPASS == SHADERPASS_FORWARD
                    #define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
                    #elif SHADERPASS == SHADERPASS_GBUFFER
                    #define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
                    #endif
                #endif
            #endif
        
            // Define _DEFERRED_CAPABLE_MATERIAL for shader capable to run in deferred pass
            #if defined(SHADER_LIT) && !defined(_SURFACE_TYPE_TRANSPARENT)
                #define _DEFERRED_CAPABLE_MATERIAL
            #endif
        
            // Translate transparent motion vector define
            #if defined(_TRANSPARENT_WRITES_MOTION_VEC) && defined(_SURFACE_TYPE_TRANSPARENT)
                #define _WRITE_TRANSPARENT_MOTION_VECTOR
            #endif
        
            // -- Graph Properties
            CBUFFER_START(UnityPerMaterial)
        float4 _DiffusionProfileAsset;
        float _DiffusionProfileHash;
        float4 _TrunkBaseColor;
        float4 _BarkBaseColor;
        float _Backface_Thickness_Mask_Threshold;
        float2 _Backface_Thickness_Mask_Remap;
        float _Backface_Brightness;
        float _Cross_Backface_Mask_Power;
        float _Backface_Saturation;
        float4 _HealthyColor;
        float4 _DryColor;
        float _AlphaCutoff;
        float _AlphaShadowThreshold;
        float4 _BaseColorMap_TexelSize;
        float4 _TilingOffset;
        float _HealthyandDryColorNoisePower;
        float4 _NormalMap_TexelSize;
        float _NormalScale;
        float _AORemapMax;
        float _SmoothnessRemapMax;
        float4 _Mask_TexelSize;
        float _Thickness;
        float _WindNormalInfluence;
        float4 _VertexNormalMultiply;
        float _ColorNoiseTilling;
        float _Trunk_Normal_Scale;
        float _Global_Base_Brightness;
        float _Trunk_Smoothness_Remap_Max;
        float4 _EmissionColor;
        float _UseShadowThreshold;
        float4 _DoubleSidedConstants;
        float _BlendMode;
        float _EnableBlendModePreserveSpecularLighting;
        float _RayTracing;
        float _RefractionModel;
        CBUFFER_END
        
        
        // Object and Global properties
        SAMPLER(SamplerState_Linear_Repeat);
        SAMPLER(SamplerState_Linear_Repeat_Aniso8);
        TEXTURE2D(_BaseColorMap);
        SAMPLER(sampler_BaseColorMap);
        TEXTURE2D(_NormalMap);
        SAMPLER(sampler_NormalMap);
        TEXTURE2D(_Mask);
        SAMPLER(sampler_Mask);
        
            // -- Property used by ScenePickingPass
            #ifdef SCENEPICKINGPASS
            float4 _SelectionID;
            #endif
        
            // -- Properties used by SceneSelectionPass
            #ifdef SCENESELECTIONPASS
            int _ObjectId;
            int _PassValue;
            #endif
        
            // Includes
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
        #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Hashes.hlsl"
        
            // --------------------------------------------------
            // Structs and Packing
        
            struct AttributesMesh
        {
             float3 positionOS : POSITION;
             float3 normalOS : NORMAL;
             float4 tangentOS : TANGENT;
             float4 uv0 : TEXCOORD0;
            #if UNITY_ANY_INSTANCING_ENABLED
             uint instanceID : INSTANCEID_SEMANTIC;
            #endif
        };
        struct VaryingsMeshToPS
        {
            SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
             float3 positionRWS;
             float3 normalWS;
             float4 tangentWS;
             float4 texCoord0;
            #if UNITY_ANY_INSTANCING_ENABLED
             uint instanceID : CUSTOM_INSTANCE_ID;
            #endif
        };
        struct VertexDescriptionInputs
        {
             float3 ObjectSpaceNormal;
             float3 ObjectSpaceTangent;
             float3 ObjectSpacePosition;
        };
        struct SurfaceDescriptionInputs
        {
             float3 TangentSpaceNormal;
             float3 AbsoluteWorldSpacePosition;
             float4 uv0;
        };
        struct PackedVaryingsMeshToPS
        {
            SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
             float4 tangentWS : INTERP0;
             float4 texCoord0 : INTERP1;
             float3 positionRWS : INTERP2;
             float3 normalWS : INTERP3;
            #if UNITY_ANY_INSTANCING_ENABLED
             uint instanceID : CUSTOM_INSTANCE_ID;
            #endif
        };
        
            PackedVaryingsMeshToPS PackVaryingsMeshToPS (VaryingsMeshToPS input)
        {
            PackedVaryingsMeshToPS output;
            ZERO_INITIALIZE(PackedVaryingsMeshToPS, output);
            output.positionCS = input.positionCS;
            output.tangentWS.xyzw = input.tangentWS;
            output.texCoord0.xyzw = input.texCoord0;
            output.positionRWS.xyz = input.positionRWS;
            output.normalWS.xyz = input.normalWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif
            return output;
        }
        
        VaryingsMeshToPS UnpackVaryingsMeshToPS (PackedVaryingsMeshToPS input)
        {
            VaryingsMeshToPS output;
            output.positionCS = input.positionCS;
            output.tangentWS = input.tangentWS.xyzw;
            output.texCoord0 = input.texCoord0.xyzw;
            output.positionRWS = input.positionRWS.xyz;
            output.normalWS = input.normalWS.xyz;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif
            return output;
        }
        
        
            // --------------------------------------------------
            // Graph
        
        
            // Graph Functions
            
        void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
        {
            Out = UV * Tiling + Offset;
        }
        
        void Unity_Multiply_float4_float4(float4 A, float4 B, out float4 Out)
        {
            Out = A * B;
        }
        
        void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
        {
            Out = lerp(A, B, T);
        }
        
        float Unity_SimpleNoise_ValueNoise_LegacySine_float (float2 uv)
        {
            float2 i = floor(uv);
            float2 f = frac(uv);
            f = f * f * (3.0 - 2.0 * f);
            uv = abs(frac(uv) - 0.5);
            float2 c0 = i + float2(0.0, 0.0);
            float2 c1 = i + float2(1.0, 0.0);
            float2 c2 = i + float2(0.0, 1.0);
            float2 c3 = i + float2(1.0, 1.0);
            float r0; Hash_LegacySine_2_1_float(c0, r0);
            float r1; Hash_LegacySine_2_1_float(c1, r1);
            float r2; Hash_LegacySine_2_1_float(c2, r2);
            float r3; Hash_LegacySine_2_1_float(c3, r3);
            float bottomOfGrid = lerp(r0, r1, f.x);
            float topOfGrid = lerp(r2, r3, f.x);
            float t = lerp(bottomOfGrid, topOfGrid, f.y);
            return t;
        }
        
        void Unity_SimpleNoise_LegacySine_float(float2 UV, float Scale, out float Out)
        {
            float freq, amp;
            Out = 0.0f;
            freq = pow(2.0, float(0));
            amp = pow(0.5, float(3-0));
            Out += Unity_SimpleNoise_ValueNoise_LegacySine_float(float2(UV.xy*(Scale/freq)))*amp;
            freq = pow(2.0, float(1));
            amp = pow(0.5, float(3-1));
            Out += Unity_SimpleNoise_ValueNoise_LegacySine_float(float2(UV.xy*(Scale/freq)))*amp;
            freq = pow(2.0, float(2));
            amp = pow(0.5, float(3-2));
            Out += Unity_SimpleNoise_ValueNoise_LegacySine_float(float2(UV.xy*(Scale/freq)))*amp;
        }
        
        void Unity_Absolute_float(float In, out float Out)
        {
            Out = abs(In);
        }
        
        void Unity_Power_float(float A, float B, out float Out)
        {
            Out = pow(A, B);
        }
        
        void Unity_Clamp_float(float In, float Min, float Max, out float Out)
        {
            Out = clamp(In, Min, Max);
        }
        
        void Unity_Saturation_float(float3 In, float Saturation, out float3 Out)
        {
            float luma = dot(In, float3(0.2126729, 0.7151522, 0.0721750));
            Out =  luma.xxx + Saturation.xxx * (In - luma.xxx);
        }
        
        void Unity_Blend_Screen_float3(float3 Base, float3 Blend, out float3 Out, float Opacity)
        {
            Out = 1.0 - (1.0 - Blend) * (1.0 - Base);
            Out = lerp(Base, Out, Opacity);
        }
        
        void Unity_Clamp_float3(float3 In, float3 Min, float3 Max, out float3 Out)
        {
            Out = clamp(In, Min, Max);
        }
        
        void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
        {
            Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
        }
        
        void Unity_OneMinus_float(float In, out float Out)
        {
            Out = 1 - In;
        }
        
        void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
        {
            Out = lerp(A, B, T);
        }
        
        void Unity_Multiply_float3_float3(float3 A, float3 B, out float3 Out)
        {
            Out = A * B;
        }
        
        void Unity_Lerp_float(float A, float B, float T, out float Out)
        {
            Out = lerp(A, B, T);
        }
        
        void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
        {
            Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
        }
        
        void Unity_Multiply_float_float(float A, float B, out float Out)
        {
            Out = A * B;
        }
        
            // Graph Vertex
            struct VertexDescription
        {
            float3 Position;
            float3 Normal;
            float3 Tangent;
        };
        
        VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
        {
            VertexDescription description = (VertexDescription)0;
            description.Position = IN.ObjectSpacePosition;
            description.Normal = IN.ObjectSpaceNormal;
            description.Tangent = IN.ObjectSpaceTangent;
            return description;
        }
        
            // Graph Pixel
            struct SurfaceDescription
        {
            float3 BaseColor;
            float3 Emission;
            float Alpha;
            float AlphaClipThreshold;
            float AlphaClipThresholdShadow;
            float3 BentNormal;
            float Smoothness;
            float Occlusion;
            float3 NormalTS;
            float TransmissionMask;
            float Thickness;
            float DiffusionProfileHash;
        };
        
        SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
        {
            SurfaceDescription surface = (SurfaceDescription)0;
            UnityTexture2D _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_BaseColorMap);
            float4 _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4 = _TilingOffset;
            float _Split_60538633130155809820b3185c81057f_R_1_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[0];
            float _Split_60538633130155809820b3185c81057f_G_2_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[1];
            float _Split_60538633130155809820b3185c81057f_B_3_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[2];
            float _Split_60538633130155809820b3185c81057f_A_4_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[3];
            float2 _Vector2_83b2ea7a32ab548fb8c20dce14204561_Out_0_Vector2 = float2(_Split_60538633130155809820b3185c81057f_R_1_Float, _Split_60538633130155809820b3185c81057f_G_2_Float);
            float2 _Vector2_188e122ac0c7888f9f5fbde73f9edd75_Out_0_Vector2 = float2(_Split_60538633130155809820b3185c81057f_B_3_Float, _Split_60538633130155809820b3185c81057f_A_4_Float);
            float2 _TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2;
            Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_83b2ea7a32ab548fb8c20dce14204561_Out_0_Vector2, _Vector2_188e122ac0c7888f9f5fbde73f9edd75_Out_0_Vector2, _TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2);
            float4 _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.tex, _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.samplerstate, _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_R_4_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.r;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_G_5_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.g;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_B_6_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.b;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_A_7_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.a;
            float4 _Property_d37c4e2cc4f949f581f76dcb73d50e87_Out_0_Vector4 = _BarkBaseColor;
            float4 _Multiply_e4794b5d7e19433599f2b4e150644bea_Out_2_Vector4;
            Unity_Multiply_float4_float4(_SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4, _Property_d37c4e2cc4f949f581f76dcb73d50e87_Out_0_Vector4, _Multiply_e4794b5d7e19433599f2b4e150644bea_Out_2_Vector4);
            float4 _Property_0f3c5f287e8145bc95fd52cfba4b8fcc_Out_0_Vector4 = _TrunkBaseColor;
            float4 _Multiply_2453fa0c275a46cca1a866a080d90ddf_Out_2_Vector4;
            Unity_Multiply_float4_float4(_SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4, _Property_0f3c5f287e8145bc95fd52cfba4b8fcc_Out_0_Vector4, _Multiply_2453fa0c275a46cca1a866a080d90ddf_Out_2_Vector4);
            UnityTexture2D _Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_Mask);
            float4 _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_R_4_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.r;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.g;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_B_6_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.b;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_A_7_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.a;
            float4 _Lerp_9056381ab3034355b45968f0d1ff2f1a_Out_3_Vector4;
            Unity_Lerp_float4(_Multiply_e4794b5d7e19433599f2b4e150644bea_Out_2_Vector4, _Multiply_2453fa0c275a46cca1a866a080d90ddf_Out_2_Vector4, (_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_B_6_Float.xxxx), _Lerp_9056381ab3034355b45968f0d1ff2f1a_Out_3_Vector4);
            float4 _Property_944e0c60198849afb235eb9940da5dd9_Out_0_Vector4 = _DryColor;
            float4 _Property_621f9271d8734c81b9001229b0296656_Out_0_Vector4 = _HealthyColor;
            float _Split_99caf98864a9e980997a02cedd282dd0_R_1_Float = IN.AbsoluteWorldSpacePosition[0];
            float _Split_99caf98864a9e980997a02cedd282dd0_G_2_Float = IN.AbsoluteWorldSpacePosition[1];
            float _Split_99caf98864a9e980997a02cedd282dd0_B_3_Float = IN.AbsoluteWorldSpacePosition[2];
            float _Split_99caf98864a9e980997a02cedd282dd0_A_4_Float = 0;
            float2 _Vector2_ddc95fa04fb4858daf984190322978b9_Out_0_Vector2 = float2(_Split_99caf98864a9e980997a02cedd282dd0_R_1_Float, _Split_99caf98864a9e980997a02cedd282dd0_B_3_Float);
            float _Property_4d778d1ae72a416b96bf6cb1986a7d5d_Out_0_Float = _ColorNoiseTilling;
            float _SimpleNoise_96327065e2b0428f83e25f93c7e5a748_Out_2_Float;
            Unity_SimpleNoise_LegacySine_float(_Vector2_ddc95fa04fb4858daf984190322978b9_Out_0_Vector2, _Property_4d778d1ae72a416b96bf6cb1986a7d5d_Out_0_Float, _SimpleNoise_96327065e2b0428f83e25f93c7e5a748_Out_2_Float);
            float _Absolute_3da7acf58a45403cad1e7c432d78f027_Out_1_Float;
            Unity_Absolute_float(_SimpleNoise_96327065e2b0428f83e25f93c7e5a748_Out_2_Float, _Absolute_3da7acf58a45403cad1e7c432d78f027_Out_1_Float);
            float _Property_0dff529d33cb42e388c9d874effe6e19_Out_0_Float = _HealthyandDryColorNoisePower;
            float _Power_77b7c0eba07f4b9da46f2fa461c49201_Out_2_Float;
            Unity_Power_float(_Absolute_3da7acf58a45403cad1e7c432d78f027_Out_1_Float, _Property_0dff529d33cb42e388c9d874effe6e19_Out_0_Float, _Power_77b7c0eba07f4b9da46f2fa461c49201_Out_2_Float);
            float _Clamp_efb2cde09ec64325a2f78a848b0827b2_Out_3_Float;
            Unity_Clamp_float(_Power_77b7c0eba07f4b9da46f2fa461c49201_Out_2_Float, float(0), float(1), _Clamp_efb2cde09ec64325a2f78a848b0827b2_Out_3_Float);
            float4 _Lerp_b995ffde83d24283ac272745617fa60c_Out_3_Vector4;
            Unity_Lerp_float4(_Property_944e0c60198849afb235eb9940da5dd9_Out_0_Vector4, _Property_621f9271d8734c81b9001229b0296656_Out_0_Vector4, (_Clamp_efb2cde09ec64325a2f78a848b0827b2_Out_3_Float.xxxx), _Lerp_b995ffde83d24283ac272745617fa60c_Out_3_Vector4);
            float4 _Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4;
            Unity_Multiply_float4_float4(_SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4, _Lerp_b995ffde83d24283ac272745617fa60c_Out_3_Vector4, _Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4);
            float _Property_a52cc4db448642208842be98e18796fb_Out_0_Float = _Backface_Saturation;
            float3 _Saturation_1a5be2ae12084c59883f7d315d09cd80_Out_2_Vector3;
            Unity_Saturation_float((_Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4.xyz), _Property_a52cc4db448642208842be98e18796fb_Out_0_Float, _Saturation_1a5be2ae12084c59883f7d315d09cd80_Out_2_Vector3);
            float _Property_547f6c365f204d14a383183448811966_Out_0_Float = _Backface_Brightness;
            float3 _Blend_9d43ee127ca04ec09dd9151a833d8d61_Out_2_Vector3;
            Unity_Blend_Screen_float3(_Saturation_1a5be2ae12084c59883f7d315d09cd80_Out_2_Vector3, (_Property_547f6c365f204d14a383183448811966_Out_0_Float.xxx), _Blend_9d43ee127ca04ec09dd9151a833d8d61_Out_2_Vector3, float(1));
            float3 _Clamp_f7855b2ac55c4d43b25a4a1e56dbbbf7_Out_3_Vector3;
            Unity_Clamp_float3(_Blend_9d43ee127ca04ec09dd9151a833d8d61_Out_2_Vector3, float3(0, 0, 0), float3(1, 1, 1), _Clamp_f7855b2ac55c4d43b25a4a1e56dbbbf7_Out_3_Vector3);
            float2 _Property_b0a46b9c34574501a2f500d2f5745793_Out_0_Vector2 = _Backface_Thickness_Mask_Remap;
            float _Remap_bbbefbf0fbaf41d8a6d07b465d45488f_Out_3_Float;
            Unity_Remap_float(_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_A_7_Float, float2 (0, 1), _Property_b0a46b9c34574501a2f500d2f5745793_Out_0_Vector2, _Remap_bbbefbf0fbaf41d8a6d07b465d45488f_Out_3_Float);
            float _Clamp_6ac81c92e9a64e958055eca61b82e791_Out_3_Float;
            Unity_Clamp_float(_Remap_bbbefbf0fbaf41d8a6d07b465d45488f_Out_3_Float, float(0), float(1), _Clamp_6ac81c92e9a64e958055eca61b82e791_Out_3_Float);
            float _Property_3a1e9cc1507b46b2af88ab75dfc37b44_Out_0_Float = _Backface_Thickness_Mask_Threshold;
            float _Power_1fccfa34ffba46ceac25f1238aa4e1b5_Out_2_Float;
            Unity_Power_float(_Clamp_6ac81c92e9a64e958055eca61b82e791_Out_3_Float, _Property_3a1e9cc1507b46b2af88ab75dfc37b44_Out_0_Float, _Power_1fccfa34ffba46ceac25f1238aa4e1b5_Out_2_Float);
            float _Clamp_e55b4d1f4fda4e97bcfe15cfe9c6fd05_Out_3_Float;
            Unity_Clamp_float(_Power_1fccfa34ffba46ceac25f1238aa4e1b5_Out_2_Float, float(0), float(1), _Clamp_e55b4d1f4fda4e97bcfe15cfe9c6fd05_Out_3_Float);
            float _OneMinus_16a8ddad0aee4e5ca379aef306048984_Out_1_Float;
            Unity_OneMinus_float(_Clamp_e55b4d1f4fda4e97bcfe15cfe9c6fd05_Out_3_Float, _OneMinus_16a8ddad0aee4e5ca379aef306048984_Out_1_Float);
            float3 _Lerp_9c8a6dd2927446309acc26d9f217de99_Out_3_Vector3;
            Unity_Lerp_float3((_Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4.xyz), _Clamp_f7855b2ac55c4d43b25a4a1e56dbbbf7_Out_3_Vector3, (_OneMinus_16a8ddad0aee4e5ca379aef306048984_Out_1_Float.xxx), _Lerp_9c8a6dd2927446309acc26d9f217de99_Out_3_Vector3);
            float _Absolute_98dfaf1178334fc287f9e4d4b5f3a0f0_Out_1_Float;
            Unity_Absolute_float(_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_R_4_Float, _Absolute_98dfaf1178334fc287f9e4d4b5f3a0f0_Out_1_Float);
            float _Property_08b97a5bb158439e9155434b6637ac33_Out_0_Float = _Cross_Backface_Mask_Power;
            float _Power_c8f61d8af16945f9b82731ed18d38dd9_Out_2_Float;
            Unity_Power_float(_Absolute_98dfaf1178334fc287f9e4d4b5f3a0f0_Out_1_Float, _Property_08b97a5bb158439e9155434b6637ac33_Out_0_Float, _Power_c8f61d8af16945f9b82731ed18d38dd9_Out_2_Float);
            float _Clamp_c8b7bf714ebb484d8aa73d545b2f9d59_Out_3_Float;
            Unity_Clamp_float(_Power_c8f61d8af16945f9b82731ed18d38dd9_Out_2_Float, float(0), float(1), _Clamp_c8b7bf714ebb484d8aa73d545b2f9d59_Out_3_Float);
            float3 _Lerp_343d7507e4664bd7bc5108bcf0d55854_Out_3_Vector3;
            Unity_Lerp_float3(_Lerp_9c8a6dd2927446309acc26d9f217de99_Out_3_Vector3, (_Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4.xyz), (_Clamp_c8b7bf714ebb484d8aa73d545b2f9d59_Out_3_Float.xxx), _Lerp_343d7507e4664bd7bc5108bcf0d55854_Out_3_Vector3);
            float3 _Lerp_0d72c41eff034cfaaaf0208f4bf42433_Out_3_Vector3;
            Unity_Lerp_float3((_Lerp_9056381ab3034355b45968f0d1ff2f1a_Out_3_Vector4.xyz), _Lerp_343d7507e4664bd7bc5108bcf0d55854_Out_3_Vector3, (_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float.xxx), _Lerp_0d72c41eff034cfaaaf0208f4bf42433_Out_3_Vector3);
            float _Property_09c643c04af64fb18f3a77b935844ecc_Out_0_Float = _Global_Base_Brightness;
            float3 _Multiply_61b0f4818da94adfa23e13d8e3e376a8_Out_2_Vector3;
            Unity_Multiply_float3_float3(_Lerp_0d72c41eff034cfaaaf0208f4bf42433_Out_3_Vector3, (_Property_09c643c04af64fb18f3a77b935844ecc_Out_0_Float.xxx), _Multiply_61b0f4818da94adfa23e13d8e3e376a8_Out_2_Vector3);
            float3 _Clamp_359788e8ad134650b865e76600af6700_Out_3_Vector3;
            Unity_Clamp_float3(_Multiply_61b0f4818da94adfa23e13d8e3e376a8_Out_2_Vector3, float3(0, 0, 0), float3(1, 1, 1), _Clamp_359788e8ad134650b865e76600af6700_Out_3_Vector3);
            float _Property_067d68a770a25e8f978ca090306a96d8_Out_0_Float = _AlphaCutoff;
            float _Property_4b59dc86107847d5b565cde1e47efb8f_Out_0_Float = _AlphaShadowThreshold;
            float _Property_c35305c7157c4d3ba1db4ba61b2e2ebc_Out_0_Float = _Trunk_Smoothness_Remap_Max;
            float _Property_0edea7916ed7a189a62b0faf2c274601_Out_0_Float = _SmoothnessRemapMax;
            float _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float;
            Unity_Lerp_float(_Property_c35305c7157c4d3ba1db4ba61b2e2ebc_Out_0_Float, _Property_0edea7916ed7a189a62b0faf2c274601_Out_0_Float, _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float, _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float);
            float _Property_48e1c5285b48c78e8af19e38f4bd77f9_Out_0_Float = _AORemapMax;
            UnityTexture2D _Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_NormalMap);
            float4 _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.rgb = UnpackNormal(_SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4);
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_R_4_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.r;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_G_5_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.g;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_B_6_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.b;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_A_7_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.a;
            float _Property_b07156802a1240f7a8c14a272c5f1b36_Out_0_Float = _Trunk_Normal_Scale;
            float _Property_72e436a108ad64868e46d548c585c5f3_Out_0_Float = _NormalScale;
            float _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float;
            Unity_Lerp_float(_Property_b07156802a1240f7a8c14a272c5f1b36_Out_0_Float, _Property_72e436a108ad64868e46d548c585c5f3_Out_0_Float, _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float, _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float);
            float3 _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3;
            Unity_NormalStrength_float((_SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.xyz), _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float, _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3);
            float _Property_2fa2ab76399ae48aaf1180768279e6b9_Out_0_Float = _Thickness;
            float _Multiply_aed8020082acc482b9303a61b01a1a1a_Out_2_Float;
            Unity_Multiply_float_float(_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_A_7_Float, _Property_2fa2ab76399ae48aaf1180768279e6b9_Out_0_Float, _Multiply_aed8020082acc482b9303a61b01a1a1a_Out_2_Float);
            surface.BaseColor = _Clamp_359788e8ad134650b865e76600af6700_Out_3_Vector3;
            surface.Emission = float3(0, 0, 0);
            surface.Alpha = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_A_7_Float;
            surface.AlphaClipThreshold = _Property_067d68a770a25e8f978ca090306a96d8_Out_0_Float;
            surface.AlphaClipThresholdShadow = _Property_4b59dc86107847d5b565cde1e47efb8f_Out_0_Float;
            surface.BentNormal = IN.TangentSpaceNormal;
            surface.Smoothness = _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float;
            surface.Occlusion = _Property_48e1c5285b48c78e8af19e38f4bd77f9_Out_0_Float;
            surface.NormalTS = _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3;
            surface.TransmissionMask = float(1);
            surface.Thickness = _Multiply_aed8020082acc482b9303a61b01a1a1a_Out_2_Float;
            surface.DiffusionProfileHash = _DiffusionProfileHash;
            return surface;
        }
        
            // --------------------------------------------------
            // Build Graph Inputs
            #ifdef HAVE_VFX_MODIFICATION
            #define VFX_SRP_ATTRIBUTES AttributesMesh
            #define VaryingsMeshType VaryingsMeshToPS
            #define VFX_SRP_VARYINGS VaryingsMeshType
            #define VFX_SRP_SURFACE_INPUTS FragInputs
            #endif
            
        VertexDescriptionInputs AttributesMeshToVertexDescriptionInputs(AttributesMesh input)
        {
            VertexDescriptionInputs output;
            ZERO_INITIALIZE(VertexDescriptionInputs, output);
        
            output.ObjectSpaceNormal =                          input.normalOS;
            output.ObjectSpaceTangent =                         input.tangentOS.xyz;
            output.ObjectSpacePosition =                        input.positionOS;
        
            return output;
        }
        
        VertexDescription GetVertexDescription(AttributesMesh input, float3 timeParameters
        #ifdef HAVE_VFX_MODIFICATION
            , AttributesElement element
        #endif
        )
        {
            // build graph inputs
            VertexDescriptionInputs vertexDescriptionInputs = AttributesMeshToVertexDescriptionInputs(input);
            // Override time parameters with used one (This is required to correctly handle motion vectors for vertex animation based on time)
        
            // evaluate vertex graph
        #ifdef HAVE_VFX_MODIFICATION
            GraphProperties properties;
            ZERO_INITIALIZE(GraphProperties, properties);
        
            // Fetch the vertex graph properties for the particle instance.
            GetElementVertexProperties(element, properties);
        
            VertexDescription vertexDescription = VertexDescriptionFunction(vertexDescriptionInputs, properties);
        #else
            VertexDescription vertexDescription = VertexDescriptionFunction(vertexDescriptionInputs);
        #endif
            return vertexDescription;
        
        }
        
        AttributesMesh ApplyMeshModification(AttributesMesh input, float3 timeParameters
        #ifdef USE_CUSTOMINTERP_SUBSTRUCT
            #ifdef TESSELLATION_ON
            , inout VaryingsMeshToDS varyings
            #else
            , inout VaryingsMeshToPS varyings
            #endif
        #endif
        #ifdef HAVE_VFX_MODIFICATION
                , AttributesElement element
        #endif
            )
        {
            VertexDescription vertexDescription = GetVertexDescription(input, timeParameters
        #ifdef HAVE_VFX_MODIFICATION
                , element
        #endif
            );
        
            // copy graph output to the results
            input.positionOS = vertexDescription.Position;
            input.normalOS = vertexDescription.Normal;
            input.tangentOS.xyz = vertexDescription.Tangent;
        
            
        
            return input;
        }
        
        #if defined(_ADD_CUSTOM_VELOCITY) // For shader graph custom velocity
        // Return precomputed Velocity in object space
        float3 GetCustomVelocity(AttributesMesh input
        #ifdef HAVE_VFX_MODIFICATION
            , AttributesElement element
        #endif
        )
        {
            VertexDescription vertexDescription = GetVertexDescription(input, _TimeParameters.xyz
        #ifdef HAVE_VFX_MODIFICATION
                , element
        #endif
            );
            return vertexDescription.CustomVelocity;
        }
        #endif
        
        FragInputs BuildFragInputs(VaryingsMeshToPS input)
        {
            FragInputs output;
            ZERO_INITIALIZE(FragInputs, output);
        
            // Init to some default value to make the computer quiet (else it output 'divide by zero' warning even if value is not used).
            // TODO: this is a really poor workaround, but the variable is used in a bunch of places
            // to compute normals which are then passed on elsewhere to compute other values...
            output.tangentToWorld = k_identity3x3;
            output.positionSS = input.positionCS;       // input.positionCS is SV_Position
        
            output.positionRWS =                input.positionRWS;
            output.tangentToWorld =             BuildTangentToWorld(input.tangentWS, input.normalWS);
            output.texCoord0 =                  input.texCoord0;
        
        #ifdef HAVE_VFX_MODIFICATION
            // FragInputs from VFX come from two places: Interpolator or CBuffer.
        #if VFX_USE_GRAPH_VALUES
            uint instanceActiveIndex = asuint(UNITY_ACCESS_INSTANCED_PROP(PerInstance, _InstanceActiveIndex));
            /* WARNING: $splice Could not find named fragment 'VFXLoadGraphValues' */
        #endif
        
            /* WARNING: $splice Could not find named fragment 'VFXSetFragInputs' */
        
        #endif
        
            // splice point to copy custom interpolator fields from varyings to frag inputs
            
        
            return output;
        }
        
        // existing HDRP code uses the combined function to go directly from packed to frag inputs
        FragInputs UnpackVaryingsMeshToFragInputs(PackedVaryingsMeshToPS input)
        {
            UNITY_SETUP_INSTANCE_ID(input);
        #if defined(HAVE_VFX_MODIFICATION) && defined(UNITY_INSTANCING_ENABLED)
            unity_InstanceID = input.instanceID;
        #endif
            VaryingsMeshToPS unpacked = UnpackVaryingsMeshToPS(input);
            return BuildFragInputs(unpacked);
        }
            SurfaceDescriptionInputs FragInputsToSurfaceDescriptionInputs(FragInputs input, float3 viewWS)
        {
            SurfaceDescriptionInputs output;
            ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
        
            #if defined(SHADER_STAGE_RAY_TRACING)
            #else
            #endif
            output.TangentSpaceNormal =                         float3(0.0f, 0.0f, 1.0f);
            output.AbsoluteWorldSpacePosition =                 GetAbsolutePositionWS(input.positionRWS);
        
        #if UNITY_UV_STARTS_AT_TOP
        #else
        #endif
        
        
            output.uv0 =                                        input.texCoord0;
        
            // splice point to copy frag inputs custom interpolator pack into the SDI
            
        
            return output;
        }
        
            // --------------------------------------------------
            // Build Surface Data (Specific Material)
        
        void ApplyDecalToSurfaceDataNoNormal(DecalSurfaceData decalSurfaceData, inout SurfaceData surfaceData);
        
        void ApplyDecalAndGetNormal(FragInputs fragInputs, PositionInputs posInput, SurfaceDescription surfaceDescription,
            inout SurfaceData surfaceData)
        {
            float3 doubleSidedConstants = GetDoubleSidedConstants();
        
        #ifdef DECAL_NORMAL_BLENDING
            // SG nodes don't ouptut surface gradients, so if decals require surf grad blending, we have to convert
            // the normal to gradient before applying the decal. We then have to resolve the gradient back to world space
            float3 normalTS;
        
            normalTS = SurfaceGradientFromTangentSpaceNormalAndFromTBN(surfaceDescription.NormalTS,
            fragInputs.tangentToWorld[0], fragInputs.tangentToWorld[1]);
        
        
            #if HAVE_DECALS
            if (_EnableDecals)
            {
                float alpha = 1.0;
                alpha = surfaceDescription.Alpha;
        
                DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                ApplyDecalToSurfaceNormal(decalSurfaceData, fragInputs.tangentToWorld[2], normalTS);
                ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
            }
            #endif
        
            GetNormalWS_SG(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);
        #else
            // normal delivered to master node
            GetNormalWS(fragInputs, surfaceDescription.NormalTS, surfaceData.normalWS, doubleSidedConstants);
        
            #if HAVE_DECALS
            if (_EnableDecals)
            {
                float alpha = 1.0;
                alpha = surfaceDescription.Alpha;
        
                // Both uses and modifies 'surfaceData.normalWS'.
                DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                ApplyDecalToSurfaceNormal(decalSurfaceData, surfaceData.normalWS.xyz);
                ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
            }
            #endif
        #endif
        }
        void BuildSurfaceData(FragInputs fragInputs, inout SurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
        {
            ZERO_INITIALIZE(SurfaceData, surfaceData);
        
            // specularOcclusion need to be init ahead of decal to quiet the compiler that modify the SurfaceData struct
            // however specularOcclusion can come from the graph, so need to be init here so it can be override.
            surfaceData.specularOcclusion = 1.0;
        
            surfaceData.baseColor =                 surfaceDescription.BaseColor;
            surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
            surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
            surfaceData.transmissionMask =          surfaceDescription.TransmissionMask;
            surfaceData.thickness =                 surfaceDescription.Thickness;
            surfaceData.diffusionProfileHash =      asuint(surfaceDescription.DiffusionProfileHash);
        
            #if defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE) || defined(_REFRACTION_THIN)
                if (_EnableSSRefraction)
                {
        
                    surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                    surfaceDescription.Alpha = 1.0;
                }
                else
                {
                    surfaceData.ior = 1.0;
                    surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                    surfaceData.atDistance = 1.0;
                    surfaceData.transmittanceMask = 0.0;
                    surfaceDescription.Alpha = 1.0;
                }
            #else
                surfaceData.ior = 1.0;
                surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                surfaceData.atDistance = 1.0;
                surfaceData.transmittanceMask = 0.0;
            #endif
        
            // These static material feature allow compile time optimization
            surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
            #ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
            #endif
        
            #ifdef _MATERIAL_FEATURE_TRANSMISSION
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
            #endif
        
            #ifdef _MATERIAL_FEATURE_ANISOTROPY
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
        
                // Initialize the normal to something non-zero to avoid a div-zero warning for anisotropy.
                surfaceData.normalWS = float3(0, 1, 0);
            #endif
        
            #ifdef _MATERIAL_FEATURE_IRIDESCENCE
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
            #endif
        
            #ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
            #endif
        
            #ifdef _MATERIAL_FEATURE_CLEAR_COAT
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
            #endif
        
            #if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                // Require to have setup baseColor
                // Reproduce the energy conservation done in legacy Unity. Not ideal but better for compatibility and users can unchek it
                surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
            #endif
        
            float3 doubleSidedConstants = GetDoubleSidedConstants();
        
            ApplyDecalAndGetNormal(fragInputs, posInput, surfaceDescription, surfaceData);
        
            surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
        
            surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
        
        
            bentNormalWS = surfaceData.normalWS;
        
            surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);
        
            #ifdef DEBUG_DISPLAY
                if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                {
                    // TODO: need to update mip info
                    surfaceData.metallic = 0;
                }
        
                // We need to call ApplyDebugToSurfaceData after filling the surfarcedata and before filling builtinData
                // as it can modify attribute use for static lighting
                ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
            #endif
        
            // By default we use the ambient occlusion with Tri-ace trick (apply outside) for specular occlusion.
            // If user provide bent normal then we process a better term
            #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                // Just use the value passed through via the slot (not active otherwise)
            #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                // If we have bent normal and ambient occlusion, process a specular occlusion
                surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
            #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
                surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
            #endif
        
            #if defined(_ENABLE_GEOMETRIC_SPECULAR_AA) && !defined(SHADER_STAGE_RAY_TRACING)
                surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
            #endif
        }
        
            // --------------------------------------------------
            // Get Surface And BuiltinData
        
            void GetSurfaceAndBuiltinData(FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData RAY_TRACING_OPTIONAL_PARAMETERS)
            {
                // Don't dither if displaced tessellation (we're fading out the displacement instead to match the next LOD)
                #if !defined(SHADER_STAGE_RAY_TRACING) && !defined(_TESSELLATION_DISPLACEMENT)
                #ifdef LOD_FADE_CROSSFADE // enable dithering LOD transition if user select CrossFade transition in LOD group
                LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
                #endif
                #endif
        
                #ifndef SHADER_UNLIT
                #ifdef _DOUBLESIDED_ON
                    float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
                #else
                    float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
                #endif
        
                ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants); // Apply double sided flip on the vertex normal
                #endif // SHADER_UNLIT
        
                SurfaceDescriptionInputs surfaceDescriptionInputs = FragInputsToSurfaceDescriptionInputs(fragInputs, V);
        
                #if defined(HAVE_VFX_MODIFICATION)
                GraphProperties properties;
                ZERO_INITIALIZE(GraphProperties, properties);
        
                GetElementPixelProperties(fragInputs, properties);
        
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs, properties);
                #else
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs);
                #endif
        
                // Perform alpha test very early to save performance (a killed pixel will not sample textures)
                // TODO: split graph evaluation to grab just alpha dependencies first? tricky..
                #ifdef _ALPHATEST_ON
                    float alphaCutoff = surfaceDescription.AlphaClipThreshold;
                    #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
                    // The TransparentDepthPrepass is also used with SSR transparent.
                    // If an artists enable transaprent SSR but not the TransparentDepthPrepass itself, then we use AlphaClipThreshold
                    // otherwise if TransparentDepthPrepass is enabled we use AlphaClipThresholdDepthPrepass
                    #elif SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_POSTPASS
                    // DepthPostpass always use its own alpha threshold
                    alphaCutoff = surfaceDescription.AlphaClipThresholdDepthPostpass;
                    #elif (SHADERPASS == SHADERPASS_SHADOWS) || (SHADERPASS == SHADERPASS_RAYTRACING_VISIBILITY)
                    // If use shadow threshold isn't enable we don't allow any test
                    #endif
        
                    GENERIC_ALPHA_TEST(surfaceDescription.Alpha, alphaCutoff);
                #endif
        
                #if !defined(SHADER_STAGE_RAY_TRACING) && _DEPTHOFFSET_ON
                ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
                #endif
        
                #ifndef SHADER_UNLIT
                float3 bentNormalWS;
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS);
        
                #ifdef FRAG_INPUTS_USE_TEXCOORD1
                    float4 lightmapTexCoord1 = fragInputs.texCoord1;
                #else
                    float4 lightmapTexCoord1 = float4(0,0,0,0);
                #endif
        
                #ifdef FRAG_INPUTS_USE_TEXCOORD2
                    float4 lightmapTexCoord2 = fragInputs.texCoord2;
                #else
                    float4 lightmapTexCoord2 = float4(0,0,0,0);
                #endif
        
                // Builtin Data
                // For back lighting we use the oposite vertex normal
                InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], lightmapTexCoord1, lightmapTexCoord2, builtinData);
        
                #else
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData);
        
                ZERO_BUILTIN_INITIALIZE(builtinData); // No call to InitBuiltinData as we don't have any lighting
                builtinData.opacity = surfaceDescription.Alpha;
        
                #if defined(DEBUG_DISPLAY)
                    // Light Layers are currently not used for the Unlit shader (because it is not lit)
                    // But Unlit objects do cast shadows according to their rendering layer mask, which is what we want to
                    // display in the light layers visualization mode, therefore we need the renderingLayers
                    builtinData.renderingLayers = GetMeshRenderingLightLayer();
                #endif
        
                #endif // SHADER_UNLIT
        
                #ifdef _ALPHATEST_ON
                    // Used for sharpening by alpha to mask - Alpha to covertage is only used with depth only and forward pass (no shadow pass, no transparent pass)
                    builtinData.alphaClipTreshold = alphaCutoff;
                #endif
        
                // override sampleBakedGI - not used by Unlit
        
                builtinData.emissiveColor = surfaceDescription.Emission;
        
                // Note this will not fully work on transparent surfaces (can check with _SURFACE_TYPE_TRANSPARENT define)
                // We will always overwrite vt feeback with the nearest. So behind transparent surfaces vt will not be resolved
                // This is a limitation of the current MRT approach.
                #ifdef UNITY_VIRTUAL_TEXTURING
                #endif
        
                #if _DEPTHOFFSET_ON
                builtinData.depthOffset = surfaceDescription.DepthOffset;
                #endif
        
                // TODO: We should generate distortion / distortionBlur for non distortion pass
                #if (SHADERPASS == SHADERPASS_DISTORTION)
                builtinData.distortion = surfaceDescription.Distortion;
                builtinData.distortionBlur = surfaceDescription.DistortionBlur;
                #endif
        
                #ifndef SHADER_UNLIT
                // PostInitBuiltinData call ApplyDebugToBuiltinData
                PostInitBuiltinData(V, posInput, surfaceData, builtinData);
                #else
                ApplyDebugToBuiltinData(builtinData);
                #endif
        
                RAY_TRACING_OPTIONAL_ALPHA_TEST_PASS
            }
        
            // --------------------------------------------------
            // Main
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPassMotionVectors.hlsl"
        
            // --------------------------------------------------
            // Visual Effect Vertex Invocations
        
        	#ifdef HAVE_VFX_MODIFICATION
        	#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/VisualEffectVertex.hlsl"
        	#endif
        
            ENDHLSL
        }
        Pass
        {
            Name "TransparentDepthPrepass"
            Tags
            {
                "LightMode" = "TransparentDepthPrepass"
            }
        
            // Render State
            Cull [_CullMode]
        Blend One Zero
        ZWrite On
        Stencil
        {
        WriteMask [_StencilWriteMaskDepth]
        Ref [_StencilRefDepth]
        CompFront Always
        PassFront Replace
        CompBack Always
        PassBack Replace
        }
        
            // Debug
            // <None>
        
            // --------------------------------------------------
            // Pass
        
            HLSLPROGRAM
        
            // Pragmas
            #pragma multi_compile _ DOTS_INSTANCING_ON
        #pragma instancing_options renderinglayer
        #pragma target 4.5
        #pragma vertex Vert
        #pragma fragment Frag
        #pragma only_renderers d3d11 playstation xboxone xboxseries vulkan metal switch
        #pragma multi_compile_instancing
        
            // Keywords
            #pragma shader_feature_local _ _ALPHATEST_ON
        #pragma shader_feature _ _SURFACE_TYPE_TRANSPARENT
        #pragma shader_feature_local _ _DOUBLESIDED_ON
        #pragma shader_feature_local _ _ADD_PRECOMPUTED_VELOCITY
        #pragma shader_feature_local _ _TRANSPARENT_WRITES_MOTION_VEC
        #pragma shader_feature_local_fragment _ _ENABLE_FOG_ON_TRANSPARENT
        #pragma multi_compile _ LOD_FADE_CROSSFADE
        #pragma shader_feature_local_fragment _ _DISABLE_DECALS
        #pragma shader_feature_local_raytracing _ _DISABLE_DECALS
        #pragma shader_feature_local_fragment _ _DISABLE_SSR
        #pragma shader_feature_local_raytracing _ _DISABLE_SSR
        #pragma shader_feature_local_fragment _ _DISABLE_SSR_TRANSPARENT
        #pragma shader_feature_local_raytracing _ _DISABLE_SSR_TRANSPARENT
        #pragma shader_feature_local _ _REFRACTION_PLANE _REFRACTION_SPHERE _REFRACTION_THIN
            // GraphKeywords: <None>
        
            // For custom interpolators to inject a substruct definition before FragInputs definition,
            // allowing for FragInputs to capture CI's intended for ShaderGraph's SDI.
            struct CustomInterpolators
        {
        };
        #define USE_CUSTOMINTERP_SUBSTRUCT
        
        
        
            // TODO: Merge FragInputsVFX substruct with CustomInterpolators.
        	#ifdef HAVE_VFX_MODIFICATION
        	struct FragInputsVFX
            {
                /* WARNING: $splice Could not find named fragment 'FragInputsVFX' */
            };
            #endif
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/GeometricTools.hlsl" // Required by Tessellation.hlsl
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Tessellation.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl" // Required to be include before we include properties as it define DECLARE_STACK_CB
            // Always include Shader Graph version
            // Always include last to avoid double macros
            #include "Packages/com.unity.shadergraph/ShaderGraphLibrary/Functions.hlsl" // Need to be here for Gradient struct definition
        
            // --------------------------------------------------
            // Defines
        
            // Attribute
            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TANGENT
            #define ATTRIBUTES_NEED_TEXCOORD0
            #define VARYINGS_NEED_TANGENT_TO_WORLD
            #define VARYINGS_NEED_TEXCOORD0
        
            #define HAVE_MESH_MODIFICATION
        
            //Strip down the FragInputs.hlsl (on graphics), so we can only optimize the interpolators we use.
            //if by accident something requests contents of FragInputs.hlsl, it will be caught as a compiler error
            //Frag inputs stripping is only enabled when FRAG_INPUTS_ENABLE_STRIPPING is set
            #if !defined(SHADER_STAGE_RAY_TRACING) && SHADERPASS != SHADERPASS_RAYTRACING_GBUFFER && SHADERPASS != SHADERPASS_FULL_SCREEN_DEBUG
            #define FRAG_INPUTS_ENABLE_STRIPPING
            #endif
            #define FRAG_INPUTS_USE_TEXCOORD0
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
        
        
        
            #define SHADERPASS SHADERPASS_TRANSPARENT_DEPTH_PREPASS
        #define RAYTRACING_SHADER_GRAPH_DEFAULT
        
        
            // Following two define are a workaround introduce in 10.1.x for RaytracingQualityNode
            // The ShaderGraph don't support correctly migration of this node as it serialize all the node data
            // in the json file making it impossible to uprgrade. Until we get a fix, we do a workaround here
            // to still allow us to rename the field and keyword of this node without breaking existing code.
            #ifdef RAYTRACING_SHADER_GRAPH_DEFAULT
            #define RAYTRACING_SHADER_GRAPH_HIGH
            #endif
        
            #ifdef RAYTRACING_SHADER_GRAPH_RAYTRACED
            #define RAYTRACING_SHADER_GRAPH_LOW
            #endif
            // end
        
            #ifndef SHADER_UNLIT
            // We need isFrontFace when using double sided - it is not required for unlit as in case of unlit double sided only drive the cullmode
            // VARYINGS_NEED_CULLFACE can be define by VaryingsMeshToPS.FaceSign input if a IsFrontFace Node is included in the shader graph.
            #if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
                #define VARYINGS_NEED_CULLFACE
            #endif
            #endif
        
            // Specific Material Define
        #define _MATERIAL_FEATURE_TRANSMISSION 1
        #define _SPECULAR_OCCLUSION_FROM_AO 1
        #define _ENERGY_CONSERVING_SPECULAR 1
        
        // If we use subsurface scattering, enable output split lighting (for forward pass)
        #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
            #define OUTPUT_SPLIT_LIGHTING
        #endif
        
        // This shader support recursive rendering for raytracing
        #define HAVE_RECURSIVE_RENDERING
        
        // In Path Tracing, For all single-sided, refractive materials, we want to force a thin refraction model
        #if (SHADERPASS == SHADERPASS_PATH_TRACING) && !defined(_DOUBLESIDED_ON) && (defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE))
            #undef  _REFRACTION_PLANE
            #undef  _REFRACTION_SPHERE
            #define _REFRACTION_THIN
        #endif
            // Caution: we can use the define SHADER_UNLIT onlit after the above Material include as it is the Unlit template who define it
        
            // To handle SSR on transparent correctly with a possibility to enable/disable it per framesettings
            // we should have a code like this:
            // if !defined(_DISABLE_SSR_TRANSPARENT)
            // pragma multi_compile _ WRITE_NORMAL_BUFFER
            // endif
            // i.e we enable the multicompile only if we can receive SSR or not, and then C# code drive
            // it based on if SSR transparent in frame settings and not (and stripper can strip it).
            // this is currently not possible with our current preprocessor as _DISABLE_SSR_TRANSPARENT is a keyword not a define
            // so instead we used this and chose to pay the extra cost of normal write even if SSR transaprent is disabled.
            // Ideally the shader graph generator should handle it but condition below can't be handle correctly for now.
            #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
            #if !defined(_DISABLE_SSR_TRANSPARENT) && !defined(SHADER_UNLIT)
                #define WRITE_NORMAL_BUFFER
            #endif
            #endif
        
            #ifndef DEBUG_DISPLAY
                // In case of opaque we don't want to perform the alpha test, it is done in depth prepass and we use depth equal for ztest (setup from UI)
                // Don't do it with debug display mode as it is possible there is no depth prepass in this case
                #if !defined(_SURFACE_TYPE_TRANSPARENT)
                    #if SHADERPASS == SHADERPASS_FORWARD
                    #define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
                    #elif SHADERPASS == SHADERPASS_GBUFFER
                    #define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
                    #endif
                #endif
            #endif
        
            // Define _DEFERRED_CAPABLE_MATERIAL for shader capable to run in deferred pass
            #if defined(SHADER_LIT) && !defined(_SURFACE_TYPE_TRANSPARENT)
                #define _DEFERRED_CAPABLE_MATERIAL
            #endif
        
            // Translate transparent motion vector define
            #if defined(_TRANSPARENT_WRITES_MOTION_VEC) && defined(_SURFACE_TYPE_TRANSPARENT)
                #define _WRITE_TRANSPARENT_MOTION_VECTOR
            #endif
        
            // -- Graph Properties
            CBUFFER_START(UnityPerMaterial)
        float4 _DiffusionProfileAsset;
        float _DiffusionProfileHash;
        float4 _TrunkBaseColor;
        float4 _BarkBaseColor;
        float _Backface_Thickness_Mask_Threshold;
        float2 _Backface_Thickness_Mask_Remap;
        float _Backface_Brightness;
        float _Cross_Backface_Mask_Power;
        float _Backface_Saturation;
        float4 _HealthyColor;
        float4 _DryColor;
        float _AlphaCutoff;
        float _AlphaShadowThreshold;
        float4 _BaseColorMap_TexelSize;
        float4 _TilingOffset;
        float _HealthyandDryColorNoisePower;
        float4 _NormalMap_TexelSize;
        float _NormalScale;
        float _AORemapMax;
        float _SmoothnessRemapMax;
        float4 _Mask_TexelSize;
        float _Thickness;
        float _WindNormalInfluence;
        float4 _VertexNormalMultiply;
        float _ColorNoiseTilling;
        float _Trunk_Normal_Scale;
        float _Global_Base_Brightness;
        float _Trunk_Smoothness_Remap_Max;
        float4 _EmissionColor;
        float _UseShadowThreshold;
        float4 _DoubleSidedConstants;
        float _BlendMode;
        float _EnableBlendModePreserveSpecularLighting;
        float _RayTracing;
        float _RefractionModel;
        CBUFFER_END
        
        
        // Object and Global properties
        SAMPLER(SamplerState_Linear_Repeat);
        SAMPLER(SamplerState_Linear_Repeat_Aniso8);
        TEXTURE2D(_BaseColorMap);
        SAMPLER(sampler_BaseColorMap);
        TEXTURE2D(_NormalMap);
        SAMPLER(sampler_NormalMap);
        TEXTURE2D(_Mask);
        SAMPLER(sampler_Mask);
        
            // -- Property used by ScenePickingPass
            #ifdef SCENEPICKINGPASS
            float4 _SelectionID;
            #endif
        
            // -- Properties used by SceneSelectionPass
            #ifdef SCENESELECTIONPASS
            int _ObjectId;
            int _PassValue;
            #endif
        
            // Includes
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
        #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
        	// GraphIncludes: <None>
        
            // --------------------------------------------------
            // Structs and Packing
        
            struct AttributesMesh
        {
             float3 positionOS : POSITION;
             float3 normalOS : NORMAL;
             float4 tangentOS : TANGENT;
             float4 uv0 : TEXCOORD0;
            #if UNITY_ANY_INSTANCING_ENABLED
             uint instanceID : INSTANCEID_SEMANTIC;
            #endif
        };
        struct VaryingsMeshToPS
        {
            SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
             float3 normalWS;
             float4 tangentWS;
             float4 texCoord0;
            #if UNITY_ANY_INSTANCING_ENABLED
             uint instanceID : CUSTOM_INSTANCE_ID;
            #endif
        };
        struct VertexDescriptionInputs
        {
             float3 ObjectSpaceNormal;
             float3 ObjectSpaceTangent;
             float3 ObjectSpacePosition;
        };
        struct SurfaceDescriptionInputs
        {
             float3 TangentSpaceNormal;
             float4 uv0;
        };
        struct PackedVaryingsMeshToPS
        {
            SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
             float4 tangentWS : INTERP0;
             float4 texCoord0 : INTERP1;
             float3 normalWS : INTERP2;
            #if UNITY_ANY_INSTANCING_ENABLED
             uint instanceID : CUSTOM_INSTANCE_ID;
            #endif
        };
        
            PackedVaryingsMeshToPS PackVaryingsMeshToPS (VaryingsMeshToPS input)
        {
            PackedVaryingsMeshToPS output;
            ZERO_INITIALIZE(PackedVaryingsMeshToPS, output);
            output.positionCS = input.positionCS;
            output.tangentWS.xyzw = input.tangentWS;
            output.texCoord0.xyzw = input.texCoord0;
            output.normalWS.xyz = input.normalWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif
            return output;
        }
        
        VaryingsMeshToPS UnpackVaryingsMeshToPS (PackedVaryingsMeshToPS input)
        {
            VaryingsMeshToPS output;
            output.positionCS = input.positionCS;
            output.tangentWS = input.tangentWS.xyzw;
            output.texCoord0 = input.texCoord0.xyzw;
            output.normalWS = input.normalWS.xyz;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif
            return output;
        }
        
        
            // --------------------------------------------------
            // Graph
        
        
            // Graph Functions
            
        void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
        {
            Out = UV * Tiling + Offset;
        }
        
        void Unity_Lerp_float(float A, float B, float T, out float Out)
        {
            Out = lerp(A, B, T);
        }
        
        void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
        {
            Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
        }
        
            // Graph Vertex
            struct VertexDescription
        {
            float3 Position;
            float3 Normal;
            float3 Tangent;
        };
        
        VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
        {
            VertexDescription description = (VertexDescription)0;
            description.Position = IN.ObjectSpacePosition;
            description.Normal = IN.ObjectSpaceNormal;
            description.Tangent = IN.ObjectSpaceTangent;
            return description;
        }
        
            // Graph Pixel
            struct SurfaceDescription
        {
            float Alpha;
            float AlphaClipThreshold;
            float3 NormalTS;
            float Smoothness;
            float DiffusionProfileHash;
        };
        
        SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
        {
            SurfaceDescription surface = (SurfaceDescription)0;
            UnityTexture2D _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_BaseColorMap);
            float4 _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4 = _TilingOffset;
            float _Split_60538633130155809820b3185c81057f_R_1_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[0];
            float _Split_60538633130155809820b3185c81057f_G_2_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[1];
            float _Split_60538633130155809820b3185c81057f_B_3_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[2];
            float _Split_60538633130155809820b3185c81057f_A_4_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[3];
            float2 _Vector2_83b2ea7a32ab548fb8c20dce14204561_Out_0_Vector2 = float2(_Split_60538633130155809820b3185c81057f_R_1_Float, _Split_60538633130155809820b3185c81057f_G_2_Float);
            float2 _Vector2_188e122ac0c7888f9f5fbde73f9edd75_Out_0_Vector2 = float2(_Split_60538633130155809820b3185c81057f_B_3_Float, _Split_60538633130155809820b3185c81057f_A_4_Float);
            float2 _TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2;
            Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_83b2ea7a32ab548fb8c20dce14204561_Out_0_Vector2, _Vector2_188e122ac0c7888f9f5fbde73f9edd75_Out_0_Vector2, _TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2);
            float4 _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.tex, _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.samplerstate, _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_R_4_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.r;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_G_5_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.g;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_B_6_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.b;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_A_7_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.a;
            float _Property_067d68a770a25e8f978ca090306a96d8_Out_0_Float = _AlphaCutoff;
            UnityTexture2D _Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_NormalMap);
            float4 _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.rgb = UnpackNormal(_SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4);
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_R_4_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.r;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_G_5_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.g;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_B_6_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.b;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_A_7_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.a;
            float _Property_b07156802a1240f7a8c14a272c5f1b36_Out_0_Float = _Trunk_Normal_Scale;
            float _Property_72e436a108ad64868e46d548c585c5f3_Out_0_Float = _NormalScale;
            UnityTexture2D _Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_Mask);
            float4 _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_R_4_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.r;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.g;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_B_6_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.b;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_A_7_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.a;
            float _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float;
            Unity_Lerp_float(_Property_b07156802a1240f7a8c14a272c5f1b36_Out_0_Float, _Property_72e436a108ad64868e46d548c585c5f3_Out_0_Float, _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float, _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float);
            float3 _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3;
            Unity_NormalStrength_float((_SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.xyz), _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float, _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3);
            float _Property_c35305c7157c4d3ba1db4ba61b2e2ebc_Out_0_Float = _Trunk_Smoothness_Remap_Max;
            float _Property_0edea7916ed7a189a62b0faf2c274601_Out_0_Float = _SmoothnessRemapMax;
            float _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float;
            Unity_Lerp_float(_Property_c35305c7157c4d3ba1db4ba61b2e2ebc_Out_0_Float, _Property_0edea7916ed7a189a62b0faf2c274601_Out_0_Float, _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float, _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float);
            surface.Alpha = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_A_7_Float;
            surface.AlphaClipThreshold = _Property_067d68a770a25e8f978ca090306a96d8_Out_0_Float;
            surface.NormalTS = _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3;
            surface.Smoothness = _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float;
            surface.DiffusionProfileHash = _DiffusionProfileHash;
            return surface;
        }
        
            // --------------------------------------------------
            // Build Graph Inputs
            #ifdef HAVE_VFX_MODIFICATION
            #define VFX_SRP_ATTRIBUTES AttributesMesh
            #define VaryingsMeshType VaryingsMeshToPS
            #define VFX_SRP_VARYINGS VaryingsMeshType
            #define VFX_SRP_SURFACE_INPUTS FragInputs
            #endif
            
        VertexDescriptionInputs AttributesMeshToVertexDescriptionInputs(AttributesMesh input)
        {
            VertexDescriptionInputs output;
            ZERO_INITIALIZE(VertexDescriptionInputs, output);
        
            output.ObjectSpaceNormal =                          input.normalOS;
            output.ObjectSpaceTangent =                         input.tangentOS.xyz;
            output.ObjectSpacePosition =                        input.positionOS;
        
            return output;
        }
        
        VertexDescription GetVertexDescription(AttributesMesh input, float3 timeParameters
        #ifdef HAVE_VFX_MODIFICATION
            , AttributesElement element
        #endif
        )
        {
            // build graph inputs
            VertexDescriptionInputs vertexDescriptionInputs = AttributesMeshToVertexDescriptionInputs(input);
            // Override time parameters with used one (This is required to correctly handle motion vectors for vertex animation based on time)
        
            // evaluate vertex graph
        #ifdef HAVE_VFX_MODIFICATION
            GraphProperties properties;
            ZERO_INITIALIZE(GraphProperties, properties);
        
            // Fetch the vertex graph properties for the particle instance.
            GetElementVertexProperties(element, properties);
        
            VertexDescription vertexDescription = VertexDescriptionFunction(vertexDescriptionInputs, properties);
        #else
            VertexDescription vertexDescription = VertexDescriptionFunction(vertexDescriptionInputs);
        #endif
            return vertexDescription;
        
        }
        
        AttributesMesh ApplyMeshModification(AttributesMesh input, float3 timeParameters
        #ifdef USE_CUSTOMINTERP_SUBSTRUCT
            #ifdef TESSELLATION_ON
            , inout VaryingsMeshToDS varyings
            #else
            , inout VaryingsMeshToPS varyings
            #endif
        #endif
        #ifdef HAVE_VFX_MODIFICATION
                , AttributesElement element
        #endif
            )
        {
            VertexDescription vertexDescription = GetVertexDescription(input, timeParameters
        #ifdef HAVE_VFX_MODIFICATION
                , element
        #endif
            );
        
            // copy graph output to the results
            input.positionOS = vertexDescription.Position;
            input.normalOS = vertexDescription.Normal;
            input.tangentOS.xyz = vertexDescription.Tangent;
        
            
        
            return input;
        }
        
        #if defined(_ADD_CUSTOM_VELOCITY) // For shader graph custom velocity
        // Return precomputed Velocity in object space
        float3 GetCustomVelocity(AttributesMesh input
        #ifdef HAVE_VFX_MODIFICATION
            , AttributesElement element
        #endif
        )
        {
            VertexDescription vertexDescription = GetVertexDescription(input, _TimeParameters.xyz
        #ifdef HAVE_VFX_MODIFICATION
                , element
        #endif
            );
            return vertexDescription.CustomVelocity;
        }
        #endif
        
        FragInputs BuildFragInputs(VaryingsMeshToPS input)
        {
            FragInputs output;
            ZERO_INITIALIZE(FragInputs, output);
        
            // Init to some default value to make the computer quiet (else it output 'divide by zero' warning even if value is not used).
            // TODO: this is a really poor workaround, but the variable is used in a bunch of places
            // to compute normals which are then passed on elsewhere to compute other values...
            output.tangentToWorld = k_identity3x3;
            output.positionSS = input.positionCS;       // input.positionCS is SV_Position
        
            output.tangentToWorld =             BuildTangentToWorld(input.tangentWS, input.normalWS);
            output.texCoord0 =                  input.texCoord0;
        
        #ifdef HAVE_VFX_MODIFICATION
            // FragInputs from VFX come from two places: Interpolator or CBuffer.
        #if VFX_USE_GRAPH_VALUES
            uint instanceActiveIndex = asuint(UNITY_ACCESS_INSTANCED_PROP(PerInstance, _InstanceActiveIndex));
            /* WARNING: $splice Could not find named fragment 'VFXLoadGraphValues' */
        #endif
        
            /* WARNING: $splice Could not find named fragment 'VFXSetFragInputs' */
        
        #endif
        
            // splice point to copy custom interpolator fields from varyings to frag inputs
            
        
            return output;
        }
        
        // existing HDRP code uses the combined function to go directly from packed to frag inputs
        FragInputs UnpackVaryingsMeshToFragInputs(PackedVaryingsMeshToPS input)
        {
            UNITY_SETUP_INSTANCE_ID(input);
        #if defined(HAVE_VFX_MODIFICATION) && defined(UNITY_INSTANCING_ENABLED)
            unity_InstanceID = input.instanceID;
        #endif
            VaryingsMeshToPS unpacked = UnpackVaryingsMeshToPS(input);
            return BuildFragInputs(unpacked);
        }
            SurfaceDescriptionInputs FragInputsToSurfaceDescriptionInputs(FragInputs input, float3 viewWS)
        {
            SurfaceDescriptionInputs output;
            ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
        
            #if defined(SHADER_STAGE_RAY_TRACING)
            #else
            #endif
            output.TangentSpaceNormal =                         float3(0.0f, 0.0f, 1.0f);
        
        #if UNITY_UV_STARTS_AT_TOP
        #else
        #endif
        
        
            output.uv0 =                                        input.texCoord0;
        
            // splice point to copy frag inputs custom interpolator pack into the SDI
            
        
            return output;
        }
        
            // --------------------------------------------------
            // Build Surface Data (Specific Material)
        
        void ApplyDecalToSurfaceDataNoNormal(DecalSurfaceData decalSurfaceData, inout SurfaceData surfaceData);
        
        void ApplyDecalAndGetNormal(FragInputs fragInputs, PositionInputs posInput, SurfaceDescription surfaceDescription,
            inout SurfaceData surfaceData)
        {
            float3 doubleSidedConstants = GetDoubleSidedConstants();
        
        #ifdef DECAL_NORMAL_BLENDING
            // SG nodes don't ouptut surface gradients, so if decals require surf grad blending, we have to convert
            // the normal to gradient before applying the decal. We then have to resolve the gradient back to world space
            float3 normalTS;
        
            normalTS = SurfaceGradientFromTangentSpaceNormalAndFromTBN(surfaceDescription.NormalTS,
            fragInputs.tangentToWorld[0], fragInputs.tangentToWorld[1]);
        
        
            #if HAVE_DECALS
            if (_EnableDecals)
            {
                float alpha = 1.0;
                alpha = surfaceDescription.Alpha;
        
                DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                ApplyDecalToSurfaceNormal(decalSurfaceData, fragInputs.tangentToWorld[2], normalTS);
                ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
            }
            #endif
        
            GetNormalWS_SG(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);
        #else
            // normal delivered to master node
            GetNormalWS(fragInputs, surfaceDescription.NormalTS, surfaceData.normalWS, doubleSidedConstants);
        
            #if HAVE_DECALS
            if (_EnableDecals)
            {
                float alpha = 1.0;
                alpha = surfaceDescription.Alpha;
        
                // Both uses and modifies 'surfaceData.normalWS'.
                DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                ApplyDecalToSurfaceNormal(decalSurfaceData, surfaceData.normalWS.xyz);
                ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
            }
            #endif
        #endif
        }
        void BuildSurfaceData(FragInputs fragInputs, inout SurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
        {
            ZERO_INITIALIZE(SurfaceData, surfaceData);
        
            // specularOcclusion need to be init ahead of decal to quiet the compiler that modify the SurfaceData struct
            // however specularOcclusion can come from the graph, so need to be init here so it can be override.
            surfaceData.specularOcclusion = 1.0;
        
            surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
            surfaceData.diffusionProfileHash =      asuint(surfaceDescription.DiffusionProfileHash);
        
            #if defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE) || defined(_REFRACTION_THIN)
                if (_EnableSSRefraction)
                {
        
                    surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                    surfaceDescription.Alpha = 1.0;
                }
                else
                {
                    surfaceData.ior = 1.0;
                    surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                    surfaceData.atDistance = 1.0;
                    surfaceData.transmittanceMask = 0.0;
                    surfaceDescription.Alpha = 1.0;
                }
            #else
                surfaceData.ior = 1.0;
                surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                surfaceData.atDistance = 1.0;
                surfaceData.transmittanceMask = 0.0;
            #endif
        
            // These static material feature allow compile time optimization
            surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
            #ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
            #endif
        
            #ifdef _MATERIAL_FEATURE_TRANSMISSION
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
            #endif
        
            #ifdef _MATERIAL_FEATURE_ANISOTROPY
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
        
                // Initialize the normal to something non-zero to avoid a div-zero warning for anisotropy.
                surfaceData.normalWS = float3(0, 1, 0);
            #endif
        
            #ifdef _MATERIAL_FEATURE_IRIDESCENCE
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
            #endif
        
            #ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
            #endif
        
            #ifdef _MATERIAL_FEATURE_CLEAR_COAT
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
            #endif
        
            #if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                // Require to have setup baseColor
                // Reproduce the energy conservation done in legacy Unity. Not ideal but better for compatibility and users can unchek it
                surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
            #endif
        
            float3 doubleSidedConstants = GetDoubleSidedConstants();
        
            ApplyDecalAndGetNormal(fragInputs, posInput, surfaceDescription, surfaceData);
        
            surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
        
            surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
        
        
            bentNormalWS = surfaceData.normalWS;
        
            surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);
        
            #ifdef DEBUG_DISPLAY
                if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                {
                    // TODO: need to update mip info
                    surfaceData.metallic = 0;
                }
        
                // We need to call ApplyDebugToSurfaceData after filling the surfarcedata and before filling builtinData
                // as it can modify attribute use for static lighting
                ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
            #endif
        
            // By default we use the ambient occlusion with Tri-ace trick (apply outside) for specular occlusion.
            // If user provide bent normal then we process a better term
            #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                // Just use the value passed through via the slot (not active otherwise)
            #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                // If we have bent normal and ambient occlusion, process a specular occlusion
                surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
            #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
                surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
            #endif
        
            #if defined(_ENABLE_GEOMETRIC_SPECULAR_AA) && !defined(SHADER_STAGE_RAY_TRACING)
                surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
            #endif
        }
        
            // --------------------------------------------------
            // Get Surface And BuiltinData
        
            void GetSurfaceAndBuiltinData(FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData RAY_TRACING_OPTIONAL_PARAMETERS)
            {
                // Don't dither if displaced tessellation (we're fading out the displacement instead to match the next LOD)
                #if !defined(SHADER_STAGE_RAY_TRACING) && !defined(_TESSELLATION_DISPLACEMENT)
                #ifdef LOD_FADE_CROSSFADE // enable dithering LOD transition if user select CrossFade transition in LOD group
                LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
                #endif
                #endif
        
                #ifndef SHADER_UNLIT
                #ifdef _DOUBLESIDED_ON
                    float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
                #else
                    float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
                #endif
        
                ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants); // Apply double sided flip on the vertex normal
                #endif // SHADER_UNLIT
        
                SurfaceDescriptionInputs surfaceDescriptionInputs = FragInputsToSurfaceDescriptionInputs(fragInputs, V);
        
                #if defined(HAVE_VFX_MODIFICATION)
                GraphProperties properties;
                ZERO_INITIALIZE(GraphProperties, properties);
        
                GetElementPixelProperties(fragInputs, properties);
        
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs, properties);
                #else
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs);
                #endif
        
                // Perform alpha test very early to save performance (a killed pixel will not sample textures)
                // TODO: split graph evaluation to grab just alpha dependencies first? tricky..
                #ifdef _ALPHATEST_ON
                    float alphaCutoff = surfaceDescription.AlphaClipThreshold;
                    #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
                    // The TransparentDepthPrepass is also used with SSR transparent.
                    // If an artists enable transaprent SSR but not the TransparentDepthPrepass itself, then we use AlphaClipThreshold
                    // otherwise if TransparentDepthPrepass is enabled we use AlphaClipThresholdDepthPrepass
                    #elif SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_POSTPASS
                    // DepthPostpass always use its own alpha threshold
                    alphaCutoff = surfaceDescription.AlphaClipThresholdDepthPostpass;
                    #elif (SHADERPASS == SHADERPASS_SHADOWS) || (SHADERPASS == SHADERPASS_RAYTRACING_VISIBILITY)
                    // If use shadow threshold isn't enable we don't allow any test
                    #endif
        
                    GENERIC_ALPHA_TEST(surfaceDescription.Alpha, alphaCutoff);
                #endif
        
                #if !defined(SHADER_STAGE_RAY_TRACING) && _DEPTHOFFSET_ON
                ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
                #endif
        
                #ifndef SHADER_UNLIT
                float3 bentNormalWS;
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS);
        
                #ifdef FRAG_INPUTS_USE_TEXCOORD1
                    float4 lightmapTexCoord1 = fragInputs.texCoord1;
                #else
                    float4 lightmapTexCoord1 = float4(0,0,0,0);
                #endif
        
                #ifdef FRAG_INPUTS_USE_TEXCOORD2
                    float4 lightmapTexCoord2 = fragInputs.texCoord2;
                #else
                    float4 lightmapTexCoord2 = float4(0,0,0,0);
                #endif
        
                // Builtin Data
                // For back lighting we use the oposite vertex normal
                InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], lightmapTexCoord1, lightmapTexCoord2, builtinData);
        
                #else
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData);
        
                ZERO_BUILTIN_INITIALIZE(builtinData); // No call to InitBuiltinData as we don't have any lighting
                builtinData.opacity = surfaceDescription.Alpha;
        
                #if defined(DEBUG_DISPLAY)
                    // Light Layers are currently not used for the Unlit shader (because it is not lit)
                    // But Unlit objects do cast shadows according to their rendering layer mask, which is what we want to
                    // display in the light layers visualization mode, therefore we need the renderingLayers
                    builtinData.renderingLayers = GetMeshRenderingLightLayer();
                #endif
        
                #endif // SHADER_UNLIT
        
                #ifdef _ALPHATEST_ON
                    // Used for sharpening by alpha to mask - Alpha to covertage is only used with depth only and forward pass (no shadow pass, no transparent pass)
                    builtinData.alphaClipTreshold = alphaCutoff;
                #endif
        
                // override sampleBakedGI - not used by Unlit
        
        
                // Note this will not fully work on transparent surfaces (can check with _SURFACE_TYPE_TRANSPARENT define)
                // We will always overwrite vt feeback with the nearest. So behind transparent surfaces vt will not be resolved
                // This is a limitation of the current MRT approach.
                #ifdef UNITY_VIRTUAL_TEXTURING
                #endif
        
                #if _DEPTHOFFSET_ON
                builtinData.depthOffset = surfaceDescription.DepthOffset;
                #endif
        
                // TODO: We should generate distortion / distortionBlur for non distortion pass
                #if (SHADERPASS == SHADERPASS_DISTORTION)
                builtinData.distortion = surfaceDescription.Distortion;
                builtinData.distortionBlur = surfaceDescription.DistortionBlur;
                #endif
        
                #ifndef SHADER_UNLIT
                // PostInitBuiltinData call ApplyDebugToBuiltinData
                PostInitBuiltinData(V, posInput, surfaceData, builtinData);
                #else
                ApplyDebugToBuiltinData(builtinData);
                #endif
        
                RAY_TRACING_OPTIONAL_ALPHA_TEST_PASS
            }
        
            // --------------------------------------------------
            // Main
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPassDepthOnly.hlsl"
        
            // --------------------------------------------------
            // Visual Effect Vertex Invocations
        
        	#ifdef HAVE_VFX_MODIFICATION
        	#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/VisualEffectVertex.hlsl"
        	#endif
        
            ENDHLSL
        }
        Pass
        {
            Name "FullScreenDebug"
            Tags
            {
                "LightMode" = "FullScreenDebug"
            }
        
            // Render State
            Cull [_CullMode]
        ZTest LEqual
        ZWrite Off
        
            // Debug
            // <None>
        
            // --------------------------------------------------
            // Pass
        
            HLSLPROGRAM
        
            // Pragmas
            #pragma multi_compile _ DOTS_INSTANCING_ON
        #pragma instancing_options renderinglayer
        #pragma target 4.5
        #pragma vertex Vert
        #pragma fragment Frag
        #pragma only_renderers d3d11 playstation xboxone xboxseries vulkan metal switch
        #pragma multi_compile_instancing
        
            // Keywords
            #pragma shader_feature_local _ _ALPHATEST_ON
        #pragma shader_feature _ _SURFACE_TYPE_TRANSPARENT
        #pragma shader_feature_local _ _DOUBLESIDED_ON
        #pragma shader_feature_local _ _ADD_PRECOMPUTED_VELOCITY
        #pragma shader_feature_local _ _TRANSPARENT_WRITES_MOTION_VEC
        #pragma shader_feature_local_fragment _ _ENABLE_FOG_ON_TRANSPARENT
        #pragma multi_compile _ LOD_FADE_CROSSFADE
        #pragma shader_feature_local_fragment _ _DISABLE_DECALS
        #pragma shader_feature_local_raytracing _ _DISABLE_DECALS
        #pragma shader_feature_local_fragment _ _DISABLE_SSR
        #pragma shader_feature_local_raytracing _ _DISABLE_SSR
        #pragma shader_feature_local_fragment _ _DISABLE_SSR_TRANSPARENT
        #pragma shader_feature_local_raytracing _ _DISABLE_SSR_TRANSPARENT
        #pragma shader_feature_local _ _REFRACTION_PLANE _REFRACTION_SPHERE _REFRACTION_THIN
            // GraphKeywords: <None>
        
            // For custom interpolators to inject a substruct definition before FragInputs definition,
            // allowing for FragInputs to capture CI's intended for ShaderGraph's SDI.
            struct CustomInterpolators
        {
        };
        #define USE_CUSTOMINTERP_SUBSTRUCT
        
        
        
            // TODO: Merge FragInputsVFX substruct with CustomInterpolators.
        	#ifdef HAVE_VFX_MODIFICATION
        	struct FragInputsVFX
            {
                /* WARNING: $splice Could not find named fragment 'FragInputsVFX' */
            };
            #endif
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/GeometricTools.hlsl" // Required by Tessellation.hlsl
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Tessellation.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl" // Required to be include before we include properties as it define DECLARE_STACK_CB
            // Always include Shader Graph version
            // Always include last to avoid double macros
            #include "Packages/com.unity.shadergraph/ShaderGraphLibrary/Functions.hlsl" // Need to be here for Gradient struct definition
        
            // --------------------------------------------------
            // Defines
        
            // Attribute
            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TANGENT
            #define ATTRIBUTES_NEED_TEXCOORD0
            #define VARYINGS_NEED_POSITION_WS
            #define VARYINGS_NEED_TEXCOORD0
        
            #define HAVE_MESH_MODIFICATION
        
            //Strip down the FragInputs.hlsl (on graphics), so we can only optimize the interpolators we use.
            //if by accident something requests contents of FragInputs.hlsl, it will be caught as a compiler error
            //Frag inputs stripping is only enabled when FRAG_INPUTS_ENABLE_STRIPPING is set
            #if !defined(SHADER_STAGE_RAY_TRACING) && SHADERPASS != SHADERPASS_RAYTRACING_GBUFFER && SHADERPASS != SHADERPASS_FULL_SCREEN_DEBUG
            #define FRAG_INPUTS_ENABLE_STRIPPING
            #endif
            #define FRAG_INPUTS_USE_TEXCOORD0
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
        
        
        
            #define SHADERPASS SHADERPASS_FULL_SCREEN_DEBUG
        #define RAYTRACING_SHADER_GRAPH_DEFAULT
        
        
            // Following two define are a workaround introduce in 10.1.x for RaytracingQualityNode
            // The ShaderGraph don't support correctly migration of this node as it serialize all the node data
            // in the json file making it impossible to uprgrade. Until we get a fix, we do a workaround here
            // to still allow us to rename the field and keyword of this node without breaking existing code.
            #ifdef RAYTRACING_SHADER_GRAPH_DEFAULT
            #define RAYTRACING_SHADER_GRAPH_HIGH
            #endif
        
            #ifdef RAYTRACING_SHADER_GRAPH_RAYTRACED
            #define RAYTRACING_SHADER_GRAPH_LOW
            #endif
            // end
        
            #ifndef SHADER_UNLIT
            // We need isFrontFace when using double sided - it is not required for unlit as in case of unlit double sided only drive the cullmode
            // VARYINGS_NEED_CULLFACE can be define by VaryingsMeshToPS.FaceSign input if a IsFrontFace Node is included in the shader graph.
            #if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
                #define VARYINGS_NEED_CULLFACE
            #endif
            #endif
        
            // Specific Material Define
        #define _MATERIAL_FEATURE_TRANSMISSION 1
        #define _AMBIENT_OCCLUSION 1
        #define _SPECULAR_OCCLUSION_FROM_AO 1
        #define _ENERGY_CONSERVING_SPECULAR 1
        
        // If we use subsurface scattering, enable output split lighting (for forward pass)
        #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
            #define OUTPUT_SPLIT_LIGHTING
        #endif
        
        // This shader support recursive rendering for raytracing
        #define HAVE_RECURSIVE_RENDERING
        
        // In Path Tracing, For all single-sided, refractive materials, we want to force a thin refraction model
        #if (SHADERPASS == SHADERPASS_PATH_TRACING) && !defined(_DOUBLESIDED_ON) && (defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE))
            #undef  _REFRACTION_PLANE
            #undef  _REFRACTION_SPHERE
            #define _REFRACTION_THIN
        #endif
            // Caution: we can use the define SHADER_UNLIT onlit after the above Material include as it is the Unlit template who define it
        
            // To handle SSR on transparent correctly with a possibility to enable/disable it per framesettings
            // we should have a code like this:
            // if !defined(_DISABLE_SSR_TRANSPARENT)
            // pragma multi_compile _ WRITE_NORMAL_BUFFER
            // endif
            // i.e we enable the multicompile only if we can receive SSR or not, and then C# code drive
            // it based on if SSR transparent in frame settings and not (and stripper can strip it).
            // this is currently not possible with our current preprocessor as _DISABLE_SSR_TRANSPARENT is a keyword not a define
            // so instead we used this and chose to pay the extra cost of normal write even if SSR transaprent is disabled.
            // Ideally the shader graph generator should handle it but condition below can't be handle correctly for now.
            #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
            #if !defined(_DISABLE_SSR_TRANSPARENT) && !defined(SHADER_UNLIT)
                #define WRITE_NORMAL_BUFFER
            #endif
            #endif
        
            #ifndef DEBUG_DISPLAY
                // In case of opaque we don't want to perform the alpha test, it is done in depth prepass and we use depth equal for ztest (setup from UI)
                // Don't do it with debug display mode as it is possible there is no depth prepass in this case
                #if !defined(_SURFACE_TYPE_TRANSPARENT)
                    #if SHADERPASS == SHADERPASS_FORWARD
                    #define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
                    #elif SHADERPASS == SHADERPASS_GBUFFER
                    #define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
                    #endif
                #endif
            #endif
        
            // Define _DEFERRED_CAPABLE_MATERIAL for shader capable to run in deferred pass
            #if defined(SHADER_LIT) && !defined(_SURFACE_TYPE_TRANSPARENT)
                #define _DEFERRED_CAPABLE_MATERIAL
            #endif
        
            // Translate transparent motion vector define
            #if defined(_TRANSPARENT_WRITES_MOTION_VEC) && defined(_SURFACE_TYPE_TRANSPARENT)
                #define _WRITE_TRANSPARENT_MOTION_VECTOR
            #endif
        
            // -- Graph Properties
            CBUFFER_START(UnityPerMaterial)
        float4 _DiffusionProfileAsset;
        float _DiffusionProfileHash;
        float4 _TrunkBaseColor;
        float4 _BarkBaseColor;
        float _Backface_Thickness_Mask_Threshold;
        float2 _Backface_Thickness_Mask_Remap;
        float _Backface_Brightness;
        float _Cross_Backface_Mask_Power;
        float _Backface_Saturation;
        float4 _HealthyColor;
        float4 _DryColor;
        float _AlphaCutoff;
        float _AlphaShadowThreshold;
        float4 _BaseColorMap_TexelSize;
        float4 _TilingOffset;
        float _HealthyandDryColorNoisePower;
        float4 _NormalMap_TexelSize;
        float _NormalScale;
        float _AORemapMax;
        float _SmoothnessRemapMax;
        float4 _Mask_TexelSize;
        float _Thickness;
        float _WindNormalInfluence;
        float4 _VertexNormalMultiply;
        float _ColorNoiseTilling;
        float _Trunk_Normal_Scale;
        float _Global_Base_Brightness;
        float _Trunk_Smoothness_Remap_Max;
        float4 _EmissionColor;
        float _UseShadowThreshold;
        float4 _DoubleSidedConstants;
        float _BlendMode;
        float _EnableBlendModePreserveSpecularLighting;
        float _RayTracing;
        float _RefractionModel;
        CBUFFER_END
        
        
        // Object and Global properties
        SAMPLER(SamplerState_Linear_Repeat);
        SAMPLER(SamplerState_Linear_Repeat_Aniso8);
        TEXTURE2D(_BaseColorMap);
        SAMPLER(sampler_BaseColorMap);
        TEXTURE2D(_NormalMap);
        SAMPLER(sampler_NormalMap);
        TEXTURE2D(_Mask);
        SAMPLER(sampler_Mask);
        
            // -- Property used by ScenePickingPass
            #ifdef SCENEPICKINGPASS
            float4 _SelectionID;
            #endif
        
            // -- Properties used by SceneSelectionPass
            #ifdef SCENESELECTIONPASS
            int _ObjectId;
            int _PassValue;
            #endif
        
            // Includes
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
        #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Hashes.hlsl"
        
            // --------------------------------------------------
            // Structs and Packing
        
            struct AttributesMesh
        {
             float3 positionOS : POSITION;
             float3 normalOS : NORMAL;
             float4 tangentOS : TANGENT;
             float4 uv0 : TEXCOORD0;
            #if UNITY_ANY_INSTANCING_ENABLED
             uint instanceID : INSTANCEID_SEMANTIC;
            #endif
        };
        struct VaryingsMeshToPS
        {
            SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
             float3 positionRWS;
             float4 texCoord0;
            #if UNITY_ANY_INSTANCING_ENABLED
             uint instanceID : CUSTOM_INSTANCE_ID;
            #endif
        };
        struct VertexDescriptionInputs
        {
             float3 ObjectSpaceNormal;
             float3 ObjectSpaceTangent;
             float3 ObjectSpacePosition;
        };
        struct SurfaceDescriptionInputs
        {
             float3 TangentSpaceNormal;
             float3 AbsoluteWorldSpacePosition;
             float4 uv0;
        };
        struct PackedVaryingsMeshToPS
        {
            SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
             float4 texCoord0 : INTERP0;
             float3 positionRWS : INTERP1;
            #if UNITY_ANY_INSTANCING_ENABLED
             uint instanceID : CUSTOM_INSTANCE_ID;
            #endif
        };
        
            PackedVaryingsMeshToPS PackVaryingsMeshToPS (VaryingsMeshToPS input)
        {
            PackedVaryingsMeshToPS output;
            ZERO_INITIALIZE(PackedVaryingsMeshToPS, output);
            output.positionCS = input.positionCS;
            output.texCoord0.xyzw = input.texCoord0;
            output.positionRWS.xyz = input.positionRWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif
            return output;
        }
        
        VaryingsMeshToPS UnpackVaryingsMeshToPS (PackedVaryingsMeshToPS input)
        {
            VaryingsMeshToPS output;
            output.positionCS = input.positionCS;
            output.texCoord0 = input.texCoord0.xyzw;
            output.positionRWS = input.positionRWS.xyz;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif
            return output;
        }
        
        
            // --------------------------------------------------
            // Graph
        
        
            // Graph Functions
            
        void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
        {
            Out = UV * Tiling + Offset;
        }
        
        void Unity_Multiply_float4_float4(float4 A, float4 B, out float4 Out)
        {
            Out = A * B;
        }
        
        void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
        {
            Out = lerp(A, B, T);
        }
        
        float Unity_SimpleNoise_ValueNoise_LegacySine_float (float2 uv)
        {
            float2 i = floor(uv);
            float2 f = frac(uv);
            f = f * f * (3.0 - 2.0 * f);
            uv = abs(frac(uv) - 0.5);
            float2 c0 = i + float2(0.0, 0.0);
            float2 c1 = i + float2(1.0, 0.0);
            float2 c2 = i + float2(0.0, 1.0);
            float2 c3 = i + float2(1.0, 1.0);
            float r0; Hash_LegacySine_2_1_float(c0, r0);
            float r1; Hash_LegacySine_2_1_float(c1, r1);
            float r2; Hash_LegacySine_2_1_float(c2, r2);
            float r3; Hash_LegacySine_2_1_float(c3, r3);
            float bottomOfGrid = lerp(r0, r1, f.x);
            float topOfGrid = lerp(r2, r3, f.x);
            float t = lerp(bottomOfGrid, topOfGrid, f.y);
            return t;
        }
        
        void Unity_SimpleNoise_LegacySine_float(float2 UV, float Scale, out float Out)
        {
            float freq, amp;
            Out = 0.0f;
            freq = pow(2.0, float(0));
            amp = pow(0.5, float(3-0));
            Out += Unity_SimpleNoise_ValueNoise_LegacySine_float(float2(UV.xy*(Scale/freq)))*amp;
            freq = pow(2.0, float(1));
            amp = pow(0.5, float(3-1));
            Out += Unity_SimpleNoise_ValueNoise_LegacySine_float(float2(UV.xy*(Scale/freq)))*amp;
            freq = pow(2.0, float(2));
            amp = pow(0.5, float(3-2));
            Out += Unity_SimpleNoise_ValueNoise_LegacySine_float(float2(UV.xy*(Scale/freq)))*amp;
        }
        
        void Unity_Absolute_float(float In, out float Out)
        {
            Out = abs(In);
        }
        
        void Unity_Power_float(float A, float B, out float Out)
        {
            Out = pow(A, B);
        }
        
        void Unity_Clamp_float(float In, float Min, float Max, out float Out)
        {
            Out = clamp(In, Min, Max);
        }
        
        void Unity_Saturation_float(float3 In, float Saturation, out float3 Out)
        {
            float luma = dot(In, float3(0.2126729, 0.7151522, 0.0721750));
            Out =  luma.xxx + Saturation.xxx * (In - luma.xxx);
        }
        
        void Unity_Blend_Screen_float3(float3 Base, float3 Blend, out float3 Out, float Opacity)
        {
            Out = 1.0 - (1.0 - Blend) * (1.0 - Base);
            Out = lerp(Base, Out, Opacity);
        }
        
        void Unity_Clamp_float3(float3 In, float3 Min, float3 Max, out float3 Out)
        {
            Out = clamp(In, Min, Max);
        }
        
        void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
        {
            Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
        }
        
        void Unity_OneMinus_float(float In, out float Out)
        {
            Out = 1 - In;
        }
        
        void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
        {
            Out = lerp(A, B, T);
        }
        
        void Unity_Multiply_float3_float3(float3 A, float3 B, out float3 Out)
        {
            Out = A * B;
        }
        
        void Unity_Lerp_float(float A, float B, float T, out float Out)
        {
            Out = lerp(A, B, T);
        }
        
        void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
        {
            Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
        }
        
        void Unity_Multiply_float_float(float A, float B, out float Out)
        {
            Out = A * B;
        }
        
            // Graph Vertex
            struct VertexDescription
        {
            float3 Position;
            float3 Normal;
            float3 Tangent;
        };
        
        VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
        {
            VertexDescription description = (VertexDescription)0;
            description.Position = IN.ObjectSpacePosition;
            description.Normal = IN.ObjectSpaceNormal;
            description.Tangent = IN.ObjectSpaceTangent;
            return description;
        }
        
            // Graph Pixel
            struct SurfaceDescription
        {
            float3 BaseColor;
            float3 Emission;
            float Alpha;
            float AlphaClipThreshold;
            float AlphaClipThresholdShadow;
            float3 BentNormal;
            float Smoothness;
            float Occlusion;
            float3 NormalTS;
            float TransmissionMask;
            float Thickness;
            float DiffusionProfileHash;
        };
        
        SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
        {
            SurfaceDescription surface = (SurfaceDescription)0;
            UnityTexture2D _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_BaseColorMap);
            float4 _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4 = _TilingOffset;
            float _Split_60538633130155809820b3185c81057f_R_1_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[0];
            float _Split_60538633130155809820b3185c81057f_G_2_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[1];
            float _Split_60538633130155809820b3185c81057f_B_3_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[2];
            float _Split_60538633130155809820b3185c81057f_A_4_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[3];
            float2 _Vector2_83b2ea7a32ab548fb8c20dce14204561_Out_0_Vector2 = float2(_Split_60538633130155809820b3185c81057f_R_1_Float, _Split_60538633130155809820b3185c81057f_G_2_Float);
            float2 _Vector2_188e122ac0c7888f9f5fbde73f9edd75_Out_0_Vector2 = float2(_Split_60538633130155809820b3185c81057f_B_3_Float, _Split_60538633130155809820b3185c81057f_A_4_Float);
            float2 _TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2;
            Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_83b2ea7a32ab548fb8c20dce14204561_Out_0_Vector2, _Vector2_188e122ac0c7888f9f5fbde73f9edd75_Out_0_Vector2, _TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2);
            float4 _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.tex, _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.samplerstate, _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_R_4_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.r;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_G_5_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.g;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_B_6_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.b;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_A_7_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.a;
            float4 _Property_d37c4e2cc4f949f581f76dcb73d50e87_Out_0_Vector4 = _BarkBaseColor;
            float4 _Multiply_e4794b5d7e19433599f2b4e150644bea_Out_2_Vector4;
            Unity_Multiply_float4_float4(_SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4, _Property_d37c4e2cc4f949f581f76dcb73d50e87_Out_0_Vector4, _Multiply_e4794b5d7e19433599f2b4e150644bea_Out_2_Vector4);
            float4 _Property_0f3c5f287e8145bc95fd52cfba4b8fcc_Out_0_Vector4 = _TrunkBaseColor;
            float4 _Multiply_2453fa0c275a46cca1a866a080d90ddf_Out_2_Vector4;
            Unity_Multiply_float4_float4(_SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4, _Property_0f3c5f287e8145bc95fd52cfba4b8fcc_Out_0_Vector4, _Multiply_2453fa0c275a46cca1a866a080d90ddf_Out_2_Vector4);
            UnityTexture2D _Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_Mask);
            float4 _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_R_4_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.r;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.g;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_B_6_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.b;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_A_7_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.a;
            float4 _Lerp_9056381ab3034355b45968f0d1ff2f1a_Out_3_Vector4;
            Unity_Lerp_float4(_Multiply_e4794b5d7e19433599f2b4e150644bea_Out_2_Vector4, _Multiply_2453fa0c275a46cca1a866a080d90ddf_Out_2_Vector4, (_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_B_6_Float.xxxx), _Lerp_9056381ab3034355b45968f0d1ff2f1a_Out_3_Vector4);
            float4 _Property_944e0c60198849afb235eb9940da5dd9_Out_0_Vector4 = _DryColor;
            float4 _Property_621f9271d8734c81b9001229b0296656_Out_0_Vector4 = _HealthyColor;
            float _Split_99caf98864a9e980997a02cedd282dd0_R_1_Float = IN.AbsoluteWorldSpacePosition[0];
            float _Split_99caf98864a9e980997a02cedd282dd0_G_2_Float = IN.AbsoluteWorldSpacePosition[1];
            float _Split_99caf98864a9e980997a02cedd282dd0_B_3_Float = IN.AbsoluteWorldSpacePosition[2];
            float _Split_99caf98864a9e980997a02cedd282dd0_A_4_Float = 0;
            float2 _Vector2_ddc95fa04fb4858daf984190322978b9_Out_0_Vector2 = float2(_Split_99caf98864a9e980997a02cedd282dd0_R_1_Float, _Split_99caf98864a9e980997a02cedd282dd0_B_3_Float);
            float _Property_4d778d1ae72a416b96bf6cb1986a7d5d_Out_0_Float = _ColorNoiseTilling;
            float _SimpleNoise_96327065e2b0428f83e25f93c7e5a748_Out_2_Float;
            Unity_SimpleNoise_LegacySine_float(_Vector2_ddc95fa04fb4858daf984190322978b9_Out_0_Vector2, _Property_4d778d1ae72a416b96bf6cb1986a7d5d_Out_0_Float, _SimpleNoise_96327065e2b0428f83e25f93c7e5a748_Out_2_Float);
            float _Absolute_3da7acf58a45403cad1e7c432d78f027_Out_1_Float;
            Unity_Absolute_float(_SimpleNoise_96327065e2b0428f83e25f93c7e5a748_Out_2_Float, _Absolute_3da7acf58a45403cad1e7c432d78f027_Out_1_Float);
            float _Property_0dff529d33cb42e388c9d874effe6e19_Out_0_Float = _HealthyandDryColorNoisePower;
            float _Power_77b7c0eba07f4b9da46f2fa461c49201_Out_2_Float;
            Unity_Power_float(_Absolute_3da7acf58a45403cad1e7c432d78f027_Out_1_Float, _Property_0dff529d33cb42e388c9d874effe6e19_Out_0_Float, _Power_77b7c0eba07f4b9da46f2fa461c49201_Out_2_Float);
            float _Clamp_efb2cde09ec64325a2f78a848b0827b2_Out_3_Float;
            Unity_Clamp_float(_Power_77b7c0eba07f4b9da46f2fa461c49201_Out_2_Float, float(0), float(1), _Clamp_efb2cde09ec64325a2f78a848b0827b2_Out_3_Float);
            float4 _Lerp_b995ffde83d24283ac272745617fa60c_Out_3_Vector4;
            Unity_Lerp_float4(_Property_944e0c60198849afb235eb9940da5dd9_Out_0_Vector4, _Property_621f9271d8734c81b9001229b0296656_Out_0_Vector4, (_Clamp_efb2cde09ec64325a2f78a848b0827b2_Out_3_Float.xxxx), _Lerp_b995ffde83d24283ac272745617fa60c_Out_3_Vector4);
            float4 _Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4;
            Unity_Multiply_float4_float4(_SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4, _Lerp_b995ffde83d24283ac272745617fa60c_Out_3_Vector4, _Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4);
            float _Property_a52cc4db448642208842be98e18796fb_Out_0_Float = _Backface_Saturation;
            float3 _Saturation_1a5be2ae12084c59883f7d315d09cd80_Out_2_Vector3;
            Unity_Saturation_float((_Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4.xyz), _Property_a52cc4db448642208842be98e18796fb_Out_0_Float, _Saturation_1a5be2ae12084c59883f7d315d09cd80_Out_2_Vector3);
            float _Property_547f6c365f204d14a383183448811966_Out_0_Float = _Backface_Brightness;
            float3 _Blend_9d43ee127ca04ec09dd9151a833d8d61_Out_2_Vector3;
            Unity_Blend_Screen_float3(_Saturation_1a5be2ae12084c59883f7d315d09cd80_Out_2_Vector3, (_Property_547f6c365f204d14a383183448811966_Out_0_Float.xxx), _Blend_9d43ee127ca04ec09dd9151a833d8d61_Out_2_Vector3, float(1));
            float3 _Clamp_f7855b2ac55c4d43b25a4a1e56dbbbf7_Out_3_Vector3;
            Unity_Clamp_float3(_Blend_9d43ee127ca04ec09dd9151a833d8d61_Out_2_Vector3, float3(0, 0, 0), float3(1, 1, 1), _Clamp_f7855b2ac55c4d43b25a4a1e56dbbbf7_Out_3_Vector3);
            float2 _Property_b0a46b9c34574501a2f500d2f5745793_Out_0_Vector2 = _Backface_Thickness_Mask_Remap;
            float _Remap_bbbefbf0fbaf41d8a6d07b465d45488f_Out_3_Float;
            Unity_Remap_float(_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_A_7_Float, float2 (0, 1), _Property_b0a46b9c34574501a2f500d2f5745793_Out_0_Vector2, _Remap_bbbefbf0fbaf41d8a6d07b465d45488f_Out_3_Float);
            float _Clamp_6ac81c92e9a64e958055eca61b82e791_Out_3_Float;
            Unity_Clamp_float(_Remap_bbbefbf0fbaf41d8a6d07b465d45488f_Out_3_Float, float(0), float(1), _Clamp_6ac81c92e9a64e958055eca61b82e791_Out_3_Float);
            float _Property_3a1e9cc1507b46b2af88ab75dfc37b44_Out_0_Float = _Backface_Thickness_Mask_Threshold;
            float _Power_1fccfa34ffba46ceac25f1238aa4e1b5_Out_2_Float;
            Unity_Power_float(_Clamp_6ac81c92e9a64e958055eca61b82e791_Out_3_Float, _Property_3a1e9cc1507b46b2af88ab75dfc37b44_Out_0_Float, _Power_1fccfa34ffba46ceac25f1238aa4e1b5_Out_2_Float);
            float _Clamp_e55b4d1f4fda4e97bcfe15cfe9c6fd05_Out_3_Float;
            Unity_Clamp_float(_Power_1fccfa34ffba46ceac25f1238aa4e1b5_Out_2_Float, float(0), float(1), _Clamp_e55b4d1f4fda4e97bcfe15cfe9c6fd05_Out_3_Float);
            float _OneMinus_16a8ddad0aee4e5ca379aef306048984_Out_1_Float;
            Unity_OneMinus_float(_Clamp_e55b4d1f4fda4e97bcfe15cfe9c6fd05_Out_3_Float, _OneMinus_16a8ddad0aee4e5ca379aef306048984_Out_1_Float);
            float3 _Lerp_9c8a6dd2927446309acc26d9f217de99_Out_3_Vector3;
            Unity_Lerp_float3((_Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4.xyz), _Clamp_f7855b2ac55c4d43b25a4a1e56dbbbf7_Out_3_Vector3, (_OneMinus_16a8ddad0aee4e5ca379aef306048984_Out_1_Float.xxx), _Lerp_9c8a6dd2927446309acc26d9f217de99_Out_3_Vector3);
            float _Absolute_98dfaf1178334fc287f9e4d4b5f3a0f0_Out_1_Float;
            Unity_Absolute_float(_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_R_4_Float, _Absolute_98dfaf1178334fc287f9e4d4b5f3a0f0_Out_1_Float);
            float _Property_08b97a5bb158439e9155434b6637ac33_Out_0_Float = _Cross_Backface_Mask_Power;
            float _Power_c8f61d8af16945f9b82731ed18d38dd9_Out_2_Float;
            Unity_Power_float(_Absolute_98dfaf1178334fc287f9e4d4b5f3a0f0_Out_1_Float, _Property_08b97a5bb158439e9155434b6637ac33_Out_0_Float, _Power_c8f61d8af16945f9b82731ed18d38dd9_Out_2_Float);
            float _Clamp_c8b7bf714ebb484d8aa73d545b2f9d59_Out_3_Float;
            Unity_Clamp_float(_Power_c8f61d8af16945f9b82731ed18d38dd9_Out_2_Float, float(0), float(1), _Clamp_c8b7bf714ebb484d8aa73d545b2f9d59_Out_3_Float);
            float3 _Lerp_343d7507e4664bd7bc5108bcf0d55854_Out_3_Vector3;
            Unity_Lerp_float3(_Lerp_9c8a6dd2927446309acc26d9f217de99_Out_3_Vector3, (_Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4.xyz), (_Clamp_c8b7bf714ebb484d8aa73d545b2f9d59_Out_3_Float.xxx), _Lerp_343d7507e4664bd7bc5108bcf0d55854_Out_3_Vector3);
            float3 _Lerp_0d72c41eff034cfaaaf0208f4bf42433_Out_3_Vector3;
            Unity_Lerp_float3((_Lerp_9056381ab3034355b45968f0d1ff2f1a_Out_3_Vector4.xyz), _Lerp_343d7507e4664bd7bc5108bcf0d55854_Out_3_Vector3, (_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float.xxx), _Lerp_0d72c41eff034cfaaaf0208f4bf42433_Out_3_Vector3);
            float _Property_09c643c04af64fb18f3a77b935844ecc_Out_0_Float = _Global_Base_Brightness;
            float3 _Multiply_61b0f4818da94adfa23e13d8e3e376a8_Out_2_Vector3;
            Unity_Multiply_float3_float3(_Lerp_0d72c41eff034cfaaaf0208f4bf42433_Out_3_Vector3, (_Property_09c643c04af64fb18f3a77b935844ecc_Out_0_Float.xxx), _Multiply_61b0f4818da94adfa23e13d8e3e376a8_Out_2_Vector3);
            float3 _Clamp_359788e8ad134650b865e76600af6700_Out_3_Vector3;
            Unity_Clamp_float3(_Multiply_61b0f4818da94adfa23e13d8e3e376a8_Out_2_Vector3, float3(0, 0, 0), float3(1, 1, 1), _Clamp_359788e8ad134650b865e76600af6700_Out_3_Vector3);
            float _Property_067d68a770a25e8f978ca090306a96d8_Out_0_Float = _AlphaCutoff;
            float _Property_4b59dc86107847d5b565cde1e47efb8f_Out_0_Float = _AlphaShadowThreshold;
            float _Property_c35305c7157c4d3ba1db4ba61b2e2ebc_Out_0_Float = _Trunk_Smoothness_Remap_Max;
            float _Property_0edea7916ed7a189a62b0faf2c274601_Out_0_Float = _SmoothnessRemapMax;
            float _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float;
            Unity_Lerp_float(_Property_c35305c7157c4d3ba1db4ba61b2e2ebc_Out_0_Float, _Property_0edea7916ed7a189a62b0faf2c274601_Out_0_Float, _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float, _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float);
            float _Property_48e1c5285b48c78e8af19e38f4bd77f9_Out_0_Float = _AORemapMax;
            UnityTexture2D _Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_NormalMap);
            float4 _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.rgb = UnpackNormal(_SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4);
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_R_4_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.r;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_G_5_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.g;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_B_6_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.b;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_A_7_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.a;
            float _Property_b07156802a1240f7a8c14a272c5f1b36_Out_0_Float = _Trunk_Normal_Scale;
            float _Property_72e436a108ad64868e46d548c585c5f3_Out_0_Float = _NormalScale;
            float _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float;
            Unity_Lerp_float(_Property_b07156802a1240f7a8c14a272c5f1b36_Out_0_Float, _Property_72e436a108ad64868e46d548c585c5f3_Out_0_Float, _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float, _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float);
            float3 _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3;
            Unity_NormalStrength_float((_SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.xyz), _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float, _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3);
            float _Property_2fa2ab76399ae48aaf1180768279e6b9_Out_0_Float = _Thickness;
            float _Multiply_aed8020082acc482b9303a61b01a1a1a_Out_2_Float;
            Unity_Multiply_float_float(_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_A_7_Float, _Property_2fa2ab76399ae48aaf1180768279e6b9_Out_0_Float, _Multiply_aed8020082acc482b9303a61b01a1a1a_Out_2_Float);
            surface.BaseColor = _Clamp_359788e8ad134650b865e76600af6700_Out_3_Vector3;
            surface.Emission = float3(0, 0, 0);
            surface.Alpha = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_A_7_Float;
            surface.AlphaClipThreshold = _Property_067d68a770a25e8f978ca090306a96d8_Out_0_Float;
            surface.AlphaClipThresholdShadow = _Property_4b59dc86107847d5b565cde1e47efb8f_Out_0_Float;
            surface.BentNormal = IN.TangentSpaceNormal;
            surface.Smoothness = _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float;
            surface.Occlusion = _Property_48e1c5285b48c78e8af19e38f4bd77f9_Out_0_Float;
            surface.NormalTS = _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3;
            surface.TransmissionMask = float(1);
            surface.Thickness = _Multiply_aed8020082acc482b9303a61b01a1a1a_Out_2_Float;
            surface.DiffusionProfileHash = _DiffusionProfileHash;
            return surface;
        }
        
            // --------------------------------------------------
            // Build Graph Inputs
            #ifdef HAVE_VFX_MODIFICATION
            #define VFX_SRP_ATTRIBUTES AttributesMesh
            #define VaryingsMeshType VaryingsMeshToPS
            #define VFX_SRP_VARYINGS VaryingsMeshType
            #define VFX_SRP_SURFACE_INPUTS FragInputs
            #endif
            
        VertexDescriptionInputs AttributesMeshToVertexDescriptionInputs(AttributesMesh input)
        {
            VertexDescriptionInputs output;
            ZERO_INITIALIZE(VertexDescriptionInputs, output);
        
            output.ObjectSpaceNormal =                          input.normalOS;
            output.ObjectSpaceTangent =                         input.tangentOS.xyz;
            output.ObjectSpacePosition =                        input.positionOS;
        
            return output;
        }
        
        VertexDescription GetVertexDescription(AttributesMesh input, float3 timeParameters
        #ifdef HAVE_VFX_MODIFICATION
            , AttributesElement element
        #endif
        )
        {
            // build graph inputs
            VertexDescriptionInputs vertexDescriptionInputs = AttributesMeshToVertexDescriptionInputs(input);
            // Override time parameters with used one (This is required to correctly handle motion vectors for vertex animation based on time)
        
            // evaluate vertex graph
        #ifdef HAVE_VFX_MODIFICATION
            GraphProperties properties;
            ZERO_INITIALIZE(GraphProperties, properties);
        
            // Fetch the vertex graph properties for the particle instance.
            GetElementVertexProperties(element, properties);
        
            VertexDescription vertexDescription = VertexDescriptionFunction(vertexDescriptionInputs, properties);
        #else
            VertexDescription vertexDescription = VertexDescriptionFunction(vertexDescriptionInputs);
        #endif
            return vertexDescription;
        
        }
        
        AttributesMesh ApplyMeshModification(AttributesMesh input, float3 timeParameters
        #ifdef USE_CUSTOMINTERP_SUBSTRUCT
            #ifdef TESSELLATION_ON
            , inout VaryingsMeshToDS varyings
            #else
            , inout VaryingsMeshToPS varyings
            #endif
        #endif
        #ifdef HAVE_VFX_MODIFICATION
                , AttributesElement element
        #endif
            )
        {
            VertexDescription vertexDescription = GetVertexDescription(input, timeParameters
        #ifdef HAVE_VFX_MODIFICATION
                , element
        #endif
            );
        
            // copy graph output to the results
            input.positionOS = vertexDescription.Position;
            input.normalOS = vertexDescription.Normal;
            input.tangentOS.xyz = vertexDescription.Tangent;
        
            
        
            return input;
        }
        
        #if defined(_ADD_CUSTOM_VELOCITY) // For shader graph custom velocity
        // Return precomputed Velocity in object space
        float3 GetCustomVelocity(AttributesMesh input
        #ifdef HAVE_VFX_MODIFICATION
            , AttributesElement element
        #endif
        )
        {
            VertexDescription vertexDescription = GetVertexDescription(input, _TimeParameters.xyz
        #ifdef HAVE_VFX_MODIFICATION
                , element
        #endif
            );
            return vertexDescription.CustomVelocity;
        }
        #endif
        
        FragInputs BuildFragInputs(VaryingsMeshToPS input)
        {
            FragInputs output;
            ZERO_INITIALIZE(FragInputs, output);
        
            // Init to some default value to make the computer quiet (else it output 'divide by zero' warning even if value is not used).
            // TODO: this is a really poor workaround, but the variable is used in a bunch of places
            // to compute normals which are then passed on elsewhere to compute other values...
            output.tangentToWorld = k_identity3x3;
            output.positionSS = input.positionCS;       // input.positionCS is SV_Position
        
            output.positionRWS =                input.positionRWS;
            output.texCoord0 =                  input.texCoord0;
        
        #ifdef HAVE_VFX_MODIFICATION
            // FragInputs from VFX come from two places: Interpolator or CBuffer.
        #if VFX_USE_GRAPH_VALUES
            uint instanceActiveIndex = asuint(UNITY_ACCESS_INSTANCED_PROP(PerInstance, _InstanceActiveIndex));
            /* WARNING: $splice Could not find named fragment 'VFXLoadGraphValues' */
        #endif
        
            /* WARNING: $splice Could not find named fragment 'VFXSetFragInputs' */
        
        #endif
        
            // splice point to copy custom interpolator fields from varyings to frag inputs
            
        
            return output;
        }
        
        // existing HDRP code uses the combined function to go directly from packed to frag inputs
        FragInputs UnpackVaryingsMeshToFragInputs(PackedVaryingsMeshToPS input)
        {
            UNITY_SETUP_INSTANCE_ID(input);
        #if defined(HAVE_VFX_MODIFICATION) && defined(UNITY_INSTANCING_ENABLED)
            unity_InstanceID = input.instanceID;
        #endif
            VaryingsMeshToPS unpacked = UnpackVaryingsMeshToPS(input);
            return BuildFragInputs(unpacked);
        }
            SurfaceDescriptionInputs FragInputsToSurfaceDescriptionInputs(FragInputs input, float3 viewWS)
        {
            SurfaceDescriptionInputs output;
            ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
        
            #if defined(SHADER_STAGE_RAY_TRACING)
            #else
            #endif
            output.TangentSpaceNormal =                         float3(0.0f, 0.0f, 1.0f);
            output.AbsoluteWorldSpacePosition =                 GetAbsolutePositionWS(input.positionRWS);
        
        #if UNITY_UV_STARTS_AT_TOP
        #else
        #endif
        
        
            output.uv0 =                                        input.texCoord0;
        
            // splice point to copy frag inputs custom interpolator pack into the SDI
            
        
            return output;
        }
        
            // --------------------------------------------------
            // Build Surface Data (Specific Material)
        
        void ApplyDecalToSurfaceDataNoNormal(DecalSurfaceData decalSurfaceData, inout SurfaceData surfaceData);
        
        void ApplyDecalAndGetNormal(FragInputs fragInputs, PositionInputs posInput, SurfaceDescription surfaceDescription,
            inout SurfaceData surfaceData)
        {
            float3 doubleSidedConstants = GetDoubleSidedConstants();
        
        #ifdef DECAL_NORMAL_BLENDING
            // SG nodes don't ouptut surface gradients, so if decals require surf grad blending, we have to convert
            // the normal to gradient before applying the decal. We then have to resolve the gradient back to world space
            float3 normalTS;
        
            normalTS = SurfaceGradientFromTangentSpaceNormalAndFromTBN(surfaceDescription.NormalTS,
            fragInputs.tangentToWorld[0], fragInputs.tangentToWorld[1]);
        
        
            #if HAVE_DECALS
            if (_EnableDecals)
            {
                float alpha = 1.0;
                alpha = surfaceDescription.Alpha;
        
                DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                ApplyDecalToSurfaceNormal(decalSurfaceData, fragInputs.tangentToWorld[2], normalTS);
                ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
            }
            #endif
        
            GetNormalWS_SG(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);
        #else
            // normal delivered to master node
            GetNormalWS(fragInputs, surfaceDescription.NormalTS, surfaceData.normalWS, doubleSidedConstants);
        
            #if HAVE_DECALS
            if (_EnableDecals)
            {
                float alpha = 1.0;
                alpha = surfaceDescription.Alpha;
        
                // Both uses and modifies 'surfaceData.normalWS'.
                DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                ApplyDecalToSurfaceNormal(decalSurfaceData, surfaceData.normalWS.xyz);
                ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
            }
            #endif
        #endif
        }
        void BuildSurfaceData(FragInputs fragInputs, inout SurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
        {
            ZERO_INITIALIZE(SurfaceData, surfaceData);
        
            // specularOcclusion need to be init ahead of decal to quiet the compiler that modify the SurfaceData struct
            // however specularOcclusion can come from the graph, so need to be init here so it can be override.
            surfaceData.specularOcclusion = 1.0;
        
            surfaceData.baseColor =                 surfaceDescription.BaseColor;
            surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
            surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
            surfaceData.transmissionMask =          surfaceDescription.TransmissionMask;
            surfaceData.thickness =                 surfaceDescription.Thickness;
            surfaceData.diffusionProfileHash =      asuint(surfaceDescription.DiffusionProfileHash);
        
            #if defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE) || defined(_REFRACTION_THIN)
                if (_EnableSSRefraction)
                {
        
                    surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                    surfaceDescription.Alpha = 1.0;
                }
                else
                {
                    surfaceData.ior = 1.0;
                    surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                    surfaceData.atDistance = 1.0;
                    surfaceData.transmittanceMask = 0.0;
                    surfaceDescription.Alpha = 1.0;
                }
            #else
                surfaceData.ior = 1.0;
                surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                surfaceData.atDistance = 1.0;
                surfaceData.transmittanceMask = 0.0;
            #endif
        
            // These static material feature allow compile time optimization
            surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
            #ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
            #endif
        
            #ifdef _MATERIAL_FEATURE_TRANSMISSION
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
            #endif
        
            #ifdef _MATERIAL_FEATURE_ANISOTROPY
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
        
                // Initialize the normal to something non-zero to avoid a div-zero warning for anisotropy.
                surfaceData.normalWS = float3(0, 1, 0);
            #endif
        
            #ifdef _MATERIAL_FEATURE_IRIDESCENCE
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
            #endif
        
            #ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
            #endif
        
            #ifdef _MATERIAL_FEATURE_CLEAR_COAT
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
            #endif
        
            #if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                // Require to have setup baseColor
                // Reproduce the energy conservation done in legacy Unity. Not ideal but better for compatibility and users can unchek it
                surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
            #endif
        
            float3 doubleSidedConstants = GetDoubleSidedConstants();
        
            ApplyDecalAndGetNormal(fragInputs, posInput, surfaceDescription, surfaceData);
        
            surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
        
            surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
        
        
            bentNormalWS = surfaceData.normalWS;
        
            surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);
        
            #ifdef DEBUG_DISPLAY
                if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                {
                    // TODO: need to update mip info
                    surfaceData.metallic = 0;
                }
        
                // We need to call ApplyDebugToSurfaceData after filling the surfarcedata and before filling builtinData
                // as it can modify attribute use for static lighting
                ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
            #endif
        
            // By default we use the ambient occlusion with Tri-ace trick (apply outside) for specular occlusion.
            // If user provide bent normal then we process a better term
            #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                // Just use the value passed through via the slot (not active otherwise)
            #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                // If we have bent normal and ambient occlusion, process a specular occlusion
                surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
            #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
                surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
            #endif
        
            #if defined(_ENABLE_GEOMETRIC_SPECULAR_AA) && !defined(SHADER_STAGE_RAY_TRACING)
                surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
            #endif
        }
        
            // --------------------------------------------------
            // Get Surface And BuiltinData
        
            void GetSurfaceAndBuiltinData(FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData RAY_TRACING_OPTIONAL_PARAMETERS)
            {
                // Don't dither if displaced tessellation (we're fading out the displacement instead to match the next LOD)
                #if !defined(SHADER_STAGE_RAY_TRACING) && !defined(_TESSELLATION_DISPLACEMENT)
                #ifdef LOD_FADE_CROSSFADE // enable dithering LOD transition if user select CrossFade transition in LOD group
                LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
                #endif
                #endif
        
                #ifndef SHADER_UNLIT
                #ifdef _DOUBLESIDED_ON
                    float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
                #else
                    float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
                #endif
        
                ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants); // Apply double sided flip on the vertex normal
                #endif // SHADER_UNLIT
        
                SurfaceDescriptionInputs surfaceDescriptionInputs = FragInputsToSurfaceDescriptionInputs(fragInputs, V);
        
                #if defined(HAVE_VFX_MODIFICATION)
                GraphProperties properties;
                ZERO_INITIALIZE(GraphProperties, properties);
        
                GetElementPixelProperties(fragInputs, properties);
        
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs, properties);
                #else
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs);
                #endif
        
                // Perform alpha test very early to save performance (a killed pixel will not sample textures)
                // TODO: split graph evaluation to grab just alpha dependencies first? tricky..
                #ifdef _ALPHATEST_ON
                    float alphaCutoff = surfaceDescription.AlphaClipThreshold;
                    #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
                    // The TransparentDepthPrepass is also used with SSR transparent.
                    // If an artists enable transaprent SSR but not the TransparentDepthPrepass itself, then we use AlphaClipThreshold
                    // otherwise if TransparentDepthPrepass is enabled we use AlphaClipThresholdDepthPrepass
                    #elif SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_POSTPASS
                    // DepthPostpass always use its own alpha threshold
                    alphaCutoff = surfaceDescription.AlphaClipThresholdDepthPostpass;
                    #elif (SHADERPASS == SHADERPASS_SHADOWS) || (SHADERPASS == SHADERPASS_RAYTRACING_VISIBILITY)
                    // If use shadow threshold isn't enable we don't allow any test
                    #endif
        
                    GENERIC_ALPHA_TEST(surfaceDescription.Alpha, alphaCutoff);
                #endif
        
                #if !defined(SHADER_STAGE_RAY_TRACING) && _DEPTHOFFSET_ON
                ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
                #endif
        
                #ifndef SHADER_UNLIT
                float3 bentNormalWS;
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS);
        
                #ifdef FRAG_INPUTS_USE_TEXCOORD1
                    float4 lightmapTexCoord1 = fragInputs.texCoord1;
                #else
                    float4 lightmapTexCoord1 = float4(0,0,0,0);
                #endif
        
                #ifdef FRAG_INPUTS_USE_TEXCOORD2
                    float4 lightmapTexCoord2 = fragInputs.texCoord2;
                #else
                    float4 lightmapTexCoord2 = float4(0,0,0,0);
                #endif
        
                // Builtin Data
                // For back lighting we use the oposite vertex normal
                InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], lightmapTexCoord1, lightmapTexCoord2, builtinData);
        
                #else
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData);
        
                ZERO_BUILTIN_INITIALIZE(builtinData); // No call to InitBuiltinData as we don't have any lighting
                builtinData.opacity = surfaceDescription.Alpha;
        
                #if defined(DEBUG_DISPLAY)
                    // Light Layers are currently not used for the Unlit shader (because it is not lit)
                    // But Unlit objects do cast shadows according to their rendering layer mask, which is what we want to
                    // display in the light layers visualization mode, therefore we need the renderingLayers
                    builtinData.renderingLayers = GetMeshRenderingLightLayer();
                #endif
        
                #endif // SHADER_UNLIT
        
                #ifdef _ALPHATEST_ON
                    // Used for sharpening by alpha to mask - Alpha to covertage is only used with depth only and forward pass (no shadow pass, no transparent pass)
                    builtinData.alphaClipTreshold = alphaCutoff;
                #endif
        
                // override sampleBakedGI - not used by Unlit
        
                builtinData.emissiveColor = surfaceDescription.Emission;
        
                // Note this will not fully work on transparent surfaces (can check with _SURFACE_TYPE_TRANSPARENT define)
                // We will always overwrite vt feeback with the nearest. So behind transparent surfaces vt will not be resolved
                // This is a limitation of the current MRT approach.
                #ifdef UNITY_VIRTUAL_TEXTURING
                #endif
        
                #if _DEPTHOFFSET_ON
                builtinData.depthOffset = surfaceDescription.DepthOffset;
                #endif
        
                // TODO: We should generate distortion / distortionBlur for non distortion pass
                #if (SHADERPASS == SHADERPASS_DISTORTION)
                builtinData.distortion = surfaceDescription.Distortion;
                builtinData.distortionBlur = surfaceDescription.DistortionBlur;
                #endif
        
                #ifndef SHADER_UNLIT
                // PostInitBuiltinData call ApplyDebugToBuiltinData
                PostInitBuiltinData(V, posInput, surfaceData, builtinData);
                #else
                ApplyDebugToBuiltinData(builtinData);
                #endif
        
                RAY_TRACING_OPTIONAL_ALPHA_TEST_PASS
            }
        
            // --------------------------------------------------
            // Main
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPassFullScreenDebug.hlsl"
        
            // --------------------------------------------------
            // Visual Effect Vertex Invocations
        
        	#ifdef HAVE_VFX_MODIFICATION
        	#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/VisualEffectVertex.hlsl"
        	#endif
        
            ENDHLSL
        }
        Pass
        {
            Name "DepthOnly"
            Tags
            {
                "LightMode" = "DepthOnly"
            }
        
            // Render State
            Cull [_CullMode]
        ZWrite On
        Stencil
        {
        WriteMask [_StencilWriteMaskDepth]
        Ref [_StencilRefDepth]
        CompFront Always
        PassFront Replace
        CompBack Always
        PassBack Replace
        }
        AlphaToMask [_AlphaCutoffEnable]
        
            // Debug
            // <None>
        
            // --------------------------------------------------
            // Pass
        
            HLSLPROGRAM
        
            // Pragmas
            #pragma multi_compile _ DOTS_INSTANCING_ON
        #pragma instancing_options renderinglayer
        #pragma target 4.5
        #pragma vertex Vert
        #pragma fragment Frag
        #pragma only_renderers d3d11 playstation xboxone xboxseries vulkan metal switch
        #pragma multi_compile_instancing
        
            // Keywords
            #pragma multi_compile _ WRITE_NORMAL_BUFFER
        #pragma shader_feature_local _ _ALPHATEST_ON
        #pragma multi_compile_fragment _ WRITE_MSAA_DEPTH
        #pragma shader_feature _ _SURFACE_TYPE_TRANSPARENT
        #pragma shader_feature_local _ _DOUBLESIDED_ON
        #pragma shader_feature_local _ _ADD_PRECOMPUTED_VELOCITY
        #pragma shader_feature_local _ _TRANSPARENT_WRITES_MOTION_VEC
        #pragma shader_feature_local_fragment _ _ENABLE_FOG_ON_TRANSPARENT
        #pragma multi_compile _ LOD_FADE_CROSSFADE
        #pragma shader_feature_local_fragment _ _DISABLE_DECALS
        #pragma shader_feature_local_raytracing _ _DISABLE_DECALS
        #pragma shader_feature_local_fragment _ _DISABLE_SSR
        #pragma shader_feature_local_raytracing _ _DISABLE_SSR
        #pragma shader_feature_local_fragment _ _DISABLE_SSR_TRANSPARENT
        #pragma shader_feature_local_raytracing _ _DISABLE_SSR_TRANSPARENT
        #pragma multi_compile _ WRITE_DECAL_BUFFER
        #pragma shader_feature_local _ _REFRACTION_PLANE _REFRACTION_SPHERE _REFRACTION_THIN
            // GraphKeywords: <None>
        
            // For custom interpolators to inject a substruct definition before FragInputs definition,
            // allowing for FragInputs to capture CI's intended for ShaderGraph's SDI.
            struct CustomInterpolators
        {
        };
        #define USE_CUSTOMINTERP_SUBSTRUCT
        
        
        
            // TODO: Merge FragInputsVFX substruct with CustomInterpolators.
        	#ifdef HAVE_VFX_MODIFICATION
        	struct FragInputsVFX
            {
                /* WARNING: $splice Could not find named fragment 'FragInputsVFX' */
            };
            #endif
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/GeometricTools.hlsl" // Required by Tessellation.hlsl
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Tessellation.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl" // Required to be include before we include properties as it define DECLARE_STACK_CB
            // Always include Shader Graph version
            // Always include last to avoid double macros
            #include "Packages/com.unity.shadergraph/ShaderGraphLibrary/Functions.hlsl" // Need to be here for Gradient struct definition
        
            // --------------------------------------------------
            // Defines
        
            // Attribute
            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TANGENT
            #define ATTRIBUTES_NEED_TEXCOORD0
            #define VARYINGS_NEED_POSITION_WS
            #define VARYINGS_NEED_TANGENT_TO_WORLD
            #define VARYINGS_NEED_TEXCOORD0
        
            #define HAVE_MESH_MODIFICATION
        
            //Strip down the FragInputs.hlsl (on graphics), so we can only optimize the interpolators we use.
            //if by accident something requests contents of FragInputs.hlsl, it will be caught as a compiler error
            //Frag inputs stripping is only enabled when FRAG_INPUTS_ENABLE_STRIPPING is set
            #if !defined(SHADER_STAGE_RAY_TRACING) && SHADERPASS != SHADERPASS_RAYTRACING_GBUFFER && SHADERPASS != SHADERPASS_FULL_SCREEN_DEBUG
            #define FRAG_INPUTS_ENABLE_STRIPPING
            #endif
            #define FRAG_INPUTS_USE_TEXCOORD0
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
        
        
        
            #define SHADERPASS SHADERPASS_DEPTH_ONLY
        #define RAYTRACING_SHADER_GRAPH_DEFAULT
        
        
            // Following two define are a workaround introduce in 10.1.x for RaytracingQualityNode
            // The ShaderGraph don't support correctly migration of this node as it serialize all the node data
            // in the json file making it impossible to uprgrade. Until we get a fix, we do a workaround here
            // to still allow us to rename the field and keyword of this node without breaking existing code.
            #ifdef RAYTRACING_SHADER_GRAPH_DEFAULT
            #define RAYTRACING_SHADER_GRAPH_HIGH
            #endif
        
            #ifdef RAYTRACING_SHADER_GRAPH_RAYTRACED
            #define RAYTRACING_SHADER_GRAPH_LOW
            #endif
            // end
        
            #ifndef SHADER_UNLIT
            // We need isFrontFace when using double sided - it is not required for unlit as in case of unlit double sided only drive the cullmode
            // VARYINGS_NEED_CULLFACE can be define by VaryingsMeshToPS.FaceSign input if a IsFrontFace Node is included in the shader graph.
            #if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
                #define VARYINGS_NEED_CULLFACE
            #endif
            #endif
        
            // Specific Material Define
        #define _MATERIAL_FEATURE_TRANSMISSION 1
        #define _AMBIENT_OCCLUSION 1
        #define _SPECULAR_OCCLUSION_FROM_AO 1
        #define _ENERGY_CONSERVING_SPECULAR 1
        
        // If we use subsurface scattering, enable output split lighting (for forward pass)
        #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
            #define OUTPUT_SPLIT_LIGHTING
        #endif
        
        // This shader support recursive rendering for raytracing
        #define HAVE_RECURSIVE_RENDERING
        
        // In Path Tracing, For all single-sided, refractive materials, we want to force a thin refraction model
        #if (SHADERPASS == SHADERPASS_PATH_TRACING) && !defined(_DOUBLESIDED_ON) && (defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE))
            #undef  _REFRACTION_PLANE
            #undef  _REFRACTION_SPHERE
            #define _REFRACTION_THIN
        #endif
            // Caution: we can use the define SHADER_UNLIT onlit after the above Material include as it is the Unlit template who define it
        
            // To handle SSR on transparent correctly with a possibility to enable/disable it per framesettings
            // we should have a code like this:
            // if !defined(_DISABLE_SSR_TRANSPARENT)
            // pragma multi_compile _ WRITE_NORMAL_BUFFER
            // endif
            // i.e we enable the multicompile only if we can receive SSR or not, and then C# code drive
            // it based on if SSR transparent in frame settings and not (and stripper can strip it).
            // this is currently not possible with our current preprocessor as _DISABLE_SSR_TRANSPARENT is a keyword not a define
            // so instead we used this and chose to pay the extra cost of normal write even if SSR transaprent is disabled.
            // Ideally the shader graph generator should handle it but condition below can't be handle correctly for now.
            #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
            #if !defined(_DISABLE_SSR_TRANSPARENT) && !defined(SHADER_UNLIT)
                #define WRITE_NORMAL_BUFFER
            #endif
            #endif
        
            #ifndef DEBUG_DISPLAY
                // In case of opaque we don't want to perform the alpha test, it is done in depth prepass and we use depth equal for ztest (setup from UI)
                // Don't do it with debug display mode as it is possible there is no depth prepass in this case
                #if !defined(_SURFACE_TYPE_TRANSPARENT)
                    #if SHADERPASS == SHADERPASS_FORWARD
                    #define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
                    #elif SHADERPASS == SHADERPASS_GBUFFER
                    #define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
                    #endif
                #endif
            #endif
        
            // Define _DEFERRED_CAPABLE_MATERIAL for shader capable to run in deferred pass
            #if defined(SHADER_LIT) && !defined(_SURFACE_TYPE_TRANSPARENT)
                #define _DEFERRED_CAPABLE_MATERIAL
            #endif
        
            // Translate transparent motion vector define
            #if defined(_TRANSPARENT_WRITES_MOTION_VEC) && defined(_SURFACE_TYPE_TRANSPARENT)
                #define _WRITE_TRANSPARENT_MOTION_VECTOR
            #endif
        
            // -- Graph Properties
            CBUFFER_START(UnityPerMaterial)
        float4 _DiffusionProfileAsset;
        float _DiffusionProfileHash;
        float4 _TrunkBaseColor;
        float4 _BarkBaseColor;
        float _Backface_Thickness_Mask_Threshold;
        float2 _Backface_Thickness_Mask_Remap;
        float _Backface_Brightness;
        float _Cross_Backface_Mask_Power;
        float _Backface_Saturation;
        float4 _HealthyColor;
        float4 _DryColor;
        float _AlphaCutoff;
        float _AlphaShadowThreshold;
        float4 _BaseColorMap_TexelSize;
        float4 _TilingOffset;
        float _HealthyandDryColorNoisePower;
        float4 _NormalMap_TexelSize;
        float _NormalScale;
        float _AORemapMax;
        float _SmoothnessRemapMax;
        float4 _Mask_TexelSize;
        float _Thickness;
        float _WindNormalInfluence;
        float4 _VertexNormalMultiply;
        float _ColorNoiseTilling;
        float _Trunk_Normal_Scale;
        float _Global_Base_Brightness;
        float _Trunk_Smoothness_Remap_Max;
        float4 _EmissionColor;
        float _UseShadowThreshold;
        float4 _DoubleSidedConstants;
        float _BlendMode;
        float _EnableBlendModePreserveSpecularLighting;
        float _RayTracing;
        float _RefractionModel;
        CBUFFER_END
        
        
        // Object and Global properties
        SAMPLER(SamplerState_Linear_Repeat);
        SAMPLER(SamplerState_Linear_Repeat_Aniso8);
        TEXTURE2D(_BaseColorMap);
        SAMPLER(sampler_BaseColorMap);
        TEXTURE2D(_NormalMap);
        SAMPLER(sampler_NormalMap);
        TEXTURE2D(_Mask);
        SAMPLER(sampler_Mask);
        
            // -- Property used by ScenePickingPass
            #ifdef SCENEPICKINGPASS
            float4 _SelectionID;
            #endif
        
            // -- Properties used by SceneSelectionPass
            #ifdef SCENESELECTIONPASS
            int _ObjectId;
            int _PassValue;
            #endif
        
            // Includes
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
        #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Hashes.hlsl"
        
            // --------------------------------------------------
            // Structs and Packing
        
            struct AttributesMesh
        {
             float3 positionOS : POSITION;
             float3 normalOS : NORMAL;
             float4 tangentOS : TANGENT;
             float4 uv0 : TEXCOORD0;
            #if UNITY_ANY_INSTANCING_ENABLED
             uint instanceID : INSTANCEID_SEMANTIC;
            #endif
        };
        struct VaryingsMeshToPS
        {
            SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
             float3 positionRWS;
             float3 normalWS;
             float4 tangentWS;
             float4 texCoord0;
            #if UNITY_ANY_INSTANCING_ENABLED
             uint instanceID : CUSTOM_INSTANCE_ID;
            #endif
        };
        struct VertexDescriptionInputs
        {
             float3 ObjectSpaceNormal;
             float3 ObjectSpaceTangent;
             float3 ObjectSpacePosition;
        };
        struct SurfaceDescriptionInputs
        {
             float3 TangentSpaceNormal;
             float3 AbsoluteWorldSpacePosition;
             float4 uv0;
        };
        struct PackedVaryingsMeshToPS
        {
            SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
             float4 tangentWS : INTERP0;
             float4 texCoord0 : INTERP1;
             float3 positionRWS : INTERP2;
             float3 normalWS : INTERP3;
            #if UNITY_ANY_INSTANCING_ENABLED
             uint instanceID : CUSTOM_INSTANCE_ID;
            #endif
        };
        
            PackedVaryingsMeshToPS PackVaryingsMeshToPS (VaryingsMeshToPS input)
        {
            PackedVaryingsMeshToPS output;
            ZERO_INITIALIZE(PackedVaryingsMeshToPS, output);
            output.positionCS = input.positionCS;
            output.tangentWS.xyzw = input.tangentWS;
            output.texCoord0.xyzw = input.texCoord0;
            output.positionRWS.xyz = input.positionRWS;
            output.normalWS.xyz = input.normalWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif
            return output;
        }
        
        VaryingsMeshToPS UnpackVaryingsMeshToPS (PackedVaryingsMeshToPS input)
        {
            VaryingsMeshToPS output;
            output.positionCS = input.positionCS;
            output.tangentWS = input.tangentWS.xyzw;
            output.texCoord0 = input.texCoord0.xyzw;
            output.positionRWS = input.positionRWS.xyz;
            output.normalWS = input.normalWS.xyz;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif
            return output;
        }
        
        
            // --------------------------------------------------
            // Graph
        
        
            // Graph Functions
            
        void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
        {
            Out = UV * Tiling + Offset;
        }
        
        void Unity_Multiply_float4_float4(float4 A, float4 B, out float4 Out)
        {
            Out = A * B;
        }
        
        void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
        {
            Out = lerp(A, B, T);
        }
        
        float Unity_SimpleNoise_ValueNoise_LegacySine_float (float2 uv)
        {
            float2 i = floor(uv);
            float2 f = frac(uv);
            f = f * f * (3.0 - 2.0 * f);
            uv = abs(frac(uv) - 0.5);
            float2 c0 = i + float2(0.0, 0.0);
            float2 c1 = i + float2(1.0, 0.0);
            float2 c2 = i + float2(0.0, 1.0);
            float2 c3 = i + float2(1.0, 1.0);
            float r0; Hash_LegacySine_2_1_float(c0, r0);
            float r1; Hash_LegacySine_2_1_float(c1, r1);
            float r2; Hash_LegacySine_2_1_float(c2, r2);
            float r3; Hash_LegacySine_2_1_float(c3, r3);
            float bottomOfGrid = lerp(r0, r1, f.x);
            float topOfGrid = lerp(r2, r3, f.x);
            float t = lerp(bottomOfGrid, topOfGrid, f.y);
            return t;
        }
        
        void Unity_SimpleNoise_LegacySine_float(float2 UV, float Scale, out float Out)
        {
            float freq, amp;
            Out = 0.0f;
            freq = pow(2.0, float(0));
            amp = pow(0.5, float(3-0));
            Out += Unity_SimpleNoise_ValueNoise_LegacySine_float(float2(UV.xy*(Scale/freq)))*amp;
            freq = pow(2.0, float(1));
            amp = pow(0.5, float(3-1));
            Out += Unity_SimpleNoise_ValueNoise_LegacySine_float(float2(UV.xy*(Scale/freq)))*amp;
            freq = pow(2.0, float(2));
            amp = pow(0.5, float(3-2));
            Out += Unity_SimpleNoise_ValueNoise_LegacySine_float(float2(UV.xy*(Scale/freq)))*amp;
        }
        
        void Unity_Absolute_float(float In, out float Out)
        {
            Out = abs(In);
        }
        
        void Unity_Power_float(float A, float B, out float Out)
        {
            Out = pow(A, B);
        }
        
        void Unity_Clamp_float(float In, float Min, float Max, out float Out)
        {
            Out = clamp(In, Min, Max);
        }
        
        void Unity_Saturation_float(float3 In, float Saturation, out float3 Out)
        {
            float luma = dot(In, float3(0.2126729, 0.7151522, 0.0721750));
            Out =  luma.xxx + Saturation.xxx * (In - luma.xxx);
        }
        
        void Unity_Blend_Screen_float3(float3 Base, float3 Blend, out float3 Out, float Opacity)
        {
            Out = 1.0 - (1.0 - Blend) * (1.0 - Base);
            Out = lerp(Base, Out, Opacity);
        }
        
        void Unity_Clamp_float3(float3 In, float3 Min, float3 Max, out float3 Out)
        {
            Out = clamp(In, Min, Max);
        }
        
        void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
        {
            Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
        }
        
        void Unity_OneMinus_float(float In, out float Out)
        {
            Out = 1 - In;
        }
        
        void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
        {
            Out = lerp(A, B, T);
        }
        
        void Unity_Multiply_float3_float3(float3 A, float3 B, out float3 Out)
        {
            Out = A * B;
        }
        
        void Unity_Lerp_float(float A, float B, float T, out float Out)
        {
            Out = lerp(A, B, T);
        }
        
        void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
        {
            Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
        }
        
        void Unity_Multiply_float_float(float A, float B, out float Out)
        {
            Out = A * B;
        }
        
            // Graph Vertex
            struct VertexDescription
        {
            float3 Position;
            float3 Normal;
            float3 Tangent;
        };
        
        VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
        {
            VertexDescription description = (VertexDescription)0;
            description.Position = IN.ObjectSpacePosition;
            description.Normal = IN.ObjectSpaceNormal;
            description.Tangent = IN.ObjectSpaceTangent;
            return description;
        }
        
            // Graph Pixel
            struct SurfaceDescription
        {
            float3 BaseColor;
            float3 Emission;
            float Alpha;
            float AlphaClipThreshold;
            float AlphaClipThresholdShadow;
            float3 BentNormal;
            float Smoothness;
            float Occlusion;
            float3 NormalTS;
            float TransmissionMask;
            float Thickness;
            float DiffusionProfileHash;
        };
        
        SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
        {
            SurfaceDescription surface = (SurfaceDescription)0;
            UnityTexture2D _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_BaseColorMap);
            float4 _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4 = _TilingOffset;
            float _Split_60538633130155809820b3185c81057f_R_1_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[0];
            float _Split_60538633130155809820b3185c81057f_G_2_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[1];
            float _Split_60538633130155809820b3185c81057f_B_3_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[2];
            float _Split_60538633130155809820b3185c81057f_A_4_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[3];
            float2 _Vector2_83b2ea7a32ab548fb8c20dce14204561_Out_0_Vector2 = float2(_Split_60538633130155809820b3185c81057f_R_1_Float, _Split_60538633130155809820b3185c81057f_G_2_Float);
            float2 _Vector2_188e122ac0c7888f9f5fbde73f9edd75_Out_0_Vector2 = float2(_Split_60538633130155809820b3185c81057f_B_3_Float, _Split_60538633130155809820b3185c81057f_A_4_Float);
            float2 _TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2;
            Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_83b2ea7a32ab548fb8c20dce14204561_Out_0_Vector2, _Vector2_188e122ac0c7888f9f5fbde73f9edd75_Out_0_Vector2, _TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2);
            float4 _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.tex, _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.samplerstate, _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_R_4_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.r;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_G_5_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.g;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_B_6_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.b;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_A_7_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.a;
            float4 _Property_d37c4e2cc4f949f581f76dcb73d50e87_Out_0_Vector4 = _BarkBaseColor;
            float4 _Multiply_e4794b5d7e19433599f2b4e150644bea_Out_2_Vector4;
            Unity_Multiply_float4_float4(_SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4, _Property_d37c4e2cc4f949f581f76dcb73d50e87_Out_0_Vector4, _Multiply_e4794b5d7e19433599f2b4e150644bea_Out_2_Vector4);
            float4 _Property_0f3c5f287e8145bc95fd52cfba4b8fcc_Out_0_Vector4 = _TrunkBaseColor;
            float4 _Multiply_2453fa0c275a46cca1a866a080d90ddf_Out_2_Vector4;
            Unity_Multiply_float4_float4(_SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4, _Property_0f3c5f287e8145bc95fd52cfba4b8fcc_Out_0_Vector4, _Multiply_2453fa0c275a46cca1a866a080d90ddf_Out_2_Vector4);
            UnityTexture2D _Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_Mask);
            float4 _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_R_4_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.r;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.g;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_B_6_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.b;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_A_7_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.a;
            float4 _Lerp_9056381ab3034355b45968f0d1ff2f1a_Out_3_Vector4;
            Unity_Lerp_float4(_Multiply_e4794b5d7e19433599f2b4e150644bea_Out_2_Vector4, _Multiply_2453fa0c275a46cca1a866a080d90ddf_Out_2_Vector4, (_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_B_6_Float.xxxx), _Lerp_9056381ab3034355b45968f0d1ff2f1a_Out_3_Vector4);
            float4 _Property_944e0c60198849afb235eb9940da5dd9_Out_0_Vector4 = _DryColor;
            float4 _Property_621f9271d8734c81b9001229b0296656_Out_0_Vector4 = _HealthyColor;
            float _Split_99caf98864a9e980997a02cedd282dd0_R_1_Float = IN.AbsoluteWorldSpacePosition[0];
            float _Split_99caf98864a9e980997a02cedd282dd0_G_2_Float = IN.AbsoluteWorldSpacePosition[1];
            float _Split_99caf98864a9e980997a02cedd282dd0_B_3_Float = IN.AbsoluteWorldSpacePosition[2];
            float _Split_99caf98864a9e980997a02cedd282dd0_A_4_Float = 0;
            float2 _Vector2_ddc95fa04fb4858daf984190322978b9_Out_0_Vector2 = float2(_Split_99caf98864a9e980997a02cedd282dd0_R_1_Float, _Split_99caf98864a9e980997a02cedd282dd0_B_3_Float);
            float _Property_4d778d1ae72a416b96bf6cb1986a7d5d_Out_0_Float = _ColorNoiseTilling;
            float _SimpleNoise_96327065e2b0428f83e25f93c7e5a748_Out_2_Float;
            Unity_SimpleNoise_LegacySine_float(_Vector2_ddc95fa04fb4858daf984190322978b9_Out_0_Vector2, _Property_4d778d1ae72a416b96bf6cb1986a7d5d_Out_0_Float, _SimpleNoise_96327065e2b0428f83e25f93c7e5a748_Out_2_Float);
            float _Absolute_3da7acf58a45403cad1e7c432d78f027_Out_1_Float;
            Unity_Absolute_float(_SimpleNoise_96327065e2b0428f83e25f93c7e5a748_Out_2_Float, _Absolute_3da7acf58a45403cad1e7c432d78f027_Out_1_Float);
            float _Property_0dff529d33cb42e388c9d874effe6e19_Out_0_Float = _HealthyandDryColorNoisePower;
            float _Power_77b7c0eba07f4b9da46f2fa461c49201_Out_2_Float;
            Unity_Power_float(_Absolute_3da7acf58a45403cad1e7c432d78f027_Out_1_Float, _Property_0dff529d33cb42e388c9d874effe6e19_Out_0_Float, _Power_77b7c0eba07f4b9da46f2fa461c49201_Out_2_Float);
            float _Clamp_efb2cde09ec64325a2f78a848b0827b2_Out_3_Float;
            Unity_Clamp_float(_Power_77b7c0eba07f4b9da46f2fa461c49201_Out_2_Float, float(0), float(1), _Clamp_efb2cde09ec64325a2f78a848b0827b2_Out_3_Float);
            float4 _Lerp_b995ffde83d24283ac272745617fa60c_Out_3_Vector4;
            Unity_Lerp_float4(_Property_944e0c60198849afb235eb9940da5dd9_Out_0_Vector4, _Property_621f9271d8734c81b9001229b0296656_Out_0_Vector4, (_Clamp_efb2cde09ec64325a2f78a848b0827b2_Out_3_Float.xxxx), _Lerp_b995ffde83d24283ac272745617fa60c_Out_3_Vector4);
            float4 _Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4;
            Unity_Multiply_float4_float4(_SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4, _Lerp_b995ffde83d24283ac272745617fa60c_Out_3_Vector4, _Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4);
            float _Property_a52cc4db448642208842be98e18796fb_Out_0_Float = _Backface_Saturation;
            float3 _Saturation_1a5be2ae12084c59883f7d315d09cd80_Out_2_Vector3;
            Unity_Saturation_float((_Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4.xyz), _Property_a52cc4db448642208842be98e18796fb_Out_0_Float, _Saturation_1a5be2ae12084c59883f7d315d09cd80_Out_2_Vector3);
            float _Property_547f6c365f204d14a383183448811966_Out_0_Float = _Backface_Brightness;
            float3 _Blend_9d43ee127ca04ec09dd9151a833d8d61_Out_2_Vector3;
            Unity_Blend_Screen_float3(_Saturation_1a5be2ae12084c59883f7d315d09cd80_Out_2_Vector3, (_Property_547f6c365f204d14a383183448811966_Out_0_Float.xxx), _Blend_9d43ee127ca04ec09dd9151a833d8d61_Out_2_Vector3, float(1));
            float3 _Clamp_f7855b2ac55c4d43b25a4a1e56dbbbf7_Out_3_Vector3;
            Unity_Clamp_float3(_Blend_9d43ee127ca04ec09dd9151a833d8d61_Out_2_Vector3, float3(0, 0, 0), float3(1, 1, 1), _Clamp_f7855b2ac55c4d43b25a4a1e56dbbbf7_Out_3_Vector3);
            float2 _Property_b0a46b9c34574501a2f500d2f5745793_Out_0_Vector2 = _Backface_Thickness_Mask_Remap;
            float _Remap_bbbefbf0fbaf41d8a6d07b465d45488f_Out_3_Float;
            Unity_Remap_float(_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_A_7_Float, float2 (0, 1), _Property_b0a46b9c34574501a2f500d2f5745793_Out_0_Vector2, _Remap_bbbefbf0fbaf41d8a6d07b465d45488f_Out_3_Float);
            float _Clamp_6ac81c92e9a64e958055eca61b82e791_Out_3_Float;
            Unity_Clamp_float(_Remap_bbbefbf0fbaf41d8a6d07b465d45488f_Out_3_Float, float(0), float(1), _Clamp_6ac81c92e9a64e958055eca61b82e791_Out_3_Float);
            float _Property_3a1e9cc1507b46b2af88ab75dfc37b44_Out_0_Float = _Backface_Thickness_Mask_Threshold;
            float _Power_1fccfa34ffba46ceac25f1238aa4e1b5_Out_2_Float;
            Unity_Power_float(_Clamp_6ac81c92e9a64e958055eca61b82e791_Out_3_Float, _Property_3a1e9cc1507b46b2af88ab75dfc37b44_Out_0_Float, _Power_1fccfa34ffba46ceac25f1238aa4e1b5_Out_2_Float);
            float _Clamp_e55b4d1f4fda4e97bcfe15cfe9c6fd05_Out_3_Float;
            Unity_Clamp_float(_Power_1fccfa34ffba46ceac25f1238aa4e1b5_Out_2_Float, float(0), float(1), _Clamp_e55b4d1f4fda4e97bcfe15cfe9c6fd05_Out_3_Float);
            float _OneMinus_16a8ddad0aee4e5ca379aef306048984_Out_1_Float;
            Unity_OneMinus_float(_Clamp_e55b4d1f4fda4e97bcfe15cfe9c6fd05_Out_3_Float, _OneMinus_16a8ddad0aee4e5ca379aef306048984_Out_1_Float);
            float3 _Lerp_9c8a6dd2927446309acc26d9f217de99_Out_3_Vector3;
            Unity_Lerp_float3((_Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4.xyz), _Clamp_f7855b2ac55c4d43b25a4a1e56dbbbf7_Out_3_Vector3, (_OneMinus_16a8ddad0aee4e5ca379aef306048984_Out_1_Float.xxx), _Lerp_9c8a6dd2927446309acc26d9f217de99_Out_3_Vector3);
            float _Absolute_98dfaf1178334fc287f9e4d4b5f3a0f0_Out_1_Float;
            Unity_Absolute_float(_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_R_4_Float, _Absolute_98dfaf1178334fc287f9e4d4b5f3a0f0_Out_1_Float);
            float _Property_08b97a5bb158439e9155434b6637ac33_Out_0_Float = _Cross_Backface_Mask_Power;
            float _Power_c8f61d8af16945f9b82731ed18d38dd9_Out_2_Float;
            Unity_Power_float(_Absolute_98dfaf1178334fc287f9e4d4b5f3a0f0_Out_1_Float, _Property_08b97a5bb158439e9155434b6637ac33_Out_0_Float, _Power_c8f61d8af16945f9b82731ed18d38dd9_Out_2_Float);
            float _Clamp_c8b7bf714ebb484d8aa73d545b2f9d59_Out_3_Float;
            Unity_Clamp_float(_Power_c8f61d8af16945f9b82731ed18d38dd9_Out_2_Float, float(0), float(1), _Clamp_c8b7bf714ebb484d8aa73d545b2f9d59_Out_3_Float);
            float3 _Lerp_343d7507e4664bd7bc5108bcf0d55854_Out_3_Vector3;
            Unity_Lerp_float3(_Lerp_9c8a6dd2927446309acc26d9f217de99_Out_3_Vector3, (_Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4.xyz), (_Clamp_c8b7bf714ebb484d8aa73d545b2f9d59_Out_3_Float.xxx), _Lerp_343d7507e4664bd7bc5108bcf0d55854_Out_3_Vector3);
            float3 _Lerp_0d72c41eff034cfaaaf0208f4bf42433_Out_3_Vector3;
            Unity_Lerp_float3((_Lerp_9056381ab3034355b45968f0d1ff2f1a_Out_3_Vector4.xyz), _Lerp_343d7507e4664bd7bc5108bcf0d55854_Out_3_Vector3, (_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float.xxx), _Lerp_0d72c41eff034cfaaaf0208f4bf42433_Out_3_Vector3);
            float _Property_09c643c04af64fb18f3a77b935844ecc_Out_0_Float = _Global_Base_Brightness;
            float3 _Multiply_61b0f4818da94adfa23e13d8e3e376a8_Out_2_Vector3;
            Unity_Multiply_float3_float3(_Lerp_0d72c41eff034cfaaaf0208f4bf42433_Out_3_Vector3, (_Property_09c643c04af64fb18f3a77b935844ecc_Out_0_Float.xxx), _Multiply_61b0f4818da94adfa23e13d8e3e376a8_Out_2_Vector3);
            float3 _Clamp_359788e8ad134650b865e76600af6700_Out_3_Vector3;
            Unity_Clamp_float3(_Multiply_61b0f4818da94adfa23e13d8e3e376a8_Out_2_Vector3, float3(0, 0, 0), float3(1, 1, 1), _Clamp_359788e8ad134650b865e76600af6700_Out_3_Vector3);
            float _Property_067d68a770a25e8f978ca090306a96d8_Out_0_Float = _AlphaCutoff;
            float _Property_4b59dc86107847d5b565cde1e47efb8f_Out_0_Float = _AlphaShadowThreshold;
            float _Property_c35305c7157c4d3ba1db4ba61b2e2ebc_Out_0_Float = _Trunk_Smoothness_Remap_Max;
            float _Property_0edea7916ed7a189a62b0faf2c274601_Out_0_Float = _SmoothnessRemapMax;
            float _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float;
            Unity_Lerp_float(_Property_c35305c7157c4d3ba1db4ba61b2e2ebc_Out_0_Float, _Property_0edea7916ed7a189a62b0faf2c274601_Out_0_Float, _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float, _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float);
            float _Property_48e1c5285b48c78e8af19e38f4bd77f9_Out_0_Float = _AORemapMax;
            UnityTexture2D _Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_NormalMap);
            float4 _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.rgb = UnpackNormal(_SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4);
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_R_4_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.r;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_G_5_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.g;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_B_6_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.b;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_A_7_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.a;
            float _Property_b07156802a1240f7a8c14a272c5f1b36_Out_0_Float = _Trunk_Normal_Scale;
            float _Property_72e436a108ad64868e46d548c585c5f3_Out_0_Float = _NormalScale;
            float _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float;
            Unity_Lerp_float(_Property_b07156802a1240f7a8c14a272c5f1b36_Out_0_Float, _Property_72e436a108ad64868e46d548c585c5f3_Out_0_Float, _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float, _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float);
            float3 _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3;
            Unity_NormalStrength_float((_SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.xyz), _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float, _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3);
            float _Property_2fa2ab76399ae48aaf1180768279e6b9_Out_0_Float = _Thickness;
            float _Multiply_aed8020082acc482b9303a61b01a1a1a_Out_2_Float;
            Unity_Multiply_float_float(_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_A_7_Float, _Property_2fa2ab76399ae48aaf1180768279e6b9_Out_0_Float, _Multiply_aed8020082acc482b9303a61b01a1a1a_Out_2_Float);
            surface.BaseColor = _Clamp_359788e8ad134650b865e76600af6700_Out_3_Vector3;
            surface.Emission = float3(0, 0, 0);
            surface.Alpha = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_A_7_Float;
            surface.AlphaClipThreshold = _Property_067d68a770a25e8f978ca090306a96d8_Out_0_Float;
            surface.AlphaClipThresholdShadow = _Property_4b59dc86107847d5b565cde1e47efb8f_Out_0_Float;
            surface.BentNormal = IN.TangentSpaceNormal;
            surface.Smoothness = _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float;
            surface.Occlusion = _Property_48e1c5285b48c78e8af19e38f4bd77f9_Out_0_Float;
            surface.NormalTS = _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3;
            surface.TransmissionMask = float(1);
            surface.Thickness = _Multiply_aed8020082acc482b9303a61b01a1a1a_Out_2_Float;
            surface.DiffusionProfileHash = _DiffusionProfileHash;
            return surface;
        }
        
            // --------------------------------------------------
            // Build Graph Inputs
            #ifdef HAVE_VFX_MODIFICATION
            #define VFX_SRP_ATTRIBUTES AttributesMesh
            #define VaryingsMeshType VaryingsMeshToPS
            #define VFX_SRP_VARYINGS VaryingsMeshType
            #define VFX_SRP_SURFACE_INPUTS FragInputs
            #endif
            
        VertexDescriptionInputs AttributesMeshToVertexDescriptionInputs(AttributesMesh input)
        {
            VertexDescriptionInputs output;
            ZERO_INITIALIZE(VertexDescriptionInputs, output);
        
            output.ObjectSpaceNormal =                          input.normalOS;
            output.ObjectSpaceTangent =                         input.tangentOS.xyz;
            output.ObjectSpacePosition =                        input.positionOS;
        
            return output;
        }
        
        VertexDescription GetVertexDescription(AttributesMesh input, float3 timeParameters
        #ifdef HAVE_VFX_MODIFICATION
            , AttributesElement element
        #endif
        )
        {
            // build graph inputs
            VertexDescriptionInputs vertexDescriptionInputs = AttributesMeshToVertexDescriptionInputs(input);
            // Override time parameters with used one (This is required to correctly handle motion vectors for vertex animation based on time)
        
            // evaluate vertex graph
        #ifdef HAVE_VFX_MODIFICATION
            GraphProperties properties;
            ZERO_INITIALIZE(GraphProperties, properties);
        
            // Fetch the vertex graph properties for the particle instance.
            GetElementVertexProperties(element, properties);
        
            VertexDescription vertexDescription = VertexDescriptionFunction(vertexDescriptionInputs, properties);
        #else
            VertexDescription vertexDescription = VertexDescriptionFunction(vertexDescriptionInputs);
        #endif
            return vertexDescription;
        
        }
        
        AttributesMesh ApplyMeshModification(AttributesMesh input, float3 timeParameters
        #ifdef USE_CUSTOMINTERP_SUBSTRUCT
            #ifdef TESSELLATION_ON
            , inout VaryingsMeshToDS varyings
            #else
            , inout VaryingsMeshToPS varyings
            #endif
        #endif
        #ifdef HAVE_VFX_MODIFICATION
                , AttributesElement element
        #endif
            )
        {
            VertexDescription vertexDescription = GetVertexDescription(input, timeParameters
        #ifdef HAVE_VFX_MODIFICATION
                , element
        #endif
            );
        
            // copy graph output to the results
            input.positionOS = vertexDescription.Position;
            input.normalOS = vertexDescription.Normal;
            input.tangentOS.xyz = vertexDescription.Tangent;
        
            
        
            return input;
        }
        
        #if defined(_ADD_CUSTOM_VELOCITY) // For shader graph custom velocity
        // Return precomputed Velocity in object space
        float3 GetCustomVelocity(AttributesMesh input
        #ifdef HAVE_VFX_MODIFICATION
            , AttributesElement element
        #endif
        )
        {
            VertexDescription vertexDescription = GetVertexDescription(input, _TimeParameters.xyz
        #ifdef HAVE_VFX_MODIFICATION
                , element
        #endif
            );
            return vertexDescription.CustomVelocity;
        }
        #endif
        
        FragInputs BuildFragInputs(VaryingsMeshToPS input)
        {
            FragInputs output;
            ZERO_INITIALIZE(FragInputs, output);
        
            // Init to some default value to make the computer quiet (else it output 'divide by zero' warning even if value is not used).
            // TODO: this is a really poor workaround, but the variable is used in a bunch of places
            // to compute normals which are then passed on elsewhere to compute other values...
            output.tangentToWorld = k_identity3x3;
            output.positionSS = input.positionCS;       // input.positionCS is SV_Position
        
            output.positionRWS =                input.positionRWS;
            output.tangentToWorld =             BuildTangentToWorld(input.tangentWS, input.normalWS);
            output.texCoord0 =                  input.texCoord0;
        
        #ifdef HAVE_VFX_MODIFICATION
            // FragInputs from VFX come from two places: Interpolator or CBuffer.
        #if VFX_USE_GRAPH_VALUES
            uint instanceActiveIndex = asuint(UNITY_ACCESS_INSTANCED_PROP(PerInstance, _InstanceActiveIndex));
            /* WARNING: $splice Could not find named fragment 'VFXLoadGraphValues' */
        #endif
        
            /* WARNING: $splice Could not find named fragment 'VFXSetFragInputs' */
        
        #endif
        
            // splice point to copy custom interpolator fields from varyings to frag inputs
            
        
            return output;
        }
        
        // existing HDRP code uses the combined function to go directly from packed to frag inputs
        FragInputs UnpackVaryingsMeshToFragInputs(PackedVaryingsMeshToPS input)
        {
            UNITY_SETUP_INSTANCE_ID(input);
        #if defined(HAVE_VFX_MODIFICATION) && defined(UNITY_INSTANCING_ENABLED)
            unity_InstanceID = input.instanceID;
        #endif
            VaryingsMeshToPS unpacked = UnpackVaryingsMeshToPS(input);
            return BuildFragInputs(unpacked);
        }
            SurfaceDescriptionInputs FragInputsToSurfaceDescriptionInputs(FragInputs input, float3 viewWS)
        {
            SurfaceDescriptionInputs output;
            ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
        
            #if defined(SHADER_STAGE_RAY_TRACING)
            #else
            #endif
            output.TangentSpaceNormal =                         float3(0.0f, 0.0f, 1.0f);
            output.AbsoluteWorldSpacePosition =                 GetAbsolutePositionWS(input.positionRWS);
        
        #if UNITY_UV_STARTS_AT_TOP
        #else
        #endif
        
        
            output.uv0 =                                        input.texCoord0;
        
            // splice point to copy frag inputs custom interpolator pack into the SDI
            
        
            return output;
        }
        
            // --------------------------------------------------
            // Build Surface Data (Specific Material)
        
        void ApplyDecalToSurfaceDataNoNormal(DecalSurfaceData decalSurfaceData, inout SurfaceData surfaceData);
        
        void ApplyDecalAndGetNormal(FragInputs fragInputs, PositionInputs posInput, SurfaceDescription surfaceDescription,
            inout SurfaceData surfaceData)
        {
            float3 doubleSidedConstants = GetDoubleSidedConstants();
        
        #ifdef DECAL_NORMAL_BLENDING
            // SG nodes don't ouptut surface gradients, so if decals require surf grad blending, we have to convert
            // the normal to gradient before applying the decal. We then have to resolve the gradient back to world space
            float3 normalTS;
        
            normalTS = SurfaceGradientFromTangentSpaceNormalAndFromTBN(surfaceDescription.NormalTS,
            fragInputs.tangentToWorld[0], fragInputs.tangentToWorld[1]);
        
        
            #if HAVE_DECALS
            if (_EnableDecals)
            {
                float alpha = 1.0;
                alpha = surfaceDescription.Alpha;
        
                DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                ApplyDecalToSurfaceNormal(decalSurfaceData, fragInputs.tangentToWorld[2], normalTS);
                ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
            }
            #endif
        
            GetNormalWS_SG(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);
        #else
            // normal delivered to master node
            GetNormalWS(fragInputs, surfaceDescription.NormalTS, surfaceData.normalWS, doubleSidedConstants);
        
            #if HAVE_DECALS
            if (_EnableDecals)
            {
                float alpha = 1.0;
                alpha = surfaceDescription.Alpha;
        
                // Both uses and modifies 'surfaceData.normalWS'.
                DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                ApplyDecalToSurfaceNormal(decalSurfaceData, surfaceData.normalWS.xyz);
                ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
            }
            #endif
        #endif
        }
        void BuildSurfaceData(FragInputs fragInputs, inout SurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
        {
            ZERO_INITIALIZE(SurfaceData, surfaceData);
        
            // specularOcclusion need to be init ahead of decal to quiet the compiler that modify the SurfaceData struct
            // however specularOcclusion can come from the graph, so need to be init here so it can be override.
            surfaceData.specularOcclusion = 1.0;
        
            surfaceData.baseColor =                 surfaceDescription.BaseColor;
            surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
            surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
            surfaceData.transmissionMask =          surfaceDescription.TransmissionMask;
            surfaceData.thickness =                 surfaceDescription.Thickness;
            surfaceData.diffusionProfileHash =      asuint(surfaceDescription.DiffusionProfileHash);
        
            #if defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE) || defined(_REFRACTION_THIN)
                if (_EnableSSRefraction)
                {
        
                    surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                    surfaceDescription.Alpha = 1.0;
                }
                else
                {
                    surfaceData.ior = 1.0;
                    surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                    surfaceData.atDistance = 1.0;
                    surfaceData.transmittanceMask = 0.0;
                    surfaceDescription.Alpha = 1.0;
                }
            #else
                surfaceData.ior = 1.0;
                surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                surfaceData.atDistance = 1.0;
                surfaceData.transmittanceMask = 0.0;
            #endif
        
            // These static material feature allow compile time optimization
            surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
            #ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
            #endif
        
            #ifdef _MATERIAL_FEATURE_TRANSMISSION
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
            #endif
        
            #ifdef _MATERIAL_FEATURE_ANISOTROPY
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
        
                // Initialize the normal to something non-zero to avoid a div-zero warning for anisotropy.
                surfaceData.normalWS = float3(0, 1, 0);
            #endif
        
            #ifdef _MATERIAL_FEATURE_IRIDESCENCE
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
            #endif
        
            #ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
            #endif
        
            #ifdef _MATERIAL_FEATURE_CLEAR_COAT
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
            #endif
        
            #if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                // Require to have setup baseColor
                // Reproduce the energy conservation done in legacy Unity. Not ideal but better for compatibility and users can unchek it
                surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
            #endif
        
            float3 doubleSidedConstants = GetDoubleSidedConstants();
        
            ApplyDecalAndGetNormal(fragInputs, posInput, surfaceDescription, surfaceData);
        
            surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
        
            surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
        
        
            bentNormalWS = surfaceData.normalWS;
        
            surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);
        
            #ifdef DEBUG_DISPLAY
                if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                {
                    // TODO: need to update mip info
                    surfaceData.metallic = 0;
                }
        
                // We need to call ApplyDebugToSurfaceData after filling the surfarcedata and before filling builtinData
                // as it can modify attribute use for static lighting
                ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
            #endif
        
            // By default we use the ambient occlusion with Tri-ace trick (apply outside) for specular occlusion.
            // If user provide bent normal then we process a better term
            #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                // Just use the value passed through via the slot (not active otherwise)
            #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                // If we have bent normal and ambient occlusion, process a specular occlusion
                surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
            #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
                surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
            #endif
        
            #if defined(_ENABLE_GEOMETRIC_SPECULAR_AA) && !defined(SHADER_STAGE_RAY_TRACING)
                surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
            #endif
        }
        
            // --------------------------------------------------
            // Get Surface And BuiltinData
        
            void GetSurfaceAndBuiltinData(FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData RAY_TRACING_OPTIONAL_PARAMETERS)
            {
                // Don't dither if displaced tessellation (we're fading out the displacement instead to match the next LOD)
                #if !defined(SHADER_STAGE_RAY_TRACING) && !defined(_TESSELLATION_DISPLACEMENT)
                #ifdef LOD_FADE_CROSSFADE // enable dithering LOD transition if user select CrossFade transition in LOD group
                LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
                #endif
                #endif
        
                #ifndef SHADER_UNLIT
                #ifdef _DOUBLESIDED_ON
                    float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
                #else
                    float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
                #endif
        
                ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants); // Apply double sided flip on the vertex normal
                #endif // SHADER_UNLIT
        
                SurfaceDescriptionInputs surfaceDescriptionInputs = FragInputsToSurfaceDescriptionInputs(fragInputs, V);
        
                #if defined(HAVE_VFX_MODIFICATION)
                GraphProperties properties;
                ZERO_INITIALIZE(GraphProperties, properties);
        
                GetElementPixelProperties(fragInputs, properties);
        
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs, properties);
                #else
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs);
                #endif
        
                // Perform alpha test very early to save performance (a killed pixel will not sample textures)
                // TODO: split graph evaluation to grab just alpha dependencies first? tricky..
                #ifdef _ALPHATEST_ON
                    float alphaCutoff = surfaceDescription.AlphaClipThreshold;
                    #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
                    // The TransparentDepthPrepass is also used with SSR transparent.
                    // If an artists enable transaprent SSR but not the TransparentDepthPrepass itself, then we use AlphaClipThreshold
                    // otherwise if TransparentDepthPrepass is enabled we use AlphaClipThresholdDepthPrepass
                    #elif SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_POSTPASS
                    // DepthPostpass always use its own alpha threshold
                    alphaCutoff = surfaceDescription.AlphaClipThresholdDepthPostpass;
                    #elif (SHADERPASS == SHADERPASS_SHADOWS) || (SHADERPASS == SHADERPASS_RAYTRACING_VISIBILITY)
                    // If use shadow threshold isn't enable we don't allow any test
                    #endif
        
                    GENERIC_ALPHA_TEST(surfaceDescription.Alpha, alphaCutoff);
                #endif
        
                #if !defined(SHADER_STAGE_RAY_TRACING) && _DEPTHOFFSET_ON
                ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
                #endif
        
                #ifndef SHADER_UNLIT
                float3 bentNormalWS;
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS);
        
                #ifdef FRAG_INPUTS_USE_TEXCOORD1
                    float4 lightmapTexCoord1 = fragInputs.texCoord1;
                #else
                    float4 lightmapTexCoord1 = float4(0,0,0,0);
                #endif
        
                #ifdef FRAG_INPUTS_USE_TEXCOORD2
                    float4 lightmapTexCoord2 = fragInputs.texCoord2;
                #else
                    float4 lightmapTexCoord2 = float4(0,0,0,0);
                #endif
        
                // Builtin Data
                // For back lighting we use the oposite vertex normal
                InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], lightmapTexCoord1, lightmapTexCoord2, builtinData);
        
                #else
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData);
        
                ZERO_BUILTIN_INITIALIZE(builtinData); // No call to InitBuiltinData as we don't have any lighting
                builtinData.opacity = surfaceDescription.Alpha;
        
                #if defined(DEBUG_DISPLAY)
                    // Light Layers are currently not used for the Unlit shader (because it is not lit)
                    // But Unlit objects do cast shadows according to their rendering layer mask, which is what we want to
                    // display in the light layers visualization mode, therefore we need the renderingLayers
                    builtinData.renderingLayers = GetMeshRenderingLightLayer();
                #endif
        
                #endif // SHADER_UNLIT
        
                #ifdef _ALPHATEST_ON
                    // Used for sharpening by alpha to mask - Alpha to covertage is only used with depth only and forward pass (no shadow pass, no transparent pass)
                    builtinData.alphaClipTreshold = alphaCutoff;
                #endif
        
                // override sampleBakedGI - not used by Unlit
        
                builtinData.emissiveColor = surfaceDescription.Emission;
        
                // Note this will not fully work on transparent surfaces (can check with _SURFACE_TYPE_TRANSPARENT define)
                // We will always overwrite vt feeback with the nearest. So behind transparent surfaces vt will not be resolved
                // This is a limitation of the current MRT approach.
                #ifdef UNITY_VIRTUAL_TEXTURING
                #endif
        
                #if _DEPTHOFFSET_ON
                builtinData.depthOffset = surfaceDescription.DepthOffset;
                #endif
        
                // TODO: We should generate distortion / distortionBlur for non distortion pass
                #if (SHADERPASS == SHADERPASS_DISTORTION)
                builtinData.distortion = surfaceDescription.Distortion;
                builtinData.distortionBlur = surfaceDescription.DistortionBlur;
                #endif
        
                #ifndef SHADER_UNLIT
                // PostInitBuiltinData call ApplyDebugToBuiltinData
                PostInitBuiltinData(V, posInput, surfaceData, builtinData);
                #else
                ApplyDebugToBuiltinData(builtinData);
                #endif
        
                RAY_TRACING_OPTIONAL_ALPHA_TEST_PASS
            }
        
            // --------------------------------------------------
            // Main
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPassDepthOnly.hlsl"
        
            // --------------------------------------------------
            // Visual Effect Vertex Invocations
        
        	#ifdef HAVE_VFX_MODIFICATION
        	#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/VisualEffectVertex.hlsl"
        	#endif
        
            ENDHLSL
        }
        Pass
        {
            Name "GBuffer"
            Tags
            {
                "LightMode" = "GBuffer"
            }
        
            // Render State
            Cull [_CullMode]
        ZTest [_ZTestGBuffer]
        ColorMask [_LightLayersMaskBuffer4] 4
        ColorMask [_LightLayersMaskBuffer5] 5
        Stencil
        {
        WriteMask [_StencilWriteMaskGBuffer]
        Ref [_StencilRefGBuffer]
        CompFront Always
        PassFront Replace
        CompBack Always
        PassBack Replace
        }
        
            // Debug
            // <None>
        
            // --------------------------------------------------
            // Pass
        
            HLSLPROGRAM
        
            // Pragmas
            #pragma multi_compile _ DOTS_INSTANCING_ON
        #pragma instancing_options renderinglayer
        #pragma target 4.5
        #pragma vertex Vert
        #pragma fragment Frag
        #pragma only_renderers d3d11 playstation xboxone xboxseries vulkan metal switch
        #pragma multi_compile_instancing
        
            // Keywords
            #pragma multi_compile_fragment _ LIGHT_LAYERS
        #pragma multi_compile_raytracing _ LIGHT_LAYERS
        #pragma shader_feature_local _ _ALPHATEST_ON
        #pragma shader_feature _ _SURFACE_TYPE_TRANSPARENT
        #pragma shader_feature_local _ _DOUBLESIDED_ON
        #pragma shader_feature_local _ _ADD_PRECOMPUTED_VELOCITY
        #pragma shader_feature_local _ _TRANSPARENT_WRITES_MOTION_VEC
        #pragma shader_feature_local_fragment _ _ENABLE_FOG_ON_TRANSPARENT
        #pragma multi_compile _ DEBUG_DISPLAY
        #pragma multi_compile _ LOD_FADE_CROSSFADE
        #pragma shader_feature_local_fragment _ _DISABLE_DECALS
        #pragma shader_feature_local_raytracing _ _DISABLE_DECALS
        #pragma shader_feature_local_fragment _ _DISABLE_SSR
        #pragma shader_feature_local_raytracing _ _DISABLE_SSR
        #pragma shader_feature_local_fragment _ _DISABLE_SSR_TRANSPARENT
        #pragma shader_feature_local_raytracing _ _DISABLE_SSR_TRANSPARENT
        #pragma multi_compile _ LIGHTMAP_ON
        #pragma multi_compile _ DIRLIGHTMAP_COMBINED
        #pragma multi_compile_fragment PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2
        #pragma multi_compile_raytracing PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2
        #pragma multi_compile _ DYNAMICLIGHTMAP_ON
        #pragma multi_compile_fragment _ SHADOWS_SHADOWMASK
        #pragma multi_compile_raytracing _ SHADOWS_SHADOWMASK
        #pragma multi_compile_fragment DECALS_OFF DECALS_3RT DECALS_4RT
        #pragma multi_compile_fragment _ DECAL_SURFACE_GRADIENT
        #pragma shader_feature_local _ _REFRACTION_PLANE _REFRACTION_SPHERE _REFRACTION_THIN
            // GraphKeywords: <None>
        
            // For custom interpolators to inject a substruct definition before FragInputs definition,
            // allowing for FragInputs to capture CI's intended for ShaderGraph's SDI.
            struct CustomInterpolators
        {
        };
        #define USE_CUSTOMINTERP_SUBSTRUCT
        
        
        
            // TODO: Merge FragInputsVFX substruct with CustomInterpolators.
        	#ifdef HAVE_VFX_MODIFICATION
        	struct FragInputsVFX
            {
                /* WARNING: $splice Could not find named fragment 'FragInputsVFX' */
            };
            #endif
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/GeometricTools.hlsl" // Required by Tessellation.hlsl
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Tessellation.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl" // Required to be include before we include properties as it define DECLARE_STACK_CB
            // Always include Shader Graph version
            // Always include last to avoid double macros
            #include "Packages/com.unity.shadergraph/ShaderGraphLibrary/Functions.hlsl" // Need to be here for Gradient struct definition
        
            // --------------------------------------------------
            // Defines
        
            // Attribute
            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TANGENT
            #define ATTRIBUTES_NEED_TEXCOORD0
            #define ATTRIBUTES_NEED_TEXCOORD1
            #define ATTRIBUTES_NEED_TEXCOORD2
            #define VARYINGS_NEED_POSITION_WS
            #define VARYINGS_NEED_TANGENT_TO_WORLD
            #define VARYINGS_NEED_TEXCOORD0
            #define VARYINGS_NEED_TEXCOORD1
            #define VARYINGS_NEED_TEXCOORD2
        
            #define HAVE_MESH_MODIFICATION
        
            //Strip down the FragInputs.hlsl (on graphics), so we can only optimize the interpolators we use.
            //if by accident something requests contents of FragInputs.hlsl, it will be caught as a compiler error
            //Frag inputs stripping is only enabled when FRAG_INPUTS_ENABLE_STRIPPING is set
            #if !defined(SHADER_STAGE_RAY_TRACING) && SHADERPASS != SHADERPASS_RAYTRACING_GBUFFER && SHADERPASS != SHADERPASS_FULL_SCREEN_DEBUG
            #define FRAG_INPUTS_ENABLE_STRIPPING
            #endif
            #define FRAG_INPUTS_USE_TEXCOORD0
            #define FRAG_INPUTS_USE_TEXCOORD1
            #define FRAG_INPUTS_USE_TEXCOORD2
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
        
        
        
            #define SHADERPASS SHADERPASS_GBUFFER
        #define RAYTRACING_SHADER_GRAPH_DEFAULT
        
        
            // Following two define are a workaround introduce in 10.1.x for RaytracingQualityNode
            // The ShaderGraph don't support correctly migration of this node as it serialize all the node data
            // in the json file making it impossible to uprgrade. Until we get a fix, we do a workaround here
            // to still allow us to rename the field and keyword of this node without breaking existing code.
            #ifdef RAYTRACING_SHADER_GRAPH_DEFAULT
            #define RAYTRACING_SHADER_GRAPH_HIGH
            #endif
        
            #ifdef RAYTRACING_SHADER_GRAPH_RAYTRACED
            #define RAYTRACING_SHADER_GRAPH_LOW
            #endif
            // end
        
            #ifndef SHADER_UNLIT
            // We need isFrontFace when using double sided - it is not required for unlit as in case of unlit double sided only drive the cullmode
            // VARYINGS_NEED_CULLFACE can be define by VaryingsMeshToPS.FaceSign input if a IsFrontFace Node is included in the shader graph.
            #if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
                #define VARYINGS_NEED_CULLFACE
            #endif
            #endif
        
            // Specific Material Define
        #define _MATERIAL_FEATURE_TRANSMISSION 1
        #define _AMBIENT_OCCLUSION 1
        #define _SPECULAR_OCCLUSION_FROM_AO 1
        #define _ENERGY_CONSERVING_SPECULAR 1
        
        // If we use subsurface scattering, enable output split lighting (for forward pass)
        #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
            #define OUTPUT_SPLIT_LIGHTING
        #endif
        
        // This shader support recursive rendering for raytracing
        #define HAVE_RECURSIVE_RENDERING
        
        // In Path Tracing, For all single-sided, refractive materials, we want to force a thin refraction model
        #if (SHADERPASS == SHADERPASS_PATH_TRACING) && !defined(_DOUBLESIDED_ON) && (defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE))
            #undef  _REFRACTION_PLANE
            #undef  _REFRACTION_SPHERE
            #define _REFRACTION_THIN
        #endif
            // Caution: we can use the define SHADER_UNLIT onlit after the above Material include as it is the Unlit template who define it
        
            // To handle SSR on transparent correctly with a possibility to enable/disable it per framesettings
            // we should have a code like this:
            // if !defined(_DISABLE_SSR_TRANSPARENT)
            // pragma multi_compile _ WRITE_NORMAL_BUFFER
            // endif
            // i.e we enable the multicompile only if we can receive SSR or not, and then C# code drive
            // it based on if SSR transparent in frame settings and not (and stripper can strip it).
            // this is currently not possible with our current preprocessor as _DISABLE_SSR_TRANSPARENT is a keyword not a define
            // so instead we used this and chose to pay the extra cost of normal write even if SSR transaprent is disabled.
            // Ideally the shader graph generator should handle it but condition below can't be handle correctly for now.
            #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
            #if !defined(_DISABLE_SSR_TRANSPARENT) && !defined(SHADER_UNLIT)
                #define WRITE_NORMAL_BUFFER
            #endif
            #endif
        
            #ifndef DEBUG_DISPLAY
                // In case of opaque we don't want to perform the alpha test, it is done in depth prepass and we use depth equal for ztest (setup from UI)
                // Don't do it with debug display mode as it is possible there is no depth prepass in this case
                #if !defined(_SURFACE_TYPE_TRANSPARENT)
                    #if SHADERPASS == SHADERPASS_FORWARD
                    #define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
                    #elif SHADERPASS == SHADERPASS_GBUFFER
                    #define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
                    #endif
                #endif
            #endif
        
            // Define _DEFERRED_CAPABLE_MATERIAL for shader capable to run in deferred pass
            #if defined(SHADER_LIT) && !defined(_SURFACE_TYPE_TRANSPARENT)
                #define _DEFERRED_CAPABLE_MATERIAL
            #endif
        
            // Translate transparent motion vector define
            #if defined(_TRANSPARENT_WRITES_MOTION_VEC) && defined(_SURFACE_TYPE_TRANSPARENT)
                #define _WRITE_TRANSPARENT_MOTION_VECTOR
            #endif
        
            // -- Graph Properties
            CBUFFER_START(UnityPerMaterial)
        float4 _DiffusionProfileAsset;
        float _DiffusionProfileHash;
        float4 _TrunkBaseColor;
        float4 _BarkBaseColor;
        float _Backface_Thickness_Mask_Threshold;
        float2 _Backface_Thickness_Mask_Remap;
        float _Backface_Brightness;
        float _Cross_Backface_Mask_Power;
        float _Backface_Saturation;
        float4 _HealthyColor;
        float4 _DryColor;
        float _AlphaCutoff;
        float _AlphaShadowThreshold;
        float4 _BaseColorMap_TexelSize;
        float4 _TilingOffset;
        float _HealthyandDryColorNoisePower;
        float4 _NormalMap_TexelSize;
        float _NormalScale;
        float _AORemapMax;
        float _SmoothnessRemapMax;
        float4 _Mask_TexelSize;
        float _Thickness;
        float _WindNormalInfluence;
        float4 _VertexNormalMultiply;
        float _ColorNoiseTilling;
        float _Trunk_Normal_Scale;
        float _Global_Base_Brightness;
        float _Trunk_Smoothness_Remap_Max;
        float4 _EmissionColor;
        float _UseShadowThreshold;
        float4 _DoubleSidedConstants;
        float _BlendMode;
        float _EnableBlendModePreserveSpecularLighting;
        float _RayTracing;
        float _RefractionModel;
        CBUFFER_END
        
        
        // Object and Global properties
        SAMPLER(SamplerState_Linear_Repeat);
        SAMPLER(SamplerState_Linear_Repeat_Aniso8);
        TEXTURE2D(_BaseColorMap);
        SAMPLER(sampler_BaseColorMap);
        TEXTURE2D(_NormalMap);
        SAMPLER(sampler_NormalMap);
        TEXTURE2D(_Mask);
        SAMPLER(sampler_Mask);
        
            // -- Property used by ScenePickingPass
            #ifdef SCENEPICKINGPASS
            float4 _SelectionID;
            #endif
        
            // -- Properties used by SceneSelectionPass
            #ifdef SCENESELECTIONPASS
            int _ObjectId;
            int _PassValue;
            #endif
        
            // Includes
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
        #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Hashes.hlsl"
        
            // --------------------------------------------------
            // Structs and Packing
        
            struct AttributesMesh
        {
             float3 positionOS : POSITION;
             float3 normalOS : NORMAL;
             float4 tangentOS : TANGENT;
             float4 uv0 : TEXCOORD0;
             float4 uv1 : TEXCOORD1;
             float4 uv2 : TEXCOORD2;
            #if UNITY_ANY_INSTANCING_ENABLED
             uint instanceID : INSTANCEID_SEMANTIC;
            #endif
        };
        struct VaryingsMeshToPS
        {
            SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
             float3 positionRWS;
             float3 normalWS;
             float4 tangentWS;
             float4 texCoord0;
             float4 texCoord1;
             float4 texCoord2;
            #if UNITY_ANY_INSTANCING_ENABLED
             uint instanceID : CUSTOM_INSTANCE_ID;
            #endif
        };
        struct VertexDescriptionInputs
        {
             float3 ObjectSpaceNormal;
             float3 ObjectSpaceTangent;
             float3 ObjectSpacePosition;
        };
        struct SurfaceDescriptionInputs
        {
             float3 TangentSpaceNormal;
             float3 AbsoluteWorldSpacePosition;
             float4 uv0;
        };
        struct PackedVaryingsMeshToPS
        {
            SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
             float4 tangentWS : INTERP0;
             float4 texCoord0 : INTERP1;
             float4 texCoord1 : INTERP2;
             float4 texCoord2 : INTERP3;
             float3 positionRWS : INTERP4;
             float3 normalWS : INTERP5;
            #if UNITY_ANY_INSTANCING_ENABLED
             uint instanceID : CUSTOM_INSTANCE_ID;
            #endif
        };
        
            PackedVaryingsMeshToPS PackVaryingsMeshToPS (VaryingsMeshToPS input)
        {
            PackedVaryingsMeshToPS output;
            ZERO_INITIALIZE(PackedVaryingsMeshToPS, output);
            output.positionCS = input.positionCS;
            output.tangentWS.xyzw = input.tangentWS;
            output.texCoord0.xyzw = input.texCoord0;
            output.texCoord1.xyzw = input.texCoord1;
            output.texCoord2.xyzw = input.texCoord2;
            output.positionRWS.xyz = input.positionRWS;
            output.normalWS.xyz = input.normalWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif
            return output;
        }
        
        VaryingsMeshToPS UnpackVaryingsMeshToPS (PackedVaryingsMeshToPS input)
        {
            VaryingsMeshToPS output;
            output.positionCS = input.positionCS;
            output.tangentWS = input.tangentWS.xyzw;
            output.texCoord0 = input.texCoord0.xyzw;
            output.texCoord1 = input.texCoord1.xyzw;
            output.texCoord2 = input.texCoord2.xyzw;
            output.positionRWS = input.positionRWS.xyz;
            output.normalWS = input.normalWS.xyz;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif
            return output;
        }
        
        
            // --------------------------------------------------
            // Graph
        
        
            // Graph Functions
            
        void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
        {
            Out = UV * Tiling + Offset;
        }
        
        void Unity_Multiply_float4_float4(float4 A, float4 B, out float4 Out)
        {
            Out = A * B;
        }
        
        void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
        {
            Out = lerp(A, B, T);
        }
        
        float Unity_SimpleNoise_ValueNoise_LegacySine_float (float2 uv)
        {
            float2 i = floor(uv);
            float2 f = frac(uv);
            f = f * f * (3.0 - 2.0 * f);
            uv = abs(frac(uv) - 0.5);
            float2 c0 = i + float2(0.0, 0.0);
            float2 c1 = i + float2(1.0, 0.0);
            float2 c2 = i + float2(0.0, 1.0);
            float2 c3 = i + float2(1.0, 1.0);
            float r0; Hash_LegacySine_2_1_float(c0, r0);
            float r1; Hash_LegacySine_2_1_float(c1, r1);
            float r2; Hash_LegacySine_2_1_float(c2, r2);
            float r3; Hash_LegacySine_2_1_float(c3, r3);
            float bottomOfGrid = lerp(r0, r1, f.x);
            float topOfGrid = lerp(r2, r3, f.x);
            float t = lerp(bottomOfGrid, topOfGrid, f.y);
            return t;
        }
        
        void Unity_SimpleNoise_LegacySine_float(float2 UV, float Scale, out float Out)
        {
            float freq, amp;
            Out = 0.0f;
            freq = pow(2.0, float(0));
            amp = pow(0.5, float(3-0));
            Out += Unity_SimpleNoise_ValueNoise_LegacySine_float(float2(UV.xy*(Scale/freq)))*amp;
            freq = pow(2.0, float(1));
            amp = pow(0.5, float(3-1));
            Out += Unity_SimpleNoise_ValueNoise_LegacySine_float(float2(UV.xy*(Scale/freq)))*amp;
            freq = pow(2.0, float(2));
            amp = pow(0.5, float(3-2));
            Out += Unity_SimpleNoise_ValueNoise_LegacySine_float(float2(UV.xy*(Scale/freq)))*amp;
        }
        
        void Unity_Absolute_float(float In, out float Out)
        {
            Out = abs(In);
        }
        
        void Unity_Power_float(float A, float B, out float Out)
        {
            Out = pow(A, B);
        }
        
        void Unity_Clamp_float(float In, float Min, float Max, out float Out)
        {
            Out = clamp(In, Min, Max);
        }
        
        void Unity_Saturation_float(float3 In, float Saturation, out float3 Out)
        {
            float luma = dot(In, float3(0.2126729, 0.7151522, 0.0721750));
            Out =  luma.xxx + Saturation.xxx * (In - luma.xxx);
        }
        
        void Unity_Blend_Screen_float3(float3 Base, float3 Blend, out float3 Out, float Opacity)
        {
            Out = 1.0 - (1.0 - Blend) * (1.0 - Base);
            Out = lerp(Base, Out, Opacity);
        }
        
        void Unity_Clamp_float3(float3 In, float3 Min, float3 Max, out float3 Out)
        {
            Out = clamp(In, Min, Max);
        }
        
        void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
        {
            Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
        }
        
        void Unity_OneMinus_float(float In, out float Out)
        {
            Out = 1 - In;
        }
        
        void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
        {
            Out = lerp(A, B, T);
        }
        
        void Unity_Multiply_float3_float3(float3 A, float3 B, out float3 Out)
        {
            Out = A * B;
        }
        
        void Unity_Lerp_float(float A, float B, float T, out float Out)
        {
            Out = lerp(A, B, T);
        }
        
        void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
        {
            Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
        }
        
        void Unity_Multiply_float_float(float A, float B, out float Out)
        {
            Out = A * B;
        }
        
            // Graph Vertex
            struct VertexDescription
        {
            float3 Position;
            float3 Normal;
            float3 Tangent;
        };
        
        VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
        {
            VertexDescription description = (VertexDescription)0;
            description.Position = IN.ObjectSpacePosition;
            description.Normal = IN.ObjectSpaceNormal;
            description.Tangent = IN.ObjectSpaceTangent;
            return description;
        }
        
            // Graph Pixel
            struct SurfaceDescription
        {
            float3 BaseColor;
            float3 Emission;
            float Alpha;
            float AlphaClipThreshold;
            float AlphaClipThresholdShadow;
            float3 BentNormal;
            float Smoothness;
            float Occlusion;
            float3 NormalTS;
            float TransmissionMask;
            float Thickness;
            float DiffusionProfileHash;
            float4 VTPackedFeedback;
        };
        
        SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
        {
            SurfaceDescription surface = (SurfaceDescription)0;
            UnityTexture2D _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_BaseColorMap);
            float4 _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4 = _TilingOffset;
            float _Split_60538633130155809820b3185c81057f_R_1_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[0];
            float _Split_60538633130155809820b3185c81057f_G_2_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[1];
            float _Split_60538633130155809820b3185c81057f_B_3_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[2];
            float _Split_60538633130155809820b3185c81057f_A_4_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[3];
            float2 _Vector2_83b2ea7a32ab548fb8c20dce14204561_Out_0_Vector2 = float2(_Split_60538633130155809820b3185c81057f_R_1_Float, _Split_60538633130155809820b3185c81057f_G_2_Float);
            float2 _Vector2_188e122ac0c7888f9f5fbde73f9edd75_Out_0_Vector2 = float2(_Split_60538633130155809820b3185c81057f_B_3_Float, _Split_60538633130155809820b3185c81057f_A_4_Float);
            float2 _TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2;
            Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_83b2ea7a32ab548fb8c20dce14204561_Out_0_Vector2, _Vector2_188e122ac0c7888f9f5fbde73f9edd75_Out_0_Vector2, _TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2);
            float4 _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.tex, _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.samplerstate, _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_R_4_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.r;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_G_5_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.g;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_B_6_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.b;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_A_7_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.a;
            float4 _Property_d37c4e2cc4f949f581f76dcb73d50e87_Out_0_Vector4 = _BarkBaseColor;
            float4 _Multiply_e4794b5d7e19433599f2b4e150644bea_Out_2_Vector4;
            Unity_Multiply_float4_float4(_SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4, _Property_d37c4e2cc4f949f581f76dcb73d50e87_Out_0_Vector4, _Multiply_e4794b5d7e19433599f2b4e150644bea_Out_2_Vector4);
            float4 _Property_0f3c5f287e8145bc95fd52cfba4b8fcc_Out_0_Vector4 = _TrunkBaseColor;
            float4 _Multiply_2453fa0c275a46cca1a866a080d90ddf_Out_2_Vector4;
            Unity_Multiply_float4_float4(_SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4, _Property_0f3c5f287e8145bc95fd52cfba4b8fcc_Out_0_Vector4, _Multiply_2453fa0c275a46cca1a866a080d90ddf_Out_2_Vector4);
            UnityTexture2D _Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_Mask);
            float4 _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_R_4_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.r;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.g;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_B_6_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.b;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_A_7_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.a;
            float4 _Lerp_9056381ab3034355b45968f0d1ff2f1a_Out_3_Vector4;
            Unity_Lerp_float4(_Multiply_e4794b5d7e19433599f2b4e150644bea_Out_2_Vector4, _Multiply_2453fa0c275a46cca1a866a080d90ddf_Out_2_Vector4, (_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_B_6_Float.xxxx), _Lerp_9056381ab3034355b45968f0d1ff2f1a_Out_3_Vector4);
            float4 _Property_944e0c60198849afb235eb9940da5dd9_Out_0_Vector4 = _DryColor;
            float4 _Property_621f9271d8734c81b9001229b0296656_Out_0_Vector4 = _HealthyColor;
            float _Split_99caf98864a9e980997a02cedd282dd0_R_1_Float = IN.AbsoluteWorldSpacePosition[0];
            float _Split_99caf98864a9e980997a02cedd282dd0_G_2_Float = IN.AbsoluteWorldSpacePosition[1];
            float _Split_99caf98864a9e980997a02cedd282dd0_B_3_Float = IN.AbsoluteWorldSpacePosition[2];
            float _Split_99caf98864a9e980997a02cedd282dd0_A_4_Float = 0;
            float2 _Vector2_ddc95fa04fb4858daf984190322978b9_Out_0_Vector2 = float2(_Split_99caf98864a9e980997a02cedd282dd0_R_1_Float, _Split_99caf98864a9e980997a02cedd282dd0_B_3_Float);
            float _Property_4d778d1ae72a416b96bf6cb1986a7d5d_Out_0_Float = _ColorNoiseTilling;
            float _SimpleNoise_96327065e2b0428f83e25f93c7e5a748_Out_2_Float;
            Unity_SimpleNoise_LegacySine_float(_Vector2_ddc95fa04fb4858daf984190322978b9_Out_0_Vector2, _Property_4d778d1ae72a416b96bf6cb1986a7d5d_Out_0_Float, _SimpleNoise_96327065e2b0428f83e25f93c7e5a748_Out_2_Float);
            float _Absolute_3da7acf58a45403cad1e7c432d78f027_Out_1_Float;
            Unity_Absolute_float(_SimpleNoise_96327065e2b0428f83e25f93c7e5a748_Out_2_Float, _Absolute_3da7acf58a45403cad1e7c432d78f027_Out_1_Float);
            float _Property_0dff529d33cb42e388c9d874effe6e19_Out_0_Float = _HealthyandDryColorNoisePower;
            float _Power_77b7c0eba07f4b9da46f2fa461c49201_Out_2_Float;
            Unity_Power_float(_Absolute_3da7acf58a45403cad1e7c432d78f027_Out_1_Float, _Property_0dff529d33cb42e388c9d874effe6e19_Out_0_Float, _Power_77b7c0eba07f4b9da46f2fa461c49201_Out_2_Float);
            float _Clamp_efb2cde09ec64325a2f78a848b0827b2_Out_3_Float;
            Unity_Clamp_float(_Power_77b7c0eba07f4b9da46f2fa461c49201_Out_2_Float, float(0), float(1), _Clamp_efb2cde09ec64325a2f78a848b0827b2_Out_3_Float);
            float4 _Lerp_b995ffde83d24283ac272745617fa60c_Out_3_Vector4;
            Unity_Lerp_float4(_Property_944e0c60198849afb235eb9940da5dd9_Out_0_Vector4, _Property_621f9271d8734c81b9001229b0296656_Out_0_Vector4, (_Clamp_efb2cde09ec64325a2f78a848b0827b2_Out_3_Float.xxxx), _Lerp_b995ffde83d24283ac272745617fa60c_Out_3_Vector4);
            float4 _Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4;
            Unity_Multiply_float4_float4(_SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4, _Lerp_b995ffde83d24283ac272745617fa60c_Out_3_Vector4, _Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4);
            float _Property_a52cc4db448642208842be98e18796fb_Out_0_Float = _Backface_Saturation;
            float3 _Saturation_1a5be2ae12084c59883f7d315d09cd80_Out_2_Vector3;
            Unity_Saturation_float((_Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4.xyz), _Property_a52cc4db448642208842be98e18796fb_Out_0_Float, _Saturation_1a5be2ae12084c59883f7d315d09cd80_Out_2_Vector3);
            float _Property_547f6c365f204d14a383183448811966_Out_0_Float = _Backface_Brightness;
            float3 _Blend_9d43ee127ca04ec09dd9151a833d8d61_Out_2_Vector3;
            Unity_Blend_Screen_float3(_Saturation_1a5be2ae12084c59883f7d315d09cd80_Out_2_Vector3, (_Property_547f6c365f204d14a383183448811966_Out_0_Float.xxx), _Blend_9d43ee127ca04ec09dd9151a833d8d61_Out_2_Vector3, float(1));
            float3 _Clamp_f7855b2ac55c4d43b25a4a1e56dbbbf7_Out_3_Vector3;
            Unity_Clamp_float3(_Blend_9d43ee127ca04ec09dd9151a833d8d61_Out_2_Vector3, float3(0, 0, 0), float3(1, 1, 1), _Clamp_f7855b2ac55c4d43b25a4a1e56dbbbf7_Out_3_Vector3);
            float2 _Property_b0a46b9c34574501a2f500d2f5745793_Out_0_Vector2 = _Backface_Thickness_Mask_Remap;
            float _Remap_bbbefbf0fbaf41d8a6d07b465d45488f_Out_3_Float;
            Unity_Remap_float(_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_A_7_Float, float2 (0, 1), _Property_b0a46b9c34574501a2f500d2f5745793_Out_0_Vector2, _Remap_bbbefbf0fbaf41d8a6d07b465d45488f_Out_3_Float);
            float _Clamp_6ac81c92e9a64e958055eca61b82e791_Out_3_Float;
            Unity_Clamp_float(_Remap_bbbefbf0fbaf41d8a6d07b465d45488f_Out_3_Float, float(0), float(1), _Clamp_6ac81c92e9a64e958055eca61b82e791_Out_3_Float);
            float _Property_3a1e9cc1507b46b2af88ab75dfc37b44_Out_0_Float = _Backface_Thickness_Mask_Threshold;
            float _Power_1fccfa34ffba46ceac25f1238aa4e1b5_Out_2_Float;
            Unity_Power_float(_Clamp_6ac81c92e9a64e958055eca61b82e791_Out_3_Float, _Property_3a1e9cc1507b46b2af88ab75dfc37b44_Out_0_Float, _Power_1fccfa34ffba46ceac25f1238aa4e1b5_Out_2_Float);
            float _Clamp_e55b4d1f4fda4e97bcfe15cfe9c6fd05_Out_3_Float;
            Unity_Clamp_float(_Power_1fccfa34ffba46ceac25f1238aa4e1b5_Out_2_Float, float(0), float(1), _Clamp_e55b4d1f4fda4e97bcfe15cfe9c6fd05_Out_3_Float);
            float _OneMinus_16a8ddad0aee4e5ca379aef306048984_Out_1_Float;
            Unity_OneMinus_float(_Clamp_e55b4d1f4fda4e97bcfe15cfe9c6fd05_Out_3_Float, _OneMinus_16a8ddad0aee4e5ca379aef306048984_Out_1_Float);
            float3 _Lerp_9c8a6dd2927446309acc26d9f217de99_Out_3_Vector3;
            Unity_Lerp_float3((_Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4.xyz), _Clamp_f7855b2ac55c4d43b25a4a1e56dbbbf7_Out_3_Vector3, (_OneMinus_16a8ddad0aee4e5ca379aef306048984_Out_1_Float.xxx), _Lerp_9c8a6dd2927446309acc26d9f217de99_Out_3_Vector3);
            float _Absolute_98dfaf1178334fc287f9e4d4b5f3a0f0_Out_1_Float;
            Unity_Absolute_float(_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_R_4_Float, _Absolute_98dfaf1178334fc287f9e4d4b5f3a0f0_Out_1_Float);
            float _Property_08b97a5bb158439e9155434b6637ac33_Out_0_Float = _Cross_Backface_Mask_Power;
            float _Power_c8f61d8af16945f9b82731ed18d38dd9_Out_2_Float;
            Unity_Power_float(_Absolute_98dfaf1178334fc287f9e4d4b5f3a0f0_Out_1_Float, _Property_08b97a5bb158439e9155434b6637ac33_Out_0_Float, _Power_c8f61d8af16945f9b82731ed18d38dd9_Out_2_Float);
            float _Clamp_c8b7bf714ebb484d8aa73d545b2f9d59_Out_3_Float;
            Unity_Clamp_float(_Power_c8f61d8af16945f9b82731ed18d38dd9_Out_2_Float, float(0), float(1), _Clamp_c8b7bf714ebb484d8aa73d545b2f9d59_Out_3_Float);
            float3 _Lerp_343d7507e4664bd7bc5108bcf0d55854_Out_3_Vector3;
            Unity_Lerp_float3(_Lerp_9c8a6dd2927446309acc26d9f217de99_Out_3_Vector3, (_Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4.xyz), (_Clamp_c8b7bf714ebb484d8aa73d545b2f9d59_Out_3_Float.xxx), _Lerp_343d7507e4664bd7bc5108bcf0d55854_Out_3_Vector3);
            float3 _Lerp_0d72c41eff034cfaaaf0208f4bf42433_Out_3_Vector3;
            Unity_Lerp_float3((_Lerp_9056381ab3034355b45968f0d1ff2f1a_Out_3_Vector4.xyz), _Lerp_343d7507e4664bd7bc5108bcf0d55854_Out_3_Vector3, (_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float.xxx), _Lerp_0d72c41eff034cfaaaf0208f4bf42433_Out_3_Vector3);
            float _Property_09c643c04af64fb18f3a77b935844ecc_Out_0_Float = _Global_Base_Brightness;
            float3 _Multiply_61b0f4818da94adfa23e13d8e3e376a8_Out_2_Vector3;
            Unity_Multiply_float3_float3(_Lerp_0d72c41eff034cfaaaf0208f4bf42433_Out_3_Vector3, (_Property_09c643c04af64fb18f3a77b935844ecc_Out_0_Float.xxx), _Multiply_61b0f4818da94adfa23e13d8e3e376a8_Out_2_Vector3);
            float3 _Clamp_359788e8ad134650b865e76600af6700_Out_3_Vector3;
            Unity_Clamp_float3(_Multiply_61b0f4818da94adfa23e13d8e3e376a8_Out_2_Vector3, float3(0, 0, 0), float3(1, 1, 1), _Clamp_359788e8ad134650b865e76600af6700_Out_3_Vector3);
            float _Property_067d68a770a25e8f978ca090306a96d8_Out_0_Float = _AlphaCutoff;
            float _Property_4b59dc86107847d5b565cde1e47efb8f_Out_0_Float = _AlphaShadowThreshold;
            float _Property_c35305c7157c4d3ba1db4ba61b2e2ebc_Out_0_Float = _Trunk_Smoothness_Remap_Max;
            float _Property_0edea7916ed7a189a62b0faf2c274601_Out_0_Float = _SmoothnessRemapMax;
            float _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float;
            Unity_Lerp_float(_Property_c35305c7157c4d3ba1db4ba61b2e2ebc_Out_0_Float, _Property_0edea7916ed7a189a62b0faf2c274601_Out_0_Float, _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float, _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float);
            float _Property_48e1c5285b48c78e8af19e38f4bd77f9_Out_0_Float = _AORemapMax;
            UnityTexture2D _Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_NormalMap);
            float4 _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.rgb = UnpackNormal(_SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4);
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_R_4_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.r;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_G_5_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.g;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_B_6_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.b;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_A_7_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.a;
            float _Property_b07156802a1240f7a8c14a272c5f1b36_Out_0_Float = _Trunk_Normal_Scale;
            float _Property_72e436a108ad64868e46d548c585c5f3_Out_0_Float = _NormalScale;
            float _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float;
            Unity_Lerp_float(_Property_b07156802a1240f7a8c14a272c5f1b36_Out_0_Float, _Property_72e436a108ad64868e46d548c585c5f3_Out_0_Float, _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float, _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float);
            float3 _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3;
            Unity_NormalStrength_float((_SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.xyz), _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float, _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3);
            float _Property_2fa2ab76399ae48aaf1180768279e6b9_Out_0_Float = _Thickness;
            float _Multiply_aed8020082acc482b9303a61b01a1a1a_Out_2_Float;
            Unity_Multiply_float_float(_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_A_7_Float, _Property_2fa2ab76399ae48aaf1180768279e6b9_Out_0_Float, _Multiply_aed8020082acc482b9303a61b01a1a1a_Out_2_Float);
            surface.BaseColor = _Clamp_359788e8ad134650b865e76600af6700_Out_3_Vector3;
            surface.Emission = float3(0, 0, 0);
            surface.Alpha = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_A_7_Float;
            surface.AlphaClipThreshold = _Property_067d68a770a25e8f978ca090306a96d8_Out_0_Float;
            surface.AlphaClipThresholdShadow = _Property_4b59dc86107847d5b565cde1e47efb8f_Out_0_Float;
            surface.BentNormal = IN.TangentSpaceNormal;
            surface.Smoothness = _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float;
            surface.Occlusion = _Property_48e1c5285b48c78e8af19e38f4bd77f9_Out_0_Float;
            surface.NormalTS = _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3;
            surface.TransmissionMask = float(1);
            surface.Thickness = _Multiply_aed8020082acc482b9303a61b01a1a1a_Out_2_Float;
            surface.DiffusionProfileHash = _DiffusionProfileHash;
            {
                surface.VTPackedFeedback = float4(1.0f,1.0f,1.0f,1.0f);
            }
            return surface;
        }
        
            // --------------------------------------------------
            // Build Graph Inputs
            #ifdef HAVE_VFX_MODIFICATION
            #define VFX_SRP_ATTRIBUTES AttributesMesh
            #define VaryingsMeshType VaryingsMeshToPS
            #define VFX_SRP_VARYINGS VaryingsMeshType
            #define VFX_SRP_SURFACE_INPUTS FragInputs
            #endif
            
        VertexDescriptionInputs AttributesMeshToVertexDescriptionInputs(AttributesMesh input)
        {
            VertexDescriptionInputs output;
            ZERO_INITIALIZE(VertexDescriptionInputs, output);
        
            output.ObjectSpaceNormal =                          input.normalOS;
            output.ObjectSpaceTangent =                         input.tangentOS.xyz;
            output.ObjectSpacePosition =                        input.positionOS;
        
            return output;
        }
        
        VertexDescription GetVertexDescription(AttributesMesh input, float3 timeParameters
        #ifdef HAVE_VFX_MODIFICATION
            , AttributesElement element
        #endif
        )
        {
            // build graph inputs
            VertexDescriptionInputs vertexDescriptionInputs = AttributesMeshToVertexDescriptionInputs(input);
            // Override time parameters with used one (This is required to correctly handle motion vectors for vertex animation based on time)
        
            // evaluate vertex graph
        #ifdef HAVE_VFX_MODIFICATION
            GraphProperties properties;
            ZERO_INITIALIZE(GraphProperties, properties);
        
            // Fetch the vertex graph properties for the particle instance.
            GetElementVertexProperties(element, properties);
        
            VertexDescription vertexDescription = VertexDescriptionFunction(vertexDescriptionInputs, properties);
        #else
            VertexDescription vertexDescription = VertexDescriptionFunction(vertexDescriptionInputs);
        #endif
            return vertexDescription;
        
        }
        
        AttributesMesh ApplyMeshModification(AttributesMesh input, float3 timeParameters
        #ifdef USE_CUSTOMINTERP_SUBSTRUCT
            #ifdef TESSELLATION_ON
            , inout VaryingsMeshToDS varyings
            #else
            , inout VaryingsMeshToPS varyings
            #endif
        #endif
        #ifdef HAVE_VFX_MODIFICATION
                , AttributesElement element
        #endif
            )
        {
            VertexDescription vertexDescription = GetVertexDescription(input, timeParameters
        #ifdef HAVE_VFX_MODIFICATION
                , element
        #endif
            );
        
            // copy graph output to the results
            input.positionOS = vertexDescription.Position;
            input.normalOS = vertexDescription.Normal;
            input.tangentOS.xyz = vertexDescription.Tangent;
        
            
        
            return input;
        }
        
        #if defined(_ADD_CUSTOM_VELOCITY) // For shader graph custom velocity
        // Return precomputed Velocity in object space
        float3 GetCustomVelocity(AttributesMesh input
        #ifdef HAVE_VFX_MODIFICATION
            , AttributesElement element
        #endif
        )
        {
            VertexDescription vertexDescription = GetVertexDescription(input, _TimeParameters.xyz
        #ifdef HAVE_VFX_MODIFICATION
                , element
        #endif
            );
            return vertexDescription.CustomVelocity;
        }
        #endif
        
        FragInputs BuildFragInputs(VaryingsMeshToPS input)
        {
            FragInputs output;
            ZERO_INITIALIZE(FragInputs, output);
        
            // Init to some default value to make the computer quiet (else it output 'divide by zero' warning even if value is not used).
            // TODO: this is a really poor workaround, but the variable is used in a bunch of places
            // to compute normals which are then passed on elsewhere to compute other values...
            output.tangentToWorld = k_identity3x3;
            output.positionSS = input.positionCS;       // input.positionCS is SV_Position
        
            output.positionRWS =                input.positionRWS;
            output.tangentToWorld =             BuildTangentToWorld(input.tangentWS, input.normalWS);
            output.texCoord0 =                  input.texCoord0;
            output.texCoord1 =                  input.texCoord1;
            output.texCoord2 =                  input.texCoord2;
        
        #ifdef HAVE_VFX_MODIFICATION
            // FragInputs from VFX come from two places: Interpolator or CBuffer.
        #if VFX_USE_GRAPH_VALUES
            uint instanceActiveIndex = asuint(UNITY_ACCESS_INSTANCED_PROP(PerInstance, _InstanceActiveIndex));
            /* WARNING: $splice Could not find named fragment 'VFXLoadGraphValues' */
        #endif
        
            /* WARNING: $splice Could not find named fragment 'VFXSetFragInputs' */
        
        #endif
        
            // splice point to copy custom interpolator fields from varyings to frag inputs
            
        
            return output;
        }
        
        // existing HDRP code uses the combined function to go directly from packed to frag inputs
        FragInputs UnpackVaryingsMeshToFragInputs(PackedVaryingsMeshToPS input)
        {
            UNITY_SETUP_INSTANCE_ID(input);
        #if defined(HAVE_VFX_MODIFICATION) && defined(UNITY_INSTANCING_ENABLED)
            unity_InstanceID = input.instanceID;
        #endif
            VaryingsMeshToPS unpacked = UnpackVaryingsMeshToPS(input);
            return BuildFragInputs(unpacked);
        }
            SurfaceDescriptionInputs FragInputsToSurfaceDescriptionInputs(FragInputs input, float3 viewWS)
        {
            SurfaceDescriptionInputs output;
            ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
        
            #if defined(SHADER_STAGE_RAY_TRACING)
            #else
            #endif
            output.TangentSpaceNormal =                         float3(0.0f, 0.0f, 1.0f);
            output.AbsoluteWorldSpacePosition =                 GetAbsolutePositionWS(input.positionRWS);
        
        #if UNITY_UV_STARTS_AT_TOP
        #else
        #endif
        
        
            output.uv0 =                                        input.texCoord0;
        
            // splice point to copy frag inputs custom interpolator pack into the SDI
            
        
            return output;
        }
        
            // --------------------------------------------------
            // Build Surface Data (Specific Material)
        
        void ApplyDecalToSurfaceDataNoNormal(DecalSurfaceData decalSurfaceData, inout SurfaceData surfaceData);
        
        void ApplyDecalAndGetNormal(FragInputs fragInputs, PositionInputs posInput, SurfaceDescription surfaceDescription,
            inout SurfaceData surfaceData)
        {
            float3 doubleSidedConstants = GetDoubleSidedConstants();
        
        #ifdef DECAL_NORMAL_BLENDING
            // SG nodes don't ouptut surface gradients, so if decals require surf grad blending, we have to convert
            // the normal to gradient before applying the decal. We then have to resolve the gradient back to world space
            float3 normalTS;
        
            normalTS = SurfaceGradientFromTangentSpaceNormalAndFromTBN(surfaceDescription.NormalTS,
            fragInputs.tangentToWorld[0], fragInputs.tangentToWorld[1]);
        
        
            #if HAVE_DECALS
            if (_EnableDecals)
            {
                float alpha = 1.0;
                alpha = surfaceDescription.Alpha;
        
                DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                ApplyDecalToSurfaceNormal(decalSurfaceData, fragInputs.tangentToWorld[2], normalTS);
                ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
            }
            #endif
        
            GetNormalWS_SG(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);
        #else
            // normal delivered to master node
            GetNormalWS(fragInputs, surfaceDescription.NormalTS, surfaceData.normalWS, doubleSidedConstants);
        
            #if HAVE_DECALS
            if (_EnableDecals)
            {
                float alpha = 1.0;
                alpha = surfaceDescription.Alpha;
        
                // Both uses and modifies 'surfaceData.normalWS'.
                DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                ApplyDecalToSurfaceNormal(decalSurfaceData, surfaceData.normalWS.xyz);
                ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
            }
            #endif
        #endif
        }
        void BuildSurfaceData(FragInputs fragInputs, inout SurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
        {
            ZERO_INITIALIZE(SurfaceData, surfaceData);
        
            // specularOcclusion need to be init ahead of decal to quiet the compiler that modify the SurfaceData struct
            // however specularOcclusion can come from the graph, so need to be init here so it can be override.
            surfaceData.specularOcclusion = 1.0;
        
            surfaceData.baseColor =                 surfaceDescription.BaseColor;
            surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
            surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
            surfaceData.transmissionMask =          surfaceDescription.TransmissionMask;
            surfaceData.thickness =                 surfaceDescription.Thickness;
            surfaceData.diffusionProfileHash =      asuint(surfaceDescription.DiffusionProfileHash);
        
            #if defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE) || defined(_REFRACTION_THIN)
                if (_EnableSSRefraction)
                {
        
                    surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                    surfaceDescription.Alpha = 1.0;
                }
                else
                {
                    surfaceData.ior = 1.0;
                    surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                    surfaceData.atDistance = 1.0;
                    surfaceData.transmittanceMask = 0.0;
                    surfaceDescription.Alpha = 1.0;
                }
            #else
                surfaceData.ior = 1.0;
                surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                surfaceData.atDistance = 1.0;
                surfaceData.transmittanceMask = 0.0;
            #endif
        
            // These static material feature allow compile time optimization
            surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
            #ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
            #endif
        
            #ifdef _MATERIAL_FEATURE_TRANSMISSION
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
            #endif
        
            #ifdef _MATERIAL_FEATURE_ANISOTROPY
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
        
                // Initialize the normal to something non-zero to avoid a div-zero warning for anisotropy.
                surfaceData.normalWS = float3(0, 1, 0);
            #endif
        
            #ifdef _MATERIAL_FEATURE_IRIDESCENCE
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
            #endif
        
            #ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
            #endif
        
            #ifdef _MATERIAL_FEATURE_CLEAR_COAT
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
            #endif
        
            #if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                // Require to have setup baseColor
                // Reproduce the energy conservation done in legacy Unity. Not ideal but better for compatibility and users can unchek it
                surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
            #endif
        
            float3 doubleSidedConstants = GetDoubleSidedConstants();
        
            ApplyDecalAndGetNormal(fragInputs, posInput, surfaceDescription, surfaceData);
        
            surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
        
            surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
        
        
            bentNormalWS = surfaceData.normalWS;
        
            surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);
        
            #ifdef DEBUG_DISPLAY
                if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                {
                    // TODO: need to update mip info
                    surfaceData.metallic = 0;
                }
        
                // We need to call ApplyDebugToSurfaceData after filling the surfarcedata and before filling builtinData
                // as it can modify attribute use for static lighting
                ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
            #endif
        
            // By default we use the ambient occlusion with Tri-ace trick (apply outside) for specular occlusion.
            // If user provide bent normal then we process a better term
            #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                // Just use the value passed through via the slot (not active otherwise)
            #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                // If we have bent normal and ambient occlusion, process a specular occlusion
                surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
            #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
                surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
            #endif
        
            #if defined(_ENABLE_GEOMETRIC_SPECULAR_AA) && !defined(SHADER_STAGE_RAY_TRACING)
                surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
            #endif
        }
        
            // --------------------------------------------------
            // Get Surface And BuiltinData
        
            void GetSurfaceAndBuiltinData(FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData RAY_TRACING_OPTIONAL_PARAMETERS)
            {
                // Don't dither if displaced tessellation (we're fading out the displacement instead to match the next LOD)
                #if !defined(SHADER_STAGE_RAY_TRACING) && !defined(_TESSELLATION_DISPLACEMENT)
                #ifdef LOD_FADE_CROSSFADE // enable dithering LOD transition if user select CrossFade transition in LOD group
                LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
                #endif
                #endif
        
                #ifndef SHADER_UNLIT
                #ifdef _DOUBLESIDED_ON
                    float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
                #else
                    float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
                #endif
        
                ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants); // Apply double sided flip on the vertex normal
                #endif // SHADER_UNLIT
        
                SurfaceDescriptionInputs surfaceDescriptionInputs = FragInputsToSurfaceDescriptionInputs(fragInputs, V);
        
                #if defined(HAVE_VFX_MODIFICATION)
                GraphProperties properties;
                ZERO_INITIALIZE(GraphProperties, properties);
        
                GetElementPixelProperties(fragInputs, properties);
        
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs, properties);
                #else
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs);
                #endif
        
                // Perform alpha test very early to save performance (a killed pixel will not sample textures)
                // TODO: split graph evaluation to grab just alpha dependencies first? tricky..
                #ifdef _ALPHATEST_ON
                    float alphaCutoff = surfaceDescription.AlphaClipThreshold;
                    #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
                    // The TransparentDepthPrepass is also used with SSR transparent.
                    // If an artists enable transaprent SSR but not the TransparentDepthPrepass itself, then we use AlphaClipThreshold
                    // otherwise if TransparentDepthPrepass is enabled we use AlphaClipThresholdDepthPrepass
                    #elif SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_POSTPASS
                    // DepthPostpass always use its own alpha threshold
                    alphaCutoff = surfaceDescription.AlphaClipThresholdDepthPostpass;
                    #elif (SHADERPASS == SHADERPASS_SHADOWS) || (SHADERPASS == SHADERPASS_RAYTRACING_VISIBILITY)
                    // If use shadow threshold isn't enable we don't allow any test
                    #endif
        
                    GENERIC_ALPHA_TEST(surfaceDescription.Alpha, alphaCutoff);
                #endif
        
                #if !defined(SHADER_STAGE_RAY_TRACING) && _DEPTHOFFSET_ON
                ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
                #endif
        
                #ifndef SHADER_UNLIT
                float3 bentNormalWS;
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS);
        
                #ifdef FRAG_INPUTS_USE_TEXCOORD1
                    float4 lightmapTexCoord1 = fragInputs.texCoord1;
                #else
                    float4 lightmapTexCoord1 = float4(0,0,0,0);
                #endif
        
                #ifdef FRAG_INPUTS_USE_TEXCOORD2
                    float4 lightmapTexCoord2 = fragInputs.texCoord2;
                #else
                    float4 lightmapTexCoord2 = float4(0,0,0,0);
                #endif
        
                // Builtin Data
                // For back lighting we use the oposite vertex normal
                InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], lightmapTexCoord1, lightmapTexCoord2, builtinData);
        
                #else
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData);
        
                ZERO_BUILTIN_INITIALIZE(builtinData); // No call to InitBuiltinData as we don't have any lighting
                builtinData.opacity = surfaceDescription.Alpha;
        
                #if defined(DEBUG_DISPLAY)
                    // Light Layers are currently not used for the Unlit shader (because it is not lit)
                    // But Unlit objects do cast shadows according to their rendering layer mask, which is what we want to
                    // display in the light layers visualization mode, therefore we need the renderingLayers
                    builtinData.renderingLayers = GetMeshRenderingLightLayer();
                #endif
        
                #endif // SHADER_UNLIT
        
                #ifdef _ALPHATEST_ON
                    // Used for sharpening by alpha to mask - Alpha to covertage is only used with depth only and forward pass (no shadow pass, no transparent pass)
                    builtinData.alphaClipTreshold = alphaCutoff;
                #endif
        
                // override sampleBakedGI - not used by Unlit
        
                builtinData.emissiveColor = surfaceDescription.Emission;
        
                // Note this will not fully work on transparent surfaces (can check with _SURFACE_TYPE_TRANSPARENT define)
                // We will always overwrite vt feeback with the nearest. So behind transparent surfaces vt will not be resolved
                // This is a limitation of the current MRT approach.
                #ifdef UNITY_VIRTUAL_TEXTURING
                builtinData.vtPackedFeedback = surfaceDescription.VTPackedFeedback;
                #endif
        
                #if _DEPTHOFFSET_ON
                builtinData.depthOffset = surfaceDescription.DepthOffset;
                #endif
        
                // TODO: We should generate distortion / distortionBlur for non distortion pass
                #if (SHADERPASS == SHADERPASS_DISTORTION)
                builtinData.distortion = surfaceDescription.Distortion;
                builtinData.distortionBlur = surfaceDescription.DistortionBlur;
                #endif
        
                #ifndef SHADER_UNLIT
                // PostInitBuiltinData call ApplyDebugToBuiltinData
                PostInitBuiltinData(V, posInput, surfaceData, builtinData);
                #else
                ApplyDebugToBuiltinData(builtinData);
                #endif
        
                RAY_TRACING_OPTIONAL_ALPHA_TEST_PASS
            }
        
            // --------------------------------------------------
            // Main
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPassGBuffer.hlsl"
        
            // --------------------------------------------------
            // Visual Effect Vertex Invocations
        
        	#ifdef HAVE_VFX_MODIFICATION
        	#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/VisualEffectVertex.hlsl"
        	#endif
        
            ENDHLSL
        }
        Pass
        {
            Name "Forward"
            Tags
            {
                "LightMode" = "Forward"
            }
        
            // Render State
            Cull [_CullModeForward]
        Blend [_SrcBlend] [_DstBlend], [_AlphaSrcBlend] [_AlphaDstBlend]
        Blend 1 SrcAlpha OneMinusSrcAlpha
        ZTest [_ZTestDepthEqualForOpaque]
        ZWrite [_ZWrite]
        ColorMask [_ColorMaskTransparentVelOne] 1
        ColorMask [_ColorMaskTransparentVelTwo] 2
        Stencil
        {
        WriteMask [_StencilWriteMask]
        Ref [_StencilRef]
        CompFront Always
        PassFront Replace
        CompBack Always
        PassBack Replace
        }
        
            // Debug
            // <None>
        
            // --------------------------------------------------
            // Pass
        
            HLSLPROGRAM
        
            // Pragmas
            #pragma multi_compile _ DOTS_INSTANCING_ON
        #pragma instancing_options renderinglayer
        #pragma target 4.5
        #pragma vertex Vert
        #pragma fragment Frag
        #pragma only_renderers d3d11 playstation xboxone xboxseries vulkan metal switch
        #pragma multi_compile_instancing
        
            // Keywords
            #pragma shader_feature_local _ _ALPHATEST_ON
        #pragma shader_feature _ _SURFACE_TYPE_TRANSPARENT
        #pragma shader_feature_local _ _DOUBLESIDED_ON
        #pragma shader_feature_local _ _ADD_PRECOMPUTED_VELOCITY
        #pragma shader_feature_local _ _TRANSPARENT_WRITES_MOTION_VEC
        #pragma shader_feature_local_fragment _ _ENABLE_FOG_ON_TRANSPARENT
        #pragma multi_compile _ DEBUG_DISPLAY
        #pragma multi_compile _ LOD_FADE_CROSSFADE
        #pragma shader_feature_local_fragment _ _DISABLE_DECALS
        #pragma shader_feature_local_raytracing _ _DISABLE_DECALS
        #pragma shader_feature_local_fragment _ _DISABLE_SSR
        #pragma shader_feature_local_raytracing _ _DISABLE_SSR
        #pragma shader_feature_local_fragment _ _DISABLE_SSR_TRANSPARENT
        #pragma shader_feature_local_raytracing _ _DISABLE_SSR_TRANSPARENT
        #pragma multi_compile _ LIGHTMAP_ON
        #pragma multi_compile _ DIRLIGHTMAP_COMBINED
        #pragma multi_compile_fragment PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2
        #pragma multi_compile_raytracing PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2
        #pragma multi_compile _ DYNAMICLIGHTMAP_ON
        #pragma multi_compile_fragment _ SHADOWS_SHADOWMASK
        #pragma multi_compile_raytracing _ SHADOWS_SHADOWMASK
        #pragma multi_compile_fragment DECALS_OFF DECALS_3RT DECALS_4RT
        #pragma multi_compile_fragment _ DECAL_SURFACE_GRADIENT
        #pragma multi_compile_fragment SHADOW_LOW SHADOW_MEDIUM SHADOW_HIGH
        #pragma multi_compile_fragment AREA_SHADOW_MEDIUM AREA_SHADOW_HIGH
        #pragma multi_compile_fragment SCREEN_SPACE_SHADOWS_OFF SCREEN_SPACE_SHADOWS_ON
        #pragma multi_compile_fragment USE_FPTL_LIGHTLIST USE_CLUSTERED_LIGHTLIST
        #pragma shader_feature_local _ _REFRACTION_PLANE _REFRACTION_SPHERE _REFRACTION_THIN
            // GraphKeywords: <None>
        
            // For custom interpolators to inject a substruct definition before FragInputs definition,
            // allowing for FragInputs to capture CI's intended for ShaderGraph's SDI.
            struct CustomInterpolators
        {
        };
        #define USE_CUSTOMINTERP_SUBSTRUCT
        
        
        
            // TODO: Merge FragInputsVFX substruct with CustomInterpolators.
        	#ifdef HAVE_VFX_MODIFICATION
        	struct FragInputsVFX
            {
                /* WARNING: $splice Could not find named fragment 'FragInputsVFX' */
            };
            #endif
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/GeometricTools.hlsl" // Required by Tessellation.hlsl
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Tessellation.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl" // Required to be include before we include properties as it define DECLARE_STACK_CB
            // Always include Shader Graph version
            // Always include last to avoid double macros
            #include "Packages/com.unity.shadergraph/ShaderGraphLibrary/Functions.hlsl" // Need to be here for Gradient struct definition
        
            // --------------------------------------------------
            // Defines
        
            // Attribute
            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TANGENT
            #define ATTRIBUTES_NEED_TEXCOORD0
            #define ATTRIBUTES_NEED_TEXCOORD1
            #define ATTRIBUTES_NEED_TEXCOORD2
            #define VARYINGS_NEED_POSITION_WS
            #define VARYINGS_NEED_TANGENT_TO_WORLD
            #define VARYINGS_NEED_TEXCOORD0
            #define VARYINGS_NEED_TEXCOORD1
            #define VARYINGS_NEED_TEXCOORD2
        
            #define HAVE_MESH_MODIFICATION
        
            //Strip down the FragInputs.hlsl (on graphics), so we can only optimize the interpolators we use.
            //if by accident something requests contents of FragInputs.hlsl, it will be caught as a compiler error
            //Frag inputs stripping is only enabled when FRAG_INPUTS_ENABLE_STRIPPING is set
            #if !defined(SHADER_STAGE_RAY_TRACING) && SHADERPASS != SHADERPASS_RAYTRACING_GBUFFER && SHADERPASS != SHADERPASS_FULL_SCREEN_DEBUG
            #define FRAG_INPUTS_ENABLE_STRIPPING
            #endif
            #define FRAG_INPUTS_USE_TEXCOORD0
            #define FRAG_INPUTS_USE_TEXCOORD1
            #define FRAG_INPUTS_USE_TEXCOORD2
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
        
        
        
            #define SHADERPASS SHADERPASS_FORWARD
        #define SUPPORT_BLENDMODE_PRESERVE_SPECULAR_LIGHTING 1
        #define HAS_LIGHTLOOP 1
        #define RAYTRACING_SHADER_GRAPH_DEFAULT
        #define SHADER_LIT 1
        
        
            // Following two define are a workaround introduce in 10.1.x for RaytracingQualityNode
            // The ShaderGraph don't support correctly migration of this node as it serialize all the node data
            // in the json file making it impossible to uprgrade. Until we get a fix, we do a workaround here
            // to still allow us to rename the field and keyword of this node without breaking existing code.
            #ifdef RAYTRACING_SHADER_GRAPH_DEFAULT
            #define RAYTRACING_SHADER_GRAPH_HIGH
            #endif
        
            #ifdef RAYTRACING_SHADER_GRAPH_RAYTRACED
            #define RAYTRACING_SHADER_GRAPH_LOW
            #endif
            // end
        
            #ifndef SHADER_UNLIT
            // We need isFrontFace when using double sided - it is not required for unlit as in case of unlit double sided only drive the cullmode
            // VARYINGS_NEED_CULLFACE can be define by VaryingsMeshToPS.FaceSign input if a IsFrontFace Node is included in the shader graph.
            #if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
                #define VARYINGS_NEED_CULLFACE
            #endif
            #endif
        
            // Specific Material Define
        #define _MATERIAL_FEATURE_TRANSMISSION 1
        #define _AMBIENT_OCCLUSION 1
        #define _SPECULAR_OCCLUSION_FROM_AO 1
        #define _ENERGY_CONSERVING_SPECULAR 1
        
        // If we use subsurface scattering, enable output split lighting (for forward pass)
        #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
            #define OUTPUT_SPLIT_LIGHTING
        #endif
        
        // This shader support recursive rendering for raytracing
        #define HAVE_RECURSIVE_RENDERING
        
        // In Path Tracing, For all single-sided, refractive materials, we want to force a thin refraction model
        #if (SHADERPASS == SHADERPASS_PATH_TRACING) && !defined(_DOUBLESIDED_ON) && (defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE))
            #undef  _REFRACTION_PLANE
            #undef  _REFRACTION_SPHERE
            #define _REFRACTION_THIN
        #endif
            // Caution: we can use the define SHADER_UNLIT onlit after the above Material include as it is the Unlit template who define it
        
            // To handle SSR on transparent correctly with a possibility to enable/disable it per framesettings
            // we should have a code like this:
            // if !defined(_DISABLE_SSR_TRANSPARENT)
            // pragma multi_compile _ WRITE_NORMAL_BUFFER
            // endif
            // i.e we enable the multicompile only if we can receive SSR or not, and then C# code drive
            // it based on if SSR transparent in frame settings and not (and stripper can strip it).
            // this is currently not possible with our current preprocessor as _DISABLE_SSR_TRANSPARENT is a keyword not a define
            // so instead we used this and chose to pay the extra cost of normal write even if SSR transaprent is disabled.
            // Ideally the shader graph generator should handle it but condition below can't be handle correctly for now.
            #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
            #if !defined(_DISABLE_SSR_TRANSPARENT) && !defined(SHADER_UNLIT)
                #define WRITE_NORMAL_BUFFER
            #endif
            #endif
        
            #ifndef DEBUG_DISPLAY
                // In case of opaque we don't want to perform the alpha test, it is done in depth prepass and we use depth equal for ztest (setup from UI)
                // Don't do it with debug display mode as it is possible there is no depth prepass in this case
                #if !defined(_SURFACE_TYPE_TRANSPARENT)
                    #if SHADERPASS == SHADERPASS_FORWARD
                    #define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
                    #elif SHADERPASS == SHADERPASS_GBUFFER
                    #define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
                    #endif
                #endif
            #endif
        
            // Define _DEFERRED_CAPABLE_MATERIAL for shader capable to run in deferred pass
            #if defined(SHADER_LIT) && !defined(_SURFACE_TYPE_TRANSPARENT)
                #define _DEFERRED_CAPABLE_MATERIAL
            #endif
        
            // Translate transparent motion vector define
            #if defined(_TRANSPARENT_WRITES_MOTION_VEC) && defined(_SURFACE_TYPE_TRANSPARENT)
                #define _WRITE_TRANSPARENT_MOTION_VECTOR
            #endif
        
            // -- Graph Properties
            CBUFFER_START(UnityPerMaterial)
        float4 _DiffusionProfileAsset;
        float _DiffusionProfileHash;
        float4 _TrunkBaseColor;
        float4 _BarkBaseColor;
        float _Backface_Thickness_Mask_Threshold;
        float2 _Backface_Thickness_Mask_Remap;
        float _Backface_Brightness;
        float _Cross_Backface_Mask_Power;
        float _Backface_Saturation;
        float4 _HealthyColor;
        float4 _DryColor;
        float _AlphaCutoff;
        float _AlphaShadowThreshold;
        float4 _BaseColorMap_TexelSize;
        float4 _TilingOffset;
        float _HealthyandDryColorNoisePower;
        float4 _NormalMap_TexelSize;
        float _NormalScale;
        float _AORemapMax;
        float _SmoothnessRemapMax;
        float4 _Mask_TexelSize;
        float _Thickness;
        float _WindNormalInfluence;
        float4 _VertexNormalMultiply;
        float _ColorNoiseTilling;
        float _Trunk_Normal_Scale;
        float _Global_Base_Brightness;
        float _Trunk_Smoothness_Remap_Max;
        float4 _EmissionColor;
        float _UseShadowThreshold;
        float4 _DoubleSidedConstants;
        float _BlendMode;
        float _EnableBlendModePreserveSpecularLighting;
        float _RayTracing;
        float _RefractionModel;
        CBUFFER_END
        
        
        // Object and Global properties
        SAMPLER(SamplerState_Linear_Repeat);
        SAMPLER(SamplerState_Linear_Repeat_Aniso8);
        TEXTURE2D(_BaseColorMap);
        SAMPLER(sampler_BaseColorMap);
        TEXTURE2D(_NormalMap);
        SAMPLER(sampler_NormalMap);
        TEXTURE2D(_Mask);
        SAMPLER(sampler_Mask);
        
            // -- Property used by ScenePickingPass
            #ifdef SCENEPICKINGPASS
            float4 _SelectionID;
            #endif
        
            // -- Properties used by SceneSelectionPass
            #ifdef SCENESELECTIONPASS
            int _ObjectId;
            int _PassValue;
            #endif
        
            // Includes
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
        #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/Lighting.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoopDef.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoop.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Hashes.hlsl"
        
            // --------------------------------------------------
            // Structs and Packing
        
            struct AttributesMesh
        {
             float3 positionOS : POSITION;
             float3 normalOS : NORMAL;
             float4 tangentOS : TANGENT;
             float4 uv0 : TEXCOORD0;
             float4 uv1 : TEXCOORD1;
             float4 uv2 : TEXCOORD2;
            #if UNITY_ANY_INSTANCING_ENABLED
             uint instanceID : INSTANCEID_SEMANTIC;
            #endif
        };
        struct VaryingsMeshToPS
        {
            SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
             float3 positionRWS;
             float3 normalWS;
             float4 tangentWS;
             float4 texCoord0;
             float4 texCoord1;
             float4 texCoord2;
            #if UNITY_ANY_INSTANCING_ENABLED
             uint instanceID : CUSTOM_INSTANCE_ID;
            #endif
        };
        struct VertexDescriptionInputs
        {
             float3 ObjectSpaceNormal;
             float3 ObjectSpaceTangent;
             float3 ObjectSpacePosition;
        };
        struct SurfaceDescriptionInputs
        {
             float3 TangentSpaceNormal;
             float3 AbsoluteWorldSpacePosition;
             float4 uv0;
        };
        struct PackedVaryingsMeshToPS
        {
            SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
             float4 tangentWS : INTERP0;
             float4 texCoord0 : INTERP1;
             float4 texCoord1 : INTERP2;
             float4 texCoord2 : INTERP3;
             float3 positionRWS : INTERP4;
             float3 normalWS : INTERP5;
            #if UNITY_ANY_INSTANCING_ENABLED
             uint instanceID : CUSTOM_INSTANCE_ID;
            #endif
        };
        
            PackedVaryingsMeshToPS PackVaryingsMeshToPS (VaryingsMeshToPS input)
        {
            PackedVaryingsMeshToPS output;
            ZERO_INITIALIZE(PackedVaryingsMeshToPS, output);
            output.positionCS = input.positionCS;
            output.tangentWS.xyzw = input.tangentWS;
            output.texCoord0.xyzw = input.texCoord0;
            output.texCoord1.xyzw = input.texCoord1;
            output.texCoord2.xyzw = input.texCoord2;
            output.positionRWS.xyz = input.positionRWS;
            output.normalWS.xyz = input.normalWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif
            return output;
        }
        
        VaryingsMeshToPS UnpackVaryingsMeshToPS (PackedVaryingsMeshToPS input)
        {
            VaryingsMeshToPS output;
            output.positionCS = input.positionCS;
            output.tangentWS = input.tangentWS.xyzw;
            output.texCoord0 = input.texCoord0.xyzw;
            output.texCoord1 = input.texCoord1.xyzw;
            output.texCoord2 = input.texCoord2.xyzw;
            output.positionRWS = input.positionRWS.xyz;
            output.normalWS = input.normalWS.xyz;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif
            return output;
        }
        
        
            // --------------------------------------------------
            // Graph
        
        
            // Graph Functions
            
        void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
        {
            Out = UV * Tiling + Offset;
        }
        
        void Unity_Multiply_float4_float4(float4 A, float4 B, out float4 Out)
        {
            Out = A * B;
        }
        
        void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
        {
            Out = lerp(A, B, T);
        }
        
        float Unity_SimpleNoise_ValueNoise_LegacySine_float (float2 uv)
        {
            float2 i = floor(uv);
            float2 f = frac(uv);
            f = f * f * (3.0 - 2.0 * f);
            uv = abs(frac(uv) - 0.5);
            float2 c0 = i + float2(0.0, 0.0);
            float2 c1 = i + float2(1.0, 0.0);
            float2 c2 = i + float2(0.0, 1.0);
            float2 c3 = i + float2(1.0, 1.0);
            float r0; Hash_LegacySine_2_1_float(c0, r0);
            float r1; Hash_LegacySine_2_1_float(c1, r1);
            float r2; Hash_LegacySine_2_1_float(c2, r2);
            float r3; Hash_LegacySine_2_1_float(c3, r3);
            float bottomOfGrid = lerp(r0, r1, f.x);
            float topOfGrid = lerp(r2, r3, f.x);
            float t = lerp(bottomOfGrid, topOfGrid, f.y);
            return t;
        }
        
        void Unity_SimpleNoise_LegacySine_float(float2 UV, float Scale, out float Out)
        {
            float freq, amp;
            Out = 0.0f;
            freq = pow(2.0, float(0));
            amp = pow(0.5, float(3-0));
            Out += Unity_SimpleNoise_ValueNoise_LegacySine_float(float2(UV.xy*(Scale/freq)))*amp;
            freq = pow(2.0, float(1));
            amp = pow(0.5, float(3-1));
            Out += Unity_SimpleNoise_ValueNoise_LegacySine_float(float2(UV.xy*(Scale/freq)))*amp;
            freq = pow(2.0, float(2));
            amp = pow(0.5, float(3-2));
            Out += Unity_SimpleNoise_ValueNoise_LegacySine_float(float2(UV.xy*(Scale/freq)))*amp;
        }
        
        void Unity_Absolute_float(float In, out float Out)
        {
            Out = abs(In);
        }
        
        void Unity_Power_float(float A, float B, out float Out)
        {
            Out = pow(A, B);
        }
        
        void Unity_Clamp_float(float In, float Min, float Max, out float Out)
        {
            Out = clamp(In, Min, Max);
        }
        
        void Unity_Saturation_float(float3 In, float Saturation, out float3 Out)
        {
            float luma = dot(In, float3(0.2126729, 0.7151522, 0.0721750));
            Out =  luma.xxx + Saturation.xxx * (In - luma.xxx);
        }
        
        void Unity_Blend_Screen_float3(float3 Base, float3 Blend, out float3 Out, float Opacity)
        {
            Out = 1.0 - (1.0 - Blend) * (1.0 - Base);
            Out = lerp(Base, Out, Opacity);
        }
        
        void Unity_Clamp_float3(float3 In, float3 Min, float3 Max, out float3 Out)
        {
            Out = clamp(In, Min, Max);
        }
        
        void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
        {
            Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
        }
        
        void Unity_OneMinus_float(float In, out float Out)
        {
            Out = 1 - In;
        }
        
        void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
        {
            Out = lerp(A, B, T);
        }
        
        void Unity_Multiply_float3_float3(float3 A, float3 B, out float3 Out)
        {
            Out = A * B;
        }
        
        void Unity_Lerp_float(float A, float B, float T, out float Out)
        {
            Out = lerp(A, B, T);
        }
        
        void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
        {
            Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
        }
        
        void Unity_Multiply_float_float(float A, float B, out float Out)
        {
            Out = A * B;
        }
        
            // Graph Vertex
            struct VertexDescription
        {
            float3 Position;
            float3 Normal;
            float3 Tangent;
        };
        
        VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
        {
            VertexDescription description = (VertexDescription)0;
            description.Position = IN.ObjectSpacePosition;
            description.Normal = IN.ObjectSpaceNormal;
            description.Tangent = IN.ObjectSpaceTangent;
            return description;
        }
        
            // Graph Pixel
            struct SurfaceDescription
        {
            float3 BaseColor;
            float3 Emission;
            float Alpha;
            float AlphaClipThreshold;
            float AlphaClipThresholdShadow;
            float3 BentNormal;
            float Smoothness;
            float Occlusion;
            float3 NormalTS;
            float TransmissionMask;
            float Thickness;
            float DiffusionProfileHash;
            float4 VTPackedFeedback;
        };
        
        SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
        {
            SurfaceDescription surface = (SurfaceDescription)0;
            UnityTexture2D _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_BaseColorMap);
            float4 _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4 = _TilingOffset;
            float _Split_60538633130155809820b3185c81057f_R_1_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[0];
            float _Split_60538633130155809820b3185c81057f_G_2_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[1];
            float _Split_60538633130155809820b3185c81057f_B_3_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[2];
            float _Split_60538633130155809820b3185c81057f_A_4_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[3];
            float2 _Vector2_83b2ea7a32ab548fb8c20dce14204561_Out_0_Vector2 = float2(_Split_60538633130155809820b3185c81057f_R_1_Float, _Split_60538633130155809820b3185c81057f_G_2_Float);
            float2 _Vector2_188e122ac0c7888f9f5fbde73f9edd75_Out_0_Vector2 = float2(_Split_60538633130155809820b3185c81057f_B_3_Float, _Split_60538633130155809820b3185c81057f_A_4_Float);
            float2 _TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2;
            Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_83b2ea7a32ab548fb8c20dce14204561_Out_0_Vector2, _Vector2_188e122ac0c7888f9f5fbde73f9edd75_Out_0_Vector2, _TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2);
            float4 _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.tex, _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.samplerstate, _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_R_4_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.r;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_G_5_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.g;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_B_6_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.b;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_A_7_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.a;
            float4 _Property_d37c4e2cc4f949f581f76dcb73d50e87_Out_0_Vector4 = _BarkBaseColor;
            float4 _Multiply_e4794b5d7e19433599f2b4e150644bea_Out_2_Vector4;
            Unity_Multiply_float4_float4(_SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4, _Property_d37c4e2cc4f949f581f76dcb73d50e87_Out_0_Vector4, _Multiply_e4794b5d7e19433599f2b4e150644bea_Out_2_Vector4);
            float4 _Property_0f3c5f287e8145bc95fd52cfba4b8fcc_Out_0_Vector4 = _TrunkBaseColor;
            float4 _Multiply_2453fa0c275a46cca1a866a080d90ddf_Out_2_Vector4;
            Unity_Multiply_float4_float4(_SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4, _Property_0f3c5f287e8145bc95fd52cfba4b8fcc_Out_0_Vector4, _Multiply_2453fa0c275a46cca1a866a080d90ddf_Out_2_Vector4);
            UnityTexture2D _Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_Mask);
            float4 _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_R_4_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.r;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.g;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_B_6_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.b;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_A_7_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.a;
            float4 _Lerp_9056381ab3034355b45968f0d1ff2f1a_Out_3_Vector4;
            Unity_Lerp_float4(_Multiply_e4794b5d7e19433599f2b4e150644bea_Out_2_Vector4, _Multiply_2453fa0c275a46cca1a866a080d90ddf_Out_2_Vector4, (_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_B_6_Float.xxxx), _Lerp_9056381ab3034355b45968f0d1ff2f1a_Out_3_Vector4);
            float4 _Property_944e0c60198849afb235eb9940da5dd9_Out_0_Vector4 = _DryColor;
            float4 _Property_621f9271d8734c81b9001229b0296656_Out_0_Vector4 = _HealthyColor;
            float _Split_99caf98864a9e980997a02cedd282dd0_R_1_Float = IN.AbsoluteWorldSpacePosition[0];
            float _Split_99caf98864a9e980997a02cedd282dd0_G_2_Float = IN.AbsoluteWorldSpacePosition[1];
            float _Split_99caf98864a9e980997a02cedd282dd0_B_3_Float = IN.AbsoluteWorldSpacePosition[2];
            float _Split_99caf98864a9e980997a02cedd282dd0_A_4_Float = 0;
            float2 _Vector2_ddc95fa04fb4858daf984190322978b9_Out_0_Vector2 = float2(_Split_99caf98864a9e980997a02cedd282dd0_R_1_Float, _Split_99caf98864a9e980997a02cedd282dd0_B_3_Float);
            float _Property_4d778d1ae72a416b96bf6cb1986a7d5d_Out_0_Float = _ColorNoiseTilling;
            float _SimpleNoise_96327065e2b0428f83e25f93c7e5a748_Out_2_Float;
            Unity_SimpleNoise_LegacySine_float(_Vector2_ddc95fa04fb4858daf984190322978b9_Out_0_Vector2, _Property_4d778d1ae72a416b96bf6cb1986a7d5d_Out_0_Float, _SimpleNoise_96327065e2b0428f83e25f93c7e5a748_Out_2_Float);
            float _Absolute_3da7acf58a45403cad1e7c432d78f027_Out_1_Float;
            Unity_Absolute_float(_SimpleNoise_96327065e2b0428f83e25f93c7e5a748_Out_2_Float, _Absolute_3da7acf58a45403cad1e7c432d78f027_Out_1_Float);
            float _Property_0dff529d33cb42e388c9d874effe6e19_Out_0_Float = _HealthyandDryColorNoisePower;
            float _Power_77b7c0eba07f4b9da46f2fa461c49201_Out_2_Float;
            Unity_Power_float(_Absolute_3da7acf58a45403cad1e7c432d78f027_Out_1_Float, _Property_0dff529d33cb42e388c9d874effe6e19_Out_0_Float, _Power_77b7c0eba07f4b9da46f2fa461c49201_Out_2_Float);
            float _Clamp_efb2cde09ec64325a2f78a848b0827b2_Out_3_Float;
            Unity_Clamp_float(_Power_77b7c0eba07f4b9da46f2fa461c49201_Out_2_Float, float(0), float(1), _Clamp_efb2cde09ec64325a2f78a848b0827b2_Out_3_Float);
            float4 _Lerp_b995ffde83d24283ac272745617fa60c_Out_3_Vector4;
            Unity_Lerp_float4(_Property_944e0c60198849afb235eb9940da5dd9_Out_0_Vector4, _Property_621f9271d8734c81b9001229b0296656_Out_0_Vector4, (_Clamp_efb2cde09ec64325a2f78a848b0827b2_Out_3_Float.xxxx), _Lerp_b995ffde83d24283ac272745617fa60c_Out_3_Vector4);
            float4 _Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4;
            Unity_Multiply_float4_float4(_SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4, _Lerp_b995ffde83d24283ac272745617fa60c_Out_3_Vector4, _Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4);
            float _Property_a52cc4db448642208842be98e18796fb_Out_0_Float = _Backface_Saturation;
            float3 _Saturation_1a5be2ae12084c59883f7d315d09cd80_Out_2_Vector3;
            Unity_Saturation_float((_Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4.xyz), _Property_a52cc4db448642208842be98e18796fb_Out_0_Float, _Saturation_1a5be2ae12084c59883f7d315d09cd80_Out_2_Vector3);
            float _Property_547f6c365f204d14a383183448811966_Out_0_Float = _Backface_Brightness;
            float3 _Blend_9d43ee127ca04ec09dd9151a833d8d61_Out_2_Vector3;
            Unity_Blend_Screen_float3(_Saturation_1a5be2ae12084c59883f7d315d09cd80_Out_2_Vector3, (_Property_547f6c365f204d14a383183448811966_Out_0_Float.xxx), _Blend_9d43ee127ca04ec09dd9151a833d8d61_Out_2_Vector3, float(1));
            float3 _Clamp_f7855b2ac55c4d43b25a4a1e56dbbbf7_Out_3_Vector3;
            Unity_Clamp_float3(_Blend_9d43ee127ca04ec09dd9151a833d8d61_Out_2_Vector3, float3(0, 0, 0), float3(1, 1, 1), _Clamp_f7855b2ac55c4d43b25a4a1e56dbbbf7_Out_3_Vector3);
            float2 _Property_b0a46b9c34574501a2f500d2f5745793_Out_0_Vector2 = _Backface_Thickness_Mask_Remap;
            float _Remap_bbbefbf0fbaf41d8a6d07b465d45488f_Out_3_Float;
            Unity_Remap_float(_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_A_7_Float, float2 (0, 1), _Property_b0a46b9c34574501a2f500d2f5745793_Out_0_Vector2, _Remap_bbbefbf0fbaf41d8a6d07b465d45488f_Out_3_Float);
            float _Clamp_6ac81c92e9a64e958055eca61b82e791_Out_3_Float;
            Unity_Clamp_float(_Remap_bbbefbf0fbaf41d8a6d07b465d45488f_Out_3_Float, float(0), float(1), _Clamp_6ac81c92e9a64e958055eca61b82e791_Out_3_Float);
            float _Property_3a1e9cc1507b46b2af88ab75dfc37b44_Out_0_Float = _Backface_Thickness_Mask_Threshold;
            float _Power_1fccfa34ffba46ceac25f1238aa4e1b5_Out_2_Float;
            Unity_Power_float(_Clamp_6ac81c92e9a64e958055eca61b82e791_Out_3_Float, _Property_3a1e9cc1507b46b2af88ab75dfc37b44_Out_0_Float, _Power_1fccfa34ffba46ceac25f1238aa4e1b5_Out_2_Float);
            float _Clamp_e55b4d1f4fda4e97bcfe15cfe9c6fd05_Out_3_Float;
            Unity_Clamp_float(_Power_1fccfa34ffba46ceac25f1238aa4e1b5_Out_2_Float, float(0), float(1), _Clamp_e55b4d1f4fda4e97bcfe15cfe9c6fd05_Out_3_Float);
            float _OneMinus_16a8ddad0aee4e5ca379aef306048984_Out_1_Float;
            Unity_OneMinus_float(_Clamp_e55b4d1f4fda4e97bcfe15cfe9c6fd05_Out_3_Float, _OneMinus_16a8ddad0aee4e5ca379aef306048984_Out_1_Float);
            float3 _Lerp_9c8a6dd2927446309acc26d9f217de99_Out_3_Vector3;
            Unity_Lerp_float3((_Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4.xyz), _Clamp_f7855b2ac55c4d43b25a4a1e56dbbbf7_Out_3_Vector3, (_OneMinus_16a8ddad0aee4e5ca379aef306048984_Out_1_Float.xxx), _Lerp_9c8a6dd2927446309acc26d9f217de99_Out_3_Vector3);
            float _Absolute_98dfaf1178334fc287f9e4d4b5f3a0f0_Out_1_Float;
            Unity_Absolute_float(_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_R_4_Float, _Absolute_98dfaf1178334fc287f9e4d4b5f3a0f0_Out_1_Float);
            float _Property_08b97a5bb158439e9155434b6637ac33_Out_0_Float = _Cross_Backface_Mask_Power;
            float _Power_c8f61d8af16945f9b82731ed18d38dd9_Out_2_Float;
            Unity_Power_float(_Absolute_98dfaf1178334fc287f9e4d4b5f3a0f0_Out_1_Float, _Property_08b97a5bb158439e9155434b6637ac33_Out_0_Float, _Power_c8f61d8af16945f9b82731ed18d38dd9_Out_2_Float);
            float _Clamp_c8b7bf714ebb484d8aa73d545b2f9d59_Out_3_Float;
            Unity_Clamp_float(_Power_c8f61d8af16945f9b82731ed18d38dd9_Out_2_Float, float(0), float(1), _Clamp_c8b7bf714ebb484d8aa73d545b2f9d59_Out_3_Float);
            float3 _Lerp_343d7507e4664bd7bc5108bcf0d55854_Out_3_Vector3;
            Unity_Lerp_float3(_Lerp_9c8a6dd2927446309acc26d9f217de99_Out_3_Vector3, (_Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4.xyz), (_Clamp_c8b7bf714ebb484d8aa73d545b2f9d59_Out_3_Float.xxx), _Lerp_343d7507e4664bd7bc5108bcf0d55854_Out_3_Vector3);
            float3 _Lerp_0d72c41eff034cfaaaf0208f4bf42433_Out_3_Vector3;
            Unity_Lerp_float3((_Lerp_9056381ab3034355b45968f0d1ff2f1a_Out_3_Vector4.xyz), _Lerp_343d7507e4664bd7bc5108bcf0d55854_Out_3_Vector3, (_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float.xxx), _Lerp_0d72c41eff034cfaaaf0208f4bf42433_Out_3_Vector3);
            float _Property_09c643c04af64fb18f3a77b935844ecc_Out_0_Float = _Global_Base_Brightness;
            float3 _Multiply_61b0f4818da94adfa23e13d8e3e376a8_Out_2_Vector3;
            Unity_Multiply_float3_float3(_Lerp_0d72c41eff034cfaaaf0208f4bf42433_Out_3_Vector3, (_Property_09c643c04af64fb18f3a77b935844ecc_Out_0_Float.xxx), _Multiply_61b0f4818da94adfa23e13d8e3e376a8_Out_2_Vector3);
            float3 _Clamp_359788e8ad134650b865e76600af6700_Out_3_Vector3;
            Unity_Clamp_float3(_Multiply_61b0f4818da94adfa23e13d8e3e376a8_Out_2_Vector3, float3(0, 0, 0), float3(1, 1, 1), _Clamp_359788e8ad134650b865e76600af6700_Out_3_Vector3);
            float _Property_067d68a770a25e8f978ca090306a96d8_Out_0_Float = _AlphaCutoff;
            float _Property_4b59dc86107847d5b565cde1e47efb8f_Out_0_Float = _AlphaShadowThreshold;
            float _Property_c35305c7157c4d3ba1db4ba61b2e2ebc_Out_0_Float = _Trunk_Smoothness_Remap_Max;
            float _Property_0edea7916ed7a189a62b0faf2c274601_Out_0_Float = _SmoothnessRemapMax;
            float _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float;
            Unity_Lerp_float(_Property_c35305c7157c4d3ba1db4ba61b2e2ebc_Out_0_Float, _Property_0edea7916ed7a189a62b0faf2c274601_Out_0_Float, _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float, _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float);
            float _Property_48e1c5285b48c78e8af19e38f4bd77f9_Out_0_Float = _AORemapMax;
            UnityTexture2D _Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_NormalMap);
            float4 _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.rgb = UnpackNormal(_SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4);
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_R_4_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.r;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_G_5_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.g;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_B_6_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.b;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_A_7_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.a;
            float _Property_b07156802a1240f7a8c14a272c5f1b36_Out_0_Float = _Trunk_Normal_Scale;
            float _Property_72e436a108ad64868e46d548c585c5f3_Out_0_Float = _NormalScale;
            float _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float;
            Unity_Lerp_float(_Property_b07156802a1240f7a8c14a272c5f1b36_Out_0_Float, _Property_72e436a108ad64868e46d548c585c5f3_Out_0_Float, _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float, _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float);
            float3 _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3;
            Unity_NormalStrength_float((_SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.xyz), _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float, _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3);
            float _Property_2fa2ab76399ae48aaf1180768279e6b9_Out_0_Float = _Thickness;
            float _Multiply_aed8020082acc482b9303a61b01a1a1a_Out_2_Float;
            Unity_Multiply_float_float(_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_A_7_Float, _Property_2fa2ab76399ae48aaf1180768279e6b9_Out_0_Float, _Multiply_aed8020082acc482b9303a61b01a1a1a_Out_2_Float);
            surface.BaseColor = _Clamp_359788e8ad134650b865e76600af6700_Out_3_Vector3;
            surface.Emission = float3(0, 0, 0);
            surface.Alpha = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_A_7_Float;
            surface.AlphaClipThreshold = _Property_067d68a770a25e8f978ca090306a96d8_Out_0_Float;
            surface.AlphaClipThresholdShadow = _Property_4b59dc86107847d5b565cde1e47efb8f_Out_0_Float;
            surface.BentNormal = IN.TangentSpaceNormal;
            surface.Smoothness = _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float;
            surface.Occlusion = _Property_48e1c5285b48c78e8af19e38f4bd77f9_Out_0_Float;
            surface.NormalTS = _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3;
            surface.TransmissionMask = float(1);
            surface.Thickness = _Multiply_aed8020082acc482b9303a61b01a1a1a_Out_2_Float;
            surface.DiffusionProfileHash = _DiffusionProfileHash;
            {
                surface.VTPackedFeedback = float4(1.0f,1.0f,1.0f,1.0f);
            }
            return surface;
        }
        
            // --------------------------------------------------
            // Build Graph Inputs
            #ifdef HAVE_VFX_MODIFICATION
            #define VFX_SRP_ATTRIBUTES AttributesMesh
            #define VaryingsMeshType VaryingsMeshToPS
            #define VFX_SRP_VARYINGS VaryingsMeshType
            #define VFX_SRP_SURFACE_INPUTS FragInputs
            #endif
            
        VertexDescriptionInputs AttributesMeshToVertexDescriptionInputs(AttributesMesh input)
        {
            VertexDescriptionInputs output;
            ZERO_INITIALIZE(VertexDescriptionInputs, output);
        
            output.ObjectSpaceNormal =                          input.normalOS;
            output.ObjectSpaceTangent =                         input.tangentOS.xyz;
            output.ObjectSpacePosition =                        input.positionOS;
        
            return output;
        }
        
        VertexDescription GetVertexDescription(AttributesMesh input, float3 timeParameters
        #ifdef HAVE_VFX_MODIFICATION
            , AttributesElement element
        #endif
        )
        {
            // build graph inputs
            VertexDescriptionInputs vertexDescriptionInputs = AttributesMeshToVertexDescriptionInputs(input);
            // Override time parameters with used one (This is required to correctly handle motion vectors for vertex animation based on time)
        
            // evaluate vertex graph
        #ifdef HAVE_VFX_MODIFICATION
            GraphProperties properties;
            ZERO_INITIALIZE(GraphProperties, properties);
        
            // Fetch the vertex graph properties for the particle instance.
            GetElementVertexProperties(element, properties);
        
            VertexDescription vertexDescription = VertexDescriptionFunction(vertexDescriptionInputs, properties);
        #else
            VertexDescription vertexDescription = VertexDescriptionFunction(vertexDescriptionInputs);
        #endif
            return vertexDescription;
        
        }
        
        AttributesMesh ApplyMeshModification(AttributesMesh input, float3 timeParameters
        #ifdef USE_CUSTOMINTERP_SUBSTRUCT
            #ifdef TESSELLATION_ON
            , inout VaryingsMeshToDS varyings
            #else
            , inout VaryingsMeshToPS varyings
            #endif
        #endif
        #ifdef HAVE_VFX_MODIFICATION
                , AttributesElement element
        #endif
            )
        {
            VertexDescription vertexDescription = GetVertexDescription(input, timeParameters
        #ifdef HAVE_VFX_MODIFICATION
                , element
        #endif
            );
        
            // copy graph output to the results
            input.positionOS = vertexDescription.Position;
            input.normalOS = vertexDescription.Normal;
            input.tangentOS.xyz = vertexDescription.Tangent;
        
            
        
            return input;
        }
        
        #if defined(_ADD_CUSTOM_VELOCITY) // For shader graph custom velocity
        // Return precomputed Velocity in object space
        float3 GetCustomVelocity(AttributesMesh input
        #ifdef HAVE_VFX_MODIFICATION
            , AttributesElement element
        #endif
        )
        {
            VertexDescription vertexDescription = GetVertexDescription(input, _TimeParameters.xyz
        #ifdef HAVE_VFX_MODIFICATION
                , element
        #endif
            );
            return vertexDescription.CustomVelocity;
        }
        #endif
        
        FragInputs BuildFragInputs(VaryingsMeshToPS input)
        {
            FragInputs output;
            ZERO_INITIALIZE(FragInputs, output);
        
            // Init to some default value to make the computer quiet (else it output 'divide by zero' warning even if value is not used).
            // TODO: this is a really poor workaround, but the variable is used in a bunch of places
            // to compute normals which are then passed on elsewhere to compute other values...
            output.tangentToWorld = k_identity3x3;
            output.positionSS = input.positionCS;       // input.positionCS is SV_Position
        
            output.positionRWS =                input.positionRWS;
            output.tangentToWorld =             BuildTangentToWorld(input.tangentWS, input.normalWS);
            output.texCoord0 =                  input.texCoord0;
            output.texCoord1 =                  input.texCoord1;
            output.texCoord2 =                  input.texCoord2;
        
        #ifdef HAVE_VFX_MODIFICATION
            // FragInputs from VFX come from two places: Interpolator or CBuffer.
        #if VFX_USE_GRAPH_VALUES
            uint instanceActiveIndex = asuint(UNITY_ACCESS_INSTANCED_PROP(PerInstance, _InstanceActiveIndex));
            /* WARNING: $splice Could not find named fragment 'VFXLoadGraphValues' */
        #endif
        
            /* WARNING: $splice Could not find named fragment 'VFXSetFragInputs' */
        
        #endif
        
            // splice point to copy custom interpolator fields from varyings to frag inputs
            
        
            return output;
        }
        
        // existing HDRP code uses the combined function to go directly from packed to frag inputs
        FragInputs UnpackVaryingsMeshToFragInputs(PackedVaryingsMeshToPS input)
        {
            UNITY_SETUP_INSTANCE_ID(input);
        #if defined(HAVE_VFX_MODIFICATION) && defined(UNITY_INSTANCING_ENABLED)
            unity_InstanceID = input.instanceID;
        #endif
            VaryingsMeshToPS unpacked = UnpackVaryingsMeshToPS(input);
            return BuildFragInputs(unpacked);
        }
            SurfaceDescriptionInputs FragInputsToSurfaceDescriptionInputs(FragInputs input, float3 viewWS)
        {
            SurfaceDescriptionInputs output;
            ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
        
            #if defined(SHADER_STAGE_RAY_TRACING)
            #else
            #endif
            output.TangentSpaceNormal =                         float3(0.0f, 0.0f, 1.0f);
            output.AbsoluteWorldSpacePosition =                 GetAbsolutePositionWS(input.positionRWS);
        
        #if UNITY_UV_STARTS_AT_TOP
        #else
        #endif
        
        
            output.uv0 =                                        input.texCoord0;
        
            // splice point to copy frag inputs custom interpolator pack into the SDI
            
        
            return output;
        }
        
            // --------------------------------------------------
            // Build Surface Data (Specific Material)
        
        void ApplyDecalToSurfaceDataNoNormal(DecalSurfaceData decalSurfaceData, inout SurfaceData surfaceData);
        
        void ApplyDecalAndGetNormal(FragInputs fragInputs, PositionInputs posInput, SurfaceDescription surfaceDescription,
            inout SurfaceData surfaceData)
        {
            float3 doubleSidedConstants = GetDoubleSidedConstants();
        
        #ifdef DECAL_NORMAL_BLENDING
            // SG nodes don't ouptut surface gradients, so if decals require surf grad blending, we have to convert
            // the normal to gradient before applying the decal. We then have to resolve the gradient back to world space
            float3 normalTS;
        
            normalTS = SurfaceGradientFromTangentSpaceNormalAndFromTBN(surfaceDescription.NormalTS,
            fragInputs.tangentToWorld[0], fragInputs.tangentToWorld[1]);
        
        
            #if HAVE_DECALS
            if (_EnableDecals)
            {
                float alpha = 1.0;
                alpha = surfaceDescription.Alpha;
        
                DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                ApplyDecalToSurfaceNormal(decalSurfaceData, fragInputs.tangentToWorld[2], normalTS);
                ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
            }
            #endif
        
            GetNormalWS_SG(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);
        #else
            // normal delivered to master node
            GetNormalWS(fragInputs, surfaceDescription.NormalTS, surfaceData.normalWS, doubleSidedConstants);
        
            #if HAVE_DECALS
            if (_EnableDecals)
            {
                float alpha = 1.0;
                alpha = surfaceDescription.Alpha;
        
                // Both uses and modifies 'surfaceData.normalWS'.
                DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                ApplyDecalToSurfaceNormal(decalSurfaceData, surfaceData.normalWS.xyz);
                ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
            }
            #endif
        #endif
        }
        void BuildSurfaceData(FragInputs fragInputs, inout SurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
        {
            ZERO_INITIALIZE(SurfaceData, surfaceData);
        
            // specularOcclusion need to be init ahead of decal to quiet the compiler that modify the SurfaceData struct
            // however specularOcclusion can come from the graph, so need to be init here so it can be override.
            surfaceData.specularOcclusion = 1.0;
        
            surfaceData.baseColor =                 surfaceDescription.BaseColor;
            surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
            surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
            surfaceData.transmissionMask =          surfaceDescription.TransmissionMask;
            surfaceData.thickness =                 surfaceDescription.Thickness;
            surfaceData.diffusionProfileHash =      asuint(surfaceDescription.DiffusionProfileHash);
        
            #if defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE) || defined(_REFRACTION_THIN)
                if (_EnableSSRefraction)
                {
        
                    surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                    surfaceDescription.Alpha = 1.0;
                }
                else
                {
                    surfaceData.ior = 1.0;
                    surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                    surfaceData.atDistance = 1.0;
                    surfaceData.transmittanceMask = 0.0;
                    surfaceDescription.Alpha = 1.0;
                }
            #else
                surfaceData.ior = 1.0;
                surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                surfaceData.atDistance = 1.0;
                surfaceData.transmittanceMask = 0.0;
            #endif
        
            // These static material feature allow compile time optimization
            surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
            #ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
            #endif
        
            #ifdef _MATERIAL_FEATURE_TRANSMISSION
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
            #endif
        
            #ifdef _MATERIAL_FEATURE_ANISOTROPY
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
        
                // Initialize the normal to something non-zero to avoid a div-zero warning for anisotropy.
                surfaceData.normalWS = float3(0, 1, 0);
            #endif
        
            #ifdef _MATERIAL_FEATURE_IRIDESCENCE
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
            #endif
        
            #ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
            #endif
        
            #ifdef _MATERIAL_FEATURE_CLEAR_COAT
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
            #endif
        
            #if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                // Require to have setup baseColor
                // Reproduce the energy conservation done in legacy Unity. Not ideal but better for compatibility and users can unchek it
                surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
            #endif
        
            float3 doubleSidedConstants = GetDoubleSidedConstants();
        
            ApplyDecalAndGetNormal(fragInputs, posInput, surfaceDescription, surfaceData);
        
            surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
        
            surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
        
        
            bentNormalWS = surfaceData.normalWS;
        
            surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);
        
            #ifdef DEBUG_DISPLAY
                if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                {
                    // TODO: need to update mip info
                    surfaceData.metallic = 0;
                }
        
                // We need to call ApplyDebugToSurfaceData after filling the surfarcedata and before filling builtinData
                // as it can modify attribute use for static lighting
                ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
            #endif
        
            // By default we use the ambient occlusion with Tri-ace trick (apply outside) for specular occlusion.
            // If user provide bent normal then we process a better term
            #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                // Just use the value passed through via the slot (not active otherwise)
            #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                // If we have bent normal and ambient occlusion, process a specular occlusion
                surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
            #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
                surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
            #endif
        
            #if defined(_ENABLE_GEOMETRIC_SPECULAR_AA) && !defined(SHADER_STAGE_RAY_TRACING)
                surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
            #endif
        }
        
            // --------------------------------------------------
            // Get Surface And BuiltinData
        
            void GetSurfaceAndBuiltinData(FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData RAY_TRACING_OPTIONAL_PARAMETERS)
            {
                // Don't dither if displaced tessellation (we're fading out the displacement instead to match the next LOD)
                #if !defined(SHADER_STAGE_RAY_TRACING) && !defined(_TESSELLATION_DISPLACEMENT)
                #ifdef LOD_FADE_CROSSFADE // enable dithering LOD transition if user select CrossFade transition in LOD group
                LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
                #endif
                #endif
        
                #ifndef SHADER_UNLIT
                #ifdef _DOUBLESIDED_ON
                    float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
                #else
                    float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
                #endif
        
                ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants); // Apply double sided flip on the vertex normal
                #endif // SHADER_UNLIT
        
                SurfaceDescriptionInputs surfaceDescriptionInputs = FragInputsToSurfaceDescriptionInputs(fragInputs, V);
        
                #if defined(HAVE_VFX_MODIFICATION)
                GraphProperties properties;
                ZERO_INITIALIZE(GraphProperties, properties);
        
                GetElementPixelProperties(fragInputs, properties);
        
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs, properties);
                #else
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs);
                #endif
        
                // Perform alpha test very early to save performance (a killed pixel will not sample textures)
                // TODO: split graph evaluation to grab just alpha dependencies first? tricky..
                #ifdef _ALPHATEST_ON
                    float alphaCutoff = surfaceDescription.AlphaClipThreshold;
                    #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
                    // The TransparentDepthPrepass is also used with SSR transparent.
                    // If an artists enable transaprent SSR but not the TransparentDepthPrepass itself, then we use AlphaClipThreshold
                    // otherwise if TransparentDepthPrepass is enabled we use AlphaClipThresholdDepthPrepass
                    #elif SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_POSTPASS
                    // DepthPostpass always use its own alpha threshold
                    alphaCutoff = surfaceDescription.AlphaClipThresholdDepthPostpass;
                    #elif (SHADERPASS == SHADERPASS_SHADOWS) || (SHADERPASS == SHADERPASS_RAYTRACING_VISIBILITY)
                    // If use shadow threshold isn't enable we don't allow any test
                    #endif
        
                    GENERIC_ALPHA_TEST(surfaceDescription.Alpha, alphaCutoff);
                #endif
        
                #if !defined(SHADER_STAGE_RAY_TRACING) && _DEPTHOFFSET_ON
                ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
                #endif
        
                #ifndef SHADER_UNLIT
                float3 bentNormalWS;
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS);
        
                #ifdef FRAG_INPUTS_USE_TEXCOORD1
                    float4 lightmapTexCoord1 = fragInputs.texCoord1;
                #else
                    float4 lightmapTexCoord1 = float4(0,0,0,0);
                #endif
        
                #ifdef FRAG_INPUTS_USE_TEXCOORD2
                    float4 lightmapTexCoord2 = fragInputs.texCoord2;
                #else
                    float4 lightmapTexCoord2 = float4(0,0,0,0);
                #endif
        
                // Builtin Data
                // For back lighting we use the oposite vertex normal
                InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], lightmapTexCoord1, lightmapTexCoord2, builtinData);
        
                #else
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData);
        
                ZERO_BUILTIN_INITIALIZE(builtinData); // No call to InitBuiltinData as we don't have any lighting
                builtinData.opacity = surfaceDescription.Alpha;
        
                #if defined(DEBUG_DISPLAY)
                    // Light Layers are currently not used for the Unlit shader (because it is not lit)
                    // But Unlit objects do cast shadows according to their rendering layer mask, which is what we want to
                    // display in the light layers visualization mode, therefore we need the renderingLayers
                    builtinData.renderingLayers = GetMeshRenderingLightLayer();
                #endif
        
                #endif // SHADER_UNLIT
        
                #ifdef _ALPHATEST_ON
                    // Used for sharpening by alpha to mask - Alpha to covertage is only used with depth only and forward pass (no shadow pass, no transparent pass)
                    builtinData.alphaClipTreshold = alphaCutoff;
                #endif
        
                // override sampleBakedGI - not used by Unlit
        
                builtinData.emissiveColor = surfaceDescription.Emission;
        
                // Note this will not fully work on transparent surfaces (can check with _SURFACE_TYPE_TRANSPARENT define)
                // We will always overwrite vt feeback with the nearest. So behind transparent surfaces vt will not be resolved
                // This is a limitation of the current MRT approach.
                #ifdef UNITY_VIRTUAL_TEXTURING
                builtinData.vtPackedFeedback = surfaceDescription.VTPackedFeedback;
                #endif
        
                #if _DEPTHOFFSET_ON
                builtinData.depthOffset = surfaceDescription.DepthOffset;
                #endif
        
                // TODO: We should generate distortion / distortionBlur for non distortion pass
                #if (SHADERPASS == SHADERPASS_DISTORTION)
                builtinData.distortion = surfaceDescription.Distortion;
                builtinData.distortionBlur = surfaceDescription.DistortionBlur;
                #endif
        
                #ifndef SHADER_UNLIT
                // PostInitBuiltinData call ApplyDebugToBuiltinData
                PostInitBuiltinData(V, posInput, surfaceData, builtinData);
                #else
                ApplyDebugToBuiltinData(builtinData);
                #endif
        
                RAY_TRACING_OPTIONAL_ALPHA_TEST_PASS
            }
        
            // --------------------------------------------------
            // Main
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPassForward.hlsl"
        
            // --------------------------------------------------
            // Visual Effect Vertex Invocations
        
        	#ifdef HAVE_VFX_MODIFICATION
        	#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/VisualEffectVertex.hlsl"
        	#endif
        
            ENDHLSL
        }
        Pass
        {
            Name "RayTracingPrepass"
            Tags
            {
                "LightMode" = "RayTracingPrepass"
            }
        
            // Render State
            Cull [_CullMode]
        Blend One Zero
        ZWrite On
        
            // Debug
            // <None>
        
            // --------------------------------------------------
            // Pass
        
            HLSLPROGRAM
        
            // Pragmas
            #pragma target 4.5
        #pragma vertex Vert
        #pragma fragment Frag
        #pragma only_renderers d3d11 playstation xboxone xboxseries vulkan metal switch
        #pragma multi_compile_instancing
        
            // Keywords
            #pragma shader_feature_local _ _ALPHATEST_ON
        #pragma shader_feature _ _SURFACE_TYPE_TRANSPARENT
        #pragma shader_feature_local _ _DOUBLESIDED_ON
        #pragma shader_feature_local _ _ADD_PRECOMPUTED_VELOCITY
        #pragma shader_feature_local _ _TRANSPARENT_WRITES_MOTION_VEC
        #pragma shader_feature_local_fragment _ _ENABLE_FOG_ON_TRANSPARENT
        #pragma shader_feature_local_fragment _ _DISABLE_DECALS
        #pragma shader_feature_local_raytracing _ _DISABLE_DECALS
        #pragma shader_feature_local_fragment _ _DISABLE_SSR
        #pragma shader_feature_local_raytracing _ _DISABLE_SSR
        #pragma shader_feature_local_fragment _ _DISABLE_SSR_TRANSPARENT
        #pragma shader_feature_local_raytracing _ _DISABLE_SSR_TRANSPARENT
        #pragma shader_feature_local _ _REFRACTION_PLANE _REFRACTION_SPHERE _REFRACTION_THIN
            // GraphKeywords: <None>
        
            // For custom interpolators to inject a substruct definition before FragInputs definition,
            // allowing for FragInputs to capture CI's intended for ShaderGraph's SDI.
            struct CustomInterpolators
        {
        };
        #define USE_CUSTOMINTERP_SUBSTRUCT
        
        
        
            // TODO: Merge FragInputsVFX substruct with CustomInterpolators.
        	#ifdef HAVE_VFX_MODIFICATION
        	struct FragInputsVFX
            {
                /* WARNING: $splice Could not find named fragment 'FragInputsVFX' */
            };
            #endif
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/GeometricTools.hlsl" // Required by Tessellation.hlsl
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Tessellation.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl" // Required to be include before we include properties as it define DECLARE_STACK_CB
            // Always include Shader Graph version
            // Always include last to avoid double macros
            #include "Packages/com.unity.shadergraph/ShaderGraphLibrary/Functions.hlsl" // Need to be here for Gradient struct definition
        
            // --------------------------------------------------
            // Defines
        
            // Attribute
            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TANGENT
            #define ATTRIBUTES_NEED_TEXCOORD0
            #define VARYINGS_NEED_POSITION_WS
            #define VARYINGS_NEED_TEXCOORD0
        
            #define HAVE_MESH_MODIFICATION
        
            //Strip down the FragInputs.hlsl (on graphics), so we can only optimize the interpolators we use.
            //if by accident something requests contents of FragInputs.hlsl, it will be caught as a compiler error
            //Frag inputs stripping is only enabled when FRAG_INPUTS_ENABLE_STRIPPING is set
            #if !defined(SHADER_STAGE_RAY_TRACING) && SHADERPASS != SHADERPASS_RAYTRACING_GBUFFER && SHADERPASS != SHADERPASS_FULL_SCREEN_DEBUG
            #define FRAG_INPUTS_ENABLE_STRIPPING
            #endif
            #define FRAG_INPUTS_USE_TEXCOORD0
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
        
        
        
            #define SHADERPASS SHADERPASS_CONSTANT
        #define RAYTRACING_SHADER_GRAPH_DEFAULT
        
        
            // Following two define are a workaround introduce in 10.1.x for RaytracingQualityNode
            // The ShaderGraph don't support correctly migration of this node as it serialize all the node data
            // in the json file making it impossible to uprgrade. Until we get a fix, we do a workaround here
            // to still allow us to rename the field and keyword of this node without breaking existing code.
            #ifdef RAYTRACING_SHADER_GRAPH_DEFAULT
            #define RAYTRACING_SHADER_GRAPH_HIGH
            #endif
        
            #ifdef RAYTRACING_SHADER_GRAPH_RAYTRACED
            #define RAYTRACING_SHADER_GRAPH_LOW
            #endif
            // end
        
            #ifndef SHADER_UNLIT
            // We need isFrontFace when using double sided - it is not required for unlit as in case of unlit double sided only drive the cullmode
            // VARYINGS_NEED_CULLFACE can be define by VaryingsMeshToPS.FaceSign input if a IsFrontFace Node is included in the shader graph.
            #if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
                #define VARYINGS_NEED_CULLFACE
            #endif
            #endif
        
            // Specific Material Define
        #define _MATERIAL_FEATURE_TRANSMISSION 1
        #define _AMBIENT_OCCLUSION 1
        #define _SPECULAR_OCCLUSION_FROM_AO 1
        #define _ENERGY_CONSERVING_SPECULAR 1
        
        // If we use subsurface scattering, enable output split lighting (for forward pass)
        #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
            #define OUTPUT_SPLIT_LIGHTING
        #endif
        
        // This shader support recursive rendering for raytracing
        #define HAVE_RECURSIVE_RENDERING
        
        // In Path Tracing, For all single-sided, refractive materials, we want to force a thin refraction model
        #if (SHADERPASS == SHADERPASS_PATH_TRACING) && !defined(_DOUBLESIDED_ON) && (defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE))
            #undef  _REFRACTION_PLANE
            #undef  _REFRACTION_SPHERE
            #define _REFRACTION_THIN
        #endif
            // Caution: we can use the define SHADER_UNLIT onlit after the above Material include as it is the Unlit template who define it
        
            // To handle SSR on transparent correctly with a possibility to enable/disable it per framesettings
            // we should have a code like this:
            // if !defined(_DISABLE_SSR_TRANSPARENT)
            // pragma multi_compile _ WRITE_NORMAL_BUFFER
            // endif
            // i.e we enable the multicompile only if we can receive SSR or not, and then C# code drive
            // it based on if SSR transparent in frame settings and not (and stripper can strip it).
            // this is currently not possible with our current preprocessor as _DISABLE_SSR_TRANSPARENT is a keyword not a define
            // so instead we used this and chose to pay the extra cost of normal write even if SSR transaprent is disabled.
            // Ideally the shader graph generator should handle it but condition below can't be handle correctly for now.
            #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
            #if !defined(_DISABLE_SSR_TRANSPARENT) && !defined(SHADER_UNLIT)
                #define WRITE_NORMAL_BUFFER
            #endif
            #endif
        
            #ifndef DEBUG_DISPLAY
                // In case of opaque we don't want to perform the alpha test, it is done in depth prepass and we use depth equal for ztest (setup from UI)
                // Don't do it with debug display mode as it is possible there is no depth prepass in this case
                #if !defined(_SURFACE_TYPE_TRANSPARENT)
                    #if SHADERPASS == SHADERPASS_FORWARD
                    #define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
                    #elif SHADERPASS == SHADERPASS_GBUFFER
                    #define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
                    #endif
                #endif
            #endif
        
            // Define _DEFERRED_CAPABLE_MATERIAL for shader capable to run in deferred pass
            #if defined(SHADER_LIT) && !defined(_SURFACE_TYPE_TRANSPARENT)
                #define _DEFERRED_CAPABLE_MATERIAL
            #endif
        
            // Translate transparent motion vector define
            #if defined(_TRANSPARENT_WRITES_MOTION_VEC) && defined(_SURFACE_TYPE_TRANSPARENT)
                #define _WRITE_TRANSPARENT_MOTION_VECTOR
            #endif
        
            // -- Graph Properties
            CBUFFER_START(UnityPerMaterial)
        float4 _DiffusionProfileAsset;
        float _DiffusionProfileHash;
        float4 _TrunkBaseColor;
        float4 _BarkBaseColor;
        float _Backface_Thickness_Mask_Threshold;
        float2 _Backface_Thickness_Mask_Remap;
        float _Backface_Brightness;
        float _Cross_Backface_Mask_Power;
        float _Backface_Saturation;
        float4 _HealthyColor;
        float4 _DryColor;
        float _AlphaCutoff;
        float _AlphaShadowThreshold;
        float4 _BaseColorMap_TexelSize;
        float4 _TilingOffset;
        float _HealthyandDryColorNoisePower;
        float4 _NormalMap_TexelSize;
        float _NormalScale;
        float _AORemapMax;
        float _SmoothnessRemapMax;
        float4 _Mask_TexelSize;
        float _Thickness;
        float _WindNormalInfluence;
        float4 _VertexNormalMultiply;
        float _ColorNoiseTilling;
        float _Trunk_Normal_Scale;
        float _Global_Base_Brightness;
        float _Trunk_Smoothness_Remap_Max;
        float4 _EmissionColor;
        float _UseShadowThreshold;
        float4 _DoubleSidedConstants;
        float _BlendMode;
        float _EnableBlendModePreserveSpecularLighting;
        float _RayTracing;
        float _RefractionModel;
        CBUFFER_END
        
        
        // Object and Global properties
        SAMPLER(SamplerState_Linear_Repeat);
        SAMPLER(SamplerState_Linear_Repeat_Aniso8);
        TEXTURE2D(_BaseColorMap);
        SAMPLER(sampler_BaseColorMap);
        TEXTURE2D(_NormalMap);
        SAMPLER(sampler_NormalMap);
        TEXTURE2D(_Mask);
        SAMPLER(sampler_Mask);
        
            // -- Property used by ScenePickingPass
            #ifdef SCENEPICKINGPASS
            float4 _SelectionID;
            #endif
        
            // -- Properties used by SceneSelectionPass
            #ifdef SCENESELECTIONPASS
            int _ObjectId;
            int _PassValue;
            #endif
        
            // Includes
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
        #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Hashes.hlsl"
        
            // --------------------------------------------------
            // Structs and Packing
        
            struct AttributesMesh
        {
             float3 positionOS : POSITION;
             float3 normalOS : NORMAL;
             float4 tangentOS : TANGENT;
             float4 uv0 : TEXCOORD0;
            #if UNITY_ANY_INSTANCING_ENABLED
             uint instanceID : INSTANCEID_SEMANTIC;
            #endif
        };
        struct VaryingsMeshToPS
        {
            SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
             float3 positionRWS;
             float4 texCoord0;
            #if UNITY_ANY_INSTANCING_ENABLED
             uint instanceID : CUSTOM_INSTANCE_ID;
            #endif
        };
        struct VertexDescriptionInputs
        {
             float3 ObjectSpaceNormal;
             float3 ObjectSpaceTangent;
             float3 ObjectSpacePosition;
        };
        struct SurfaceDescriptionInputs
        {
             float3 TangentSpaceNormal;
             float3 AbsoluteWorldSpacePosition;
             float4 uv0;
        };
        struct PackedVaryingsMeshToPS
        {
            SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
             float4 texCoord0 : INTERP0;
             float3 positionRWS : INTERP1;
            #if UNITY_ANY_INSTANCING_ENABLED
             uint instanceID : CUSTOM_INSTANCE_ID;
            #endif
        };
        
            PackedVaryingsMeshToPS PackVaryingsMeshToPS (VaryingsMeshToPS input)
        {
            PackedVaryingsMeshToPS output;
            ZERO_INITIALIZE(PackedVaryingsMeshToPS, output);
            output.positionCS = input.positionCS;
            output.texCoord0.xyzw = input.texCoord0;
            output.positionRWS.xyz = input.positionRWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif
            return output;
        }
        
        VaryingsMeshToPS UnpackVaryingsMeshToPS (PackedVaryingsMeshToPS input)
        {
            VaryingsMeshToPS output;
            output.positionCS = input.positionCS;
            output.texCoord0 = input.texCoord0.xyzw;
            output.positionRWS = input.positionRWS.xyz;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif
            return output;
        }
        
        
            // --------------------------------------------------
            // Graph
        
        
            // Graph Functions
            
        void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
        {
            Out = UV * Tiling + Offset;
        }
        
        void Unity_Multiply_float4_float4(float4 A, float4 B, out float4 Out)
        {
            Out = A * B;
        }
        
        void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
        {
            Out = lerp(A, B, T);
        }
        
        float Unity_SimpleNoise_ValueNoise_LegacySine_float (float2 uv)
        {
            float2 i = floor(uv);
            float2 f = frac(uv);
            f = f * f * (3.0 - 2.0 * f);
            uv = abs(frac(uv) - 0.5);
            float2 c0 = i + float2(0.0, 0.0);
            float2 c1 = i + float2(1.0, 0.0);
            float2 c2 = i + float2(0.0, 1.0);
            float2 c3 = i + float2(1.0, 1.0);
            float r0; Hash_LegacySine_2_1_float(c0, r0);
            float r1; Hash_LegacySine_2_1_float(c1, r1);
            float r2; Hash_LegacySine_2_1_float(c2, r2);
            float r3; Hash_LegacySine_2_1_float(c3, r3);
            float bottomOfGrid = lerp(r0, r1, f.x);
            float topOfGrid = lerp(r2, r3, f.x);
            float t = lerp(bottomOfGrid, topOfGrid, f.y);
            return t;
        }
        
        void Unity_SimpleNoise_LegacySine_float(float2 UV, float Scale, out float Out)
        {
            float freq, amp;
            Out = 0.0f;
            freq = pow(2.0, float(0));
            amp = pow(0.5, float(3-0));
            Out += Unity_SimpleNoise_ValueNoise_LegacySine_float(float2(UV.xy*(Scale/freq)))*amp;
            freq = pow(2.0, float(1));
            amp = pow(0.5, float(3-1));
            Out += Unity_SimpleNoise_ValueNoise_LegacySine_float(float2(UV.xy*(Scale/freq)))*amp;
            freq = pow(2.0, float(2));
            amp = pow(0.5, float(3-2));
            Out += Unity_SimpleNoise_ValueNoise_LegacySine_float(float2(UV.xy*(Scale/freq)))*amp;
        }
        
        void Unity_Absolute_float(float In, out float Out)
        {
            Out = abs(In);
        }
        
        void Unity_Power_float(float A, float B, out float Out)
        {
            Out = pow(A, B);
        }
        
        void Unity_Clamp_float(float In, float Min, float Max, out float Out)
        {
            Out = clamp(In, Min, Max);
        }
        
        void Unity_Saturation_float(float3 In, float Saturation, out float3 Out)
        {
            float luma = dot(In, float3(0.2126729, 0.7151522, 0.0721750));
            Out =  luma.xxx + Saturation.xxx * (In - luma.xxx);
        }
        
        void Unity_Blend_Screen_float3(float3 Base, float3 Blend, out float3 Out, float Opacity)
        {
            Out = 1.0 - (1.0 - Blend) * (1.0 - Base);
            Out = lerp(Base, Out, Opacity);
        }
        
        void Unity_Clamp_float3(float3 In, float3 Min, float3 Max, out float3 Out)
        {
            Out = clamp(In, Min, Max);
        }
        
        void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
        {
            Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
        }
        
        void Unity_OneMinus_float(float In, out float Out)
        {
            Out = 1 - In;
        }
        
        void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
        {
            Out = lerp(A, B, T);
        }
        
        void Unity_Multiply_float3_float3(float3 A, float3 B, out float3 Out)
        {
            Out = A * B;
        }
        
        void Unity_Lerp_float(float A, float B, float T, out float Out)
        {
            Out = lerp(A, B, T);
        }
        
        void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
        {
            Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
        }
        
        void Unity_Multiply_float_float(float A, float B, out float Out)
        {
            Out = A * B;
        }
        
            // Graph Vertex
            struct VertexDescription
        {
            float3 Position;
            float3 Normal;
            float3 Tangent;
        };
        
        VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
        {
            VertexDescription description = (VertexDescription)0;
            description.Position = IN.ObjectSpacePosition;
            description.Normal = IN.ObjectSpaceNormal;
            description.Tangent = IN.ObjectSpaceTangent;
            return description;
        }
        
            // Graph Pixel
            struct SurfaceDescription
        {
            float3 BaseColor;
            float3 Emission;
            float Alpha;
            float AlphaClipThreshold;
            float AlphaClipThresholdShadow;
            float3 BentNormal;
            float Smoothness;
            float Occlusion;
            float3 NormalTS;
            float TransmissionMask;
            float Thickness;
            float DiffusionProfileHash;
        };
        
        SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
        {
            SurfaceDescription surface = (SurfaceDescription)0;
            UnityTexture2D _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_BaseColorMap);
            float4 _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4 = _TilingOffset;
            float _Split_60538633130155809820b3185c81057f_R_1_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[0];
            float _Split_60538633130155809820b3185c81057f_G_2_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[1];
            float _Split_60538633130155809820b3185c81057f_B_3_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[2];
            float _Split_60538633130155809820b3185c81057f_A_4_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[3];
            float2 _Vector2_83b2ea7a32ab548fb8c20dce14204561_Out_0_Vector2 = float2(_Split_60538633130155809820b3185c81057f_R_1_Float, _Split_60538633130155809820b3185c81057f_G_2_Float);
            float2 _Vector2_188e122ac0c7888f9f5fbde73f9edd75_Out_0_Vector2 = float2(_Split_60538633130155809820b3185c81057f_B_3_Float, _Split_60538633130155809820b3185c81057f_A_4_Float);
            float2 _TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2;
            Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_83b2ea7a32ab548fb8c20dce14204561_Out_0_Vector2, _Vector2_188e122ac0c7888f9f5fbde73f9edd75_Out_0_Vector2, _TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2);
            float4 _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.tex, _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.samplerstate, _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_R_4_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.r;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_G_5_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.g;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_B_6_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.b;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_A_7_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.a;
            float4 _Property_d37c4e2cc4f949f581f76dcb73d50e87_Out_0_Vector4 = _BarkBaseColor;
            float4 _Multiply_e4794b5d7e19433599f2b4e150644bea_Out_2_Vector4;
            Unity_Multiply_float4_float4(_SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4, _Property_d37c4e2cc4f949f581f76dcb73d50e87_Out_0_Vector4, _Multiply_e4794b5d7e19433599f2b4e150644bea_Out_2_Vector4);
            float4 _Property_0f3c5f287e8145bc95fd52cfba4b8fcc_Out_0_Vector4 = _TrunkBaseColor;
            float4 _Multiply_2453fa0c275a46cca1a866a080d90ddf_Out_2_Vector4;
            Unity_Multiply_float4_float4(_SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4, _Property_0f3c5f287e8145bc95fd52cfba4b8fcc_Out_0_Vector4, _Multiply_2453fa0c275a46cca1a866a080d90ddf_Out_2_Vector4);
            UnityTexture2D _Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_Mask);
            float4 _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_R_4_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.r;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.g;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_B_6_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.b;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_A_7_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.a;
            float4 _Lerp_9056381ab3034355b45968f0d1ff2f1a_Out_3_Vector4;
            Unity_Lerp_float4(_Multiply_e4794b5d7e19433599f2b4e150644bea_Out_2_Vector4, _Multiply_2453fa0c275a46cca1a866a080d90ddf_Out_2_Vector4, (_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_B_6_Float.xxxx), _Lerp_9056381ab3034355b45968f0d1ff2f1a_Out_3_Vector4);
            float4 _Property_944e0c60198849afb235eb9940da5dd9_Out_0_Vector4 = _DryColor;
            float4 _Property_621f9271d8734c81b9001229b0296656_Out_0_Vector4 = _HealthyColor;
            float _Split_99caf98864a9e980997a02cedd282dd0_R_1_Float = IN.AbsoluteWorldSpacePosition[0];
            float _Split_99caf98864a9e980997a02cedd282dd0_G_2_Float = IN.AbsoluteWorldSpacePosition[1];
            float _Split_99caf98864a9e980997a02cedd282dd0_B_3_Float = IN.AbsoluteWorldSpacePosition[2];
            float _Split_99caf98864a9e980997a02cedd282dd0_A_4_Float = 0;
            float2 _Vector2_ddc95fa04fb4858daf984190322978b9_Out_0_Vector2 = float2(_Split_99caf98864a9e980997a02cedd282dd0_R_1_Float, _Split_99caf98864a9e980997a02cedd282dd0_B_3_Float);
            float _Property_4d778d1ae72a416b96bf6cb1986a7d5d_Out_0_Float = _ColorNoiseTilling;
            float _SimpleNoise_96327065e2b0428f83e25f93c7e5a748_Out_2_Float;
            Unity_SimpleNoise_LegacySine_float(_Vector2_ddc95fa04fb4858daf984190322978b9_Out_0_Vector2, _Property_4d778d1ae72a416b96bf6cb1986a7d5d_Out_0_Float, _SimpleNoise_96327065e2b0428f83e25f93c7e5a748_Out_2_Float);
            float _Absolute_3da7acf58a45403cad1e7c432d78f027_Out_1_Float;
            Unity_Absolute_float(_SimpleNoise_96327065e2b0428f83e25f93c7e5a748_Out_2_Float, _Absolute_3da7acf58a45403cad1e7c432d78f027_Out_1_Float);
            float _Property_0dff529d33cb42e388c9d874effe6e19_Out_0_Float = _HealthyandDryColorNoisePower;
            float _Power_77b7c0eba07f4b9da46f2fa461c49201_Out_2_Float;
            Unity_Power_float(_Absolute_3da7acf58a45403cad1e7c432d78f027_Out_1_Float, _Property_0dff529d33cb42e388c9d874effe6e19_Out_0_Float, _Power_77b7c0eba07f4b9da46f2fa461c49201_Out_2_Float);
            float _Clamp_efb2cde09ec64325a2f78a848b0827b2_Out_3_Float;
            Unity_Clamp_float(_Power_77b7c0eba07f4b9da46f2fa461c49201_Out_2_Float, float(0), float(1), _Clamp_efb2cde09ec64325a2f78a848b0827b2_Out_3_Float);
            float4 _Lerp_b995ffde83d24283ac272745617fa60c_Out_3_Vector4;
            Unity_Lerp_float4(_Property_944e0c60198849afb235eb9940da5dd9_Out_0_Vector4, _Property_621f9271d8734c81b9001229b0296656_Out_0_Vector4, (_Clamp_efb2cde09ec64325a2f78a848b0827b2_Out_3_Float.xxxx), _Lerp_b995ffde83d24283ac272745617fa60c_Out_3_Vector4);
            float4 _Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4;
            Unity_Multiply_float4_float4(_SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4, _Lerp_b995ffde83d24283ac272745617fa60c_Out_3_Vector4, _Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4);
            float _Property_a52cc4db448642208842be98e18796fb_Out_0_Float = _Backface_Saturation;
            float3 _Saturation_1a5be2ae12084c59883f7d315d09cd80_Out_2_Vector3;
            Unity_Saturation_float((_Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4.xyz), _Property_a52cc4db448642208842be98e18796fb_Out_0_Float, _Saturation_1a5be2ae12084c59883f7d315d09cd80_Out_2_Vector3);
            float _Property_547f6c365f204d14a383183448811966_Out_0_Float = _Backface_Brightness;
            float3 _Blend_9d43ee127ca04ec09dd9151a833d8d61_Out_2_Vector3;
            Unity_Blend_Screen_float3(_Saturation_1a5be2ae12084c59883f7d315d09cd80_Out_2_Vector3, (_Property_547f6c365f204d14a383183448811966_Out_0_Float.xxx), _Blend_9d43ee127ca04ec09dd9151a833d8d61_Out_2_Vector3, float(1));
            float3 _Clamp_f7855b2ac55c4d43b25a4a1e56dbbbf7_Out_3_Vector3;
            Unity_Clamp_float3(_Blend_9d43ee127ca04ec09dd9151a833d8d61_Out_2_Vector3, float3(0, 0, 0), float3(1, 1, 1), _Clamp_f7855b2ac55c4d43b25a4a1e56dbbbf7_Out_3_Vector3);
            float2 _Property_b0a46b9c34574501a2f500d2f5745793_Out_0_Vector2 = _Backface_Thickness_Mask_Remap;
            float _Remap_bbbefbf0fbaf41d8a6d07b465d45488f_Out_3_Float;
            Unity_Remap_float(_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_A_7_Float, float2 (0, 1), _Property_b0a46b9c34574501a2f500d2f5745793_Out_0_Vector2, _Remap_bbbefbf0fbaf41d8a6d07b465d45488f_Out_3_Float);
            float _Clamp_6ac81c92e9a64e958055eca61b82e791_Out_3_Float;
            Unity_Clamp_float(_Remap_bbbefbf0fbaf41d8a6d07b465d45488f_Out_3_Float, float(0), float(1), _Clamp_6ac81c92e9a64e958055eca61b82e791_Out_3_Float);
            float _Property_3a1e9cc1507b46b2af88ab75dfc37b44_Out_0_Float = _Backface_Thickness_Mask_Threshold;
            float _Power_1fccfa34ffba46ceac25f1238aa4e1b5_Out_2_Float;
            Unity_Power_float(_Clamp_6ac81c92e9a64e958055eca61b82e791_Out_3_Float, _Property_3a1e9cc1507b46b2af88ab75dfc37b44_Out_0_Float, _Power_1fccfa34ffba46ceac25f1238aa4e1b5_Out_2_Float);
            float _Clamp_e55b4d1f4fda4e97bcfe15cfe9c6fd05_Out_3_Float;
            Unity_Clamp_float(_Power_1fccfa34ffba46ceac25f1238aa4e1b5_Out_2_Float, float(0), float(1), _Clamp_e55b4d1f4fda4e97bcfe15cfe9c6fd05_Out_3_Float);
            float _OneMinus_16a8ddad0aee4e5ca379aef306048984_Out_1_Float;
            Unity_OneMinus_float(_Clamp_e55b4d1f4fda4e97bcfe15cfe9c6fd05_Out_3_Float, _OneMinus_16a8ddad0aee4e5ca379aef306048984_Out_1_Float);
            float3 _Lerp_9c8a6dd2927446309acc26d9f217de99_Out_3_Vector3;
            Unity_Lerp_float3((_Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4.xyz), _Clamp_f7855b2ac55c4d43b25a4a1e56dbbbf7_Out_3_Vector3, (_OneMinus_16a8ddad0aee4e5ca379aef306048984_Out_1_Float.xxx), _Lerp_9c8a6dd2927446309acc26d9f217de99_Out_3_Vector3);
            float _Absolute_98dfaf1178334fc287f9e4d4b5f3a0f0_Out_1_Float;
            Unity_Absolute_float(_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_R_4_Float, _Absolute_98dfaf1178334fc287f9e4d4b5f3a0f0_Out_1_Float);
            float _Property_08b97a5bb158439e9155434b6637ac33_Out_0_Float = _Cross_Backface_Mask_Power;
            float _Power_c8f61d8af16945f9b82731ed18d38dd9_Out_2_Float;
            Unity_Power_float(_Absolute_98dfaf1178334fc287f9e4d4b5f3a0f0_Out_1_Float, _Property_08b97a5bb158439e9155434b6637ac33_Out_0_Float, _Power_c8f61d8af16945f9b82731ed18d38dd9_Out_2_Float);
            float _Clamp_c8b7bf714ebb484d8aa73d545b2f9d59_Out_3_Float;
            Unity_Clamp_float(_Power_c8f61d8af16945f9b82731ed18d38dd9_Out_2_Float, float(0), float(1), _Clamp_c8b7bf714ebb484d8aa73d545b2f9d59_Out_3_Float);
            float3 _Lerp_343d7507e4664bd7bc5108bcf0d55854_Out_3_Vector3;
            Unity_Lerp_float3(_Lerp_9c8a6dd2927446309acc26d9f217de99_Out_3_Vector3, (_Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4.xyz), (_Clamp_c8b7bf714ebb484d8aa73d545b2f9d59_Out_3_Float.xxx), _Lerp_343d7507e4664bd7bc5108bcf0d55854_Out_3_Vector3);
            float3 _Lerp_0d72c41eff034cfaaaf0208f4bf42433_Out_3_Vector3;
            Unity_Lerp_float3((_Lerp_9056381ab3034355b45968f0d1ff2f1a_Out_3_Vector4.xyz), _Lerp_343d7507e4664bd7bc5108bcf0d55854_Out_3_Vector3, (_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float.xxx), _Lerp_0d72c41eff034cfaaaf0208f4bf42433_Out_3_Vector3);
            float _Property_09c643c04af64fb18f3a77b935844ecc_Out_0_Float = _Global_Base_Brightness;
            float3 _Multiply_61b0f4818da94adfa23e13d8e3e376a8_Out_2_Vector3;
            Unity_Multiply_float3_float3(_Lerp_0d72c41eff034cfaaaf0208f4bf42433_Out_3_Vector3, (_Property_09c643c04af64fb18f3a77b935844ecc_Out_0_Float.xxx), _Multiply_61b0f4818da94adfa23e13d8e3e376a8_Out_2_Vector3);
            float3 _Clamp_359788e8ad134650b865e76600af6700_Out_3_Vector3;
            Unity_Clamp_float3(_Multiply_61b0f4818da94adfa23e13d8e3e376a8_Out_2_Vector3, float3(0, 0, 0), float3(1, 1, 1), _Clamp_359788e8ad134650b865e76600af6700_Out_3_Vector3);
            float _Property_067d68a770a25e8f978ca090306a96d8_Out_0_Float = _AlphaCutoff;
            float _Property_4b59dc86107847d5b565cde1e47efb8f_Out_0_Float = _AlphaShadowThreshold;
            float _Property_c35305c7157c4d3ba1db4ba61b2e2ebc_Out_0_Float = _Trunk_Smoothness_Remap_Max;
            float _Property_0edea7916ed7a189a62b0faf2c274601_Out_0_Float = _SmoothnessRemapMax;
            float _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float;
            Unity_Lerp_float(_Property_c35305c7157c4d3ba1db4ba61b2e2ebc_Out_0_Float, _Property_0edea7916ed7a189a62b0faf2c274601_Out_0_Float, _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float, _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float);
            float _Property_48e1c5285b48c78e8af19e38f4bd77f9_Out_0_Float = _AORemapMax;
            UnityTexture2D _Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_NormalMap);
            float4 _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.rgb = UnpackNormal(_SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4);
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_R_4_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.r;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_G_5_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.g;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_B_6_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.b;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_A_7_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.a;
            float _Property_b07156802a1240f7a8c14a272c5f1b36_Out_0_Float = _Trunk_Normal_Scale;
            float _Property_72e436a108ad64868e46d548c585c5f3_Out_0_Float = _NormalScale;
            float _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float;
            Unity_Lerp_float(_Property_b07156802a1240f7a8c14a272c5f1b36_Out_0_Float, _Property_72e436a108ad64868e46d548c585c5f3_Out_0_Float, _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float, _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float);
            float3 _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3;
            Unity_NormalStrength_float((_SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.xyz), _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float, _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3);
            float _Property_2fa2ab76399ae48aaf1180768279e6b9_Out_0_Float = _Thickness;
            float _Multiply_aed8020082acc482b9303a61b01a1a1a_Out_2_Float;
            Unity_Multiply_float_float(_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_A_7_Float, _Property_2fa2ab76399ae48aaf1180768279e6b9_Out_0_Float, _Multiply_aed8020082acc482b9303a61b01a1a1a_Out_2_Float);
            surface.BaseColor = _Clamp_359788e8ad134650b865e76600af6700_Out_3_Vector3;
            surface.Emission = float3(0, 0, 0);
            surface.Alpha = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_A_7_Float;
            surface.AlphaClipThreshold = _Property_067d68a770a25e8f978ca090306a96d8_Out_0_Float;
            surface.AlphaClipThresholdShadow = _Property_4b59dc86107847d5b565cde1e47efb8f_Out_0_Float;
            surface.BentNormal = IN.TangentSpaceNormal;
            surface.Smoothness = _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float;
            surface.Occlusion = _Property_48e1c5285b48c78e8af19e38f4bd77f9_Out_0_Float;
            surface.NormalTS = _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3;
            surface.TransmissionMask = float(1);
            surface.Thickness = _Multiply_aed8020082acc482b9303a61b01a1a1a_Out_2_Float;
            surface.DiffusionProfileHash = _DiffusionProfileHash;
            return surface;
        }
        
            // --------------------------------------------------
            // Build Graph Inputs
            #ifdef HAVE_VFX_MODIFICATION
            #define VFX_SRP_ATTRIBUTES AttributesMesh
            #define VaryingsMeshType VaryingsMeshToPS
            #define VFX_SRP_VARYINGS VaryingsMeshType
            #define VFX_SRP_SURFACE_INPUTS FragInputs
            #endif
            
        VertexDescriptionInputs AttributesMeshToVertexDescriptionInputs(AttributesMesh input)
        {
            VertexDescriptionInputs output;
            ZERO_INITIALIZE(VertexDescriptionInputs, output);
        
            output.ObjectSpaceNormal =                          input.normalOS;
            output.ObjectSpaceTangent =                         input.tangentOS.xyz;
            output.ObjectSpacePosition =                        input.positionOS;
        
            return output;
        }
        
        VertexDescription GetVertexDescription(AttributesMesh input, float3 timeParameters
        #ifdef HAVE_VFX_MODIFICATION
            , AttributesElement element
        #endif
        )
        {
            // build graph inputs
            VertexDescriptionInputs vertexDescriptionInputs = AttributesMeshToVertexDescriptionInputs(input);
            // Override time parameters with used one (This is required to correctly handle motion vectors for vertex animation based on time)
        
            // evaluate vertex graph
        #ifdef HAVE_VFX_MODIFICATION
            GraphProperties properties;
            ZERO_INITIALIZE(GraphProperties, properties);
        
            // Fetch the vertex graph properties for the particle instance.
            GetElementVertexProperties(element, properties);
        
            VertexDescription vertexDescription = VertexDescriptionFunction(vertexDescriptionInputs, properties);
        #else
            VertexDescription vertexDescription = VertexDescriptionFunction(vertexDescriptionInputs);
        #endif
            return vertexDescription;
        
        }
        
        AttributesMesh ApplyMeshModification(AttributesMesh input, float3 timeParameters
        #ifdef USE_CUSTOMINTERP_SUBSTRUCT
            #ifdef TESSELLATION_ON
            , inout VaryingsMeshToDS varyings
            #else
            , inout VaryingsMeshToPS varyings
            #endif
        #endif
        #ifdef HAVE_VFX_MODIFICATION
                , AttributesElement element
        #endif
            )
        {
            VertexDescription vertexDescription = GetVertexDescription(input, timeParameters
        #ifdef HAVE_VFX_MODIFICATION
                , element
        #endif
            );
        
            // copy graph output to the results
            input.positionOS = vertexDescription.Position;
            input.normalOS = vertexDescription.Normal;
            input.tangentOS.xyz = vertexDescription.Tangent;
        
            
        
            return input;
        }
        
        #if defined(_ADD_CUSTOM_VELOCITY) // For shader graph custom velocity
        // Return precomputed Velocity in object space
        float3 GetCustomVelocity(AttributesMesh input
        #ifdef HAVE_VFX_MODIFICATION
            , AttributesElement element
        #endif
        )
        {
            VertexDescription vertexDescription = GetVertexDescription(input, _TimeParameters.xyz
        #ifdef HAVE_VFX_MODIFICATION
                , element
        #endif
            );
            return vertexDescription.CustomVelocity;
        }
        #endif
        
        FragInputs BuildFragInputs(VaryingsMeshToPS input)
        {
            FragInputs output;
            ZERO_INITIALIZE(FragInputs, output);
        
            // Init to some default value to make the computer quiet (else it output 'divide by zero' warning even if value is not used).
            // TODO: this is a really poor workaround, but the variable is used in a bunch of places
            // to compute normals which are then passed on elsewhere to compute other values...
            output.tangentToWorld = k_identity3x3;
            output.positionSS = input.positionCS;       // input.positionCS is SV_Position
        
            output.positionRWS =                input.positionRWS;
            output.texCoord0 =                  input.texCoord0;
        
        #ifdef HAVE_VFX_MODIFICATION
            // FragInputs from VFX come from two places: Interpolator or CBuffer.
        #if VFX_USE_GRAPH_VALUES
            uint instanceActiveIndex = asuint(UNITY_ACCESS_INSTANCED_PROP(PerInstance, _InstanceActiveIndex));
            /* WARNING: $splice Could not find named fragment 'VFXLoadGraphValues' */
        #endif
        
            /* WARNING: $splice Could not find named fragment 'VFXSetFragInputs' */
        
        #endif
        
            // splice point to copy custom interpolator fields from varyings to frag inputs
            
        
            return output;
        }
        
        // existing HDRP code uses the combined function to go directly from packed to frag inputs
        FragInputs UnpackVaryingsMeshToFragInputs(PackedVaryingsMeshToPS input)
        {
            UNITY_SETUP_INSTANCE_ID(input);
        #if defined(HAVE_VFX_MODIFICATION) && defined(UNITY_INSTANCING_ENABLED)
            unity_InstanceID = input.instanceID;
        #endif
            VaryingsMeshToPS unpacked = UnpackVaryingsMeshToPS(input);
            return BuildFragInputs(unpacked);
        }
            SurfaceDescriptionInputs FragInputsToSurfaceDescriptionInputs(FragInputs input, float3 viewWS)
        {
            SurfaceDescriptionInputs output;
            ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
        
            #if defined(SHADER_STAGE_RAY_TRACING)
            #else
            #endif
            output.TangentSpaceNormal =                         float3(0.0f, 0.0f, 1.0f);
            output.AbsoluteWorldSpacePosition =                 GetAbsolutePositionWS(input.positionRWS);
        
        #if UNITY_UV_STARTS_AT_TOP
        #else
        #endif
        
        
            output.uv0 =                                        input.texCoord0;
        
            // splice point to copy frag inputs custom interpolator pack into the SDI
            
        
            return output;
        }
        
            // --------------------------------------------------
            // Build Surface Data (Specific Material)
        
        void ApplyDecalToSurfaceDataNoNormal(DecalSurfaceData decalSurfaceData, inout SurfaceData surfaceData);
        
        void ApplyDecalAndGetNormal(FragInputs fragInputs, PositionInputs posInput, SurfaceDescription surfaceDescription,
            inout SurfaceData surfaceData)
        {
            float3 doubleSidedConstants = GetDoubleSidedConstants();
        
        #ifdef DECAL_NORMAL_BLENDING
            // SG nodes don't ouptut surface gradients, so if decals require surf grad blending, we have to convert
            // the normal to gradient before applying the decal. We then have to resolve the gradient back to world space
            float3 normalTS;
        
            normalTS = SurfaceGradientFromTangentSpaceNormalAndFromTBN(surfaceDescription.NormalTS,
            fragInputs.tangentToWorld[0], fragInputs.tangentToWorld[1]);
        
        
            #if HAVE_DECALS
            if (_EnableDecals)
            {
                float alpha = 1.0;
                alpha = surfaceDescription.Alpha;
        
                DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                ApplyDecalToSurfaceNormal(decalSurfaceData, fragInputs.tangentToWorld[2], normalTS);
                ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
            }
            #endif
        
            GetNormalWS_SG(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);
        #else
            // normal delivered to master node
            GetNormalWS(fragInputs, surfaceDescription.NormalTS, surfaceData.normalWS, doubleSidedConstants);
        
            #if HAVE_DECALS
            if (_EnableDecals)
            {
                float alpha = 1.0;
                alpha = surfaceDescription.Alpha;
        
                // Both uses and modifies 'surfaceData.normalWS'.
                DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                ApplyDecalToSurfaceNormal(decalSurfaceData, surfaceData.normalWS.xyz);
                ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
            }
            #endif
        #endif
        }
        void BuildSurfaceData(FragInputs fragInputs, inout SurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
        {
            ZERO_INITIALIZE(SurfaceData, surfaceData);
        
            // specularOcclusion need to be init ahead of decal to quiet the compiler that modify the SurfaceData struct
            // however specularOcclusion can come from the graph, so need to be init here so it can be override.
            surfaceData.specularOcclusion = 1.0;
        
            surfaceData.baseColor =                 surfaceDescription.BaseColor;
            surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
            surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
            surfaceData.transmissionMask =          surfaceDescription.TransmissionMask;
            surfaceData.thickness =                 surfaceDescription.Thickness;
            surfaceData.diffusionProfileHash =      asuint(surfaceDescription.DiffusionProfileHash);
        
            #if defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE) || defined(_REFRACTION_THIN)
                if (_EnableSSRefraction)
                {
        
                    surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                    surfaceDescription.Alpha = 1.0;
                }
                else
                {
                    surfaceData.ior = 1.0;
                    surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                    surfaceData.atDistance = 1.0;
                    surfaceData.transmittanceMask = 0.0;
                    surfaceDescription.Alpha = 1.0;
                }
            #else
                surfaceData.ior = 1.0;
                surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                surfaceData.atDistance = 1.0;
                surfaceData.transmittanceMask = 0.0;
            #endif
        
            // These static material feature allow compile time optimization
            surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
            #ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
            #endif
        
            #ifdef _MATERIAL_FEATURE_TRANSMISSION
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
            #endif
        
            #ifdef _MATERIAL_FEATURE_ANISOTROPY
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
        
                // Initialize the normal to something non-zero to avoid a div-zero warning for anisotropy.
                surfaceData.normalWS = float3(0, 1, 0);
            #endif
        
            #ifdef _MATERIAL_FEATURE_IRIDESCENCE
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
            #endif
        
            #ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
            #endif
        
            #ifdef _MATERIAL_FEATURE_CLEAR_COAT
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
            #endif
        
            #if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                // Require to have setup baseColor
                // Reproduce the energy conservation done in legacy Unity. Not ideal but better for compatibility and users can unchek it
                surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
            #endif
        
            float3 doubleSidedConstants = GetDoubleSidedConstants();
        
            ApplyDecalAndGetNormal(fragInputs, posInput, surfaceDescription, surfaceData);
        
            surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
        
            surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
        
        
            bentNormalWS = surfaceData.normalWS;
        
            surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);
        
            #ifdef DEBUG_DISPLAY
                if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                {
                    // TODO: need to update mip info
                    surfaceData.metallic = 0;
                }
        
                // We need to call ApplyDebugToSurfaceData after filling the surfarcedata and before filling builtinData
                // as it can modify attribute use for static lighting
                ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
            #endif
        
            // By default we use the ambient occlusion with Tri-ace trick (apply outside) for specular occlusion.
            // If user provide bent normal then we process a better term
            #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                // Just use the value passed through via the slot (not active otherwise)
            #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                // If we have bent normal and ambient occlusion, process a specular occlusion
                surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
            #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
                surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
            #endif
        
            #if defined(_ENABLE_GEOMETRIC_SPECULAR_AA) && !defined(SHADER_STAGE_RAY_TRACING)
                surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
            #endif
        }
        
            // --------------------------------------------------
            // Get Surface And BuiltinData
        
            void GetSurfaceAndBuiltinData(FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData RAY_TRACING_OPTIONAL_PARAMETERS)
            {
                // Don't dither if displaced tessellation (we're fading out the displacement instead to match the next LOD)
                #if !defined(SHADER_STAGE_RAY_TRACING) && !defined(_TESSELLATION_DISPLACEMENT)
                #ifdef LOD_FADE_CROSSFADE // enable dithering LOD transition if user select CrossFade transition in LOD group
                LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
                #endif
                #endif
        
                #ifndef SHADER_UNLIT
                #ifdef _DOUBLESIDED_ON
                    float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
                #else
                    float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
                #endif
        
                ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants); // Apply double sided flip on the vertex normal
                #endif // SHADER_UNLIT
        
                SurfaceDescriptionInputs surfaceDescriptionInputs = FragInputsToSurfaceDescriptionInputs(fragInputs, V);
        
                #if defined(HAVE_VFX_MODIFICATION)
                GraphProperties properties;
                ZERO_INITIALIZE(GraphProperties, properties);
        
                GetElementPixelProperties(fragInputs, properties);
        
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs, properties);
                #else
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs);
                #endif
        
                // Perform alpha test very early to save performance (a killed pixel will not sample textures)
                // TODO: split graph evaluation to grab just alpha dependencies first? tricky..
                #ifdef _ALPHATEST_ON
                    float alphaCutoff = surfaceDescription.AlphaClipThreshold;
                    #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
                    // The TransparentDepthPrepass is also used with SSR transparent.
                    // If an artists enable transaprent SSR but not the TransparentDepthPrepass itself, then we use AlphaClipThreshold
                    // otherwise if TransparentDepthPrepass is enabled we use AlphaClipThresholdDepthPrepass
                    #elif SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_POSTPASS
                    // DepthPostpass always use its own alpha threshold
                    alphaCutoff = surfaceDescription.AlphaClipThresholdDepthPostpass;
                    #elif (SHADERPASS == SHADERPASS_SHADOWS) || (SHADERPASS == SHADERPASS_RAYTRACING_VISIBILITY)
                    // If use shadow threshold isn't enable we don't allow any test
                    #endif
        
                    GENERIC_ALPHA_TEST(surfaceDescription.Alpha, alphaCutoff);
                #endif
        
                #if !defined(SHADER_STAGE_RAY_TRACING) && _DEPTHOFFSET_ON
                ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
                #endif
        
                #ifndef SHADER_UNLIT
                float3 bentNormalWS;
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS);
        
                #ifdef FRAG_INPUTS_USE_TEXCOORD1
                    float4 lightmapTexCoord1 = fragInputs.texCoord1;
                #else
                    float4 lightmapTexCoord1 = float4(0,0,0,0);
                #endif
        
                #ifdef FRAG_INPUTS_USE_TEXCOORD2
                    float4 lightmapTexCoord2 = fragInputs.texCoord2;
                #else
                    float4 lightmapTexCoord2 = float4(0,0,0,0);
                #endif
        
                // Builtin Data
                // For back lighting we use the oposite vertex normal
                InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], lightmapTexCoord1, lightmapTexCoord2, builtinData);
        
                #else
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData);
        
                ZERO_BUILTIN_INITIALIZE(builtinData); // No call to InitBuiltinData as we don't have any lighting
                builtinData.opacity = surfaceDescription.Alpha;
        
                #if defined(DEBUG_DISPLAY)
                    // Light Layers are currently not used for the Unlit shader (because it is not lit)
                    // But Unlit objects do cast shadows according to their rendering layer mask, which is what we want to
                    // display in the light layers visualization mode, therefore we need the renderingLayers
                    builtinData.renderingLayers = GetMeshRenderingLightLayer();
                #endif
        
                #endif // SHADER_UNLIT
        
                #ifdef _ALPHATEST_ON
                    // Used for sharpening by alpha to mask - Alpha to covertage is only used with depth only and forward pass (no shadow pass, no transparent pass)
                    builtinData.alphaClipTreshold = alphaCutoff;
                #endif
        
                // override sampleBakedGI - not used by Unlit
        
                builtinData.emissiveColor = surfaceDescription.Emission;
        
                // Note this will not fully work on transparent surfaces (can check with _SURFACE_TYPE_TRANSPARENT define)
                // We will always overwrite vt feeback with the nearest. So behind transparent surfaces vt will not be resolved
                // This is a limitation of the current MRT approach.
                #ifdef UNITY_VIRTUAL_TEXTURING
                #endif
        
                #if _DEPTHOFFSET_ON
                builtinData.depthOffset = surfaceDescription.DepthOffset;
                #endif
        
                // TODO: We should generate distortion / distortionBlur for non distortion pass
                #if (SHADERPASS == SHADERPASS_DISTORTION)
                builtinData.distortion = surfaceDescription.Distortion;
                builtinData.distortionBlur = surfaceDescription.DistortionBlur;
                #endif
        
                #ifndef SHADER_UNLIT
                // PostInitBuiltinData call ApplyDebugToBuiltinData
                PostInitBuiltinData(V, posInput, surfaceData, builtinData);
                #else
                ApplyDebugToBuiltinData(builtinData);
                #endif
        
                RAY_TRACING_OPTIONAL_ALPHA_TEST_PASS
            }
        
            // --------------------------------------------------
            // Main
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPassConstant.hlsl"
        
            // --------------------------------------------------
            // Visual Effect Vertex Invocations
        
        	#ifdef HAVE_VFX_MODIFICATION
        	#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/VisualEffectVertex.hlsl"
        	#endif
        
            ENDHLSL
        }
    }
    SubShader
    {
        Tags
        {
            "RenderPipeline"="HDRenderPipeline"
            "RenderType"="HDLitShader"
            "Queue"="AlphaTest+25"
            "DisableBatching"="LODFading"
            "ShaderGraphShader"="true"
            "ShaderGraphTargetId"="HDLitSubTarget"
        }
        Pass
        {
            Name "IndirectDXR"
            Tags
            {
                "LightMode" = "IndirectDXR"
            }
        
            // Render State
            // RenderState: <None>
        
            // Debug
            // <None>
        
            // --------------------------------------------------
            // Pass
        
            HLSLPROGRAM
        
            // Pragmas
            #pragma target 5.0
        #pragma raytracing surface_shader
        #pragma only_renderers d3d11 xboxseries ps5
        
            // Keywords
            #pragma multi_compile _ MULTI_BOUNCE_INDIRECT
        #pragma shader_feature_local _ _ALPHATEST_ON
        #pragma shader_feature _ _SURFACE_TYPE_TRANSPARENT
        #pragma shader_feature_local _ _DOUBLESIDED_ON
        #pragma shader_feature_local _ _ADD_PRECOMPUTED_VELOCITY
        #pragma shader_feature_local _ _TRANSPARENT_WRITES_MOTION_VEC
        #pragma shader_feature_local_fragment _ _ENABLE_FOG_ON_TRANSPARENT
        #pragma multi_compile _ DEBUG_DISPLAY
        #pragma shader_feature_local_fragment _ _DISABLE_DECALS
        #pragma shader_feature_local_raytracing _ _DISABLE_DECALS
        #pragma shader_feature_local_fragment _ _DISABLE_SSR
        #pragma shader_feature_local_raytracing _ _DISABLE_SSR
        #pragma shader_feature_local_fragment _ _DISABLE_SSR_TRANSPARENT
        #pragma shader_feature_local_raytracing _ _DISABLE_SSR_TRANSPARENT
        #pragma multi_compile _ LIGHTMAP_ON
        #pragma multi_compile _ DIRLIGHTMAP_COMBINED
        #pragma multi_compile_fragment PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2
        #pragma multi_compile_raytracing PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2
        #pragma multi_compile _ DYNAMICLIGHTMAP_ON
        #pragma shader_feature_local _ _REFRACTION_PLANE _REFRACTION_SPHERE _REFRACTION_THIN
            // GraphKeywords: <None>
        
            // For custom interpolators to inject a substruct definition before FragInputs definition,
            // allowing for FragInputs to capture CI's intended for ShaderGraph's SDI.
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPreInclude' */
        
        
            // TODO: Merge FragInputsVFX substruct with CustomInterpolators.
        	#ifdef HAVE_VFX_MODIFICATION
        	struct FragInputsVFX
            {
                /* WARNING: $splice Could not find named fragment 'FragInputsVFX' */
            };
            #endif
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/GeometricTools.hlsl" // Required by Tessellation.hlsl
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Tessellation.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl" // Required to be include before we include properties as it define DECLARE_STACK_CB
            // Always include Shader Graph version
            // Always include last to avoid double macros
            #include "Packages/com.unity.shadergraph/ShaderGraphLibrary/Functions.hlsl" // Need to be here for Gradient struct definition
        
            // --------------------------------------------------
            // Defines
        
            // Attribute
            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TANGENT
            #define ATTRIBUTES_NEED_TEXCOORD0
            #define ATTRIBUTES_NEED_TEXCOORD1
            #define ATTRIBUTES_NEED_TEXCOORD2
            #define VARYINGS_NEED_POSITION_WS
            #define VARYINGS_NEED_TANGENT_TO_WORLD
            #define VARYINGS_NEED_TEXCOORD0
            #define VARYINGS_NEED_TEXCOORD1
            #define VARYINGS_NEED_TEXCOORD2
        
        
            //Strip down the FragInputs.hlsl (on graphics), so we can only optimize the interpolators we use.
            //if by accident something requests contents of FragInputs.hlsl, it will be caught as a compiler error
            //Frag inputs stripping is only enabled when FRAG_INPUTS_ENABLE_STRIPPING is set
            #if !defined(SHADER_STAGE_RAY_TRACING) && SHADERPASS != SHADERPASS_RAYTRACING_GBUFFER && SHADERPASS != SHADERPASS_FULL_SCREEN_DEBUG
            #define FRAG_INPUTS_ENABLE_STRIPPING
            #endif
            #define FRAG_INPUTS_USE_TEXCOORD0
            #define FRAG_INPUTS_USE_TEXCOORD1
            #define FRAG_INPUTS_USE_TEXCOORD2
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
        
        
        
            #define SHADERPASS SHADERPASS_RAYTRACING_INDIRECT
        #define SHADOW_LOW
        #define RAYTRACING_SHADER_GRAPH_RAYTRACED
        #define HAS_LIGHTLOOP 1
        
        
            // Following two define are a workaround introduce in 10.1.x for RaytracingQualityNode
            // The ShaderGraph don't support correctly migration of this node as it serialize all the node data
            // in the json file making it impossible to uprgrade. Until we get a fix, we do a workaround here
            // to still allow us to rename the field and keyword of this node without breaking existing code.
            #ifdef RAYTRACING_SHADER_GRAPH_DEFAULT
            #define RAYTRACING_SHADER_GRAPH_HIGH
            #endif
        
            #ifdef RAYTRACING_SHADER_GRAPH_RAYTRACED
            #define RAYTRACING_SHADER_GRAPH_LOW
            #endif
            // end
        
            #ifndef SHADER_UNLIT
            // We need isFrontFace when using double sided - it is not required for unlit as in case of unlit double sided only drive the cullmode
            // VARYINGS_NEED_CULLFACE can be define by VaryingsMeshToPS.FaceSign input if a IsFrontFace Node is included in the shader graph.
            #if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
                #define VARYINGS_NEED_CULLFACE
            #endif
            #endif
        
            // Specific Material Define
        #define _MATERIAL_FEATURE_TRANSMISSION 1
        #define _AMBIENT_OCCLUSION 1
        #define _SPECULAR_OCCLUSION_FROM_AO 1
        #define _ENERGY_CONSERVING_SPECULAR 1
        
        // If we use subsurface scattering, enable output split lighting (for forward pass)
        #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
            #define OUTPUT_SPLIT_LIGHTING
        #endif
        
        // This shader support recursive rendering for raytracing
        #define HAVE_RECURSIVE_RENDERING
        
        // In Path Tracing, For all single-sided, refractive materials, we want to force a thin refraction model
        #if (SHADERPASS == SHADERPASS_PATH_TRACING) && !defined(_DOUBLESIDED_ON) && (defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE))
            #undef  _REFRACTION_PLANE
            #undef  _REFRACTION_SPHERE
            #define _REFRACTION_THIN
        #endif
            // Caution: we can use the define SHADER_UNLIT onlit after the above Material include as it is the Unlit template who define it
        
            // To handle SSR on transparent correctly with a possibility to enable/disable it per framesettings
            // we should have a code like this:
            // if !defined(_DISABLE_SSR_TRANSPARENT)
            // pragma multi_compile _ WRITE_NORMAL_BUFFER
            // endif
            // i.e we enable the multicompile only if we can receive SSR or not, and then C# code drive
            // it based on if SSR transparent in frame settings and not (and stripper can strip it).
            // this is currently not possible with our current preprocessor as _DISABLE_SSR_TRANSPARENT is a keyword not a define
            // so instead we used this and chose to pay the extra cost of normal write even if SSR transaprent is disabled.
            // Ideally the shader graph generator should handle it but condition below can't be handle correctly for now.
            #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
            #if !defined(_DISABLE_SSR_TRANSPARENT) && !defined(SHADER_UNLIT)
                #define WRITE_NORMAL_BUFFER
            #endif
            #endif
        
            #ifndef DEBUG_DISPLAY
                // In case of opaque we don't want to perform the alpha test, it is done in depth prepass and we use depth equal for ztest (setup from UI)
                // Don't do it with debug display mode as it is possible there is no depth prepass in this case
                #if !defined(_SURFACE_TYPE_TRANSPARENT)
                    #if SHADERPASS == SHADERPASS_FORWARD
                    #define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
                    #elif SHADERPASS == SHADERPASS_GBUFFER
                    #define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
                    #endif
                #endif
            #endif
        
            // Define _DEFERRED_CAPABLE_MATERIAL for shader capable to run in deferred pass
            #if defined(SHADER_LIT) && !defined(_SURFACE_TYPE_TRANSPARENT)
                #define _DEFERRED_CAPABLE_MATERIAL
            #endif
        
            // Translate transparent motion vector define
            #if defined(_TRANSPARENT_WRITES_MOTION_VEC) && defined(_SURFACE_TYPE_TRANSPARENT)
                #define _WRITE_TRANSPARENT_MOTION_VECTOR
            #endif
        
            // -- Graph Properties
            CBUFFER_START(UnityPerMaterial)
        float4 _DiffusionProfileAsset;
        float _DiffusionProfileHash;
        float4 _TrunkBaseColor;
        float4 _BarkBaseColor;
        float _Backface_Thickness_Mask_Threshold;
        float2 _Backface_Thickness_Mask_Remap;
        float _Backface_Brightness;
        float _Cross_Backface_Mask_Power;
        float _Backface_Saturation;
        float4 _HealthyColor;
        float4 _DryColor;
        float _AlphaCutoff;
        float _AlphaShadowThreshold;
        float4 _BaseColorMap_TexelSize;
        float4 _TilingOffset;
        float _HealthyandDryColorNoisePower;
        float4 _NormalMap_TexelSize;
        float _NormalScale;
        float _AORemapMax;
        float _SmoothnessRemapMax;
        float4 _Mask_TexelSize;
        float _Thickness;
        float _WindNormalInfluence;
        float4 _VertexNormalMultiply;
        float _ColorNoiseTilling;
        float _Trunk_Normal_Scale;
        float _Global_Base_Brightness;
        float _Trunk_Smoothness_Remap_Max;
        float4 _EmissionColor;
        float _UseShadowThreshold;
        float4 _DoubleSidedConstants;
        float _BlendMode;
        float _EnableBlendModePreserveSpecularLighting;
        float _RayTracing;
        float _RefractionModel;
        CBUFFER_END
        
        
        // Object and Global properties
        SAMPLER(SamplerState_Linear_Repeat);
        SAMPLER(SamplerState_Linear_Repeat_Aniso8);
        TEXTURE2D(_BaseColorMap);
        SAMPLER(sampler_BaseColorMap);
        TEXTURE2D(_NormalMap);
        SAMPLER(sampler_NormalMap);
        TEXTURE2D(_Mask);
        SAMPLER(sampler_Mask);
        
            // -- Property used by ScenePickingPass
            #ifdef SCENEPICKINGPASS
            float4 _SelectionID;
            #endif
        
            // -- Properties used by SceneSelectionPass
            #ifdef SCENESELECTIONPASS
            int _ObjectId;
            int _PassValue;
            #endif
        
            // Includes
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/RaytracingMacros.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/ShaderVariablesRaytracing.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/ShaderVariablesRaytracingLightLoop.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/RaytracingIntersection.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/Lighting.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoopDef.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitRaytracing.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/RaytracingLightLoop.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/RayTracingCommon.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Hashes.hlsl"
        
            // --------------------------------------------------
            // Structs and Packing
        
            struct SurfaceDescriptionInputs
        {
             float3 TangentSpaceNormal;
             float3 AbsoluteWorldSpacePosition;
             float4 uv0;
        };
        
            //Interpolator Packs: <None>
        
            // --------------------------------------------------
            // Graph
        
        
            // Graph Functions
            
        void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
        {
            Out = UV * Tiling + Offset;
        }
        
        void Unity_Multiply_float4_float4(float4 A, float4 B, out float4 Out)
        {
            Out = A * B;
        }
        
        void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
        {
            Out = lerp(A, B, T);
        }
        
        float Unity_SimpleNoise_ValueNoise_LegacySine_float (float2 uv)
        {
            float2 i = floor(uv);
            float2 f = frac(uv);
            f = f * f * (3.0 - 2.0 * f);
            uv = abs(frac(uv) - 0.5);
            float2 c0 = i + float2(0.0, 0.0);
            float2 c1 = i + float2(1.0, 0.0);
            float2 c2 = i + float2(0.0, 1.0);
            float2 c3 = i + float2(1.0, 1.0);
            float r0; Hash_LegacySine_2_1_float(c0, r0);
            float r1; Hash_LegacySine_2_1_float(c1, r1);
            float r2; Hash_LegacySine_2_1_float(c2, r2);
            float r3; Hash_LegacySine_2_1_float(c3, r3);
            float bottomOfGrid = lerp(r0, r1, f.x);
            float topOfGrid = lerp(r2, r3, f.x);
            float t = lerp(bottomOfGrid, topOfGrid, f.y);
            return t;
        }
        
        void Unity_SimpleNoise_LegacySine_float(float2 UV, float Scale, out float Out)
        {
            float freq, amp;
            Out = 0.0f;
            freq = pow(2.0, float(0));
            amp = pow(0.5, float(3-0));
            Out += Unity_SimpleNoise_ValueNoise_LegacySine_float(float2(UV.xy*(Scale/freq)))*amp;
            freq = pow(2.0, float(1));
            amp = pow(0.5, float(3-1));
            Out += Unity_SimpleNoise_ValueNoise_LegacySine_float(float2(UV.xy*(Scale/freq)))*amp;
            freq = pow(2.0, float(2));
            amp = pow(0.5, float(3-2));
            Out += Unity_SimpleNoise_ValueNoise_LegacySine_float(float2(UV.xy*(Scale/freq)))*amp;
        }
        
        void Unity_Absolute_float(float In, out float Out)
        {
            Out = abs(In);
        }
        
        void Unity_Power_float(float A, float B, out float Out)
        {
            Out = pow(A, B);
        }
        
        void Unity_Clamp_float(float In, float Min, float Max, out float Out)
        {
            Out = clamp(In, Min, Max);
        }
        
        void Unity_Saturation_float(float3 In, float Saturation, out float3 Out)
        {
            float luma = dot(In, float3(0.2126729, 0.7151522, 0.0721750));
            Out =  luma.xxx + Saturation.xxx * (In - luma.xxx);
        }
        
        void Unity_Blend_Screen_float3(float3 Base, float3 Blend, out float3 Out, float Opacity)
        {
            Out = 1.0 - (1.0 - Blend) * (1.0 - Base);
            Out = lerp(Base, Out, Opacity);
        }
        
        void Unity_Clamp_float3(float3 In, float3 Min, float3 Max, out float3 Out)
        {
            Out = clamp(In, Min, Max);
        }
        
        void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
        {
            Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
        }
        
        void Unity_OneMinus_float(float In, out float Out)
        {
            Out = 1 - In;
        }
        
        void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
        {
            Out = lerp(A, B, T);
        }
        
        void Unity_Multiply_float3_float3(float3 A, float3 B, out float3 Out)
        {
            Out = A * B;
        }
        
        void Unity_Lerp_float(float A, float B, float T, out float Out)
        {
            Out = lerp(A, B, T);
        }
        
        void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
        {
            Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
        }
        
        void Unity_Multiply_float_float(float A, float B, out float Out)
        {
            Out = A * B;
        }
        
            // Graph Vertex
            // GraphVertex: <None>
        
            // Graph Pixel
            struct SurfaceDescription
        {
            float3 BaseColor;
            float3 Emission;
            float Alpha;
            float AlphaClipThreshold;
            float AlphaClipThresholdShadow;
            float3 BentNormal;
            float Smoothness;
            float Occlusion;
            float3 NormalTS;
            float TransmissionMask;
            float Thickness;
            float DiffusionProfileHash;
        };
        
        SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
        {
            SurfaceDescription surface = (SurfaceDescription)0;
            UnityTexture2D _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_BaseColorMap);
            float4 _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4 = _TilingOffset;
            float _Split_60538633130155809820b3185c81057f_R_1_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[0];
            float _Split_60538633130155809820b3185c81057f_G_2_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[1];
            float _Split_60538633130155809820b3185c81057f_B_3_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[2];
            float _Split_60538633130155809820b3185c81057f_A_4_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[3];
            float2 _Vector2_83b2ea7a32ab548fb8c20dce14204561_Out_0_Vector2 = float2(_Split_60538633130155809820b3185c81057f_R_1_Float, _Split_60538633130155809820b3185c81057f_G_2_Float);
            float2 _Vector2_188e122ac0c7888f9f5fbde73f9edd75_Out_0_Vector2 = float2(_Split_60538633130155809820b3185c81057f_B_3_Float, _Split_60538633130155809820b3185c81057f_A_4_Float);
            float2 _TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2;
            Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_83b2ea7a32ab548fb8c20dce14204561_Out_0_Vector2, _Vector2_188e122ac0c7888f9f5fbde73f9edd75_Out_0_Vector2, _TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2);
            float4 _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.tex, _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.samplerstate, _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_R_4_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.r;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_G_5_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.g;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_B_6_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.b;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_A_7_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.a;
            float4 _Property_d37c4e2cc4f949f581f76dcb73d50e87_Out_0_Vector4 = _BarkBaseColor;
            float4 _Multiply_e4794b5d7e19433599f2b4e150644bea_Out_2_Vector4;
            Unity_Multiply_float4_float4(_SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4, _Property_d37c4e2cc4f949f581f76dcb73d50e87_Out_0_Vector4, _Multiply_e4794b5d7e19433599f2b4e150644bea_Out_2_Vector4);
            float4 _Property_0f3c5f287e8145bc95fd52cfba4b8fcc_Out_0_Vector4 = _TrunkBaseColor;
            float4 _Multiply_2453fa0c275a46cca1a866a080d90ddf_Out_2_Vector4;
            Unity_Multiply_float4_float4(_SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4, _Property_0f3c5f287e8145bc95fd52cfba4b8fcc_Out_0_Vector4, _Multiply_2453fa0c275a46cca1a866a080d90ddf_Out_2_Vector4);
            UnityTexture2D _Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_Mask);
            float4 _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_R_4_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.r;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.g;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_B_6_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.b;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_A_7_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.a;
            float4 _Lerp_9056381ab3034355b45968f0d1ff2f1a_Out_3_Vector4;
            Unity_Lerp_float4(_Multiply_e4794b5d7e19433599f2b4e150644bea_Out_2_Vector4, _Multiply_2453fa0c275a46cca1a866a080d90ddf_Out_2_Vector4, (_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_B_6_Float.xxxx), _Lerp_9056381ab3034355b45968f0d1ff2f1a_Out_3_Vector4);
            float4 _Property_944e0c60198849afb235eb9940da5dd9_Out_0_Vector4 = _DryColor;
            float4 _Property_621f9271d8734c81b9001229b0296656_Out_0_Vector4 = _HealthyColor;
            float _Split_99caf98864a9e980997a02cedd282dd0_R_1_Float = IN.AbsoluteWorldSpacePosition[0];
            float _Split_99caf98864a9e980997a02cedd282dd0_G_2_Float = IN.AbsoluteWorldSpacePosition[1];
            float _Split_99caf98864a9e980997a02cedd282dd0_B_3_Float = IN.AbsoluteWorldSpacePosition[2];
            float _Split_99caf98864a9e980997a02cedd282dd0_A_4_Float = 0;
            float2 _Vector2_ddc95fa04fb4858daf984190322978b9_Out_0_Vector2 = float2(_Split_99caf98864a9e980997a02cedd282dd0_R_1_Float, _Split_99caf98864a9e980997a02cedd282dd0_B_3_Float);
            float _Property_4d778d1ae72a416b96bf6cb1986a7d5d_Out_0_Float = _ColorNoiseTilling;
            float _SimpleNoise_96327065e2b0428f83e25f93c7e5a748_Out_2_Float;
            Unity_SimpleNoise_LegacySine_float(_Vector2_ddc95fa04fb4858daf984190322978b9_Out_0_Vector2, _Property_4d778d1ae72a416b96bf6cb1986a7d5d_Out_0_Float, _SimpleNoise_96327065e2b0428f83e25f93c7e5a748_Out_2_Float);
            float _Absolute_3da7acf58a45403cad1e7c432d78f027_Out_1_Float;
            Unity_Absolute_float(_SimpleNoise_96327065e2b0428f83e25f93c7e5a748_Out_2_Float, _Absolute_3da7acf58a45403cad1e7c432d78f027_Out_1_Float);
            float _Property_0dff529d33cb42e388c9d874effe6e19_Out_0_Float = _HealthyandDryColorNoisePower;
            float _Power_77b7c0eba07f4b9da46f2fa461c49201_Out_2_Float;
            Unity_Power_float(_Absolute_3da7acf58a45403cad1e7c432d78f027_Out_1_Float, _Property_0dff529d33cb42e388c9d874effe6e19_Out_0_Float, _Power_77b7c0eba07f4b9da46f2fa461c49201_Out_2_Float);
            float _Clamp_efb2cde09ec64325a2f78a848b0827b2_Out_3_Float;
            Unity_Clamp_float(_Power_77b7c0eba07f4b9da46f2fa461c49201_Out_2_Float, float(0), float(1), _Clamp_efb2cde09ec64325a2f78a848b0827b2_Out_3_Float);
            float4 _Lerp_b995ffde83d24283ac272745617fa60c_Out_3_Vector4;
            Unity_Lerp_float4(_Property_944e0c60198849afb235eb9940da5dd9_Out_0_Vector4, _Property_621f9271d8734c81b9001229b0296656_Out_0_Vector4, (_Clamp_efb2cde09ec64325a2f78a848b0827b2_Out_3_Float.xxxx), _Lerp_b995ffde83d24283ac272745617fa60c_Out_3_Vector4);
            float4 _Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4;
            Unity_Multiply_float4_float4(_SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4, _Lerp_b995ffde83d24283ac272745617fa60c_Out_3_Vector4, _Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4);
            float _Property_a52cc4db448642208842be98e18796fb_Out_0_Float = _Backface_Saturation;
            float3 _Saturation_1a5be2ae12084c59883f7d315d09cd80_Out_2_Vector3;
            Unity_Saturation_float((_Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4.xyz), _Property_a52cc4db448642208842be98e18796fb_Out_0_Float, _Saturation_1a5be2ae12084c59883f7d315d09cd80_Out_2_Vector3);
            float _Property_547f6c365f204d14a383183448811966_Out_0_Float = _Backface_Brightness;
            float3 _Blend_9d43ee127ca04ec09dd9151a833d8d61_Out_2_Vector3;
            Unity_Blend_Screen_float3(_Saturation_1a5be2ae12084c59883f7d315d09cd80_Out_2_Vector3, (_Property_547f6c365f204d14a383183448811966_Out_0_Float.xxx), _Blend_9d43ee127ca04ec09dd9151a833d8d61_Out_2_Vector3, float(1));
            float3 _Clamp_f7855b2ac55c4d43b25a4a1e56dbbbf7_Out_3_Vector3;
            Unity_Clamp_float3(_Blend_9d43ee127ca04ec09dd9151a833d8d61_Out_2_Vector3, float3(0, 0, 0), float3(1, 1, 1), _Clamp_f7855b2ac55c4d43b25a4a1e56dbbbf7_Out_3_Vector3);
            float2 _Property_b0a46b9c34574501a2f500d2f5745793_Out_0_Vector2 = _Backface_Thickness_Mask_Remap;
            float _Remap_bbbefbf0fbaf41d8a6d07b465d45488f_Out_3_Float;
            Unity_Remap_float(_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_A_7_Float, float2 (0, 1), _Property_b0a46b9c34574501a2f500d2f5745793_Out_0_Vector2, _Remap_bbbefbf0fbaf41d8a6d07b465d45488f_Out_3_Float);
            float _Clamp_6ac81c92e9a64e958055eca61b82e791_Out_3_Float;
            Unity_Clamp_float(_Remap_bbbefbf0fbaf41d8a6d07b465d45488f_Out_3_Float, float(0), float(1), _Clamp_6ac81c92e9a64e958055eca61b82e791_Out_3_Float);
            float _Property_3a1e9cc1507b46b2af88ab75dfc37b44_Out_0_Float = _Backface_Thickness_Mask_Threshold;
            float _Power_1fccfa34ffba46ceac25f1238aa4e1b5_Out_2_Float;
            Unity_Power_float(_Clamp_6ac81c92e9a64e958055eca61b82e791_Out_3_Float, _Property_3a1e9cc1507b46b2af88ab75dfc37b44_Out_0_Float, _Power_1fccfa34ffba46ceac25f1238aa4e1b5_Out_2_Float);
            float _Clamp_e55b4d1f4fda4e97bcfe15cfe9c6fd05_Out_3_Float;
            Unity_Clamp_float(_Power_1fccfa34ffba46ceac25f1238aa4e1b5_Out_2_Float, float(0), float(1), _Clamp_e55b4d1f4fda4e97bcfe15cfe9c6fd05_Out_3_Float);
            float _OneMinus_16a8ddad0aee4e5ca379aef306048984_Out_1_Float;
            Unity_OneMinus_float(_Clamp_e55b4d1f4fda4e97bcfe15cfe9c6fd05_Out_3_Float, _OneMinus_16a8ddad0aee4e5ca379aef306048984_Out_1_Float);
            float3 _Lerp_9c8a6dd2927446309acc26d9f217de99_Out_3_Vector3;
            Unity_Lerp_float3((_Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4.xyz), _Clamp_f7855b2ac55c4d43b25a4a1e56dbbbf7_Out_3_Vector3, (_OneMinus_16a8ddad0aee4e5ca379aef306048984_Out_1_Float.xxx), _Lerp_9c8a6dd2927446309acc26d9f217de99_Out_3_Vector3);
            float _Absolute_98dfaf1178334fc287f9e4d4b5f3a0f0_Out_1_Float;
            Unity_Absolute_float(_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_R_4_Float, _Absolute_98dfaf1178334fc287f9e4d4b5f3a0f0_Out_1_Float);
            float _Property_08b97a5bb158439e9155434b6637ac33_Out_0_Float = _Cross_Backface_Mask_Power;
            float _Power_c8f61d8af16945f9b82731ed18d38dd9_Out_2_Float;
            Unity_Power_float(_Absolute_98dfaf1178334fc287f9e4d4b5f3a0f0_Out_1_Float, _Property_08b97a5bb158439e9155434b6637ac33_Out_0_Float, _Power_c8f61d8af16945f9b82731ed18d38dd9_Out_2_Float);
            float _Clamp_c8b7bf714ebb484d8aa73d545b2f9d59_Out_3_Float;
            Unity_Clamp_float(_Power_c8f61d8af16945f9b82731ed18d38dd9_Out_2_Float, float(0), float(1), _Clamp_c8b7bf714ebb484d8aa73d545b2f9d59_Out_3_Float);
            float3 _Lerp_343d7507e4664bd7bc5108bcf0d55854_Out_3_Vector3;
            Unity_Lerp_float3(_Lerp_9c8a6dd2927446309acc26d9f217de99_Out_3_Vector3, (_Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4.xyz), (_Clamp_c8b7bf714ebb484d8aa73d545b2f9d59_Out_3_Float.xxx), _Lerp_343d7507e4664bd7bc5108bcf0d55854_Out_3_Vector3);
            float3 _Lerp_0d72c41eff034cfaaaf0208f4bf42433_Out_3_Vector3;
            Unity_Lerp_float3((_Lerp_9056381ab3034355b45968f0d1ff2f1a_Out_3_Vector4.xyz), _Lerp_343d7507e4664bd7bc5108bcf0d55854_Out_3_Vector3, (_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float.xxx), _Lerp_0d72c41eff034cfaaaf0208f4bf42433_Out_3_Vector3);
            float _Property_09c643c04af64fb18f3a77b935844ecc_Out_0_Float = _Global_Base_Brightness;
            float3 _Multiply_61b0f4818da94adfa23e13d8e3e376a8_Out_2_Vector3;
            Unity_Multiply_float3_float3(_Lerp_0d72c41eff034cfaaaf0208f4bf42433_Out_3_Vector3, (_Property_09c643c04af64fb18f3a77b935844ecc_Out_0_Float.xxx), _Multiply_61b0f4818da94adfa23e13d8e3e376a8_Out_2_Vector3);
            float3 _Clamp_359788e8ad134650b865e76600af6700_Out_3_Vector3;
            Unity_Clamp_float3(_Multiply_61b0f4818da94adfa23e13d8e3e376a8_Out_2_Vector3, float3(0, 0, 0), float3(1, 1, 1), _Clamp_359788e8ad134650b865e76600af6700_Out_3_Vector3);
            float _Property_067d68a770a25e8f978ca090306a96d8_Out_0_Float = _AlphaCutoff;
            float _Property_4b59dc86107847d5b565cde1e47efb8f_Out_0_Float = _AlphaShadowThreshold;
            float _Property_c35305c7157c4d3ba1db4ba61b2e2ebc_Out_0_Float = _Trunk_Smoothness_Remap_Max;
            float _Property_0edea7916ed7a189a62b0faf2c274601_Out_0_Float = _SmoothnessRemapMax;
            float _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float;
            Unity_Lerp_float(_Property_c35305c7157c4d3ba1db4ba61b2e2ebc_Out_0_Float, _Property_0edea7916ed7a189a62b0faf2c274601_Out_0_Float, _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float, _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float);
            float _Property_48e1c5285b48c78e8af19e38f4bd77f9_Out_0_Float = _AORemapMax;
            UnityTexture2D _Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_NormalMap);
            float4 _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.rgb = UnpackNormal(_SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4);
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_R_4_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.r;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_G_5_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.g;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_B_6_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.b;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_A_7_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.a;
            float _Property_b07156802a1240f7a8c14a272c5f1b36_Out_0_Float = _Trunk_Normal_Scale;
            float _Property_72e436a108ad64868e46d548c585c5f3_Out_0_Float = _NormalScale;
            float _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float;
            Unity_Lerp_float(_Property_b07156802a1240f7a8c14a272c5f1b36_Out_0_Float, _Property_72e436a108ad64868e46d548c585c5f3_Out_0_Float, _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float, _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float);
            float3 _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3;
            Unity_NormalStrength_float((_SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.xyz), _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float, _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3);
            float _Property_2fa2ab76399ae48aaf1180768279e6b9_Out_0_Float = _Thickness;
            float _Multiply_aed8020082acc482b9303a61b01a1a1a_Out_2_Float;
            Unity_Multiply_float_float(_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_A_7_Float, _Property_2fa2ab76399ae48aaf1180768279e6b9_Out_0_Float, _Multiply_aed8020082acc482b9303a61b01a1a1a_Out_2_Float);
            surface.BaseColor = _Clamp_359788e8ad134650b865e76600af6700_Out_3_Vector3;
            surface.Emission = float3(0, 0, 0);
            surface.Alpha = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_A_7_Float;
            surface.AlphaClipThreshold = _Property_067d68a770a25e8f978ca090306a96d8_Out_0_Float;
            surface.AlphaClipThresholdShadow = _Property_4b59dc86107847d5b565cde1e47efb8f_Out_0_Float;
            surface.BentNormal = IN.TangentSpaceNormal;
            surface.Smoothness = _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float;
            surface.Occlusion = _Property_48e1c5285b48c78e8af19e38f4bd77f9_Out_0_Float;
            surface.NormalTS = _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3;
            surface.TransmissionMask = float(1);
            surface.Thickness = _Multiply_aed8020082acc482b9303a61b01a1a1a_Out_2_Float;
            surface.DiffusionProfileHash = _DiffusionProfileHash;
            return surface;
        }
        
            // --------------------------------------------------
            // Build Graph Inputs
            #ifdef HAVE_VFX_MODIFICATION
            #define VFX_SRP_ATTRIBUTES AttributesMesh
            #define VaryingsMeshType VaryingsMeshToPS
            #define VFX_SRP_VARYINGS VaryingsMeshType
            #define VFX_SRP_SURFACE_INPUTS FragInputs
            #endif
            SurfaceDescriptionInputs FragInputsToSurfaceDescriptionInputs(FragInputs input, float3 viewWS)
        {
            SurfaceDescriptionInputs output;
            ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
        
            #if defined(SHADER_STAGE_RAY_TRACING)
            #else
            #endif
            output.TangentSpaceNormal =                         float3(0.0f, 0.0f, 1.0f);
            output.AbsoluteWorldSpacePosition =                 GetAbsolutePositionWS(input.positionRWS);
        
        #if UNITY_UV_STARTS_AT_TOP
        #else
        #endif
        
        
            output.uv0 =                                        input.texCoord0;
        
            // splice point to copy frag inputs custom interpolator pack into the SDI
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorCopyToSDI' */
        
            return output;
        }
        
            // --------------------------------------------------
            // Build Surface Data (Specific Material)
        
        void ApplyDecalToSurfaceDataNoNormal(DecalSurfaceData decalSurfaceData, inout SurfaceData surfaceData);
        
        void ApplyDecalAndGetNormal(FragInputs fragInputs, PositionInputs posInput, SurfaceDescription surfaceDescription,
            inout SurfaceData surfaceData)
        {
            float3 doubleSidedConstants = GetDoubleSidedConstants();
        
        #ifdef DECAL_NORMAL_BLENDING
            // SG nodes don't ouptut surface gradients, so if decals require surf grad blending, we have to convert
            // the normal to gradient before applying the decal. We then have to resolve the gradient back to world space
            float3 normalTS;
        
            normalTS = SurfaceGradientFromTangentSpaceNormalAndFromTBN(surfaceDescription.NormalTS,
            fragInputs.tangentToWorld[0], fragInputs.tangentToWorld[1]);
        
        
            #if HAVE_DECALS
            if (_EnableDecals)
            {
                float alpha = 1.0;
                alpha = surfaceDescription.Alpha;
        
                DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                ApplyDecalToSurfaceNormal(decalSurfaceData, fragInputs.tangentToWorld[2], normalTS);
                ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
            }
            #endif
        
            GetNormalWS_SG(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);
        #else
            // normal delivered to master node
            GetNormalWS(fragInputs, surfaceDescription.NormalTS, surfaceData.normalWS, doubleSidedConstants);
        
            #if HAVE_DECALS
            if (_EnableDecals)
            {
                float alpha = 1.0;
                alpha = surfaceDescription.Alpha;
        
                // Both uses and modifies 'surfaceData.normalWS'.
                DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                ApplyDecalToSurfaceNormal(decalSurfaceData, surfaceData.normalWS.xyz);
                ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
            }
            #endif
        #endif
        }
        void BuildSurfaceData(FragInputs fragInputs, inout SurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
        {
            ZERO_INITIALIZE(SurfaceData, surfaceData);
        
            // specularOcclusion need to be init ahead of decal to quiet the compiler that modify the SurfaceData struct
            // however specularOcclusion can come from the graph, so need to be init here so it can be override.
            surfaceData.specularOcclusion = 1.0;
        
            surfaceData.baseColor =                 surfaceDescription.BaseColor;
            surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
            surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
            surfaceData.transmissionMask =          surfaceDescription.TransmissionMask;
            surfaceData.thickness =                 surfaceDescription.Thickness;
            surfaceData.diffusionProfileHash =      asuint(surfaceDescription.DiffusionProfileHash);
        
            #if defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE) || defined(_REFRACTION_THIN)
                if (_EnableSSRefraction)
                {
        
                    surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                    surfaceDescription.Alpha = 1.0;
                }
                else
                {
                    surfaceData.ior = 1.0;
                    surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                    surfaceData.atDistance = 1.0;
                    surfaceData.transmittanceMask = 0.0;
                    surfaceDescription.Alpha = 1.0;
                }
            #else
                surfaceData.ior = 1.0;
                surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                surfaceData.atDistance = 1.0;
                surfaceData.transmittanceMask = 0.0;
            #endif
        
            // These static material feature allow compile time optimization
            surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
            #ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
            #endif
        
            #ifdef _MATERIAL_FEATURE_TRANSMISSION
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
            #endif
        
            #ifdef _MATERIAL_FEATURE_ANISOTROPY
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
        
                // Initialize the normal to something non-zero to avoid a div-zero warning for anisotropy.
                surfaceData.normalWS = float3(0, 1, 0);
            #endif
        
            #ifdef _MATERIAL_FEATURE_IRIDESCENCE
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
            #endif
        
            #ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
            #endif
        
            #ifdef _MATERIAL_FEATURE_CLEAR_COAT
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
            #endif
        
            #if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                // Require to have setup baseColor
                // Reproduce the energy conservation done in legacy Unity. Not ideal but better for compatibility and users can unchek it
                surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
            #endif
        
            float3 doubleSidedConstants = GetDoubleSidedConstants();
        
            ApplyDecalAndGetNormal(fragInputs, posInput, surfaceDescription, surfaceData);
        
            surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
        
            surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
        
        
            bentNormalWS = surfaceData.normalWS;
        
            surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);
        
            #ifdef DEBUG_DISPLAY
                if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                {
                    // TODO: need to update mip info
                    surfaceData.metallic = 0;
                }
        
                // We need to call ApplyDebugToSurfaceData after filling the surfarcedata and before filling builtinData
                // as it can modify attribute use for static lighting
                ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
            #endif
        
            // By default we use the ambient occlusion with Tri-ace trick (apply outside) for specular occlusion.
            // If user provide bent normal then we process a better term
            #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                // Just use the value passed through via the slot (not active otherwise)
            #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                // If we have bent normal and ambient occlusion, process a specular occlusion
                surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
            #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
                surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
            #endif
        
            #if defined(_ENABLE_GEOMETRIC_SPECULAR_AA) && !defined(SHADER_STAGE_RAY_TRACING)
                surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
            #endif
        }
        
            // --------------------------------------------------
            // Get Surface And BuiltinData
        
            void GetSurfaceAndBuiltinData(FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData RAY_TRACING_OPTIONAL_PARAMETERS)
            {
                // Don't dither if displaced tessellation (we're fading out the displacement instead to match the next LOD)
                #if !defined(SHADER_STAGE_RAY_TRACING) && !defined(_TESSELLATION_DISPLACEMENT)
                #ifdef LOD_FADE_CROSSFADE // enable dithering LOD transition if user select CrossFade transition in LOD group
                LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
                #endif
                #endif
        
                #ifndef SHADER_UNLIT
                #ifdef _DOUBLESIDED_ON
                    float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
                #else
                    float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
                #endif
        
                ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants); // Apply double sided flip on the vertex normal
                #endif // SHADER_UNLIT
        
                SurfaceDescriptionInputs surfaceDescriptionInputs = FragInputsToSurfaceDescriptionInputs(fragInputs, V);
        
                #if defined(HAVE_VFX_MODIFICATION)
                GraphProperties properties;
                ZERO_INITIALIZE(GraphProperties, properties);
        
                GetElementPixelProperties(fragInputs, properties);
        
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs, properties);
                #else
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs);
                #endif
        
                // Perform alpha test very early to save performance (a killed pixel will not sample textures)
                // TODO: split graph evaluation to grab just alpha dependencies first? tricky..
                #ifdef _ALPHATEST_ON
                    float alphaCutoff = surfaceDescription.AlphaClipThreshold;
                    #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
                    // The TransparentDepthPrepass is also used with SSR transparent.
                    // If an artists enable transaprent SSR but not the TransparentDepthPrepass itself, then we use AlphaClipThreshold
                    // otherwise if TransparentDepthPrepass is enabled we use AlphaClipThresholdDepthPrepass
                    #elif SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_POSTPASS
                    // DepthPostpass always use its own alpha threshold
                    alphaCutoff = surfaceDescription.AlphaClipThresholdDepthPostpass;
                    #elif (SHADERPASS == SHADERPASS_SHADOWS) || (SHADERPASS == SHADERPASS_RAYTRACING_VISIBILITY)
                    // If use shadow threshold isn't enable we don't allow any test
                    #endif
        
                    GENERIC_ALPHA_TEST(surfaceDescription.Alpha, alphaCutoff);
                #endif
        
                #if !defined(SHADER_STAGE_RAY_TRACING) && _DEPTHOFFSET_ON
                ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
                #endif
        
                #ifndef SHADER_UNLIT
                float3 bentNormalWS;
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS);
        
                #ifdef FRAG_INPUTS_USE_TEXCOORD1
                    float4 lightmapTexCoord1 = fragInputs.texCoord1;
                #else
                    float4 lightmapTexCoord1 = float4(0,0,0,0);
                #endif
        
                #ifdef FRAG_INPUTS_USE_TEXCOORD2
                    float4 lightmapTexCoord2 = fragInputs.texCoord2;
                #else
                    float4 lightmapTexCoord2 = float4(0,0,0,0);
                #endif
        
                // Builtin Data
                // For back lighting we use the oposite vertex normal
                InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], lightmapTexCoord1, lightmapTexCoord2, builtinData);
        
                #else
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData);
        
                ZERO_BUILTIN_INITIALIZE(builtinData); // No call to InitBuiltinData as we don't have any lighting
                builtinData.opacity = surfaceDescription.Alpha;
        
                #if defined(DEBUG_DISPLAY)
                    // Light Layers are currently not used for the Unlit shader (because it is not lit)
                    // But Unlit objects do cast shadows according to their rendering layer mask, which is what we want to
                    // display in the light layers visualization mode, therefore we need the renderingLayers
                    builtinData.renderingLayers = GetMeshRenderingLightLayer();
                #endif
        
                #endif // SHADER_UNLIT
        
                #ifdef _ALPHATEST_ON
                    // Used for sharpening by alpha to mask - Alpha to covertage is only used with depth only and forward pass (no shadow pass, no transparent pass)
                    builtinData.alphaClipTreshold = alphaCutoff;
                #endif
        
                // override sampleBakedGI - not used by Unlit
        
                builtinData.emissiveColor = surfaceDescription.Emission;
        
                // Note this will not fully work on transparent surfaces (can check with _SURFACE_TYPE_TRANSPARENT define)
                // We will always overwrite vt feeback with the nearest. So behind transparent surfaces vt will not be resolved
                // This is a limitation of the current MRT approach.
                #ifdef UNITY_VIRTUAL_TEXTURING
                #endif
        
                #if _DEPTHOFFSET_ON
                builtinData.depthOffset = surfaceDescription.DepthOffset;
                #endif
        
                // TODO: We should generate distortion / distortionBlur for non distortion pass
                #if (SHADERPASS == SHADERPASS_DISTORTION)
                builtinData.distortion = surfaceDescription.Distortion;
                builtinData.distortionBlur = surfaceDescription.DistortionBlur;
                #endif
        
                #ifndef SHADER_UNLIT
                // PostInitBuiltinData call ApplyDebugToBuiltinData
                PostInitBuiltinData(V, posInput, surfaceData, builtinData);
                #else
                ApplyDebugToBuiltinData(builtinData);
                #endif
        
                RAY_TRACING_OPTIONAL_ALPHA_TEST_PASS
            }
        
            // --------------------------------------------------
            // Main
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPassRaytracingIndirect.hlsl"
        
            // --------------------------------------------------
            // Visual Effect Vertex Invocations
        
        	#ifdef HAVE_VFX_MODIFICATION
        	#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/VisualEffectVertex.hlsl"
        	#endif
        
            ENDHLSL
        }
        Pass
        {
            Name "VisibilityDXR"
            Tags
            {
                "LightMode" = "VisibilityDXR"
            }
        
            // Render State
            // RenderState: <None>
        
            // Debug
            // <None>
        
            // --------------------------------------------------
            // Pass
        
            HLSLPROGRAM
        
            // Pragmas
            #pragma target 5.0
        #pragma raytracing surface_shader
        #pragma only_renderers d3d11 xboxseries ps5
        
            // Keywords
            #pragma multi_compile _ TRANSPARENT_COLOR_SHADOW
        #pragma shader_feature_local _ _ALPHATEST_ON
        #pragma shader_feature _ _SURFACE_TYPE_TRANSPARENT
        #pragma shader_feature_local _ _DOUBLESIDED_ON
        #pragma shader_feature_local _ _ADD_PRECOMPUTED_VELOCITY
        #pragma shader_feature_local _ _TRANSPARENT_WRITES_MOTION_VEC
        #pragma shader_feature_local_fragment _ _ENABLE_FOG_ON_TRANSPARENT
        #pragma shader_feature_local_fragment _ _DISABLE_DECALS
        #pragma shader_feature_local_raytracing _ _DISABLE_DECALS
        #pragma shader_feature_local_fragment _ _DISABLE_SSR
        #pragma shader_feature_local_raytracing _ _DISABLE_SSR
        #pragma shader_feature_local_fragment _ _DISABLE_SSR_TRANSPARENT
        #pragma shader_feature_local_raytracing _ _DISABLE_SSR_TRANSPARENT
        #pragma shader_feature_local _ _REFRACTION_PLANE _REFRACTION_SPHERE _REFRACTION_THIN
            // GraphKeywords: <None>
        
            // For custom interpolators to inject a substruct definition before FragInputs definition,
            // allowing for FragInputs to capture CI's intended for ShaderGraph's SDI.
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPreInclude' */
        
        
            // TODO: Merge FragInputsVFX substruct with CustomInterpolators.
        	#ifdef HAVE_VFX_MODIFICATION
        	struct FragInputsVFX
            {
                /* WARNING: $splice Could not find named fragment 'FragInputsVFX' */
            };
            #endif
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/GeometricTools.hlsl" // Required by Tessellation.hlsl
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Tessellation.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl" // Required to be include before we include properties as it define DECLARE_STACK_CB
            // Always include Shader Graph version
            // Always include last to avoid double macros
            #include "Packages/com.unity.shadergraph/ShaderGraphLibrary/Functions.hlsl" // Need to be here for Gradient struct definition
        
            // --------------------------------------------------
            // Defines
        
            // Attribute
            #define ATTRIBUTES_NEED_TEXCOORD0
            #define VARYINGS_NEED_POSITION_WS
            #define VARYINGS_NEED_TEXCOORD0
        
        
            //Strip down the FragInputs.hlsl (on graphics), so we can only optimize the interpolators we use.
            //if by accident something requests contents of FragInputs.hlsl, it will be caught as a compiler error
            //Frag inputs stripping is only enabled when FRAG_INPUTS_ENABLE_STRIPPING is set
            #if !defined(SHADER_STAGE_RAY_TRACING) && SHADERPASS != SHADERPASS_RAYTRACING_GBUFFER && SHADERPASS != SHADERPASS_FULL_SCREEN_DEBUG
            #define FRAG_INPUTS_ENABLE_STRIPPING
            #endif
            #define FRAG_INPUTS_USE_TEXCOORD0
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
        
        
        
            #define SHADERPASS SHADERPASS_RAYTRACING_VISIBILITY
        #define RAYTRACING_SHADER_GRAPH_RAYTRACED
        
        
            // Following two define are a workaround introduce in 10.1.x for RaytracingQualityNode
            // The ShaderGraph don't support correctly migration of this node as it serialize all the node data
            // in the json file making it impossible to uprgrade. Until we get a fix, we do a workaround here
            // to still allow us to rename the field and keyword of this node without breaking existing code.
            #ifdef RAYTRACING_SHADER_GRAPH_DEFAULT
            #define RAYTRACING_SHADER_GRAPH_HIGH
            #endif
        
            #ifdef RAYTRACING_SHADER_GRAPH_RAYTRACED
            #define RAYTRACING_SHADER_GRAPH_LOW
            #endif
            // end
        
            #ifndef SHADER_UNLIT
            // We need isFrontFace when using double sided - it is not required for unlit as in case of unlit double sided only drive the cullmode
            // VARYINGS_NEED_CULLFACE can be define by VaryingsMeshToPS.FaceSign input if a IsFrontFace Node is included in the shader graph.
            #if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
                #define VARYINGS_NEED_CULLFACE
            #endif
            #endif
        
            // Specific Material Define
        #define _MATERIAL_FEATURE_TRANSMISSION 1
        #define _AMBIENT_OCCLUSION 1
        #define _SPECULAR_OCCLUSION_FROM_AO 1
        #define _ENERGY_CONSERVING_SPECULAR 1
        
        // If we use subsurface scattering, enable output split lighting (for forward pass)
        #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
            #define OUTPUT_SPLIT_LIGHTING
        #endif
        
        // This shader support recursive rendering for raytracing
        #define HAVE_RECURSIVE_RENDERING
        
        // In Path Tracing, For all single-sided, refractive materials, we want to force a thin refraction model
        #if (SHADERPASS == SHADERPASS_PATH_TRACING) && !defined(_DOUBLESIDED_ON) && (defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE))
            #undef  _REFRACTION_PLANE
            #undef  _REFRACTION_SPHERE
            #define _REFRACTION_THIN
        #endif
            // Caution: we can use the define SHADER_UNLIT onlit after the above Material include as it is the Unlit template who define it
        
            // To handle SSR on transparent correctly with a possibility to enable/disable it per framesettings
            // we should have a code like this:
            // if !defined(_DISABLE_SSR_TRANSPARENT)
            // pragma multi_compile _ WRITE_NORMAL_BUFFER
            // endif
            // i.e we enable the multicompile only if we can receive SSR or not, and then C# code drive
            // it based on if SSR transparent in frame settings and not (and stripper can strip it).
            // this is currently not possible with our current preprocessor as _DISABLE_SSR_TRANSPARENT is a keyword not a define
            // so instead we used this and chose to pay the extra cost of normal write even if SSR transaprent is disabled.
            // Ideally the shader graph generator should handle it but condition below can't be handle correctly for now.
            #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
            #if !defined(_DISABLE_SSR_TRANSPARENT) && !defined(SHADER_UNLIT)
                #define WRITE_NORMAL_BUFFER
            #endif
            #endif
        
            #ifndef DEBUG_DISPLAY
                // In case of opaque we don't want to perform the alpha test, it is done in depth prepass and we use depth equal for ztest (setup from UI)
                // Don't do it with debug display mode as it is possible there is no depth prepass in this case
                #if !defined(_SURFACE_TYPE_TRANSPARENT)
                    #if SHADERPASS == SHADERPASS_FORWARD
                    #define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
                    #elif SHADERPASS == SHADERPASS_GBUFFER
                    #define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
                    #endif
                #endif
            #endif
        
            // Define _DEFERRED_CAPABLE_MATERIAL for shader capable to run in deferred pass
            #if defined(SHADER_LIT) && !defined(_SURFACE_TYPE_TRANSPARENT)
                #define _DEFERRED_CAPABLE_MATERIAL
            #endif
        
            // Translate transparent motion vector define
            #if defined(_TRANSPARENT_WRITES_MOTION_VEC) && defined(_SURFACE_TYPE_TRANSPARENT)
                #define _WRITE_TRANSPARENT_MOTION_VECTOR
            #endif
        
            // -- Graph Properties
            CBUFFER_START(UnityPerMaterial)
        float4 _DiffusionProfileAsset;
        float _DiffusionProfileHash;
        float4 _TrunkBaseColor;
        float4 _BarkBaseColor;
        float _Backface_Thickness_Mask_Threshold;
        float2 _Backface_Thickness_Mask_Remap;
        float _Backface_Brightness;
        float _Cross_Backface_Mask_Power;
        float _Backface_Saturation;
        float4 _HealthyColor;
        float4 _DryColor;
        float _AlphaCutoff;
        float _AlphaShadowThreshold;
        float4 _BaseColorMap_TexelSize;
        float4 _TilingOffset;
        float _HealthyandDryColorNoisePower;
        float4 _NormalMap_TexelSize;
        float _NormalScale;
        float _AORemapMax;
        float _SmoothnessRemapMax;
        float4 _Mask_TexelSize;
        float _Thickness;
        float _WindNormalInfluence;
        float4 _VertexNormalMultiply;
        float _ColorNoiseTilling;
        float _Trunk_Normal_Scale;
        float _Global_Base_Brightness;
        float _Trunk_Smoothness_Remap_Max;
        float4 _EmissionColor;
        float _UseShadowThreshold;
        float4 _DoubleSidedConstants;
        float _BlendMode;
        float _EnableBlendModePreserveSpecularLighting;
        float _RayTracing;
        float _RefractionModel;
        CBUFFER_END
        
        
        // Object and Global properties
        SAMPLER(SamplerState_Linear_Repeat);
        SAMPLER(SamplerState_Linear_Repeat_Aniso8);
        TEXTURE2D(_BaseColorMap);
        SAMPLER(sampler_BaseColorMap);
        TEXTURE2D(_NormalMap);
        SAMPLER(sampler_NormalMap);
        TEXTURE2D(_Mask);
        SAMPLER(sampler_Mask);
        
            // -- Property used by ScenePickingPass
            #ifdef SCENEPICKINGPASS
            float4 _SelectionID;
            #endif
        
            // -- Properties used by SceneSelectionPass
            #ifdef SCENESELECTIONPASS
            int _ObjectId;
            int _PassValue;
            #endif
        
            // Includes
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/RaytracingMacros.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/ShaderVariablesRaytracing.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/ShaderVariablesRaytracingLightLoop.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/RaytracingIntersection.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitRaytracing.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/RayTracingCommon.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Hashes.hlsl"
        
            // --------------------------------------------------
            // Structs and Packing
        
            struct SurfaceDescriptionInputs
        {
             float3 TangentSpaceNormal;
             float3 AbsoluteWorldSpacePosition;
             float4 uv0;
        };
        
            //Interpolator Packs: <None>
        
            // --------------------------------------------------
            // Graph
        
        
            // Graph Functions
            
        void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
        {
            Out = UV * Tiling + Offset;
        }
        
        void Unity_Multiply_float4_float4(float4 A, float4 B, out float4 Out)
        {
            Out = A * B;
        }
        
        void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
        {
            Out = lerp(A, B, T);
        }
        
        float Unity_SimpleNoise_ValueNoise_LegacySine_float (float2 uv)
        {
            float2 i = floor(uv);
            float2 f = frac(uv);
            f = f * f * (3.0 - 2.0 * f);
            uv = abs(frac(uv) - 0.5);
            float2 c0 = i + float2(0.0, 0.0);
            float2 c1 = i + float2(1.0, 0.0);
            float2 c2 = i + float2(0.0, 1.0);
            float2 c3 = i + float2(1.0, 1.0);
            float r0; Hash_LegacySine_2_1_float(c0, r0);
            float r1; Hash_LegacySine_2_1_float(c1, r1);
            float r2; Hash_LegacySine_2_1_float(c2, r2);
            float r3; Hash_LegacySine_2_1_float(c3, r3);
            float bottomOfGrid = lerp(r0, r1, f.x);
            float topOfGrid = lerp(r2, r3, f.x);
            float t = lerp(bottomOfGrid, topOfGrid, f.y);
            return t;
        }
        
        void Unity_SimpleNoise_LegacySine_float(float2 UV, float Scale, out float Out)
        {
            float freq, amp;
            Out = 0.0f;
            freq = pow(2.0, float(0));
            amp = pow(0.5, float(3-0));
            Out += Unity_SimpleNoise_ValueNoise_LegacySine_float(float2(UV.xy*(Scale/freq)))*amp;
            freq = pow(2.0, float(1));
            amp = pow(0.5, float(3-1));
            Out += Unity_SimpleNoise_ValueNoise_LegacySine_float(float2(UV.xy*(Scale/freq)))*amp;
            freq = pow(2.0, float(2));
            amp = pow(0.5, float(3-2));
            Out += Unity_SimpleNoise_ValueNoise_LegacySine_float(float2(UV.xy*(Scale/freq)))*amp;
        }
        
        void Unity_Absolute_float(float In, out float Out)
        {
            Out = abs(In);
        }
        
        void Unity_Power_float(float A, float B, out float Out)
        {
            Out = pow(A, B);
        }
        
        void Unity_Clamp_float(float In, float Min, float Max, out float Out)
        {
            Out = clamp(In, Min, Max);
        }
        
        void Unity_Saturation_float(float3 In, float Saturation, out float3 Out)
        {
            float luma = dot(In, float3(0.2126729, 0.7151522, 0.0721750));
            Out =  luma.xxx + Saturation.xxx * (In - luma.xxx);
        }
        
        void Unity_Blend_Screen_float3(float3 Base, float3 Blend, out float3 Out, float Opacity)
        {
            Out = 1.0 - (1.0 - Blend) * (1.0 - Base);
            Out = lerp(Base, Out, Opacity);
        }
        
        void Unity_Clamp_float3(float3 In, float3 Min, float3 Max, out float3 Out)
        {
            Out = clamp(In, Min, Max);
        }
        
        void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
        {
            Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
        }
        
        void Unity_OneMinus_float(float In, out float Out)
        {
            Out = 1 - In;
        }
        
        void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
        {
            Out = lerp(A, B, T);
        }
        
        void Unity_Multiply_float3_float3(float3 A, float3 B, out float3 Out)
        {
            Out = A * B;
        }
        
        void Unity_Lerp_float(float A, float B, float T, out float Out)
        {
            Out = lerp(A, B, T);
        }
        
        void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
        {
            Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
        }
        
        void Unity_Multiply_float_float(float A, float B, out float Out)
        {
            Out = A * B;
        }
        
            // Graph Vertex
            // GraphVertex: <None>
        
            // Graph Pixel
            struct SurfaceDescription
        {
            float3 BaseColor;
            float3 Emission;
            float Alpha;
            float AlphaClipThreshold;
            float AlphaClipThresholdShadow;
            float3 BentNormal;
            float Smoothness;
            float Occlusion;
            float3 NormalTS;
            float TransmissionMask;
            float Thickness;
            float DiffusionProfileHash;
        };
        
        SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
        {
            SurfaceDescription surface = (SurfaceDescription)0;
            UnityTexture2D _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_BaseColorMap);
            float4 _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4 = _TilingOffset;
            float _Split_60538633130155809820b3185c81057f_R_1_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[0];
            float _Split_60538633130155809820b3185c81057f_G_2_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[1];
            float _Split_60538633130155809820b3185c81057f_B_3_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[2];
            float _Split_60538633130155809820b3185c81057f_A_4_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[3];
            float2 _Vector2_83b2ea7a32ab548fb8c20dce14204561_Out_0_Vector2 = float2(_Split_60538633130155809820b3185c81057f_R_1_Float, _Split_60538633130155809820b3185c81057f_G_2_Float);
            float2 _Vector2_188e122ac0c7888f9f5fbde73f9edd75_Out_0_Vector2 = float2(_Split_60538633130155809820b3185c81057f_B_3_Float, _Split_60538633130155809820b3185c81057f_A_4_Float);
            float2 _TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2;
            Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_83b2ea7a32ab548fb8c20dce14204561_Out_0_Vector2, _Vector2_188e122ac0c7888f9f5fbde73f9edd75_Out_0_Vector2, _TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2);
            float4 _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.tex, _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.samplerstate, _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_R_4_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.r;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_G_5_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.g;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_B_6_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.b;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_A_7_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.a;
            float4 _Property_d37c4e2cc4f949f581f76dcb73d50e87_Out_0_Vector4 = _BarkBaseColor;
            float4 _Multiply_e4794b5d7e19433599f2b4e150644bea_Out_2_Vector4;
            Unity_Multiply_float4_float4(_SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4, _Property_d37c4e2cc4f949f581f76dcb73d50e87_Out_0_Vector4, _Multiply_e4794b5d7e19433599f2b4e150644bea_Out_2_Vector4);
            float4 _Property_0f3c5f287e8145bc95fd52cfba4b8fcc_Out_0_Vector4 = _TrunkBaseColor;
            float4 _Multiply_2453fa0c275a46cca1a866a080d90ddf_Out_2_Vector4;
            Unity_Multiply_float4_float4(_SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4, _Property_0f3c5f287e8145bc95fd52cfba4b8fcc_Out_0_Vector4, _Multiply_2453fa0c275a46cca1a866a080d90ddf_Out_2_Vector4);
            UnityTexture2D _Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_Mask);
            float4 _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_R_4_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.r;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.g;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_B_6_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.b;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_A_7_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.a;
            float4 _Lerp_9056381ab3034355b45968f0d1ff2f1a_Out_3_Vector4;
            Unity_Lerp_float4(_Multiply_e4794b5d7e19433599f2b4e150644bea_Out_2_Vector4, _Multiply_2453fa0c275a46cca1a866a080d90ddf_Out_2_Vector4, (_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_B_6_Float.xxxx), _Lerp_9056381ab3034355b45968f0d1ff2f1a_Out_3_Vector4);
            float4 _Property_944e0c60198849afb235eb9940da5dd9_Out_0_Vector4 = _DryColor;
            float4 _Property_621f9271d8734c81b9001229b0296656_Out_0_Vector4 = _HealthyColor;
            float _Split_99caf98864a9e980997a02cedd282dd0_R_1_Float = IN.AbsoluteWorldSpacePosition[0];
            float _Split_99caf98864a9e980997a02cedd282dd0_G_2_Float = IN.AbsoluteWorldSpacePosition[1];
            float _Split_99caf98864a9e980997a02cedd282dd0_B_3_Float = IN.AbsoluteWorldSpacePosition[2];
            float _Split_99caf98864a9e980997a02cedd282dd0_A_4_Float = 0;
            float2 _Vector2_ddc95fa04fb4858daf984190322978b9_Out_0_Vector2 = float2(_Split_99caf98864a9e980997a02cedd282dd0_R_1_Float, _Split_99caf98864a9e980997a02cedd282dd0_B_3_Float);
            float _Property_4d778d1ae72a416b96bf6cb1986a7d5d_Out_0_Float = _ColorNoiseTilling;
            float _SimpleNoise_96327065e2b0428f83e25f93c7e5a748_Out_2_Float;
            Unity_SimpleNoise_LegacySine_float(_Vector2_ddc95fa04fb4858daf984190322978b9_Out_0_Vector2, _Property_4d778d1ae72a416b96bf6cb1986a7d5d_Out_0_Float, _SimpleNoise_96327065e2b0428f83e25f93c7e5a748_Out_2_Float);
            float _Absolute_3da7acf58a45403cad1e7c432d78f027_Out_1_Float;
            Unity_Absolute_float(_SimpleNoise_96327065e2b0428f83e25f93c7e5a748_Out_2_Float, _Absolute_3da7acf58a45403cad1e7c432d78f027_Out_1_Float);
            float _Property_0dff529d33cb42e388c9d874effe6e19_Out_0_Float = _HealthyandDryColorNoisePower;
            float _Power_77b7c0eba07f4b9da46f2fa461c49201_Out_2_Float;
            Unity_Power_float(_Absolute_3da7acf58a45403cad1e7c432d78f027_Out_1_Float, _Property_0dff529d33cb42e388c9d874effe6e19_Out_0_Float, _Power_77b7c0eba07f4b9da46f2fa461c49201_Out_2_Float);
            float _Clamp_efb2cde09ec64325a2f78a848b0827b2_Out_3_Float;
            Unity_Clamp_float(_Power_77b7c0eba07f4b9da46f2fa461c49201_Out_2_Float, float(0), float(1), _Clamp_efb2cde09ec64325a2f78a848b0827b2_Out_3_Float);
            float4 _Lerp_b995ffde83d24283ac272745617fa60c_Out_3_Vector4;
            Unity_Lerp_float4(_Property_944e0c60198849afb235eb9940da5dd9_Out_0_Vector4, _Property_621f9271d8734c81b9001229b0296656_Out_0_Vector4, (_Clamp_efb2cde09ec64325a2f78a848b0827b2_Out_3_Float.xxxx), _Lerp_b995ffde83d24283ac272745617fa60c_Out_3_Vector4);
            float4 _Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4;
            Unity_Multiply_float4_float4(_SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4, _Lerp_b995ffde83d24283ac272745617fa60c_Out_3_Vector4, _Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4);
            float _Property_a52cc4db448642208842be98e18796fb_Out_0_Float = _Backface_Saturation;
            float3 _Saturation_1a5be2ae12084c59883f7d315d09cd80_Out_2_Vector3;
            Unity_Saturation_float((_Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4.xyz), _Property_a52cc4db448642208842be98e18796fb_Out_0_Float, _Saturation_1a5be2ae12084c59883f7d315d09cd80_Out_2_Vector3);
            float _Property_547f6c365f204d14a383183448811966_Out_0_Float = _Backface_Brightness;
            float3 _Blend_9d43ee127ca04ec09dd9151a833d8d61_Out_2_Vector3;
            Unity_Blend_Screen_float3(_Saturation_1a5be2ae12084c59883f7d315d09cd80_Out_2_Vector3, (_Property_547f6c365f204d14a383183448811966_Out_0_Float.xxx), _Blend_9d43ee127ca04ec09dd9151a833d8d61_Out_2_Vector3, float(1));
            float3 _Clamp_f7855b2ac55c4d43b25a4a1e56dbbbf7_Out_3_Vector3;
            Unity_Clamp_float3(_Blend_9d43ee127ca04ec09dd9151a833d8d61_Out_2_Vector3, float3(0, 0, 0), float3(1, 1, 1), _Clamp_f7855b2ac55c4d43b25a4a1e56dbbbf7_Out_3_Vector3);
            float2 _Property_b0a46b9c34574501a2f500d2f5745793_Out_0_Vector2 = _Backface_Thickness_Mask_Remap;
            float _Remap_bbbefbf0fbaf41d8a6d07b465d45488f_Out_3_Float;
            Unity_Remap_float(_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_A_7_Float, float2 (0, 1), _Property_b0a46b9c34574501a2f500d2f5745793_Out_0_Vector2, _Remap_bbbefbf0fbaf41d8a6d07b465d45488f_Out_3_Float);
            float _Clamp_6ac81c92e9a64e958055eca61b82e791_Out_3_Float;
            Unity_Clamp_float(_Remap_bbbefbf0fbaf41d8a6d07b465d45488f_Out_3_Float, float(0), float(1), _Clamp_6ac81c92e9a64e958055eca61b82e791_Out_3_Float);
            float _Property_3a1e9cc1507b46b2af88ab75dfc37b44_Out_0_Float = _Backface_Thickness_Mask_Threshold;
            float _Power_1fccfa34ffba46ceac25f1238aa4e1b5_Out_2_Float;
            Unity_Power_float(_Clamp_6ac81c92e9a64e958055eca61b82e791_Out_3_Float, _Property_3a1e9cc1507b46b2af88ab75dfc37b44_Out_0_Float, _Power_1fccfa34ffba46ceac25f1238aa4e1b5_Out_2_Float);
            float _Clamp_e55b4d1f4fda4e97bcfe15cfe9c6fd05_Out_3_Float;
            Unity_Clamp_float(_Power_1fccfa34ffba46ceac25f1238aa4e1b5_Out_2_Float, float(0), float(1), _Clamp_e55b4d1f4fda4e97bcfe15cfe9c6fd05_Out_3_Float);
            float _OneMinus_16a8ddad0aee4e5ca379aef306048984_Out_1_Float;
            Unity_OneMinus_float(_Clamp_e55b4d1f4fda4e97bcfe15cfe9c6fd05_Out_3_Float, _OneMinus_16a8ddad0aee4e5ca379aef306048984_Out_1_Float);
            float3 _Lerp_9c8a6dd2927446309acc26d9f217de99_Out_3_Vector3;
            Unity_Lerp_float3((_Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4.xyz), _Clamp_f7855b2ac55c4d43b25a4a1e56dbbbf7_Out_3_Vector3, (_OneMinus_16a8ddad0aee4e5ca379aef306048984_Out_1_Float.xxx), _Lerp_9c8a6dd2927446309acc26d9f217de99_Out_3_Vector3);
            float _Absolute_98dfaf1178334fc287f9e4d4b5f3a0f0_Out_1_Float;
            Unity_Absolute_float(_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_R_4_Float, _Absolute_98dfaf1178334fc287f9e4d4b5f3a0f0_Out_1_Float);
            float _Property_08b97a5bb158439e9155434b6637ac33_Out_0_Float = _Cross_Backface_Mask_Power;
            float _Power_c8f61d8af16945f9b82731ed18d38dd9_Out_2_Float;
            Unity_Power_float(_Absolute_98dfaf1178334fc287f9e4d4b5f3a0f0_Out_1_Float, _Property_08b97a5bb158439e9155434b6637ac33_Out_0_Float, _Power_c8f61d8af16945f9b82731ed18d38dd9_Out_2_Float);
            float _Clamp_c8b7bf714ebb484d8aa73d545b2f9d59_Out_3_Float;
            Unity_Clamp_float(_Power_c8f61d8af16945f9b82731ed18d38dd9_Out_2_Float, float(0), float(1), _Clamp_c8b7bf714ebb484d8aa73d545b2f9d59_Out_3_Float);
            float3 _Lerp_343d7507e4664bd7bc5108bcf0d55854_Out_3_Vector3;
            Unity_Lerp_float3(_Lerp_9c8a6dd2927446309acc26d9f217de99_Out_3_Vector3, (_Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4.xyz), (_Clamp_c8b7bf714ebb484d8aa73d545b2f9d59_Out_3_Float.xxx), _Lerp_343d7507e4664bd7bc5108bcf0d55854_Out_3_Vector3);
            float3 _Lerp_0d72c41eff034cfaaaf0208f4bf42433_Out_3_Vector3;
            Unity_Lerp_float3((_Lerp_9056381ab3034355b45968f0d1ff2f1a_Out_3_Vector4.xyz), _Lerp_343d7507e4664bd7bc5108bcf0d55854_Out_3_Vector3, (_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float.xxx), _Lerp_0d72c41eff034cfaaaf0208f4bf42433_Out_3_Vector3);
            float _Property_09c643c04af64fb18f3a77b935844ecc_Out_0_Float = _Global_Base_Brightness;
            float3 _Multiply_61b0f4818da94adfa23e13d8e3e376a8_Out_2_Vector3;
            Unity_Multiply_float3_float3(_Lerp_0d72c41eff034cfaaaf0208f4bf42433_Out_3_Vector3, (_Property_09c643c04af64fb18f3a77b935844ecc_Out_0_Float.xxx), _Multiply_61b0f4818da94adfa23e13d8e3e376a8_Out_2_Vector3);
            float3 _Clamp_359788e8ad134650b865e76600af6700_Out_3_Vector3;
            Unity_Clamp_float3(_Multiply_61b0f4818da94adfa23e13d8e3e376a8_Out_2_Vector3, float3(0, 0, 0), float3(1, 1, 1), _Clamp_359788e8ad134650b865e76600af6700_Out_3_Vector3);
            float _Property_067d68a770a25e8f978ca090306a96d8_Out_0_Float = _AlphaCutoff;
            float _Property_4b59dc86107847d5b565cde1e47efb8f_Out_0_Float = _AlphaShadowThreshold;
            float _Property_c35305c7157c4d3ba1db4ba61b2e2ebc_Out_0_Float = _Trunk_Smoothness_Remap_Max;
            float _Property_0edea7916ed7a189a62b0faf2c274601_Out_0_Float = _SmoothnessRemapMax;
            float _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float;
            Unity_Lerp_float(_Property_c35305c7157c4d3ba1db4ba61b2e2ebc_Out_0_Float, _Property_0edea7916ed7a189a62b0faf2c274601_Out_0_Float, _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float, _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float);
            float _Property_48e1c5285b48c78e8af19e38f4bd77f9_Out_0_Float = _AORemapMax;
            UnityTexture2D _Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_NormalMap);
            float4 _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.rgb = UnpackNormal(_SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4);
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_R_4_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.r;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_G_5_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.g;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_B_6_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.b;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_A_7_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.a;
            float _Property_b07156802a1240f7a8c14a272c5f1b36_Out_0_Float = _Trunk_Normal_Scale;
            float _Property_72e436a108ad64868e46d548c585c5f3_Out_0_Float = _NormalScale;
            float _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float;
            Unity_Lerp_float(_Property_b07156802a1240f7a8c14a272c5f1b36_Out_0_Float, _Property_72e436a108ad64868e46d548c585c5f3_Out_0_Float, _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float, _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float);
            float3 _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3;
            Unity_NormalStrength_float((_SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.xyz), _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float, _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3);
            float _Property_2fa2ab76399ae48aaf1180768279e6b9_Out_0_Float = _Thickness;
            float _Multiply_aed8020082acc482b9303a61b01a1a1a_Out_2_Float;
            Unity_Multiply_float_float(_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_A_7_Float, _Property_2fa2ab76399ae48aaf1180768279e6b9_Out_0_Float, _Multiply_aed8020082acc482b9303a61b01a1a1a_Out_2_Float);
            surface.BaseColor = _Clamp_359788e8ad134650b865e76600af6700_Out_3_Vector3;
            surface.Emission = float3(0, 0, 0);
            surface.Alpha = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_A_7_Float;
            surface.AlphaClipThreshold = _Property_067d68a770a25e8f978ca090306a96d8_Out_0_Float;
            surface.AlphaClipThresholdShadow = _Property_4b59dc86107847d5b565cde1e47efb8f_Out_0_Float;
            surface.BentNormal = IN.TangentSpaceNormal;
            surface.Smoothness = _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float;
            surface.Occlusion = _Property_48e1c5285b48c78e8af19e38f4bd77f9_Out_0_Float;
            surface.NormalTS = _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3;
            surface.TransmissionMask = float(1);
            surface.Thickness = _Multiply_aed8020082acc482b9303a61b01a1a1a_Out_2_Float;
            surface.DiffusionProfileHash = _DiffusionProfileHash;
            return surface;
        }
        
            // --------------------------------------------------
            // Build Graph Inputs
            #ifdef HAVE_VFX_MODIFICATION
            #define VFX_SRP_ATTRIBUTES AttributesMesh
            #define VaryingsMeshType VaryingsMeshToPS
            #define VFX_SRP_VARYINGS VaryingsMeshType
            #define VFX_SRP_SURFACE_INPUTS FragInputs
            #endif
            SurfaceDescriptionInputs FragInputsToSurfaceDescriptionInputs(FragInputs input, float3 viewWS)
        {
            SurfaceDescriptionInputs output;
            ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
        
            #if defined(SHADER_STAGE_RAY_TRACING)
            #else
            #endif
            output.TangentSpaceNormal =                         float3(0.0f, 0.0f, 1.0f);
            output.AbsoluteWorldSpacePosition =                 GetAbsolutePositionWS(input.positionRWS);
        
        #if UNITY_UV_STARTS_AT_TOP
        #else
        #endif
        
        
            output.uv0 =                                        input.texCoord0;
        
            // splice point to copy frag inputs custom interpolator pack into the SDI
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorCopyToSDI' */
        
            return output;
        }
        
            // --------------------------------------------------
            // Build Surface Data (Specific Material)
        
        void ApplyDecalToSurfaceDataNoNormal(DecalSurfaceData decalSurfaceData, inout SurfaceData surfaceData);
        
        void ApplyDecalAndGetNormal(FragInputs fragInputs, PositionInputs posInput, SurfaceDescription surfaceDescription,
            inout SurfaceData surfaceData)
        {
            float3 doubleSidedConstants = GetDoubleSidedConstants();
        
        #ifdef DECAL_NORMAL_BLENDING
            // SG nodes don't ouptut surface gradients, so if decals require surf grad blending, we have to convert
            // the normal to gradient before applying the decal. We then have to resolve the gradient back to world space
            float3 normalTS;
        
            normalTS = SurfaceGradientFromTangentSpaceNormalAndFromTBN(surfaceDescription.NormalTS,
            fragInputs.tangentToWorld[0], fragInputs.tangentToWorld[1]);
        
        
            #if HAVE_DECALS
            if (_EnableDecals)
            {
                float alpha = 1.0;
                alpha = surfaceDescription.Alpha;
        
                DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                ApplyDecalToSurfaceNormal(decalSurfaceData, fragInputs.tangentToWorld[2], normalTS);
                ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
            }
            #endif
        
            GetNormalWS_SG(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);
        #else
            // normal delivered to master node
            GetNormalWS(fragInputs, surfaceDescription.NormalTS, surfaceData.normalWS, doubleSidedConstants);
        
            #if HAVE_DECALS
            if (_EnableDecals)
            {
                float alpha = 1.0;
                alpha = surfaceDescription.Alpha;
        
                // Both uses and modifies 'surfaceData.normalWS'.
                DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                ApplyDecalToSurfaceNormal(decalSurfaceData, surfaceData.normalWS.xyz);
                ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
            }
            #endif
        #endif
        }
        void BuildSurfaceData(FragInputs fragInputs, inout SurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
        {
            ZERO_INITIALIZE(SurfaceData, surfaceData);
        
            // specularOcclusion need to be init ahead of decal to quiet the compiler that modify the SurfaceData struct
            // however specularOcclusion can come from the graph, so need to be init here so it can be override.
            surfaceData.specularOcclusion = 1.0;
        
            surfaceData.baseColor =                 surfaceDescription.BaseColor;
            surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
            surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
            surfaceData.transmissionMask =          surfaceDescription.TransmissionMask;
            surfaceData.thickness =                 surfaceDescription.Thickness;
            surfaceData.diffusionProfileHash =      asuint(surfaceDescription.DiffusionProfileHash);
        
            #if defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE) || defined(_REFRACTION_THIN)
                if (_EnableSSRefraction)
                {
        
                    surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                    surfaceDescription.Alpha = 1.0;
                }
                else
                {
                    surfaceData.ior = 1.0;
                    surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                    surfaceData.atDistance = 1.0;
                    surfaceData.transmittanceMask = 0.0;
                    surfaceDescription.Alpha = 1.0;
                }
            #else
                surfaceData.ior = 1.0;
                surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                surfaceData.atDistance = 1.0;
                surfaceData.transmittanceMask = 0.0;
            #endif
        
            // These static material feature allow compile time optimization
            surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
            #ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
            #endif
        
            #ifdef _MATERIAL_FEATURE_TRANSMISSION
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
            #endif
        
            #ifdef _MATERIAL_FEATURE_ANISOTROPY
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
        
                // Initialize the normal to something non-zero to avoid a div-zero warning for anisotropy.
                surfaceData.normalWS = float3(0, 1, 0);
            #endif
        
            #ifdef _MATERIAL_FEATURE_IRIDESCENCE
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
            #endif
        
            #ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
            #endif
        
            #ifdef _MATERIAL_FEATURE_CLEAR_COAT
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
            #endif
        
            #if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                // Require to have setup baseColor
                // Reproduce the energy conservation done in legacy Unity. Not ideal but better for compatibility and users can unchek it
                surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
            #endif
        
            float3 doubleSidedConstants = GetDoubleSidedConstants();
        
            ApplyDecalAndGetNormal(fragInputs, posInput, surfaceDescription, surfaceData);
        
            surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
        
            surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
        
        
            bentNormalWS = surfaceData.normalWS;
        
            surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);
        
            #ifdef DEBUG_DISPLAY
                if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                {
                    // TODO: need to update mip info
                    surfaceData.metallic = 0;
                }
        
                // We need to call ApplyDebugToSurfaceData after filling the surfarcedata and before filling builtinData
                // as it can modify attribute use for static lighting
                ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
            #endif
        
            // By default we use the ambient occlusion with Tri-ace trick (apply outside) for specular occlusion.
            // If user provide bent normal then we process a better term
            #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                // Just use the value passed through via the slot (not active otherwise)
            #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                // If we have bent normal and ambient occlusion, process a specular occlusion
                surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
            #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
                surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
            #endif
        
            #if defined(_ENABLE_GEOMETRIC_SPECULAR_AA) && !defined(SHADER_STAGE_RAY_TRACING)
                surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
            #endif
        }
        
            // --------------------------------------------------
            // Get Surface And BuiltinData
        
            void GetSurfaceAndBuiltinData(FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData RAY_TRACING_OPTIONAL_PARAMETERS)
            {
                // Don't dither if displaced tessellation (we're fading out the displacement instead to match the next LOD)
                #if !defined(SHADER_STAGE_RAY_TRACING) && !defined(_TESSELLATION_DISPLACEMENT)
                #ifdef LOD_FADE_CROSSFADE // enable dithering LOD transition if user select CrossFade transition in LOD group
                LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
                #endif
                #endif
        
                #ifndef SHADER_UNLIT
                #ifdef _DOUBLESIDED_ON
                    float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
                #else
                    float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
                #endif
        
                ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants); // Apply double sided flip on the vertex normal
                #endif // SHADER_UNLIT
        
                SurfaceDescriptionInputs surfaceDescriptionInputs = FragInputsToSurfaceDescriptionInputs(fragInputs, V);
        
                #if defined(HAVE_VFX_MODIFICATION)
                GraphProperties properties;
                ZERO_INITIALIZE(GraphProperties, properties);
        
                GetElementPixelProperties(fragInputs, properties);
        
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs, properties);
                #else
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs);
                #endif
        
                // Perform alpha test very early to save performance (a killed pixel will not sample textures)
                // TODO: split graph evaluation to grab just alpha dependencies first? tricky..
                #ifdef _ALPHATEST_ON
                    float alphaCutoff = surfaceDescription.AlphaClipThreshold;
                    #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
                    // The TransparentDepthPrepass is also used with SSR transparent.
                    // If an artists enable transaprent SSR but not the TransparentDepthPrepass itself, then we use AlphaClipThreshold
                    // otherwise if TransparentDepthPrepass is enabled we use AlphaClipThresholdDepthPrepass
                    #elif SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_POSTPASS
                    // DepthPostpass always use its own alpha threshold
                    alphaCutoff = surfaceDescription.AlphaClipThresholdDepthPostpass;
                    #elif (SHADERPASS == SHADERPASS_SHADOWS) || (SHADERPASS == SHADERPASS_RAYTRACING_VISIBILITY)
                    // If use shadow threshold isn't enable we don't allow any test
                    alphaCutoff = _UseShadowThreshold ? surfaceDescription.AlphaClipThresholdShadow : alphaCutoff;
                    #endif
        
                    GENERIC_ALPHA_TEST(surfaceDescription.Alpha, alphaCutoff);
                #endif
        
                #if !defined(SHADER_STAGE_RAY_TRACING) && _DEPTHOFFSET_ON
                ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
                #endif
        
                #ifndef SHADER_UNLIT
                float3 bentNormalWS;
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS);
        
                #ifdef FRAG_INPUTS_USE_TEXCOORD1
                    float4 lightmapTexCoord1 = fragInputs.texCoord1;
                #else
                    float4 lightmapTexCoord1 = float4(0,0,0,0);
                #endif
        
                #ifdef FRAG_INPUTS_USE_TEXCOORD2
                    float4 lightmapTexCoord2 = fragInputs.texCoord2;
                #else
                    float4 lightmapTexCoord2 = float4(0,0,0,0);
                #endif
        
                // Builtin Data
                // For back lighting we use the oposite vertex normal
                InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], lightmapTexCoord1, lightmapTexCoord2, builtinData);
        
                #else
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData);
        
                ZERO_BUILTIN_INITIALIZE(builtinData); // No call to InitBuiltinData as we don't have any lighting
                builtinData.opacity = surfaceDescription.Alpha;
        
                #if defined(DEBUG_DISPLAY)
                    // Light Layers are currently not used for the Unlit shader (because it is not lit)
                    // But Unlit objects do cast shadows according to their rendering layer mask, which is what we want to
                    // display in the light layers visualization mode, therefore we need the renderingLayers
                    builtinData.renderingLayers = GetMeshRenderingLightLayer();
                #endif
        
                #endif // SHADER_UNLIT
        
                #ifdef _ALPHATEST_ON
                    // Used for sharpening by alpha to mask - Alpha to covertage is only used with depth only and forward pass (no shadow pass, no transparent pass)
                    builtinData.alphaClipTreshold = alphaCutoff;
                #endif
        
                // override sampleBakedGI - not used by Unlit
        
                builtinData.emissiveColor = surfaceDescription.Emission;
        
                // Note this will not fully work on transparent surfaces (can check with _SURFACE_TYPE_TRANSPARENT define)
                // We will always overwrite vt feeback with the nearest. So behind transparent surfaces vt will not be resolved
                // This is a limitation of the current MRT approach.
                #ifdef UNITY_VIRTUAL_TEXTURING
                #endif
        
                #if _DEPTHOFFSET_ON
                builtinData.depthOffset = surfaceDescription.DepthOffset;
                #endif
        
                // TODO: We should generate distortion / distortionBlur for non distortion pass
                #if (SHADERPASS == SHADERPASS_DISTORTION)
                builtinData.distortion = surfaceDescription.Distortion;
                builtinData.distortionBlur = surfaceDescription.DistortionBlur;
                #endif
        
                #ifndef SHADER_UNLIT
                // PostInitBuiltinData call ApplyDebugToBuiltinData
                PostInitBuiltinData(V, posInput, surfaceData, builtinData);
                #else
                ApplyDebugToBuiltinData(builtinData);
                #endif
        
                RAY_TRACING_OPTIONAL_ALPHA_TEST_PASS
            }
        
            // --------------------------------------------------
            // Main
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPassRaytracingVisibility.hlsl"
        
            // --------------------------------------------------
            // Visual Effect Vertex Invocations
        
        	#ifdef HAVE_VFX_MODIFICATION
        	#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/VisualEffectVertex.hlsl"
        	#endif
        
            ENDHLSL
        }
        Pass
        {
            Name "ForwardDXR"
            Tags
            {
                "LightMode" = "ForwardDXR"
            }
        
            // Render State
            // RenderState: <None>
        
            // Debug
            // <None>
        
            // --------------------------------------------------
            // Pass
        
            HLSLPROGRAM
        
            // Pragmas
            #pragma target 5.0
        #pragma raytracing surface_shader
        #pragma only_renderers d3d11 xboxseries ps5
        
            // Keywords
            #pragma shader_feature_local _ _ALPHATEST_ON
        #pragma shader_feature _ _SURFACE_TYPE_TRANSPARENT
        #pragma shader_feature_local _ _DOUBLESIDED_ON
        #pragma shader_feature_local _ _ADD_PRECOMPUTED_VELOCITY
        #pragma shader_feature_local _ _TRANSPARENT_WRITES_MOTION_VEC
        #pragma shader_feature_local_fragment _ _ENABLE_FOG_ON_TRANSPARENT
        #pragma multi_compile _ DEBUG_DISPLAY
        #pragma shader_feature_local_fragment _ _DISABLE_DECALS
        #pragma shader_feature_local_raytracing _ _DISABLE_DECALS
        #pragma shader_feature_local_fragment _ _DISABLE_SSR
        #pragma shader_feature_local_raytracing _ _DISABLE_SSR
        #pragma shader_feature_local_fragment _ _DISABLE_SSR_TRANSPARENT
        #pragma shader_feature_local_raytracing _ _DISABLE_SSR_TRANSPARENT
        #pragma multi_compile _ LIGHTMAP_ON
        #pragma multi_compile _ DIRLIGHTMAP_COMBINED
        #pragma multi_compile_fragment PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2
        #pragma multi_compile_raytracing PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2
        #pragma multi_compile _ DYNAMICLIGHTMAP_ON
        #pragma shader_feature_local _ _REFRACTION_PLANE _REFRACTION_SPHERE _REFRACTION_THIN
            // GraphKeywords: <None>
        
            // For custom interpolators to inject a substruct definition before FragInputs definition,
            // allowing for FragInputs to capture CI's intended for ShaderGraph's SDI.
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPreInclude' */
        
        
            // TODO: Merge FragInputsVFX substruct with CustomInterpolators.
        	#ifdef HAVE_VFX_MODIFICATION
        	struct FragInputsVFX
            {
                /* WARNING: $splice Could not find named fragment 'FragInputsVFX' */
            };
            #endif
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/GeometricTools.hlsl" // Required by Tessellation.hlsl
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Tessellation.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl" // Required to be include before we include properties as it define DECLARE_STACK_CB
            // Always include Shader Graph version
            // Always include last to avoid double macros
            #include "Packages/com.unity.shadergraph/ShaderGraphLibrary/Functions.hlsl" // Need to be here for Gradient struct definition
        
            // --------------------------------------------------
            // Defines
        
            // Attribute
            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TANGENT
            #define ATTRIBUTES_NEED_TEXCOORD0
            #define ATTRIBUTES_NEED_TEXCOORD1
            #define ATTRIBUTES_NEED_TEXCOORD2
            #define VARYINGS_NEED_POSITION_WS
            #define VARYINGS_NEED_TANGENT_TO_WORLD
            #define VARYINGS_NEED_TEXCOORD0
            #define VARYINGS_NEED_TEXCOORD1
            #define VARYINGS_NEED_TEXCOORD2
        
        
            //Strip down the FragInputs.hlsl (on graphics), so we can only optimize the interpolators we use.
            //if by accident something requests contents of FragInputs.hlsl, it will be caught as a compiler error
            //Frag inputs stripping is only enabled when FRAG_INPUTS_ENABLE_STRIPPING is set
            #if !defined(SHADER_STAGE_RAY_TRACING) && SHADERPASS != SHADERPASS_RAYTRACING_GBUFFER && SHADERPASS != SHADERPASS_FULL_SCREEN_DEBUG
            #define FRAG_INPUTS_ENABLE_STRIPPING
            #endif
            #define FRAG_INPUTS_USE_TEXCOORD0
            #define FRAG_INPUTS_USE_TEXCOORD1
            #define FRAG_INPUTS_USE_TEXCOORD2
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
        
        
        
            #define SHADERPASS SHADERPASS_RAYTRACING_FORWARD
        #define SHADOW_LOW
        #define RAYTRACING_SHADER_GRAPH_RAYTRACED
        #define HAS_LIGHTLOOP 1
        
        
            // Following two define are a workaround introduce in 10.1.x for RaytracingQualityNode
            // The ShaderGraph don't support correctly migration of this node as it serialize all the node data
            // in the json file making it impossible to uprgrade. Until we get a fix, we do a workaround here
            // to still allow us to rename the field and keyword of this node without breaking existing code.
            #ifdef RAYTRACING_SHADER_GRAPH_DEFAULT
            #define RAYTRACING_SHADER_GRAPH_HIGH
            #endif
        
            #ifdef RAYTRACING_SHADER_GRAPH_RAYTRACED
            #define RAYTRACING_SHADER_GRAPH_LOW
            #endif
            // end
        
            #ifndef SHADER_UNLIT
            // We need isFrontFace when using double sided - it is not required for unlit as in case of unlit double sided only drive the cullmode
            // VARYINGS_NEED_CULLFACE can be define by VaryingsMeshToPS.FaceSign input if a IsFrontFace Node is included in the shader graph.
            #if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
                #define VARYINGS_NEED_CULLFACE
            #endif
            #endif
        
            // Specific Material Define
        #define _MATERIAL_FEATURE_TRANSMISSION 1
        #define _AMBIENT_OCCLUSION 1
        #define _SPECULAR_OCCLUSION_FROM_AO 1
        #define _ENERGY_CONSERVING_SPECULAR 1
        
        // If we use subsurface scattering, enable output split lighting (for forward pass)
        #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
            #define OUTPUT_SPLIT_LIGHTING
        #endif
        
        // This shader support recursive rendering for raytracing
        #define HAVE_RECURSIVE_RENDERING
        
        // In Path Tracing, For all single-sided, refractive materials, we want to force a thin refraction model
        #if (SHADERPASS == SHADERPASS_PATH_TRACING) && !defined(_DOUBLESIDED_ON) && (defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE))
            #undef  _REFRACTION_PLANE
            #undef  _REFRACTION_SPHERE
            #define _REFRACTION_THIN
        #endif
            // Caution: we can use the define SHADER_UNLIT onlit after the above Material include as it is the Unlit template who define it
        
            // To handle SSR on transparent correctly with a possibility to enable/disable it per framesettings
            // we should have a code like this:
            // if !defined(_DISABLE_SSR_TRANSPARENT)
            // pragma multi_compile _ WRITE_NORMAL_BUFFER
            // endif
            // i.e we enable the multicompile only if we can receive SSR or not, and then C# code drive
            // it based on if SSR transparent in frame settings and not (and stripper can strip it).
            // this is currently not possible with our current preprocessor as _DISABLE_SSR_TRANSPARENT is a keyword not a define
            // so instead we used this and chose to pay the extra cost of normal write even if SSR transaprent is disabled.
            // Ideally the shader graph generator should handle it but condition below can't be handle correctly for now.
            #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
            #if !defined(_DISABLE_SSR_TRANSPARENT) && !defined(SHADER_UNLIT)
                #define WRITE_NORMAL_BUFFER
            #endif
            #endif
        
            #ifndef DEBUG_DISPLAY
                // In case of opaque we don't want to perform the alpha test, it is done in depth prepass and we use depth equal for ztest (setup from UI)
                // Don't do it with debug display mode as it is possible there is no depth prepass in this case
                #if !defined(_SURFACE_TYPE_TRANSPARENT)
                    #if SHADERPASS == SHADERPASS_FORWARD
                    #define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
                    #elif SHADERPASS == SHADERPASS_GBUFFER
                    #define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
                    #endif
                #endif
            #endif
        
            // Define _DEFERRED_CAPABLE_MATERIAL for shader capable to run in deferred pass
            #if defined(SHADER_LIT) && !defined(_SURFACE_TYPE_TRANSPARENT)
                #define _DEFERRED_CAPABLE_MATERIAL
            #endif
        
            // Translate transparent motion vector define
            #if defined(_TRANSPARENT_WRITES_MOTION_VEC) && defined(_SURFACE_TYPE_TRANSPARENT)
                #define _WRITE_TRANSPARENT_MOTION_VECTOR
            #endif
        
            // -- Graph Properties
            CBUFFER_START(UnityPerMaterial)
        float4 _DiffusionProfileAsset;
        float _DiffusionProfileHash;
        float4 _TrunkBaseColor;
        float4 _BarkBaseColor;
        float _Backface_Thickness_Mask_Threshold;
        float2 _Backface_Thickness_Mask_Remap;
        float _Backface_Brightness;
        float _Cross_Backface_Mask_Power;
        float _Backface_Saturation;
        float4 _HealthyColor;
        float4 _DryColor;
        float _AlphaCutoff;
        float _AlphaShadowThreshold;
        float4 _BaseColorMap_TexelSize;
        float4 _TilingOffset;
        float _HealthyandDryColorNoisePower;
        float4 _NormalMap_TexelSize;
        float _NormalScale;
        float _AORemapMax;
        float _SmoothnessRemapMax;
        float4 _Mask_TexelSize;
        float _Thickness;
        float _WindNormalInfluence;
        float4 _VertexNormalMultiply;
        float _ColorNoiseTilling;
        float _Trunk_Normal_Scale;
        float _Global_Base_Brightness;
        float _Trunk_Smoothness_Remap_Max;
        float4 _EmissionColor;
        float _UseShadowThreshold;
        float4 _DoubleSidedConstants;
        float _BlendMode;
        float _EnableBlendModePreserveSpecularLighting;
        float _RayTracing;
        float _RefractionModel;
        CBUFFER_END
        
        
        // Object and Global properties
        SAMPLER(SamplerState_Linear_Repeat);
        SAMPLER(SamplerState_Linear_Repeat_Aniso8);
        TEXTURE2D(_BaseColorMap);
        SAMPLER(sampler_BaseColorMap);
        TEXTURE2D(_NormalMap);
        SAMPLER(sampler_NormalMap);
        TEXTURE2D(_Mask);
        SAMPLER(sampler_Mask);
        
            // -- Property used by ScenePickingPass
            #ifdef SCENEPICKINGPASS
            float4 _SelectionID;
            #endif
        
            // -- Properties used by SceneSelectionPass
            #ifdef SCENESELECTIONPASS
            int _ObjectId;
            int _PassValue;
            #endif
        
            // Includes
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/RaytracingMacros.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/ShaderVariablesRaytracing.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/ShaderVariablesRaytracingLightLoop.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/RaytracingIntersection.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/Lighting.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoopDef.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitRaytracing.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/RaytracingLightLoop.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/RayTracingCommon.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Hashes.hlsl"
        
            // --------------------------------------------------
            // Structs and Packing
        
            struct SurfaceDescriptionInputs
        {
             float3 TangentSpaceNormal;
             float3 AbsoluteWorldSpacePosition;
             float4 uv0;
        };
        
            //Interpolator Packs: <None>
        
            // --------------------------------------------------
            // Graph
        
        
            // Graph Functions
            
        void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
        {
            Out = UV * Tiling + Offset;
        }
        
        void Unity_Multiply_float4_float4(float4 A, float4 B, out float4 Out)
        {
            Out = A * B;
        }
        
        void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
        {
            Out = lerp(A, B, T);
        }
        
        float Unity_SimpleNoise_ValueNoise_LegacySine_float (float2 uv)
        {
            float2 i = floor(uv);
            float2 f = frac(uv);
            f = f * f * (3.0 - 2.0 * f);
            uv = abs(frac(uv) - 0.5);
            float2 c0 = i + float2(0.0, 0.0);
            float2 c1 = i + float2(1.0, 0.0);
            float2 c2 = i + float2(0.0, 1.0);
            float2 c3 = i + float2(1.0, 1.0);
            float r0; Hash_LegacySine_2_1_float(c0, r0);
            float r1; Hash_LegacySine_2_1_float(c1, r1);
            float r2; Hash_LegacySine_2_1_float(c2, r2);
            float r3; Hash_LegacySine_2_1_float(c3, r3);
            float bottomOfGrid = lerp(r0, r1, f.x);
            float topOfGrid = lerp(r2, r3, f.x);
            float t = lerp(bottomOfGrid, topOfGrid, f.y);
            return t;
        }
        
        void Unity_SimpleNoise_LegacySine_float(float2 UV, float Scale, out float Out)
        {
            float freq, amp;
            Out = 0.0f;
            freq = pow(2.0, float(0));
            amp = pow(0.5, float(3-0));
            Out += Unity_SimpleNoise_ValueNoise_LegacySine_float(float2(UV.xy*(Scale/freq)))*amp;
            freq = pow(2.0, float(1));
            amp = pow(0.5, float(3-1));
            Out += Unity_SimpleNoise_ValueNoise_LegacySine_float(float2(UV.xy*(Scale/freq)))*amp;
            freq = pow(2.0, float(2));
            amp = pow(0.5, float(3-2));
            Out += Unity_SimpleNoise_ValueNoise_LegacySine_float(float2(UV.xy*(Scale/freq)))*amp;
        }
        
        void Unity_Absolute_float(float In, out float Out)
        {
            Out = abs(In);
        }
        
        void Unity_Power_float(float A, float B, out float Out)
        {
            Out = pow(A, B);
        }
        
        void Unity_Clamp_float(float In, float Min, float Max, out float Out)
        {
            Out = clamp(In, Min, Max);
        }
        
        void Unity_Saturation_float(float3 In, float Saturation, out float3 Out)
        {
            float luma = dot(In, float3(0.2126729, 0.7151522, 0.0721750));
            Out =  luma.xxx + Saturation.xxx * (In - luma.xxx);
        }
        
        void Unity_Blend_Screen_float3(float3 Base, float3 Blend, out float3 Out, float Opacity)
        {
            Out = 1.0 - (1.0 - Blend) * (1.0 - Base);
            Out = lerp(Base, Out, Opacity);
        }
        
        void Unity_Clamp_float3(float3 In, float3 Min, float3 Max, out float3 Out)
        {
            Out = clamp(In, Min, Max);
        }
        
        void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
        {
            Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
        }
        
        void Unity_OneMinus_float(float In, out float Out)
        {
            Out = 1 - In;
        }
        
        void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
        {
            Out = lerp(A, B, T);
        }
        
        void Unity_Multiply_float3_float3(float3 A, float3 B, out float3 Out)
        {
            Out = A * B;
        }
        
        void Unity_Lerp_float(float A, float B, float T, out float Out)
        {
            Out = lerp(A, B, T);
        }
        
        void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
        {
            Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
        }
        
        void Unity_Multiply_float_float(float A, float B, out float Out)
        {
            Out = A * B;
        }
        
            // Graph Vertex
            // GraphVertex: <None>
        
            // Graph Pixel
            struct SurfaceDescription
        {
            float3 BaseColor;
            float3 Emission;
            float Alpha;
            float AlphaClipThreshold;
            float AlphaClipThresholdShadow;
            float3 BentNormal;
            float Smoothness;
            float Occlusion;
            float3 NormalTS;
            float TransmissionMask;
            float Thickness;
            float DiffusionProfileHash;
        };
        
        SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
        {
            SurfaceDescription surface = (SurfaceDescription)0;
            UnityTexture2D _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_BaseColorMap);
            float4 _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4 = _TilingOffset;
            float _Split_60538633130155809820b3185c81057f_R_1_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[0];
            float _Split_60538633130155809820b3185c81057f_G_2_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[1];
            float _Split_60538633130155809820b3185c81057f_B_3_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[2];
            float _Split_60538633130155809820b3185c81057f_A_4_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[3];
            float2 _Vector2_83b2ea7a32ab548fb8c20dce14204561_Out_0_Vector2 = float2(_Split_60538633130155809820b3185c81057f_R_1_Float, _Split_60538633130155809820b3185c81057f_G_2_Float);
            float2 _Vector2_188e122ac0c7888f9f5fbde73f9edd75_Out_0_Vector2 = float2(_Split_60538633130155809820b3185c81057f_B_3_Float, _Split_60538633130155809820b3185c81057f_A_4_Float);
            float2 _TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2;
            Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_83b2ea7a32ab548fb8c20dce14204561_Out_0_Vector2, _Vector2_188e122ac0c7888f9f5fbde73f9edd75_Out_0_Vector2, _TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2);
            float4 _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.tex, _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.samplerstate, _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_R_4_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.r;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_G_5_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.g;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_B_6_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.b;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_A_7_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.a;
            float4 _Property_d37c4e2cc4f949f581f76dcb73d50e87_Out_0_Vector4 = _BarkBaseColor;
            float4 _Multiply_e4794b5d7e19433599f2b4e150644bea_Out_2_Vector4;
            Unity_Multiply_float4_float4(_SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4, _Property_d37c4e2cc4f949f581f76dcb73d50e87_Out_0_Vector4, _Multiply_e4794b5d7e19433599f2b4e150644bea_Out_2_Vector4);
            float4 _Property_0f3c5f287e8145bc95fd52cfba4b8fcc_Out_0_Vector4 = _TrunkBaseColor;
            float4 _Multiply_2453fa0c275a46cca1a866a080d90ddf_Out_2_Vector4;
            Unity_Multiply_float4_float4(_SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4, _Property_0f3c5f287e8145bc95fd52cfba4b8fcc_Out_0_Vector4, _Multiply_2453fa0c275a46cca1a866a080d90ddf_Out_2_Vector4);
            UnityTexture2D _Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_Mask);
            float4 _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_R_4_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.r;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.g;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_B_6_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.b;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_A_7_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.a;
            float4 _Lerp_9056381ab3034355b45968f0d1ff2f1a_Out_3_Vector4;
            Unity_Lerp_float4(_Multiply_e4794b5d7e19433599f2b4e150644bea_Out_2_Vector4, _Multiply_2453fa0c275a46cca1a866a080d90ddf_Out_2_Vector4, (_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_B_6_Float.xxxx), _Lerp_9056381ab3034355b45968f0d1ff2f1a_Out_3_Vector4);
            float4 _Property_944e0c60198849afb235eb9940da5dd9_Out_0_Vector4 = _DryColor;
            float4 _Property_621f9271d8734c81b9001229b0296656_Out_0_Vector4 = _HealthyColor;
            float _Split_99caf98864a9e980997a02cedd282dd0_R_1_Float = IN.AbsoluteWorldSpacePosition[0];
            float _Split_99caf98864a9e980997a02cedd282dd0_G_2_Float = IN.AbsoluteWorldSpacePosition[1];
            float _Split_99caf98864a9e980997a02cedd282dd0_B_3_Float = IN.AbsoluteWorldSpacePosition[2];
            float _Split_99caf98864a9e980997a02cedd282dd0_A_4_Float = 0;
            float2 _Vector2_ddc95fa04fb4858daf984190322978b9_Out_0_Vector2 = float2(_Split_99caf98864a9e980997a02cedd282dd0_R_1_Float, _Split_99caf98864a9e980997a02cedd282dd0_B_3_Float);
            float _Property_4d778d1ae72a416b96bf6cb1986a7d5d_Out_0_Float = _ColorNoiseTilling;
            float _SimpleNoise_96327065e2b0428f83e25f93c7e5a748_Out_2_Float;
            Unity_SimpleNoise_LegacySine_float(_Vector2_ddc95fa04fb4858daf984190322978b9_Out_0_Vector2, _Property_4d778d1ae72a416b96bf6cb1986a7d5d_Out_0_Float, _SimpleNoise_96327065e2b0428f83e25f93c7e5a748_Out_2_Float);
            float _Absolute_3da7acf58a45403cad1e7c432d78f027_Out_1_Float;
            Unity_Absolute_float(_SimpleNoise_96327065e2b0428f83e25f93c7e5a748_Out_2_Float, _Absolute_3da7acf58a45403cad1e7c432d78f027_Out_1_Float);
            float _Property_0dff529d33cb42e388c9d874effe6e19_Out_0_Float = _HealthyandDryColorNoisePower;
            float _Power_77b7c0eba07f4b9da46f2fa461c49201_Out_2_Float;
            Unity_Power_float(_Absolute_3da7acf58a45403cad1e7c432d78f027_Out_1_Float, _Property_0dff529d33cb42e388c9d874effe6e19_Out_0_Float, _Power_77b7c0eba07f4b9da46f2fa461c49201_Out_2_Float);
            float _Clamp_efb2cde09ec64325a2f78a848b0827b2_Out_3_Float;
            Unity_Clamp_float(_Power_77b7c0eba07f4b9da46f2fa461c49201_Out_2_Float, float(0), float(1), _Clamp_efb2cde09ec64325a2f78a848b0827b2_Out_3_Float);
            float4 _Lerp_b995ffde83d24283ac272745617fa60c_Out_3_Vector4;
            Unity_Lerp_float4(_Property_944e0c60198849afb235eb9940da5dd9_Out_0_Vector4, _Property_621f9271d8734c81b9001229b0296656_Out_0_Vector4, (_Clamp_efb2cde09ec64325a2f78a848b0827b2_Out_3_Float.xxxx), _Lerp_b995ffde83d24283ac272745617fa60c_Out_3_Vector4);
            float4 _Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4;
            Unity_Multiply_float4_float4(_SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4, _Lerp_b995ffde83d24283ac272745617fa60c_Out_3_Vector4, _Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4);
            float _Property_a52cc4db448642208842be98e18796fb_Out_0_Float = _Backface_Saturation;
            float3 _Saturation_1a5be2ae12084c59883f7d315d09cd80_Out_2_Vector3;
            Unity_Saturation_float((_Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4.xyz), _Property_a52cc4db448642208842be98e18796fb_Out_0_Float, _Saturation_1a5be2ae12084c59883f7d315d09cd80_Out_2_Vector3);
            float _Property_547f6c365f204d14a383183448811966_Out_0_Float = _Backface_Brightness;
            float3 _Blend_9d43ee127ca04ec09dd9151a833d8d61_Out_2_Vector3;
            Unity_Blend_Screen_float3(_Saturation_1a5be2ae12084c59883f7d315d09cd80_Out_2_Vector3, (_Property_547f6c365f204d14a383183448811966_Out_0_Float.xxx), _Blend_9d43ee127ca04ec09dd9151a833d8d61_Out_2_Vector3, float(1));
            float3 _Clamp_f7855b2ac55c4d43b25a4a1e56dbbbf7_Out_3_Vector3;
            Unity_Clamp_float3(_Blend_9d43ee127ca04ec09dd9151a833d8d61_Out_2_Vector3, float3(0, 0, 0), float3(1, 1, 1), _Clamp_f7855b2ac55c4d43b25a4a1e56dbbbf7_Out_3_Vector3);
            float2 _Property_b0a46b9c34574501a2f500d2f5745793_Out_0_Vector2 = _Backface_Thickness_Mask_Remap;
            float _Remap_bbbefbf0fbaf41d8a6d07b465d45488f_Out_3_Float;
            Unity_Remap_float(_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_A_7_Float, float2 (0, 1), _Property_b0a46b9c34574501a2f500d2f5745793_Out_0_Vector2, _Remap_bbbefbf0fbaf41d8a6d07b465d45488f_Out_3_Float);
            float _Clamp_6ac81c92e9a64e958055eca61b82e791_Out_3_Float;
            Unity_Clamp_float(_Remap_bbbefbf0fbaf41d8a6d07b465d45488f_Out_3_Float, float(0), float(1), _Clamp_6ac81c92e9a64e958055eca61b82e791_Out_3_Float);
            float _Property_3a1e9cc1507b46b2af88ab75dfc37b44_Out_0_Float = _Backface_Thickness_Mask_Threshold;
            float _Power_1fccfa34ffba46ceac25f1238aa4e1b5_Out_2_Float;
            Unity_Power_float(_Clamp_6ac81c92e9a64e958055eca61b82e791_Out_3_Float, _Property_3a1e9cc1507b46b2af88ab75dfc37b44_Out_0_Float, _Power_1fccfa34ffba46ceac25f1238aa4e1b5_Out_2_Float);
            float _Clamp_e55b4d1f4fda4e97bcfe15cfe9c6fd05_Out_3_Float;
            Unity_Clamp_float(_Power_1fccfa34ffba46ceac25f1238aa4e1b5_Out_2_Float, float(0), float(1), _Clamp_e55b4d1f4fda4e97bcfe15cfe9c6fd05_Out_3_Float);
            float _OneMinus_16a8ddad0aee4e5ca379aef306048984_Out_1_Float;
            Unity_OneMinus_float(_Clamp_e55b4d1f4fda4e97bcfe15cfe9c6fd05_Out_3_Float, _OneMinus_16a8ddad0aee4e5ca379aef306048984_Out_1_Float);
            float3 _Lerp_9c8a6dd2927446309acc26d9f217de99_Out_3_Vector3;
            Unity_Lerp_float3((_Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4.xyz), _Clamp_f7855b2ac55c4d43b25a4a1e56dbbbf7_Out_3_Vector3, (_OneMinus_16a8ddad0aee4e5ca379aef306048984_Out_1_Float.xxx), _Lerp_9c8a6dd2927446309acc26d9f217de99_Out_3_Vector3);
            float _Absolute_98dfaf1178334fc287f9e4d4b5f3a0f0_Out_1_Float;
            Unity_Absolute_float(_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_R_4_Float, _Absolute_98dfaf1178334fc287f9e4d4b5f3a0f0_Out_1_Float);
            float _Property_08b97a5bb158439e9155434b6637ac33_Out_0_Float = _Cross_Backface_Mask_Power;
            float _Power_c8f61d8af16945f9b82731ed18d38dd9_Out_2_Float;
            Unity_Power_float(_Absolute_98dfaf1178334fc287f9e4d4b5f3a0f0_Out_1_Float, _Property_08b97a5bb158439e9155434b6637ac33_Out_0_Float, _Power_c8f61d8af16945f9b82731ed18d38dd9_Out_2_Float);
            float _Clamp_c8b7bf714ebb484d8aa73d545b2f9d59_Out_3_Float;
            Unity_Clamp_float(_Power_c8f61d8af16945f9b82731ed18d38dd9_Out_2_Float, float(0), float(1), _Clamp_c8b7bf714ebb484d8aa73d545b2f9d59_Out_3_Float);
            float3 _Lerp_343d7507e4664bd7bc5108bcf0d55854_Out_3_Vector3;
            Unity_Lerp_float3(_Lerp_9c8a6dd2927446309acc26d9f217de99_Out_3_Vector3, (_Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4.xyz), (_Clamp_c8b7bf714ebb484d8aa73d545b2f9d59_Out_3_Float.xxx), _Lerp_343d7507e4664bd7bc5108bcf0d55854_Out_3_Vector3);
            float3 _Lerp_0d72c41eff034cfaaaf0208f4bf42433_Out_3_Vector3;
            Unity_Lerp_float3((_Lerp_9056381ab3034355b45968f0d1ff2f1a_Out_3_Vector4.xyz), _Lerp_343d7507e4664bd7bc5108bcf0d55854_Out_3_Vector3, (_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float.xxx), _Lerp_0d72c41eff034cfaaaf0208f4bf42433_Out_3_Vector3);
            float _Property_09c643c04af64fb18f3a77b935844ecc_Out_0_Float = _Global_Base_Brightness;
            float3 _Multiply_61b0f4818da94adfa23e13d8e3e376a8_Out_2_Vector3;
            Unity_Multiply_float3_float3(_Lerp_0d72c41eff034cfaaaf0208f4bf42433_Out_3_Vector3, (_Property_09c643c04af64fb18f3a77b935844ecc_Out_0_Float.xxx), _Multiply_61b0f4818da94adfa23e13d8e3e376a8_Out_2_Vector3);
            float3 _Clamp_359788e8ad134650b865e76600af6700_Out_3_Vector3;
            Unity_Clamp_float3(_Multiply_61b0f4818da94adfa23e13d8e3e376a8_Out_2_Vector3, float3(0, 0, 0), float3(1, 1, 1), _Clamp_359788e8ad134650b865e76600af6700_Out_3_Vector3);
            float _Property_067d68a770a25e8f978ca090306a96d8_Out_0_Float = _AlphaCutoff;
            float _Property_4b59dc86107847d5b565cde1e47efb8f_Out_0_Float = _AlphaShadowThreshold;
            float _Property_c35305c7157c4d3ba1db4ba61b2e2ebc_Out_0_Float = _Trunk_Smoothness_Remap_Max;
            float _Property_0edea7916ed7a189a62b0faf2c274601_Out_0_Float = _SmoothnessRemapMax;
            float _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float;
            Unity_Lerp_float(_Property_c35305c7157c4d3ba1db4ba61b2e2ebc_Out_0_Float, _Property_0edea7916ed7a189a62b0faf2c274601_Out_0_Float, _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float, _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float);
            float _Property_48e1c5285b48c78e8af19e38f4bd77f9_Out_0_Float = _AORemapMax;
            UnityTexture2D _Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_NormalMap);
            float4 _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.rgb = UnpackNormal(_SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4);
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_R_4_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.r;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_G_5_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.g;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_B_6_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.b;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_A_7_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.a;
            float _Property_b07156802a1240f7a8c14a272c5f1b36_Out_0_Float = _Trunk_Normal_Scale;
            float _Property_72e436a108ad64868e46d548c585c5f3_Out_0_Float = _NormalScale;
            float _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float;
            Unity_Lerp_float(_Property_b07156802a1240f7a8c14a272c5f1b36_Out_0_Float, _Property_72e436a108ad64868e46d548c585c5f3_Out_0_Float, _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float, _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float);
            float3 _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3;
            Unity_NormalStrength_float((_SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.xyz), _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float, _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3);
            float _Property_2fa2ab76399ae48aaf1180768279e6b9_Out_0_Float = _Thickness;
            float _Multiply_aed8020082acc482b9303a61b01a1a1a_Out_2_Float;
            Unity_Multiply_float_float(_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_A_7_Float, _Property_2fa2ab76399ae48aaf1180768279e6b9_Out_0_Float, _Multiply_aed8020082acc482b9303a61b01a1a1a_Out_2_Float);
            surface.BaseColor = _Clamp_359788e8ad134650b865e76600af6700_Out_3_Vector3;
            surface.Emission = float3(0, 0, 0);
            surface.Alpha = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_A_7_Float;
            surface.AlphaClipThreshold = _Property_067d68a770a25e8f978ca090306a96d8_Out_0_Float;
            surface.AlphaClipThresholdShadow = _Property_4b59dc86107847d5b565cde1e47efb8f_Out_0_Float;
            surface.BentNormal = IN.TangentSpaceNormal;
            surface.Smoothness = _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float;
            surface.Occlusion = _Property_48e1c5285b48c78e8af19e38f4bd77f9_Out_0_Float;
            surface.NormalTS = _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3;
            surface.TransmissionMask = float(1);
            surface.Thickness = _Multiply_aed8020082acc482b9303a61b01a1a1a_Out_2_Float;
            surface.DiffusionProfileHash = _DiffusionProfileHash;
            return surface;
        }
        
            // --------------------------------------------------
            // Build Graph Inputs
            #ifdef HAVE_VFX_MODIFICATION
            #define VFX_SRP_ATTRIBUTES AttributesMesh
            #define VaryingsMeshType VaryingsMeshToPS
            #define VFX_SRP_VARYINGS VaryingsMeshType
            #define VFX_SRP_SURFACE_INPUTS FragInputs
            #endif
            SurfaceDescriptionInputs FragInputsToSurfaceDescriptionInputs(FragInputs input, float3 viewWS)
        {
            SurfaceDescriptionInputs output;
            ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
        
            #if defined(SHADER_STAGE_RAY_TRACING)
            #else
            #endif
            output.TangentSpaceNormal =                         float3(0.0f, 0.0f, 1.0f);
            output.AbsoluteWorldSpacePosition =                 GetAbsolutePositionWS(input.positionRWS);
        
        #if UNITY_UV_STARTS_AT_TOP
        #else
        #endif
        
        
            output.uv0 =                                        input.texCoord0;
        
            // splice point to copy frag inputs custom interpolator pack into the SDI
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorCopyToSDI' */
        
            return output;
        }
        
            // --------------------------------------------------
            // Build Surface Data (Specific Material)
        
        void ApplyDecalToSurfaceDataNoNormal(DecalSurfaceData decalSurfaceData, inout SurfaceData surfaceData);
        
        void ApplyDecalAndGetNormal(FragInputs fragInputs, PositionInputs posInput, SurfaceDescription surfaceDescription,
            inout SurfaceData surfaceData)
        {
            float3 doubleSidedConstants = GetDoubleSidedConstants();
        
        #ifdef DECAL_NORMAL_BLENDING
            // SG nodes don't ouptut surface gradients, so if decals require surf grad blending, we have to convert
            // the normal to gradient before applying the decal. We then have to resolve the gradient back to world space
            float3 normalTS;
        
            normalTS = SurfaceGradientFromTangentSpaceNormalAndFromTBN(surfaceDescription.NormalTS,
            fragInputs.tangentToWorld[0], fragInputs.tangentToWorld[1]);
        
        
            #if HAVE_DECALS
            if (_EnableDecals)
            {
                float alpha = 1.0;
                alpha = surfaceDescription.Alpha;
        
                DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                ApplyDecalToSurfaceNormal(decalSurfaceData, fragInputs.tangentToWorld[2], normalTS);
                ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
            }
            #endif
        
            GetNormalWS_SG(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);
        #else
            // normal delivered to master node
            GetNormalWS(fragInputs, surfaceDescription.NormalTS, surfaceData.normalWS, doubleSidedConstants);
        
            #if HAVE_DECALS
            if (_EnableDecals)
            {
                float alpha = 1.0;
                alpha = surfaceDescription.Alpha;
        
                // Both uses and modifies 'surfaceData.normalWS'.
                DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                ApplyDecalToSurfaceNormal(decalSurfaceData, surfaceData.normalWS.xyz);
                ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
            }
            #endif
        #endif
        }
        void BuildSurfaceData(FragInputs fragInputs, inout SurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
        {
            ZERO_INITIALIZE(SurfaceData, surfaceData);
        
            // specularOcclusion need to be init ahead of decal to quiet the compiler that modify the SurfaceData struct
            // however specularOcclusion can come from the graph, so need to be init here so it can be override.
            surfaceData.specularOcclusion = 1.0;
        
            surfaceData.baseColor =                 surfaceDescription.BaseColor;
            surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
            surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
            surfaceData.transmissionMask =          surfaceDescription.TransmissionMask;
            surfaceData.thickness =                 surfaceDescription.Thickness;
            surfaceData.diffusionProfileHash =      asuint(surfaceDescription.DiffusionProfileHash);
        
            #if defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE) || defined(_REFRACTION_THIN)
                if (_EnableSSRefraction)
                {
        
                    surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                    surfaceDescription.Alpha = 1.0;
                }
                else
                {
                    surfaceData.ior = 1.0;
                    surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                    surfaceData.atDistance = 1.0;
                    surfaceData.transmittanceMask = 0.0;
                    surfaceDescription.Alpha = 1.0;
                }
            #else
                surfaceData.ior = 1.0;
                surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                surfaceData.atDistance = 1.0;
                surfaceData.transmittanceMask = 0.0;
            #endif
        
            // These static material feature allow compile time optimization
            surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
            #ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
            #endif
        
            #ifdef _MATERIAL_FEATURE_TRANSMISSION
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
            #endif
        
            #ifdef _MATERIAL_FEATURE_ANISOTROPY
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
        
                // Initialize the normal to something non-zero to avoid a div-zero warning for anisotropy.
                surfaceData.normalWS = float3(0, 1, 0);
            #endif
        
            #ifdef _MATERIAL_FEATURE_IRIDESCENCE
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
            #endif
        
            #ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
            #endif
        
            #ifdef _MATERIAL_FEATURE_CLEAR_COAT
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
            #endif
        
            #if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                // Require to have setup baseColor
                // Reproduce the energy conservation done in legacy Unity. Not ideal but better for compatibility and users can unchek it
                surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
            #endif
        
            float3 doubleSidedConstants = GetDoubleSidedConstants();
        
            ApplyDecalAndGetNormal(fragInputs, posInput, surfaceDescription, surfaceData);
        
            surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
        
            surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
        
        
            bentNormalWS = surfaceData.normalWS;
        
            surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);
        
            #ifdef DEBUG_DISPLAY
                if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                {
                    // TODO: need to update mip info
                    surfaceData.metallic = 0;
                }
        
                // We need to call ApplyDebugToSurfaceData after filling the surfarcedata and before filling builtinData
                // as it can modify attribute use for static lighting
                ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
            #endif
        
            // By default we use the ambient occlusion with Tri-ace trick (apply outside) for specular occlusion.
            // If user provide bent normal then we process a better term
            #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                // Just use the value passed through via the slot (not active otherwise)
            #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                // If we have bent normal and ambient occlusion, process a specular occlusion
                surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
            #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
                surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
            #endif
        
            #if defined(_ENABLE_GEOMETRIC_SPECULAR_AA) && !defined(SHADER_STAGE_RAY_TRACING)
                surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
            #endif
        }
        
            // --------------------------------------------------
            // Get Surface And BuiltinData
        
            void GetSurfaceAndBuiltinData(FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData RAY_TRACING_OPTIONAL_PARAMETERS)
            {
                // Don't dither if displaced tessellation (we're fading out the displacement instead to match the next LOD)
                #if !defined(SHADER_STAGE_RAY_TRACING) && !defined(_TESSELLATION_DISPLACEMENT)
                #ifdef LOD_FADE_CROSSFADE // enable dithering LOD transition if user select CrossFade transition in LOD group
                LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
                #endif
                #endif
        
                #ifndef SHADER_UNLIT
                #ifdef _DOUBLESIDED_ON
                    float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
                #else
                    float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
                #endif
        
                ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants); // Apply double sided flip on the vertex normal
                #endif // SHADER_UNLIT
        
                SurfaceDescriptionInputs surfaceDescriptionInputs = FragInputsToSurfaceDescriptionInputs(fragInputs, V);
        
                #if defined(HAVE_VFX_MODIFICATION)
                GraphProperties properties;
                ZERO_INITIALIZE(GraphProperties, properties);
        
                GetElementPixelProperties(fragInputs, properties);
        
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs, properties);
                #else
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs);
                #endif
        
                // Perform alpha test very early to save performance (a killed pixel will not sample textures)
                // TODO: split graph evaluation to grab just alpha dependencies first? tricky..
                #ifdef _ALPHATEST_ON
                    float alphaCutoff = surfaceDescription.AlphaClipThreshold;
                    #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
                    // The TransparentDepthPrepass is also used with SSR transparent.
                    // If an artists enable transaprent SSR but not the TransparentDepthPrepass itself, then we use AlphaClipThreshold
                    // otherwise if TransparentDepthPrepass is enabled we use AlphaClipThresholdDepthPrepass
                    #elif SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_POSTPASS
                    // DepthPostpass always use its own alpha threshold
                    alphaCutoff = surfaceDescription.AlphaClipThresholdDepthPostpass;
                    #elif (SHADERPASS == SHADERPASS_SHADOWS) || (SHADERPASS == SHADERPASS_RAYTRACING_VISIBILITY)
                    // If use shadow threshold isn't enable we don't allow any test
                    #endif
        
                    GENERIC_ALPHA_TEST(surfaceDescription.Alpha, alphaCutoff);
                #endif
        
                #if !defined(SHADER_STAGE_RAY_TRACING) && _DEPTHOFFSET_ON
                ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
                #endif
        
                #ifndef SHADER_UNLIT
                float3 bentNormalWS;
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS);
        
                #ifdef FRAG_INPUTS_USE_TEXCOORD1
                    float4 lightmapTexCoord1 = fragInputs.texCoord1;
                #else
                    float4 lightmapTexCoord1 = float4(0,0,0,0);
                #endif
        
                #ifdef FRAG_INPUTS_USE_TEXCOORD2
                    float4 lightmapTexCoord2 = fragInputs.texCoord2;
                #else
                    float4 lightmapTexCoord2 = float4(0,0,0,0);
                #endif
        
                // Builtin Data
                // For back lighting we use the oposite vertex normal
                InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], lightmapTexCoord1, lightmapTexCoord2, builtinData);
        
                #else
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData);
        
                ZERO_BUILTIN_INITIALIZE(builtinData); // No call to InitBuiltinData as we don't have any lighting
                builtinData.opacity = surfaceDescription.Alpha;
        
                #if defined(DEBUG_DISPLAY)
                    // Light Layers are currently not used for the Unlit shader (because it is not lit)
                    // But Unlit objects do cast shadows according to their rendering layer mask, which is what we want to
                    // display in the light layers visualization mode, therefore we need the renderingLayers
                    builtinData.renderingLayers = GetMeshRenderingLightLayer();
                #endif
        
                #endif // SHADER_UNLIT
        
                #ifdef _ALPHATEST_ON
                    // Used for sharpening by alpha to mask - Alpha to covertage is only used with depth only and forward pass (no shadow pass, no transparent pass)
                    builtinData.alphaClipTreshold = alphaCutoff;
                #endif
        
                // override sampleBakedGI - not used by Unlit
        
                builtinData.emissiveColor = surfaceDescription.Emission;
        
                // Note this will not fully work on transparent surfaces (can check with _SURFACE_TYPE_TRANSPARENT define)
                // We will always overwrite vt feeback with the nearest. So behind transparent surfaces vt will not be resolved
                // This is a limitation of the current MRT approach.
                #ifdef UNITY_VIRTUAL_TEXTURING
                #endif
        
                #if _DEPTHOFFSET_ON
                builtinData.depthOffset = surfaceDescription.DepthOffset;
                #endif
        
                // TODO: We should generate distortion / distortionBlur for non distortion pass
                #if (SHADERPASS == SHADERPASS_DISTORTION)
                builtinData.distortion = surfaceDescription.Distortion;
                builtinData.distortionBlur = surfaceDescription.DistortionBlur;
                #endif
        
                #ifndef SHADER_UNLIT
                // PostInitBuiltinData call ApplyDebugToBuiltinData
                PostInitBuiltinData(V, posInput, surfaceData, builtinData);
                #else
                ApplyDebugToBuiltinData(builtinData);
                #endif
        
                RAY_TRACING_OPTIONAL_ALPHA_TEST_PASS
            }
        
            // --------------------------------------------------
            // Main
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPassRaytracingForward.hlsl"
        
            // --------------------------------------------------
            // Visual Effect Vertex Invocations
        
        	#ifdef HAVE_VFX_MODIFICATION
        	#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/VisualEffectVertex.hlsl"
        	#endif
        
            ENDHLSL
        }
        Pass
        {
            Name "GBufferDXR"
            Tags
            {
                "LightMode" = "GBufferDXR"
            }
        
            // Render State
            // RenderState: <None>
        
            // Debug
            // <None>
        
            // --------------------------------------------------
            // Pass
        
            HLSLPROGRAM
        
            // Pragmas
            #pragma target 5.0
        #pragma raytracing surface_shader
        #pragma only_renderers d3d11 xboxseries ps5
        
            // Keywords
            #pragma multi_compile _ MINIMAL_GBUFFER
        #pragma shader_feature_local _ _ALPHATEST_ON
        #pragma shader_feature _ _SURFACE_TYPE_TRANSPARENT
        #pragma shader_feature_local _ _DOUBLESIDED_ON
        #pragma shader_feature_local _ _ADD_PRECOMPUTED_VELOCITY
        #pragma shader_feature_local _ _TRANSPARENT_WRITES_MOTION_VEC
        #pragma shader_feature_local_fragment _ _ENABLE_FOG_ON_TRANSPARENT
        #pragma multi_compile _ DEBUG_DISPLAY
        #pragma shader_feature_local_fragment _ _DISABLE_DECALS
        #pragma shader_feature_local_raytracing _ _DISABLE_DECALS
        #pragma shader_feature_local_fragment _ _DISABLE_SSR
        #pragma shader_feature_local_raytracing _ _DISABLE_SSR
        #pragma shader_feature_local_fragment _ _DISABLE_SSR_TRANSPARENT
        #pragma shader_feature_local_raytracing _ _DISABLE_SSR_TRANSPARENT
        #pragma multi_compile _ LIGHTMAP_ON
        #pragma multi_compile _ DIRLIGHTMAP_COMBINED
        #pragma multi_compile_fragment PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2
        #pragma multi_compile_raytracing PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2
        #pragma multi_compile _ DYNAMICLIGHTMAP_ON
        #pragma shader_feature_local _ _REFRACTION_PLANE _REFRACTION_SPHERE _REFRACTION_THIN
            // GraphKeywords: <None>
        
            // For custom interpolators to inject a substruct definition before FragInputs definition,
            // allowing for FragInputs to capture CI's intended for ShaderGraph's SDI.
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPreInclude' */
        
        
            // TODO: Merge FragInputsVFX substruct with CustomInterpolators.
        	#ifdef HAVE_VFX_MODIFICATION
        	struct FragInputsVFX
            {
                /* WARNING: $splice Could not find named fragment 'FragInputsVFX' */
            };
            #endif
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/GeometricTools.hlsl" // Required by Tessellation.hlsl
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Tessellation.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl" // Required to be include before we include properties as it define DECLARE_STACK_CB
            // Always include Shader Graph version
            // Always include last to avoid double macros
            #include "Packages/com.unity.shadergraph/ShaderGraphLibrary/Functions.hlsl" // Need to be here for Gradient struct definition
        
            // --------------------------------------------------
            // Defines
        
            // Attribute
            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TANGENT
            #define ATTRIBUTES_NEED_TEXCOORD0
            #define ATTRIBUTES_NEED_TEXCOORD1
            #define ATTRIBUTES_NEED_TEXCOORD2
            #define VARYINGS_NEED_POSITION_WS
            #define VARYINGS_NEED_TANGENT_TO_WORLD
            #define VARYINGS_NEED_TEXCOORD0
            #define VARYINGS_NEED_TEXCOORD1
            #define VARYINGS_NEED_TEXCOORD2
        
        
            //Strip down the FragInputs.hlsl (on graphics), so we can only optimize the interpolators we use.
            //if by accident something requests contents of FragInputs.hlsl, it will be caught as a compiler error
            //Frag inputs stripping is only enabled when FRAG_INPUTS_ENABLE_STRIPPING is set
            #if !defined(SHADER_STAGE_RAY_TRACING) && SHADERPASS != SHADERPASS_RAYTRACING_GBUFFER && SHADERPASS != SHADERPASS_FULL_SCREEN_DEBUG
            #define FRAG_INPUTS_ENABLE_STRIPPING
            #endif
            #define FRAG_INPUTS_USE_TEXCOORD0
            #define FRAG_INPUTS_USE_TEXCOORD1
            #define FRAG_INPUTS_USE_TEXCOORD2
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
        
        
        
            #define SHADERPASS SHADERPASS_RAYTRACING_GBUFFER
        #define SHADOW_LOW
        #define RAYTRACING_SHADER_GRAPH_RAYTRACED
        
        
            // Following two define are a workaround introduce in 10.1.x for RaytracingQualityNode
            // The ShaderGraph don't support correctly migration of this node as it serialize all the node data
            // in the json file making it impossible to uprgrade. Until we get a fix, we do a workaround here
            // to still allow us to rename the field and keyword of this node without breaking existing code.
            #ifdef RAYTRACING_SHADER_GRAPH_DEFAULT
            #define RAYTRACING_SHADER_GRAPH_HIGH
            #endif
        
            #ifdef RAYTRACING_SHADER_GRAPH_RAYTRACED
            #define RAYTRACING_SHADER_GRAPH_LOW
            #endif
            // end
        
            #ifndef SHADER_UNLIT
            // We need isFrontFace when using double sided - it is not required for unlit as in case of unlit double sided only drive the cullmode
            // VARYINGS_NEED_CULLFACE can be define by VaryingsMeshToPS.FaceSign input if a IsFrontFace Node is included in the shader graph.
            #if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
                #define VARYINGS_NEED_CULLFACE
            #endif
            #endif
        
            // Specific Material Define
        #define _MATERIAL_FEATURE_TRANSMISSION 1
        #define _AMBIENT_OCCLUSION 1
        #define _SPECULAR_OCCLUSION_FROM_AO 1
        #define _ENERGY_CONSERVING_SPECULAR 1
        
        // If we use subsurface scattering, enable output split lighting (for forward pass)
        #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
            #define OUTPUT_SPLIT_LIGHTING
        #endif
        
        // This shader support recursive rendering for raytracing
        #define HAVE_RECURSIVE_RENDERING
        
        // In Path Tracing, For all single-sided, refractive materials, we want to force a thin refraction model
        #if (SHADERPASS == SHADERPASS_PATH_TRACING) && !defined(_DOUBLESIDED_ON) && (defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE))
            #undef  _REFRACTION_PLANE
            #undef  _REFRACTION_SPHERE
            #define _REFRACTION_THIN
        #endif
            // Caution: we can use the define SHADER_UNLIT onlit after the above Material include as it is the Unlit template who define it
        
            // To handle SSR on transparent correctly with a possibility to enable/disable it per framesettings
            // we should have a code like this:
            // if !defined(_DISABLE_SSR_TRANSPARENT)
            // pragma multi_compile _ WRITE_NORMAL_BUFFER
            // endif
            // i.e we enable the multicompile only if we can receive SSR or not, and then C# code drive
            // it based on if SSR transparent in frame settings and not (and stripper can strip it).
            // this is currently not possible with our current preprocessor as _DISABLE_SSR_TRANSPARENT is a keyword not a define
            // so instead we used this and chose to pay the extra cost of normal write even if SSR transaprent is disabled.
            // Ideally the shader graph generator should handle it but condition below can't be handle correctly for now.
            #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
            #if !defined(_DISABLE_SSR_TRANSPARENT) && !defined(SHADER_UNLIT)
                #define WRITE_NORMAL_BUFFER
            #endif
            #endif
        
            #ifndef DEBUG_DISPLAY
                // In case of opaque we don't want to perform the alpha test, it is done in depth prepass and we use depth equal for ztest (setup from UI)
                // Don't do it with debug display mode as it is possible there is no depth prepass in this case
                #if !defined(_SURFACE_TYPE_TRANSPARENT)
                    #if SHADERPASS == SHADERPASS_FORWARD
                    #define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
                    #elif SHADERPASS == SHADERPASS_GBUFFER
                    #define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
                    #endif
                #endif
            #endif
        
            // Define _DEFERRED_CAPABLE_MATERIAL for shader capable to run in deferred pass
            #if defined(SHADER_LIT) && !defined(_SURFACE_TYPE_TRANSPARENT)
                #define _DEFERRED_CAPABLE_MATERIAL
            #endif
        
            // Translate transparent motion vector define
            #if defined(_TRANSPARENT_WRITES_MOTION_VEC) && defined(_SURFACE_TYPE_TRANSPARENT)
                #define _WRITE_TRANSPARENT_MOTION_VECTOR
            #endif
        
            // -- Graph Properties
            CBUFFER_START(UnityPerMaterial)
        float4 _DiffusionProfileAsset;
        float _DiffusionProfileHash;
        float4 _TrunkBaseColor;
        float4 _BarkBaseColor;
        float _Backface_Thickness_Mask_Threshold;
        float2 _Backface_Thickness_Mask_Remap;
        float _Backface_Brightness;
        float _Cross_Backface_Mask_Power;
        float _Backface_Saturation;
        float4 _HealthyColor;
        float4 _DryColor;
        float _AlphaCutoff;
        float _AlphaShadowThreshold;
        float4 _BaseColorMap_TexelSize;
        float4 _TilingOffset;
        float _HealthyandDryColorNoisePower;
        float4 _NormalMap_TexelSize;
        float _NormalScale;
        float _AORemapMax;
        float _SmoothnessRemapMax;
        float4 _Mask_TexelSize;
        float _Thickness;
        float _WindNormalInfluence;
        float4 _VertexNormalMultiply;
        float _ColorNoiseTilling;
        float _Trunk_Normal_Scale;
        float _Global_Base_Brightness;
        float _Trunk_Smoothness_Remap_Max;
        float4 _EmissionColor;
        float _UseShadowThreshold;
        float4 _DoubleSidedConstants;
        float _BlendMode;
        float _EnableBlendModePreserveSpecularLighting;
        float _RayTracing;
        float _RefractionModel;
        CBUFFER_END
        
        
        // Object and Global properties
        SAMPLER(SamplerState_Linear_Repeat);
        SAMPLER(SamplerState_Linear_Repeat_Aniso8);
        TEXTURE2D(_BaseColorMap);
        SAMPLER(sampler_BaseColorMap);
        TEXTURE2D(_NormalMap);
        SAMPLER(sampler_NormalMap);
        TEXTURE2D(_Mask);
        SAMPLER(sampler_Mask);
        
            // -- Property used by ScenePickingPass
            #ifdef SCENEPICKINGPASS
            float4 _SelectionID;
            #endif
        
            // -- Properties used by SceneSelectionPass
            #ifdef SCENESELECTIONPASS
            int _ObjectId;
            int _PassValue;
            #endif
        
            // Includes
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/RaytracingMacros.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/ShaderVariablesRaytracing.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/ShaderVariablesRaytracingLightLoop.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/Deferred/RaytracingIntersectonGBuffer.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/StandardLit/StandardLit.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitRaytracing.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/RayTracingCommon.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Hashes.hlsl"
        
            // --------------------------------------------------
            // Structs and Packing
        
            struct SurfaceDescriptionInputs
        {
             float3 TangentSpaceNormal;
             float3 AbsoluteWorldSpacePosition;
             float4 uv0;
        };
        
            //Interpolator Packs: <None>
        
            // --------------------------------------------------
            // Graph
        
        
            // Graph Functions
            
        void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
        {
            Out = UV * Tiling + Offset;
        }
        
        void Unity_Multiply_float4_float4(float4 A, float4 B, out float4 Out)
        {
            Out = A * B;
        }
        
        void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
        {
            Out = lerp(A, B, T);
        }
        
        float Unity_SimpleNoise_ValueNoise_LegacySine_float (float2 uv)
        {
            float2 i = floor(uv);
            float2 f = frac(uv);
            f = f * f * (3.0 - 2.0 * f);
            uv = abs(frac(uv) - 0.5);
            float2 c0 = i + float2(0.0, 0.0);
            float2 c1 = i + float2(1.0, 0.0);
            float2 c2 = i + float2(0.0, 1.0);
            float2 c3 = i + float2(1.0, 1.0);
            float r0; Hash_LegacySine_2_1_float(c0, r0);
            float r1; Hash_LegacySine_2_1_float(c1, r1);
            float r2; Hash_LegacySine_2_1_float(c2, r2);
            float r3; Hash_LegacySine_2_1_float(c3, r3);
            float bottomOfGrid = lerp(r0, r1, f.x);
            float topOfGrid = lerp(r2, r3, f.x);
            float t = lerp(bottomOfGrid, topOfGrid, f.y);
            return t;
        }
        
        void Unity_SimpleNoise_LegacySine_float(float2 UV, float Scale, out float Out)
        {
            float freq, amp;
            Out = 0.0f;
            freq = pow(2.0, float(0));
            amp = pow(0.5, float(3-0));
            Out += Unity_SimpleNoise_ValueNoise_LegacySine_float(float2(UV.xy*(Scale/freq)))*amp;
            freq = pow(2.0, float(1));
            amp = pow(0.5, float(3-1));
            Out += Unity_SimpleNoise_ValueNoise_LegacySine_float(float2(UV.xy*(Scale/freq)))*amp;
            freq = pow(2.0, float(2));
            amp = pow(0.5, float(3-2));
            Out += Unity_SimpleNoise_ValueNoise_LegacySine_float(float2(UV.xy*(Scale/freq)))*amp;
        }
        
        void Unity_Absolute_float(float In, out float Out)
        {
            Out = abs(In);
        }
        
        void Unity_Power_float(float A, float B, out float Out)
        {
            Out = pow(A, B);
        }
        
        void Unity_Clamp_float(float In, float Min, float Max, out float Out)
        {
            Out = clamp(In, Min, Max);
        }
        
        void Unity_Saturation_float(float3 In, float Saturation, out float3 Out)
        {
            float luma = dot(In, float3(0.2126729, 0.7151522, 0.0721750));
            Out =  luma.xxx + Saturation.xxx * (In - luma.xxx);
        }
        
        void Unity_Blend_Screen_float3(float3 Base, float3 Blend, out float3 Out, float Opacity)
        {
            Out = 1.0 - (1.0 - Blend) * (1.0 - Base);
            Out = lerp(Base, Out, Opacity);
        }
        
        void Unity_Clamp_float3(float3 In, float3 Min, float3 Max, out float3 Out)
        {
            Out = clamp(In, Min, Max);
        }
        
        void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
        {
            Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
        }
        
        void Unity_OneMinus_float(float In, out float Out)
        {
            Out = 1 - In;
        }
        
        void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
        {
            Out = lerp(A, B, T);
        }
        
        void Unity_Multiply_float3_float3(float3 A, float3 B, out float3 Out)
        {
            Out = A * B;
        }
        
        void Unity_Lerp_float(float A, float B, float T, out float Out)
        {
            Out = lerp(A, B, T);
        }
        
        void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
        {
            Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
        }
        
        void Unity_Multiply_float_float(float A, float B, out float Out)
        {
            Out = A * B;
        }
        
            // Graph Vertex
            // GraphVertex: <None>
        
            // Graph Pixel
            struct SurfaceDescription
        {
            float3 BaseColor;
            float3 Emission;
            float Alpha;
            float AlphaClipThreshold;
            float AlphaClipThresholdShadow;
            float3 BentNormal;
            float Smoothness;
            float Occlusion;
            float3 NormalTS;
            float TransmissionMask;
            float Thickness;
            float DiffusionProfileHash;
        };
        
        SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
        {
            SurfaceDescription surface = (SurfaceDescription)0;
            UnityTexture2D _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_BaseColorMap);
            float4 _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4 = _TilingOffset;
            float _Split_60538633130155809820b3185c81057f_R_1_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[0];
            float _Split_60538633130155809820b3185c81057f_G_2_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[1];
            float _Split_60538633130155809820b3185c81057f_B_3_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[2];
            float _Split_60538633130155809820b3185c81057f_A_4_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[3];
            float2 _Vector2_83b2ea7a32ab548fb8c20dce14204561_Out_0_Vector2 = float2(_Split_60538633130155809820b3185c81057f_R_1_Float, _Split_60538633130155809820b3185c81057f_G_2_Float);
            float2 _Vector2_188e122ac0c7888f9f5fbde73f9edd75_Out_0_Vector2 = float2(_Split_60538633130155809820b3185c81057f_B_3_Float, _Split_60538633130155809820b3185c81057f_A_4_Float);
            float2 _TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2;
            Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_83b2ea7a32ab548fb8c20dce14204561_Out_0_Vector2, _Vector2_188e122ac0c7888f9f5fbde73f9edd75_Out_0_Vector2, _TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2);
            float4 _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.tex, _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.samplerstate, _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_R_4_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.r;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_G_5_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.g;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_B_6_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.b;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_A_7_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.a;
            float4 _Property_d37c4e2cc4f949f581f76dcb73d50e87_Out_0_Vector4 = _BarkBaseColor;
            float4 _Multiply_e4794b5d7e19433599f2b4e150644bea_Out_2_Vector4;
            Unity_Multiply_float4_float4(_SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4, _Property_d37c4e2cc4f949f581f76dcb73d50e87_Out_0_Vector4, _Multiply_e4794b5d7e19433599f2b4e150644bea_Out_2_Vector4);
            float4 _Property_0f3c5f287e8145bc95fd52cfba4b8fcc_Out_0_Vector4 = _TrunkBaseColor;
            float4 _Multiply_2453fa0c275a46cca1a866a080d90ddf_Out_2_Vector4;
            Unity_Multiply_float4_float4(_SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4, _Property_0f3c5f287e8145bc95fd52cfba4b8fcc_Out_0_Vector4, _Multiply_2453fa0c275a46cca1a866a080d90ddf_Out_2_Vector4);
            UnityTexture2D _Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_Mask);
            float4 _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_R_4_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.r;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.g;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_B_6_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.b;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_A_7_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.a;
            float4 _Lerp_9056381ab3034355b45968f0d1ff2f1a_Out_3_Vector4;
            Unity_Lerp_float4(_Multiply_e4794b5d7e19433599f2b4e150644bea_Out_2_Vector4, _Multiply_2453fa0c275a46cca1a866a080d90ddf_Out_2_Vector4, (_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_B_6_Float.xxxx), _Lerp_9056381ab3034355b45968f0d1ff2f1a_Out_3_Vector4);
            float4 _Property_944e0c60198849afb235eb9940da5dd9_Out_0_Vector4 = _DryColor;
            float4 _Property_621f9271d8734c81b9001229b0296656_Out_0_Vector4 = _HealthyColor;
            float _Split_99caf98864a9e980997a02cedd282dd0_R_1_Float = IN.AbsoluteWorldSpacePosition[0];
            float _Split_99caf98864a9e980997a02cedd282dd0_G_2_Float = IN.AbsoluteWorldSpacePosition[1];
            float _Split_99caf98864a9e980997a02cedd282dd0_B_3_Float = IN.AbsoluteWorldSpacePosition[2];
            float _Split_99caf98864a9e980997a02cedd282dd0_A_4_Float = 0;
            float2 _Vector2_ddc95fa04fb4858daf984190322978b9_Out_0_Vector2 = float2(_Split_99caf98864a9e980997a02cedd282dd0_R_1_Float, _Split_99caf98864a9e980997a02cedd282dd0_B_3_Float);
            float _Property_4d778d1ae72a416b96bf6cb1986a7d5d_Out_0_Float = _ColorNoiseTilling;
            float _SimpleNoise_96327065e2b0428f83e25f93c7e5a748_Out_2_Float;
            Unity_SimpleNoise_LegacySine_float(_Vector2_ddc95fa04fb4858daf984190322978b9_Out_0_Vector2, _Property_4d778d1ae72a416b96bf6cb1986a7d5d_Out_0_Float, _SimpleNoise_96327065e2b0428f83e25f93c7e5a748_Out_2_Float);
            float _Absolute_3da7acf58a45403cad1e7c432d78f027_Out_1_Float;
            Unity_Absolute_float(_SimpleNoise_96327065e2b0428f83e25f93c7e5a748_Out_2_Float, _Absolute_3da7acf58a45403cad1e7c432d78f027_Out_1_Float);
            float _Property_0dff529d33cb42e388c9d874effe6e19_Out_0_Float = _HealthyandDryColorNoisePower;
            float _Power_77b7c0eba07f4b9da46f2fa461c49201_Out_2_Float;
            Unity_Power_float(_Absolute_3da7acf58a45403cad1e7c432d78f027_Out_1_Float, _Property_0dff529d33cb42e388c9d874effe6e19_Out_0_Float, _Power_77b7c0eba07f4b9da46f2fa461c49201_Out_2_Float);
            float _Clamp_efb2cde09ec64325a2f78a848b0827b2_Out_3_Float;
            Unity_Clamp_float(_Power_77b7c0eba07f4b9da46f2fa461c49201_Out_2_Float, float(0), float(1), _Clamp_efb2cde09ec64325a2f78a848b0827b2_Out_3_Float);
            float4 _Lerp_b995ffde83d24283ac272745617fa60c_Out_3_Vector4;
            Unity_Lerp_float4(_Property_944e0c60198849afb235eb9940da5dd9_Out_0_Vector4, _Property_621f9271d8734c81b9001229b0296656_Out_0_Vector4, (_Clamp_efb2cde09ec64325a2f78a848b0827b2_Out_3_Float.xxxx), _Lerp_b995ffde83d24283ac272745617fa60c_Out_3_Vector4);
            float4 _Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4;
            Unity_Multiply_float4_float4(_SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4, _Lerp_b995ffde83d24283ac272745617fa60c_Out_3_Vector4, _Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4);
            float _Property_a52cc4db448642208842be98e18796fb_Out_0_Float = _Backface_Saturation;
            float3 _Saturation_1a5be2ae12084c59883f7d315d09cd80_Out_2_Vector3;
            Unity_Saturation_float((_Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4.xyz), _Property_a52cc4db448642208842be98e18796fb_Out_0_Float, _Saturation_1a5be2ae12084c59883f7d315d09cd80_Out_2_Vector3);
            float _Property_547f6c365f204d14a383183448811966_Out_0_Float = _Backface_Brightness;
            float3 _Blend_9d43ee127ca04ec09dd9151a833d8d61_Out_2_Vector3;
            Unity_Blend_Screen_float3(_Saturation_1a5be2ae12084c59883f7d315d09cd80_Out_2_Vector3, (_Property_547f6c365f204d14a383183448811966_Out_0_Float.xxx), _Blend_9d43ee127ca04ec09dd9151a833d8d61_Out_2_Vector3, float(1));
            float3 _Clamp_f7855b2ac55c4d43b25a4a1e56dbbbf7_Out_3_Vector3;
            Unity_Clamp_float3(_Blend_9d43ee127ca04ec09dd9151a833d8d61_Out_2_Vector3, float3(0, 0, 0), float3(1, 1, 1), _Clamp_f7855b2ac55c4d43b25a4a1e56dbbbf7_Out_3_Vector3);
            float2 _Property_b0a46b9c34574501a2f500d2f5745793_Out_0_Vector2 = _Backface_Thickness_Mask_Remap;
            float _Remap_bbbefbf0fbaf41d8a6d07b465d45488f_Out_3_Float;
            Unity_Remap_float(_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_A_7_Float, float2 (0, 1), _Property_b0a46b9c34574501a2f500d2f5745793_Out_0_Vector2, _Remap_bbbefbf0fbaf41d8a6d07b465d45488f_Out_3_Float);
            float _Clamp_6ac81c92e9a64e958055eca61b82e791_Out_3_Float;
            Unity_Clamp_float(_Remap_bbbefbf0fbaf41d8a6d07b465d45488f_Out_3_Float, float(0), float(1), _Clamp_6ac81c92e9a64e958055eca61b82e791_Out_3_Float);
            float _Property_3a1e9cc1507b46b2af88ab75dfc37b44_Out_0_Float = _Backface_Thickness_Mask_Threshold;
            float _Power_1fccfa34ffba46ceac25f1238aa4e1b5_Out_2_Float;
            Unity_Power_float(_Clamp_6ac81c92e9a64e958055eca61b82e791_Out_3_Float, _Property_3a1e9cc1507b46b2af88ab75dfc37b44_Out_0_Float, _Power_1fccfa34ffba46ceac25f1238aa4e1b5_Out_2_Float);
            float _Clamp_e55b4d1f4fda4e97bcfe15cfe9c6fd05_Out_3_Float;
            Unity_Clamp_float(_Power_1fccfa34ffba46ceac25f1238aa4e1b5_Out_2_Float, float(0), float(1), _Clamp_e55b4d1f4fda4e97bcfe15cfe9c6fd05_Out_3_Float);
            float _OneMinus_16a8ddad0aee4e5ca379aef306048984_Out_1_Float;
            Unity_OneMinus_float(_Clamp_e55b4d1f4fda4e97bcfe15cfe9c6fd05_Out_3_Float, _OneMinus_16a8ddad0aee4e5ca379aef306048984_Out_1_Float);
            float3 _Lerp_9c8a6dd2927446309acc26d9f217de99_Out_3_Vector3;
            Unity_Lerp_float3((_Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4.xyz), _Clamp_f7855b2ac55c4d43b25a4a1e56dbbbf7_Out_3_Vector3, (_OneMinus_16a8ddad0aee4e5ca379aef306048984_Out_1_Float.xxx), _Lerp_9c8a6dd2927446309acc26d9f217de99_Out_3_Vector3);
            float _Absolute_98dfaf1178334fc287f9e4d4b5f3a0f0_Out_1_Float;
            Unity_Absolute_float(_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_R_4_Float, _Absolute_98dfaf1178334fc287f9e4d4b5f3a0f0_Out_1_Float);
            float _Property_08b97a5bb158439e9155434b6637ac33_Out_0_Float = _Cross_Backface_Mask_Power;
            float _Power_c8f61d8af16945f9b82731ed18d38dd9_Out_2_Float;
            Unity_Power_float(_Absolute_98dfaf1178334fc287f9e4d4b5f3a0f0_Out_1_Float, _Property_08b97a5bb158439e9155434b6637ac33_Out_0_Float, _Power_c8f61d8af16945f9b82731ed18d38dd9_Out_2_Float);
            float _Clamp_c8b7bf714ebb484d8aa73d545b2f9d59_Out_3_Float;
            Unity_Clamp_float(_Power_c8f61d8af16945f9b82731ed18d38dd9_Out_2_Float, float(0), float(1), _Clamp_c8b7bf714ebb484d8aa73d545b2f9d59_Out_3_Float);
            float3 _Lerp_343d7507e4664bd7bc5108bcf0d55854_Out_3_Vector3;
            Unity_Lerp_float3(_Lerp_9c8a6dd2927446309acc26d9f217de99_Out_3_Vector3, (_Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4.xyz), (_Clamp_c8b7bf714ebb484d8aa73d545b2f9d59_Out_3_Float.xxx), _Lerp_343d7507e4664bd7bc5108bcf0d55854_Out_3_Vector3);
            float3 _Lerp_0d72c41eff034cfaaaf0208f4bf42433_Out_3_Vector3;
            Unity_Lerp_float3((_Lerp_9056381ab3034355b45968f0d1ff2f1a_Out_3_Vector4.xyz), _Lerp_343d7507e4664bd7bc5108bcf0d55854_Out_3_Vector3, (_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float.xxx), _Lerp_0d72c41eff034cfaaaf0208f4bf42433_Out_3_Vector3);
            float _Property_09c643c04af64fb18f3a77b935844ecc_Out_0_Float = _Global_Base_Brightness;
            float3 _Multiply_61b0f4818da94adfa23e13d8e3e376a8_Out_2_Vector3;
            Unity_Multiply_float3_float3(_Lerp_0d72c41eff034cfaaaf0208f4bf42433_Out_3_Vector3, (_Property_09c643c04af64fb18f3a77b935844ecc_Out_0_Float.xxx), _Multiply_61b0f4818da94adfa23e13d8e3e376a8_Out_2_Vector3);
            float3 _Clamp_359788e8ad134650b865e76600af6700_Out_3_Vector3;
            Unity_Clamp_float3(_Multiply_61b0f4818da94adfa23e13d8e3e376a8_Out_2_Vector3, float3(0, 0, 0), float3(1, 1, 1), _Clamp_359788e8ad134650b865e76600af6700_Out_3_Vector3);
            float _Property_067d68a770a25e8f978ca090306a96d8_Out_0_Float = _AlphaCutoff;
            float _Property_4b59dc86107847d5b565cde1e47efb8f_Out_0_Float = _AlphaShadowThreshold;
            float _Property_c35305c7157c4d3ba1db4ba61b2e2ebc_Out_0_Float = _Trunk_Smoothness_Remap_Max;
            float _Property_0edea7916ed7a189a62b0faf2c274601_Out_0_Float = _SmoothnessRemapMax;
            float _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float;
            Unity_Lerp_float(_Property_c35305c7157c4d3ba1db4ba61b2e2ebc_Out_0_Float, _Property_0edea7916ed7a189a62b0faf2c274601_Out_0_Float, _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float, _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float);
            float _Property_48e1c5285b48c78e8af19e38f4bd77f9_Out_0_Float = _AORemapMax;
            UnityTexture2D _Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_NormalMap);
            float4 _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.rgb = UnpackNormal(_SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4);
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_R_4_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.r;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_G_5_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.g;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_B_6_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.b;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_A_7_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.a;
            float _Property_b07156802a1240f7a8c14a272c5f1b36_Out_0_Float = _Trunk_Normal_Scale;
            float _Property_72e436a108ad64868e46d548c585c5f3_Out_0_Float = _NormalScale;
            float _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float;
            Unity_Lerp_float(_Property_b07156802a1240f7a8c14a272c5f1b36_Out_0_Float, _Property_72e436a108ad64868e46d548c585c5f3_Out_0_Float, _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float, _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float);
            float3 _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3;
            Unity_NormalStrength_float((_SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.xyz), _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float, _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3);
            float _Property_2fa2ab76399ae48aaf1180768279e6b9_Out_0_Float = _Thickness;
            float _Multiply_aed8020082acc482b9303a61b01a1a1a_Out_2_Float;
            Unity_Multiply_float_float(_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_A_7_Float, _Property_2fa2ab76399ae48aaf1180768279e6b9_Out_0_Float, _Multiply_aed8020082acc482b9303a61b01a1a1a_Out_2_Float);
            surface.BaseColor = _Clamp_359788e8ad134650b865e76600af6700_Out_3_Vector3;
            surface.Emission = float3(0, 0, 0);
            surface.Alpha = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_A_7_Float;
            surface.AlphaClipThreshold = _Property_067d68a770a25e8f978ca090306a96d8_Out_0_Float;
            surface.AlphaClipThresholdShadow = _Property_4b59dc86107847d5b565cde1e47efb8f_Out_0_Float;
            surface.BentNormal = IN.TangentSpaceNormal;
            surface.Smoothness = _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float;
            surface.Occlusion = _Property_48e1c5285b48c78e8af19e38f4bd77f9_Out_0_Float;
            surface.NormalTS = _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3;
            surface.TransmissionMask = float(1);
            surface.Thickness = _Multiply_aed8020082acc482b9303a61b01a1a1a_Out_2_Float;
            surface.DiffusionProfileHash = _DiffusionProfileHash;
            return surface;
        }
        
            // --------------------------------------------------
            // Build Graph Inputs
            #ifdef HAVE_VFX_MODIFICATION
            #define VFX_SRP_ATTRIBUTES AttributesMesh
            #define VaryingsMeshType VaryingsMeshToPS
            #define VFX_SRP_VARYINGS VaryingsMeshType
            #define VFX_SRP_SURFACE_INPUTS FragInputs
            #endif
            SurfaceDescriptionInputs FragInputsToSurfaceDescriptionInputs(FragInputs input, float3 viewWS)
        {
            SurfaceDescriptionInputs output;
            ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
        
            #if defined(SHADER_STAGE_RAY_TRACING)
            #else
            #endif
            output.TangentSpaceNormal =                         float3(0.0f, 0.0f, 1.0f);
            output.AbsoluteWorldSpacePosition =                 GetAbsolutePositionWS(input.positionRWS);
        
        #if UNITY_UV_STARTS_AT_TOP
        #else
        #endif
        
        
            output.uv0 =                                        input.texCoord0;
        
            // splice point to copy frag inputs custom interpolator pack into the SDI
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorCopyToSDI' */
        
            return output;
        }
        
            // --------------------------------------------------
            // Build Surface Data (Specific Material)
        
        void ApplyDecalToSurfaceDataNoNormal(DecalSurfaceData decalSurfaceData, inout SurfaceData surfaceData);
        
        void ApplyDecalAndGetNormal(FragInputs fragInputs, PositionInputs posInput, SurfaceDescription surfaceDescription,
            inout SurfaceData surfaceData)
        {
            float3 doubleSidedConstants = GetDoubleSidedConstants();
        
        #ifdef DECAL_NORMAL_BLENDING
            // SG nodes don't ouptut surface gradients, so if decals require surf grad blending, we have to convert
            // the normal to gradient before applying the decal. We then have to resolve the gradient back to world space
            float3 normalTS;
        
            normalTS = SurfaceGradientFromTangentSpaceNormalAndFromTBN(surfaceDescription.NormalTS,
            fragInputs.tangentToWorld[0], fragInputs.tangentToWorld[1]);
        
        
            #if HAVE_DECALS
            if (_EnableDecals)
            {
                float alpha = 1.0;
                alpha = surfaceDescription.Alpha;
        
                DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                ApplyDecalToSurfaceNormal(decalSurfaceData, fragInputs.tangentToWorld[2], normalTS);
                ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
            }
            #endif
        
            GetNormalWS_SG(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);
        #else
            // normal delivered to master node
            GetNormalWS(fragInputs, surfaceDescription.NormalTS, surfaceData.normalWS, doubleSidedConstants);
        
            #if HAVE_DECALS
            if (_EnableDecals)
            {
                float alpha = 1.0;
                alpha = surfaceDescription.Alpha;
        
                // Both uses and modifies 'surfaceData.normalWS'.
                DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                ApplyDecalToSurfaceNormal(decalSurfaceData, surfaceData.normalWS.xyz);
                ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
            }
            #endif
        #endif
        }
        void BuildSurfaceData(FragInputs fragInputs, inout SurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
        {
            ZERO_INITIALIZE(SurfaceData, surfaceData);
        
            // specularOcclusion need to be init ahead of decal to quiet the compiler that modify the SurfaceData struct
            // however specularOcclusion can come from the graph, so need to be init here so it can be override.
            surfaceData.specularOcclusion = 1.0;
        
            surfaceData.baseColor =                 surfaceDescription.BaseColor;
            surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
            surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
            surfaceData.transmissionMask =          surfaceDescription.TransmissionMask;
            surfaceData.thickness =                 surfaceDescription.Thickness;
            surfaceData.diffusionProfileHash =      asuint(surfaceDescription.DiffusionProfileHash);
        
            #if defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE) || defined(_REFRACTION_THIN)
                if (_EnableSSRefraction)
                {
        
                    surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                    surfaceDescription.Alpha = 1.0;
                }
                else
                {
                    surfaceData.ior = 1.0;
                    surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                    surfaceData.atDistance = 1.0;
                    surfaceData.transmittanceMask = 0.0;
                    surfaceDescription.Alpha = 1.0;
                }
            #else
                surfaceData.ior = 1.0;
                surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                surfaceData.atDistance = 1.0;
                surfaceData.transmittanceMask = 0.0;
            #endif
        
            // These static material feature allow compile time optimization
            surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
            #ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
            #endif
        
            #ifdef _MATERIAL_FEATURE_TRANSMISSION
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
            #endif
        
            #ifdef _MATERIAL_FEATURE_ANISOTROPY
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
        
                // Initialize the normal to something non-zero to avoid a div-zero warning for anisotropy.
                surfaceData.normalWS = float3(0, 1, 0);
            #endif
        
            #ifdef _MATERIAL_FEATURE_IRIDESCENCE
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
            #endif
        
            #ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
            #endif
        
            #ifdef _MATERIAL_FEATURE_CLEAR_COAT
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
            #endif
        
            #if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                // Require to have setup baseColor
                // Reproduce the energy conservation done in legacy Unity. Not ideal but better for compatibility and users can unchek it
                surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
            #endif
        
            float3 doubleSidedConstants = GetDoubleSidedConstants();
        
            ApplyDecalAndGetNormal(fragInputs, posInput, surfaceDescription, surfaceData);
        
            surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
        
            surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
        
        
            bentNormalWS = surfaceData.normalWS;
        
            surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);
        
            #ifdef DEBUG_DISPLAY
                if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                {
                    // TODO: need to update mip info
                    surfaceData.metallic = 0;
                }
        
                // We need to call ApplyDebugToSurfaceData after filling the surfarcedata and before filling builtinData
                // as it can modify attribute use for static lighting
                ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
            #endif
        
            // By default we use the ambient occlusion with Tri-ace trick (apply outside) for specular occlusion.
            // If user provide bent normal then we process a better term
            #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                // Just use the value passed through via the slot (not active otherwise)
            #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                // If we have bent normal and ambient occlusion, process a specular occlusion
                surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
            #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
                surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
            #endif
        
            #if defined(_ENABLE_GEOMETRIC_SPECULAR_AA) && !defined(SHADER_STAGE_RAY_TRACING)
                surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
            #endif
        }
        
            // --------------------------------------------------
            // Get Surface And BuiltinData
        
            void GetSurfaceAndBuiltinData(FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData RAY_TRACING_OPTIONAL_PARAMETERS)
            {
                // Don't dither if displaced tessellation (we're fading out the displacement instead to match the next LOD)
                #if !defined(SHADER_STAGE_RAY_TRACING) && !defined(_TESSELLATION_DISPLACEMENT)
                #ifdef LOD_FADE_CROSSFADE // enable dithering LOD transition if user select CrossFade transition in LOD group
                LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
                #endif
                #endif
        
                #ifndef SHADER_UNLIT
                #ifdef _DOUBLESIDED_ON
                    float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
                #else
                    float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
                #endif
        
                ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants); // Apply double sided flip on the vertex normal
                #endif // SHADER_UNLIT
        
                SurfaceDescriptionInputs surfaceDescriptionInputs = FragInputsToSurfaceDescriptionInputs(fragInputs, V);
        
                #if defined(HAVE_VFX_MODIFICATION)
                GraphProperties properties;
                ZERO_INITIALIZE(GraphProperties, properties);
        
                GetElementPixelProperties(fragInputs, properties);
        
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs, properties);
                #else
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs);
                #endif
        
                // Perform alpha test very early to save performance (a killed pixel will not sample textures)
                // TODO: split graph evaluation to grab just alpha dependencies first? tricky..
                #ifdef _ALPHATEST_ON
                    float alphaCutoff = surfaceDescription.AlphaClipThreshold;
                    #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
                    // The TransparentDepthPrepass is also used with SSR transparent.
                    // If an artists enable transaprent SSR but not the TransparentDepthPrepass itself, then we use AlphaClipThreshold
                    // otherwise if TransparentDepthPrepass is enabled we use AlphaClipThresholdDepthPrepass
                    #elif SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_POSTPASS
                    // DepthPostpass always use its own alpha threshold
                    alphaCutoff = surfaceDescription.AlphaClipThresholdDepthPostpass;
                    #elif (SHADERPASS == SHADERPASS_SHADOWS) || (SHADERPASS == SHADERPASS_RAYTRACING_VISIBILITY)
                    // If use shadow threshold isn't enable we don't allow any test
                    #endif
        
                    GENERIC_ALPHA_TEST(surfaceDescription.Alpha, alphaCutoff);
                #endif
        
                #if !defined(SHADER_STAGE_RAY_TRACING) && _DEPTHOFFSET_ON
                ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
                #endif
        
                #ifndef SHADER_UNLIT
                float3 bentNormalWS;
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS);
        
                #ifdef FRAG_INPUTS_USE_TEXCOORD1
                    float4 lightmapTexCoord1 = fragInputs.texCoord1;
                #else
                    float4 lightmapTexCoord1 = float4(0,0,0,0);
                #endif
        
                #ifdef FRAG_INPUTS_USE_TEXCOORD2
                    float4 lightmapTexCoord2 = fragInputs.texCoord2;
                #else
                    float4 lightmapTexCoord2 = float4(0,0,0,0);
                #endif
        
                // Builtin Data
                // For back lighting we use the oposite vertex normal
                InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], lightmapTexCoord1, lightmapTexCoord2, builtinData);
        
                #else
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData);
        
                ZERO_BUILTIN_INITIALIZE(builtinData); // No call to InitBuiltinData as we don't have any lighting
                builtinData.opacity = surfaceDescription.Alpha;
        
                #if defined(DEBUG_DISPLAY)
                    // Light Layers are currently not used for the Unlit shader (because it is not lit)
                    // But Unlit objects do cast shadows according to their rendering layer mask, which is what we want to
                    // display in the light layers visualization mode, therefore we need the renderingLayers
                    builtinData.renderingLayers = GetMeshRenderingLightLayer();
                #endif
        
                #endif // SHADER_UNLIT
        
                #ifdef _ALPHATEST_ON
                    // Used for sharpening by alpha to mask - Alpha to covertage is only used with depth only and forward pass (no shadow pass, no transparent pass)
                    builtinData.alphaClipTreshold = alphaCutoff;
                #endif
        
                // override sampleBakedGI - not used by Unlit
        
                builtinData.emissiveColor = surfaceDescription.Emission;
        
                // Note this will not fully work on transparent surfaces (can check with _SURFACE_TYPE_TRANSPARENT define)
                // We will always overwrite vt feeback with the nearest. So behind transparent surfaces vt will not be resolved
                // This is a limitation of the current MRT approach.
                #ifdef UNITY_VIRTUAL_TEXTURING
                #endif
        
                #if _DEPTHOFFSET_ON
                builtinData.depthOffset = surfaceDescription.DepthOffset;
                #endif
        
                // TODO: We should generate distortion / distortionBlur for non distortion pass
                #if (SHADERPASS == SHADERPASS_DISTORTION)
                builtinData.distortion = surfaceDescription.Distortion;
                builtinData.distortionBlur = surfaceDescription.DistortionBlur;
                #endif
        
                #ifndef SHADER_UNLIT
                // PostInitBuiltinData call ApplyDebugToBuiltinData
                PostInitBuiltinData(V, posInput, surfaceData, builtinData);
                #else
                ApplyDebugToBuiltinData(builtinData);
                #endif
        
                RAY_TRACING_OPTIONAL_ALPHA_TEST_PASS
            }
        
            // --------------------------------------------------
            // Main
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPassRaytracingGBuffer.hlsl"
        
            // --------------------------------------------------
            // Visual Effect Vertex Invocations
        
        	#ifdef HAVE_VFX_MODIFICATION
        	#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/VisualEffectVertex.hlsl"
        	#endif
        
            ENDHLSL
        }
        Pass
        {
            Name "DebugDXR"
            Tags
            {
                "LightMode" = "DebugDXR"
            }
        
            // Debug
            // <None>
        
            // --------------------------------------------------
            // Pass
        
            HLSLPROGRAM
        
            // Pragmas
            #pragma target 5.0
        #pragma raytracing surface_shader
        #pragma only_renderers d3d11 xboxseries ps5
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
        
            // Includes
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/RaytracingMacros.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/ShaderVariablesRaytracing.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/RaytracingIntersection.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/RayTracingCommon.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Hashes.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPassRaytracingDebug.hlsl"
        
            ENDHLSL
        }
        Pass
        {
            Name "PathTracingDXR"
            Tags
            {
                "LightMode" = "PathTracingDXR"
            }
        
            // Render State
            // RenderState: <None>
        
            // Debug
            // <None>
        
            // --------------------------------------------------
            // Pass
        
            HLSLPROGRAM
        
            // Pragmas
            #pragma target 5.0
        #pragma raytracing surface_shader
        #pragma only_renderers d3d11 xboxseries ps5
        
            // Keywords
            #pragma shader_feature_local _ _ALPHATEST_ON
        #pragma shader_feature _ _SURFACE_TYPE_TRANSPARENT
        #pragma shader_feature_local _ _DOUBLESIDED_ON
        #pragma shader_feature_local _ _ADD_PRECOMPUTED_VELOCITY
        #pragma shader_feature_local _ _TRANSPARENT_WRITES_MOTION_VEC
        #pragma shader_feature_local_fragment _ _ENABLE_FOG_ON_TRANSPARENT
        #pragma shader_feature_local_fragment _ _DISABLE_DECALS
        #pragma shader_feature_local_raytracing _ _DISABLE_DECALS
        #pragma shader_feature_local_fragment _ _DISABLE_SSR
        #pragma shader_feature_local_raytracing _ _DISABLE_SSR
        #pragma shader_feature_local_fragment _ _DISABLE_SSR_TRANSPARENT
        #pragma shader_feature_local_raytracing _ _DISABLE_SSR_TRANSPARENT
        #pragma shader_feature_local _ _REFRACTION_PLANE _REFRACTION_SPHERE _REFRACTION_THIN
            // GraphKeywords: <None>
        
            // For custom interpolators to inject a substruct definition before FragInputs definition,
            // allowing for FragInputs to capture CI's intended for ShaderGraph's SDI.
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPreInclude' */
        
        
            // TODO: Merge FragInputsVFX substruct with CustomInterpolators.
        	#ifdef HAVE_VFX_MODIFICATION
        	struct FragInputsVFX
            {
                /* WARNING: $splice Could not find named fragment 'FragInputsVFX' */
            };
            #endif
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/GeometricTools.hlsl" // Required by Tessellation.hlsl
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Tessellation.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl" // Required to be include before we include properties as it define DECLARE_STACK_CB
            // Always include Shader Graph version
            // Always include last to avoid double macros
            #include "Packages/com.unity.shadergraph/ShaderGraphLibrary/Functions.hlsl" // Need to be here for Gradient struct definition
        
            // --------------------------------------------------
            // Defines
        
            // Attribute
            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TANGENT
            #define ATTRIBUTES_NEED_TEXCOORD0
            #define ATTRIBUTES_NEED_TEXCOORD1
            #define ATTRIBUTES_NEED_TEXCOORD2
            #define VARYINGS_NEED_POSITION_WS
            #define VARYINGS_NEED_TANGENT_TO_WORLD
            #define VARYINGS_NEED_TEXCOORD0
            #define VARYINGS_NEED_TEXCOORD1
            #define VARYINGS_NEED_TEXCOORD2
        
        
            //Strip down the FragInputs.hlsl (on graphics), so we can only optimize the interpolators we use.
            //if by accident something requests contents of FragInputs.hlsl, it will be caught as a compiler error
            //Frag inputs stripping is only enabled when FRAG_INPUTS_ENABLE_STRIPPING is set
            #if !defined(SHADER_STAGE_RAY_TRACING) && SHADERPASS != SHADERPASS_RAYTRACING_GBUFFER && SHADERPASS != SHADERPASS_FULL_SCREEN_DEBUG
            #define FRAG_INPUTS_ENABLE_STRIPPING
            #endif
            #define FRAG_INPUTS_USE_TEXCOORD0
            #define FRAG_INPUTS_USE_TEXCOORD1
            #define FRAG_INPUTS_USE_TEXCOORD2
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
        
        
        
            #define SHADERPASS SHADERPASS_PATH_TRACING
        #define SHADOW_LOW
        #define RAYTRACING_SHADER_GRAPH_DEFAULT
        #define HAS_LIGHTLOOP 1
        
        
            // Following two define are a workaround introduce in 10.1.x for RaytracingQualityNode
            // The ShaderGraph don't support correctly migration of this node as it serialize all the node data
            // in the json file making it impossible to uprgrade. Until we get a fix, we do a workaround here
            // to still allow us to rename the field and keyword of this node without breaking existing code.
            #ifdef RAYTRACING_SHADER_GRAPH_DEFAULT
            #define RAYTRACING_SHADER_GRAPH_HIGH
            #endif
        
            #ifdef RAYTRACING_SHADER_GRAPH_RAYTRACED
            #define RAYTRACING_SHADER_GRAPH_LOW
            #endif
            // end
        
            #ifndef SHADER_UNLIT
            // We need isFrontFace when using double sided - it is not required for unlit as in case of unlit double sided only drive the cullmode
            // VARYINGS_NEED_CULLFACE can be define by VaryingsMeshToPS.FaceSign input if a IsFrontFace Node is included in the shader graph.
            #if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
                #define VARYINGS_NEED_CULLFACE
            #endif
            #endif
        
            // Specific Material Define
        #define _MATERIAL_FEATURE_TRANSMISSION 1
        #define _AMBIENT_OCCLUSION 1
        #define _SPECULAR_OCCLUSION_FROM_AO 1
        #define _ENERGY_CONSERVING_SPECULAR 1
        
        // If we use subsurface scattering, enable output split lighting (for forward pass)
        #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
            #define OUTPUT_SPLIT_LIGHTING
        #endif
        
        // This shader support recursive rendering for raytracing
        #define HAVE_RECURSIVE_RENDERING
        
        // In Path Tracing, For all single-sided, refractive materials, we want to force a thin refraction model
        #if (SHADERPASS == SHADERPASS_PATH_TRACING) && !defined(_DOUBLESIDED_ON) && (defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE))
            #undef  _REFRACTION_PLANE
            #undef  _REFRACTION_SPHERE
            #define _REFRACTION_THIN
        #endif
            // Caution: we can use the define SHADER_UNLIT onlit after the above Material include as it is the Unlit template who define it
        
            // To handle SSR on transparent correctly with a possibility to enable/disable it per framesettings
            // we should have a code like this:
            // if !defined(_DISABLE_SSR_TRANSPARENT)
            // pragma multi_compile _ WRITE_NORMAL_BUFFER
            // endif
            // i.e we enable the multicompile only if we can receive SSR or not, and then C# code drive
            // it based on if SSR transparent in frame settings and not (and stripper can strip it).
            // this is currently not possible with our current preprocessor as _DISABLE_SSR_TRANSPARENT is a keyword not a define
            // so instead we used this and chose to pay the extra cost of normal write even if SSR transaprent is disabled.
            // Ideally the shader graph generator should handle it but condition below can't be handle correctly for now.
            #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
            #if !defined(_DISABLE_SSR_TRANSPARENT) && !defined(SHADER_UNLIT)
                #define WRITE_NORMAL_BUFFER
            #endif
            #endif
        
            #ifndef DEBUG_DISPLAY
                // In case of opaque we don't want to perform the alpha test, it is done in depth prepass and we use depth equal for ztest (setup from UI)
                // Don't do it with debug display mode as it is possible there is no depth prepass in this case
                #if !defined(_SURFACE_TYPE_TRANSPARENT)
                    #if SHADERPASS == SHADERPASS_FORWARD
                    #define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
                    #elif SHADERPASS == SHADERPASS_GBUFFER
                    #define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
                    #endif
                #endif
            #endif
        
            // Define _DEFERRED_CAPABLE_MATERIAL for shader capable to run in deferred pass
            #if defined(SHADER_LIT) && !defined(_SURFACE_TYPE_TRANSPARENT)
                #define _DEFERRED_CAPABLE_MATERIAL
            #endif
        
            // Translate transparent motion vector define
            #if defined(_TRANSPARENT_WRITES_MOTION_VEC) && defined(_SURFACE_TYPE_TRANSPARENT)
                #define _WRITE_TRANSPARENT_MOTION_VECTOR
            #endif
        
            // -- Graph Properties
            CBUFFER_START(UnityPerMaterial)
        float4 _DiffusionProfileAsset;
        float _DiffusionProfileHash;
        float4 _TrunkBaseColor;
        float4 _BarkBaseColor;
        float _Backface_Thickness_Mask_Threshold;
        float2 _Backface_Thickness_Mask_Remap;
        float _Backface_Brightness;
        float _Cross_Backface_Mask_Power;
        float _Backface_Saturation;
        float4 _HealthyColor;
        float4 _DryColor;
        float _AlphaCutoff;
        float _AlphaShadowThreshold;
        float4 _BaseColorMap_TexelSize;
        float4 _TilingOffset;
        float _HealthyandDryColorNoisePower;
        float4 _NormalMap_TexelSize;
        float _NormalScale;
        float _AORemapMax;
        float _SmoothnessRemapMax;
        float4 _Mask_TexelSize;
        float _Thickness;
        float _WindNormalInfluence;
        float4 _VertexNormalMultiply;
        float _ColorNoiseTilling;
        float _Trunk_Normal_Scale;
        float _Global_Base_Brightness;
        float _Trunk_Smoothness_Remap_Max;
        float4 _EmissionColor;
        float _UseShadowThreshold;
        float4 _DoubleSidedConstants;
        float _BlendMode;
        float _EnableBlendModePreserveSpecularLighting;
        float _RayTracing;
        float _RefractionModel;
        CBUFFER_END
        
        
        // Object and Global properties
        SAMPLER(SamplerState_Linear_Repeat);
        SAMPLER(SamplerState_Linear_Repeat_Aniso8);
        TEXTURE2D(_BaseColorMap);
        SAMPLER(sampler_BaseColorMap);
        TEXTURE2D(_NormalMap);
        SAMPLER(sampler_NormalMap);
        TEXTURE2D(_Mask);
        SAMPLER(sampler_Mask);
        
            // -- Property used by ScenePickingPass
            #ifdef SCENEPICKINGPASS
            float4 _SelectionID;
            #endif
        
            // -- Properties used by SceneSelectionPass
            #ifdef SCENESELECTIONPASS
            int _ObjectId;
            int _PassValue;
            #endif
        
            // Includes
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/RaytracingMacros.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/ShaderVariablesRaytracing.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/ShaderVariablesRaytracingLightLoop.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/RaytracingIntersection.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/Lighting.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoopDef.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitPathTracing.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/Raytracing/Shaders/RayTracingCommon.hlsl"
        #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Hashes.hlsl"
        
            // --------------------------------------------------
            // Structs and Packing
        
            struct SurfaceDescriptionInputs
        {
             float3 TangentSpaceNormal;
             float3 AbsoluteWorldSpacePosition;
             float4 uv0;
        };
        
            //Interpolator Packs: <None>
        
            // --------------------------------------------------
            // Graph
        
        
            // Graph Functions
            
        void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
        {
            Out = UV * Tiling + Offset;
        }
        
        void Unity_Multiply_float4_float4(float4 A, float4 B, out float4 Out)
        {
            Out = A * B;
        }
        
        void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
        {
            Out = lerp(A, B, T);
        }
        
        float Unity_SimpleNoise_ValueNoise_LegacySine_float (float2 uv)
        {
            float2 i = floor(uv);
            float2 f = frac(uv);
            f = f * f * (3.0 - 2.0 * f);
            uv = abs(frac(uv) - 0.5);
            float2 c0 = i + float2(0.0, 0.0);
            float2 c1 = i + float2(1.0, 0.0);
            float2 c2 = i + float2(0.0, 1.0);
            float2 c3 = i + float2(1.0, 1.0);
            float r0; Hash_LegacySine_2_1_float(c0, r0);
            float r1; Hash_LegacySine_2_1_float(c1, r1);
            float r2; Hash_LegacySine_2_1_float(c2, r2);
            float r3; Hash_LegacySine_2_1_float(c3, r3);
            float bottomOfGrid = lerp(r0, r1, f.x);
            float topOfGrid = lerp(r2, r3, f.x);
            float t = lerp(bottomOfGrid, topOfGrid, f.y);
            return t;
        }
        
        void Unity_SimpleNoise_LegacySine_float(float2 UV, float Scale, out float Out)
        {
            float freq, amp;
            Out = 0.0f;
            freq = pow(2.0, float(0));
            amp = pow(0.5, float(3-0));
            Out += Unity_SimpleNoise_ValueNoise_LegacySine_float(float2(UV.xy*(Scale/freq)))*amp;
            freq = pow(2.0, float(1));
            amp = pow(0.5, float(3-1));
            Out += Unity_SimpleNoise_ValueNoise_LegacySine_float(float2(UV.xy*(Scale/freq)))*amp;
            freq = pow(2.0, float(2));
            amp = pow(0.5, float(3-2));
            Out += Unity_SimpleNoise_ValueNoise_LegacySine_float(float2(UV.xy*(Scale/freq)))*amp;
        }
        
        void Unity_Absolute_float(float In, out float Out)
        {
            Out = abs(In);
        }
        
        void Unity_Power_float(float A, float B, out float Out)
        {
            Out = pow(A, B);
        }
        
        void Unity_Clamp_float(float In, float Min, float Max, out float Out)
        {
            Out = clamp(In, Min, Max);
        }
        
        void Unity_Saturation_float(float3 In, float Saturation, out float3 Out)
        {
            float luma = dot(In, float3(0.2126729, 0.7151522, 0.0721750));
            Out =  luma.xxx + Saturation.xxx * (In - luma.xxx);
        }
        
        void Unity_Blend_Screen_float3(float3 Base, float3 Blend, out float3 Out, float Opacity)
        {
            Out = 1.0 - (1.0 - Blend) * (1.0 - Base);
            Out = lerp(Base, Out, Opacity);
        }
        
        void Unity_Clamp_float3(float3 In, float3 Min, float3 Max, out float3 Out)
        {
            Out = clamp(In, Min, Max);
        }
        
        void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
        {
            Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
        }
        
        void Unity_OneMinus_float(float In, out float Out)
        {
            Out = 1 - In;
        }
        
        void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
        {
            Out = lerp(A, B, T);
        }
        
        void Unity_Multiply_float3_float3(float3 A, float3 B, out float3 Out)
        {
            Out = A * B;
        }
        
        void Unity_Lerp_float(float A, float B, float T, out float Out)
        {
            Out = lerp(A, B, T);
        }
        
        void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
        {
            Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
        }
        
        void Unity_Multiply_float_float(float A, float B, out float Out)
        {
            Out = A * B;
        }
        
            // Graph Vertex
            // GraphVertex: <None>
        
            // Graph Pixel
            struct SurfaceDescription
        {
            float3 BaseColor;
            float3 Emission;
            float Alpha;
            float AlphaClipThreshold;
            float AlphaClipThresholdShadow;
            float3 BentNormal;
            float Smoothness;
            float Occlusion;
            float3 NormalTS;
            float TransmissionMask;
            float Thickness;
            float DiffusionProfileHash;
        };
        
        SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
        {
            SurfaceDescription surface = (SurfaceDescription)0;
            UnityTexture2D _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_BaseColorMap);
            float4 _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4 = _TilingOffset;
            float _Split_60538633130155809820b3185c81057f_R_1_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[0];
            float _Split_60538633130155809820b3185c81057f_G_2_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[1];
            float _Split_60538633130155809820b3185c81057f_B_3_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[2];
            float _Split_60538633130155809820b3185c81057f_A_4_Float = _Property_8ec0d512145619859d288abab740e3bf_Out_0_Vector4[3];
            float2 _Vector2_83b2ea7a32ab548fb8c20dce14204561_Out_0_Vector2 = float2(_Split_60538633130155809820b3185c81057f_R_1_Float, _Split_60538633130155809820b3185c81057f_G_2_Float);
            float2 _Vector2_188e122ac0c7888f9f5fbde73f9edd75_Out_0_Vector2 = float2(_Split_60538633130155809820b3185c81057f_B_3_Float, _Split_60538633130155809820b3185c81057f_A_4_Float);
            float2 _TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2;
            Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_83b2ea7a32ab548fb8c20dce14204561_Out_0_Vector2, _Vector2_188e122ac0c7888f9f5fbde73f9edd75_Out_0_Vector2, _TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2);
            float4 _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.tex, _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.samplerstate, _Property_821e07b38fd0a08d85c4dd6e5b6bbac9_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_R_4_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.r;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_G_5_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.g;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_B_6_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.b;
            float _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_A_7_Float = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4.a;
            float4 _Property_d37c4e2cc4f949f581f76dcb73d50e87_Out_0_Vector4 = _BarkBaseColor;
            float4 _Multiply_e4794b5d7e19433599f2b4e150644bea_Out_2_Vector4;
            Unity_Multiply_float4_float4(_SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4, _Property_d37c4e2cc4f949f581f76dcb73d50e87_Out_0_Vector4, _Multiply_e4794b5d7e19433599f2b4e150644bea_Out_2_Vector4);
            float4 _Property_0f3c5f287e8145bc95fd52cfba4b8fcc_Out_0_Vector4 = _TrunkBaseColor;
            float4 _Multiply_2453fa0c275a46cca1a866a080d90ddf_Out_2_Vector4;
            Unity_Multiply_float4_float4(_SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4, _Property_0f3c5f287e8145bc95fd52cfba4b8fcc_Out_0_Vector4, _Multiply_2453fa0c275a46cca1a866a080d90ddf_Out_2_Vector4);
            UnityTexture2D _Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_Mask);
            float4 _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_993f47501beb8286b10e988cd4c7e220_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_R_4_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.r;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.g;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_B_6_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.b;
            float _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_A_7_Float = _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_RGBA_0_Vector4.a;
            float4 _Lerp_9056381ab3034355b45968f0d1ff2f1a_Out_3_Vector4;
            Unity_Lerp_float4(_Multiply_e4794b5d7e19433599f2b4e150644bea_Out_2_Vector4, _Multiply_2453fa0c275a46cca1a866a080d90ddf_Out_2_Vector4, (_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_B_6_Float.xxxx), _Lerp_9056381ab3034355b45968f0d1ff2f1a_Out_3_Vector4);
            float4 _Property_944e0c60198849afb235eb9940da5dd9_Out_0_Vector4 = _DryColor;
            float4 _Property_621f9271d8734c81b9001229b0296656_Out_0_Vector4 = _HealthyColor;
            float _Split_99caf98864a9e980997a02cedd282dd0_R_1_Float = IN.AbsoluteWorldSpacePosition[0];
            float _Split_99caf98864a9e980997a02cedd282dd0_G_2_Float = IN.AbsoluteWorldSpacePosition[1];
            float _Split_99caf98864a9e980997a02cedd282dd0_B_3_Float = IN.AbsoluteWorldSpacePosition[2];
            float _Split_99caf98864a9e980997a02cedd282dd0_A_4_Float = 0;
            float2 _Vector2_ddc95fa04fb4858daf984190322978b9_Out_0_Vector2 = float2(_Split_99caf98864a9e980997a02cedd282dd0_R_1_Float, _Split_99caf98864a9e980997a02cedd282dd0_B_3_Float);
            float _Property_4d778d1ae72a416b96bf6cb1986a7d5d_Out_0_Float = _ColorNoiseTilling;
            float _SimpleNoise_96327065e2b0428f83e25f93c7e5a748_Out_2_Float;
            Unity_SimpleNoise_LegacySine_float(_Vector2_ddc95fa04fb4858daf984190322978b9_Out_0_Vector2, _Property_4d778d1ae72a416b96bf6cb1986a7d5d_Out_0_Float, _SimpleNoise_96327065e2b0428f83e25f93c7e5a748_Out_2_Float);
            float _Absolute_3da7acf58a45403cad1e7c432d78f027_Out_1_Float;
            Unity_Absolute_float(_SimpleNoise_96327065e2b0428f83e25f93c7e5a748_Out_2_Float, _Absolute_3da7acf58a45403cad1e7c432d78f027_Out_1_Float);
            float _Property_0dff529d33cb42e388c9d874effe6e19_Out_0_Float = _HealthyandDryColorNoisePower;
            float _Power_77b7c0eba07f4b9da46f2fa461c49201_Out_2_Float;
            Unity_Power_float(_Absolute_3da7acf58a45403cad1e7c432d78f027_Out_1_Float, _Property_0dff529d33cb42e388c9d874effe6e19_Out_0_Float, _Power_77b7c0eba07f4b9da46f2fa461c49201_Out_2_Float);
            float _Clamp_efb2cde09ec64325a2f78a848b0827b2_Out_3_Float;
            Unity_Clamp_float(_Power_77b7c0eba07f4b9da46f2fa461c49201_Out_2_Float, float(0), float(1), _Clamp_efb2cde09ec64325a2f78a848b0827b2_Out_3_Float);
            float4 _Lerp_b995ffde83d24283ac272745617fa60c_Out_3_Vector4;
            Unity_Lerp_float4(_Property_944e0c60198849afb235eb9940da5dd9_Out_0_Vector4, _Property_621f9271d8734c81b9001229b0296656_Out_0_Vector4, (_Clamp_efb2cde09ec64325a2f78a848b0827b2_Out_3_Float.xxxx), _Lerp_b995ffde83d24283ac272745617fa60c_Out_3_Vector4);
            float4 _Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4;
            Unity_Multiply_float4_float4(_SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_RGBA_0_Vector4, _Lerp_b995ffde83d24283ac272745617fa60c_Out_3_Vector4, _Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4);
            float _Property_a52cc4db448642208842be98e18796fb_Out_0_Float = _Backface_Saturation;
            float3 _Saturation_1a5be2ae12084c59883f7d315d09cd80_Out_2_Vector3;
            Unity_Saturation_float((_Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4.xyz), _Property_a52cc4db448642208842be98e18796fb_Out_0_Float, _Saturation_1a5be2ae12084c59883f7d315d09cd80_Out_2_Vector3);
            float _Property_547f6c365f204d14a383183448811966_Out_0_Float = _Backface_Brightness;
            float3 _Blend_9d43ee127ca04ec09dd9151a833d8d61_Out_2_Vector3;
            Unity_Blend_Screen_float3(_Saturation_1a5be2ae12084c59883f7d315d09cd80_Out_2_Vector3, (_Property_547f6c365f204d14a383183448811966_Out_0_Float.xxx), _Blend_9d43ee127ca04ec09dd9151a833d8d61_Out_2_Vector3, float(1));
            float3 _Clamp_f7855b2ac55c4d43b25a4a1e56dbbbf7_Out_3_Vector3;
            Unity_Clamp_float3(_Blend_9d43ee127ca04ec09dd9151a833d8d61_Out_2_Vector3, float3(0, 0, 0), float3(1, 1, 1), _Clamp_f7855b2ac55c4d43b25a4a1e56dbbbf7_Out_3_Vector3);
            float2 _Property_b0a46b9c34574501a2f500d2f5745793_Out_0_Vector2 = _Backface_Thickness_Mask_Remap;
            float _Remap_bbbefbf0fbaf41d8a6d07b465d45488f_Out_3_Float;
            Unity_Remap_float(_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_A_7_Float, float2 (0, 1), _Property_b0a46b9c34574501a2f500d2f5745793_Out_0_Vector2, _Remap_bbbefbf0fbaf41d8a6d07b465d45488f_Out_3_Float);
            float _Clamp_6ac81c92e9a64e958055eca61b82e791_Out_3_Float;
            Unity_Clamp_float(_Remap_bbbefbf0fbaf41d8a6d07b465d45488f_Out_3_Float, float(0), float(1), _Clamp_6ac81c92e9a64e958055eca61b82e791_Out_3_Float);
            float _Property_3a1e9cc1507b46b2af88ab75dfc37b44_Out_0_Float = _Backface_Thickness_Mask_Threshold;
            float _Power_1fccfa34ffba46ceac25f1238aa4e1b5_Out_2_Float;
            Unity_Power_float(_Clamp_6ac81c92e9a64e958055eca61b82e791_Out_3_Float, _Property_3a1e9cc1507b46b2af88ab75dfc37b44_Out_0_Float, _Power_1fccfa34ffba46ceac25f1238aa4e1b5_Out_2_Float);
            float _Clamp_e55b4d1f4fda4e97bcfe15cfe9c6fd05_Out_3_Float;
            Unity_Clamp_float(_Power_1fccfa34ffba46ceac25f1238aa4e1b5_Out_2_Float, float(0), float(1), _Clamp_e55b4d1f4fda4e97bcfe15cfe9c6fd05_Out_3_Float);
            float _OneMinus_16a8ddad0aee4e5ca379aef306048984_Out_1_Float;
            Unity_OneMinus_float(_Clamp_e55b4d1f4fda4e97bcfe15cfe9c6fd05_Out_3_Float, _OneMinus_16a8ddad0aee4e5ca379aef306048984_Out_1_Float);
            float3 _Lerp_9c8a6dd2927446309acc26d9f217de99_Out_3_Vector3;
            Unity_Lerp_float3((_Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4.xyz), _Clamp_f7855b2ac55c4d43b25a4a1e56dbbbf7_Out_3_Vector3, (_OneMinus_16a8ddad0aee4e5ca379aef306048984_Out_1_Float.xxx), _Lerp_9c8a6dd2927446309acc26d9f217de99_Out_3_Vector3);
            float _Absolute_98dfaf1178334fc287f9e4d4b5f3a0f0_Out_1_Float;
            Unity_Absolute_float(_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_R_4_Float, _Absolute_98dfaf1178334fc287f9e4d4b5f3a0f0_Out_1_Float);
            float _Property_08b97a5bb158439e9155434b6637ac33_Out_0_Float = _Cross_Backface_Mask_Power;
            float _Power_c8f61d8af16945f9b82731ed18d38dd9_Out_2_Float;
            Unity_Power_float(_Absolute_98dfaf1178334fc287f9e4d4b5f3a0f0_Out_1_Float, _Property_08b97a5bb158439e9155434b6637ac33_Out_0_Float, _Power_c8f61d8af16945f9b82731ed18d38dd9_Out_2_Float);
            float _Clamp_c8b7bf714ebb484d8aa73d545b2f9d59_Out_3_Float;
            Unity_Clamp_float(_Power_c8f61d8af16945f9b82731ed18d38dd9_Out_2_Float, float(0), float(1), _Clamp_c8b7bf714ebb484d8aa73d545b2f9d59_Out_3_Float);
            float3 _Lerp_343d7507e4664bd7bc5108bcf0d55854_Out_3_Vector3;
            Unity_Lerp_float3(_Lerp_9c8a6dd2927446309acc26d9f217de99_Out_3_Vector3, (_Multiply_7440911fa0e24984a93265bf47ed64a5_Out_2_Vector4.xyz), (_Clamp_c8b7bf714ebb484d8aa73d545b2f9d59_Out_3_Float.xxx), _Lerp_343d7507e4664bd7bc5108bcf0d55854_Out_3_Vector3);
            float3 _Lerp_0d72c41eff034cfaaaf0208f4bf42433_Out_3_Vector3;
            Unity_Lerp_float3((_Lerp_9056381ab3034355b45968f0d1ff2f1a_Out_3_Vector4.xyz), _Lerp_343d7507e4664bd7bc5108bcf0d55854_Out_3_Vector3, (_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float.xxx), _Lerp_0d72c41eff034cfaaaf0208f4bf42433_Out_3_Vector3);
            float _Property_09c643c04af64fb18f3a77b935844ecc_Out_0_Float = _Global_Base_Brightness;
            float3 _Multiply_61b0f4818da94adfa23e13d8e3e376a8_Out_2_Vector3;
            Unity_Multiply_float3_float3(_Lerp_0d72c41eff034cfaaaf0208f4bf42433_Out_3_Vector3, (_Property_09c643c04af64fb18f3a77b935844ecc_Out_0_Float.xxx), _Multiply_61b0f4818da94adfa23e13d8e3e376a8_Out_2_Vector3);
            float3 _Clamp_359788e8ad134650b865e76600af6700_Out_3_Vector3;
            Unity_Clamp_float3(_Multiply_61b0f4818da94adfa23e13d8e3e376a8_Out_2_Vector3, float3(0, 0, 0), float3(1, 1, 1), _Clamp_359788e8ad134650b865e76600af6700_Out_3_Vector3);
            float _Property_067d68a770a25e8f978ca090306a96d8_Out_0_Float = _AlphaCutoff;
            float _Property_4b59dc86107847d5b565cde1e47efb8f_Out_0_Float = _AlphaShadowThreshold;
            float _Property_c35305c7157c4d3ba1db4ba61b2e2ebc_Out_0_Float = _Trunk_Smoothness_Remap_Max;
            float _Property_0edea7916ed7a189a62b0faf2c274601_Out_0_Float = _SmoothnessRemapMax;
            float _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float;
            Unity_Lerp_float(_Property_c35305c7157c4d3ba1db4ba61b2e2ebc_Out_0_Float, _Property_0edea7916ed7a189a62b0faf2c274601_Out_0_Float, _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float, _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float);
            float _Property_48e1c5285b48c78e8af19e38f4bd77f9_Out_0_Float = _AORemapMax;
            UnityTexture2D _Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_NormalMap);
            float4 _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_147b07430832c98eb0a470557ee61c5e_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_a2e0bda8e800d280b7064fc016a7e6cd_Out_3_Vector2) );
            _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.rgb = UnpackNormal(_SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4);
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_R_4_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.r;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_G_5_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.g;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_B_6_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.b;
            float _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_A_7_Float = _SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.a;
            float _Property_b07156802a1240f7a8c14a272c5f1b36_Out_0_Float = _Trunk_Normal_Scale;
            float _Property_72e436a108ad64868e46d548c585c5f3_Out_0_Float = _NormalScale;
            float _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float;
            Unity_Lerp_float(_Property_b07156802a1240f7a8c14a272c5f1b36_Out_0_Float, _Property_72e436a108ad64868e46d548c585c5f3_Out_0_Float, _SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_G_5_Float, _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float);
            float3 _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3;
            Unity_NormalStrength_float((_SampleTexture2D_3a56330a29e2f58a96a29a2135b19cbc_RGBA_0_Vector4.xyz), _Lerp_6624e2dc589744b094c6b643efa7fb2e_Out_3_Float, _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3);
            float _Property_2fa2ab76399ae48aaf1180768279e6b9_Out_0_Float = _Thickness;
            float _Multiply_aed8020082acc482b9303a61b01a1a1a_Out_2_Float;
            Unity_Multiply_float_float(_SampleTexture2D_d39fcf91fd1cab8c8ced62e9568e9bc4_A_7_Float, _Property_2fa2ab76399ae48aaf1180768279e6b9_Out_0_Float, _Multiply_aed8020082acc482b9303a61b01a1a1a_Out_2_Float);
            surface.BaseColor = _Clamp_359788e8ad134650b865e76600af6700_Out_3_Vector3;
            surface.Emission = float3(0, 0, 0);
            surface.Alpha = _SampleTexture2D_91f1784012cdb683a2ab7a12fc14c94d_A_7_Float;
            surface.AlphaClipThreshold = _Property_067d68a770a25e8f978ca090306a96d8_Out_0_Float;
            surface.AlphaClipThresholdShadow = _Property_4b59dc86107847d5b565cde1e47efb8f_Out_0_Float;
            surface.BentNormal = IN.TangentSpaceNormal;
            surface.Smoothness = _Lerp_bfff2d3ace4b4da580b3543a67649ae1_Out_3_Float;
            surface.Occlusion = _Property_48e1c5285b48c78e8af19e38f4bd77f9_Out_0_Float;
            surface.NormalTS = _NormalStrength_366affc5c8b42482a633d201ef52b9d6_Out_2_Vector3;
            surface.TransmissionMask = float(1);
            surface.Thickness = _Multiply_aed8020082acc482b9303a61b01a1a1a_Out_2_Float;
            surface.DiffusionProfileHash = _DiffusionProfileHash;
            return surface;
        }
        
            // --------------------------------------------------
            // Build Graph Inputs
            #ifdef HAVE_VFX_MODIFICATION
            #define VFX_SRP_ATTRIBUTES AttributesMesh
            #define VaryingsMeshType VaryingsMeshToPS
            #define VFX_SRP_VARYINGS VaryingsMeshType
            #define VFX_SRP_SURFACE_INPUTS FragInputs
            #endif
            SurfaceDescriptionInputs FragInputsToSurfaceDescriptionInputs(FragInputs input, float3 viewWS)
        {
            SurfaceDescriptionInputs output;
            ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
        
            #if defined(SHADER_STAGE_RAY_TRACING)
            #else
            #endif
            output.TangentSpaceNormal =                         float3(0.0f, 0.0f, 1.0f);
            output.AbsoluteWorldSpacePosition =                 GetAbsolutePositionWS(input.positionRWS);
        
        #if UNITY_UV_STARTS_AT_TOP
        #else
        #endif
        
        
            output.uv0 =                                        input.texCoord0;
        
            // splice point to copy frag inputs custom interpolator pack into the SDI
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorCopyToSDI' */
        
            return output;
        }
        
            // --------------------------------------------------
            // Build Surface Data (Specific Material)
        
        void ApplyDecalToSurfaceDataNoNormal(DecalSurfaceData decalSurfaceData, inout SurfaceData surfaceData);
        
        void ApplyDecalAndGetNormal(FragInputs fragInputs, PositionInputs posInput, SurfaceDescription surfaceDescription,
            inout SurfaceData surfaceData)
        {
            float3 doubleSidedConstants = GetDoubleSidedConstants();
        
        #ifdef DECAL_NORMAL_BLENDING
            // SG nodes don't ouptut surface gradients, so if decals require surf grad blending, we have to convert
            // the normal to gradient before applying the decal. We then have to resolve the gradient back to world space
            float3 normalTS;
        
            normalTS = SurfaceGradientFromTangentSpaceNormalAndFromTBN(surfaceDescription.NormalTS,
            fragInputs.tangentToWorld[0], fragInputs.tangentToWorld[1]);
        
        
            #if HAVE_DECALS
            if (_EnableDecals)
            {
                float alpha = 1.0;
                alpha = surfaceDescription.Alpha;
        
                DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                ApplyDecalToSurfaceNormal(decalSurfaceData, fragInputs.tangentToWorld[2], normalTS);
                ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
            }
            #endif
        
            GetNormalWS_SG(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);
        #else
            // normal delivered to master node
            GetNormalWS(fragInputs, surfaceDescription.NormalTS, surfaceData.normalWS, doubleSidedConstants);
        
            #if HAVE_DECALS
            if (_EnableDecals)
            {
                float alpha = 1.0;
                alpha = surfaceDescription.Alpha;
        
                // Both uses and modifies 'surfaceData.normalWS'.
                DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, alpha);
                ApplyDecalToSurfaceNormal(decalSurfaceData, surfaceData.normalWS.xyz);
                ApplyDecalToSurfaceDataNoNormal(decalSurfaceData, surfaceData);
            }
            #endif
        #endif
        }
        void BuildSurfaceData(FragInputs fragInputs, inout SurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
        {
            ZERO_INITIALIZE(SurfaceData, surfaceData);
        
            // specularOcclusion need to be init ahead of decal to quiet the compiler that modify the SurfaceData struct
            // however specularOcclusion can come from the graph, so need to be init here so it can be override.
            surfaceData.specularOcclusion = 1.0;
        
            surfaceData.baseColor =                 surfaceDescription.BaseColor;
            surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
            surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
            surfaceData.transmissionMask =          surfaceDescription.TransmissionMask;
            surfaceData.thickness =                 surfaceDescription.Thickness;
            surfaceData.diffusionProfileHash =      asuint(surfaceDescription.DiffusionProfileHash);
        
            #if defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE) || defined(_REFRACTION_THIN)
                if (_EnableSSRefraction)
                {
        
                    surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                    surfaceDescription.Alpha = 1.0;
                }
                else
                {
                    surfaceData.ior = 1.0;
                    surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                    surfaceData.atDistance = 1.0;
                    surfaceData.transmittanceMask = 0.0;
                    surfaceDescription.Alpha = 1.0;
                }
            #else
                surfaceData.ior = 1.0;
                surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                surfaceData.atDistance = 1.0;
                surfaceData.transmittanceMask = 0.0;
            #endif
        
            // These static material feature allow compile time optimization
            surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
            #ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
            #endif
        
            #ifdef _MATERIAL_FEATURE_TRANSMISSION
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
            #endif
        
            #ifdef _MATERIAL_FEATURE_ANISOTROPY
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
        
                // Initialize the normal to something non-zero to avoid a div-zero warning for anisotropy.
                surfaceData.normalWS = float3(0, 1, 0);
            #endif
        
            #ifdef _MATERIAL_FEATURE_IRIDESCENCE
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
            #endif
        
            #ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
            #endif
        
            #ifdef _MATERIAL_FEATURE_CLEAR_COAT
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
            #endif
        
            #if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                // Require to have setup baseColor
                // Reproduce the energy conservation done in legacy Unity. Not ideal but better for compatibility and users can unchek it
                surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
            #endif
        
            float3 doubleSidedConstants = GetDoubleSidedConstants();
        
            ApplyDecalAndGetNormal(fragInputs, posInput, surfaceDescription, surfaceData);
        
            surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
        
            surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
        
        
            bentNormalWS = surfaceData.normalWS;
        
            surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);
        
            #ifdef DEBUG_DISPLAY
                if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                {
                    // TODO: need to update mip info
                    surfaceData.metallic = 0;
                }
        
                // We need to call ApplyDebugToSurfaceData after filling the surfarcedata and before filling builtinData
                // as it can modify attribute use for static lighting
                ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
            #endif
        
            // By default we use the ambient occlusion with Tri-ace trick (apply outside) for specular occlusion.
            // If user provide bent normal then we process a better term
            #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                // Just use the value passed through via the slot (not active otherwise)
            #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                // If we have bent normal and ambient occlusion, process a specular occlusion
                surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
            #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
                surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
            #endif
        
            #if defined(_ENABLE_GEOMETRIC_SPECULAR_AA) && !defined(SHADER_STAGE_RAY_TRACING)
                surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
            #endif
        }
        
            // --------------------------------------------------
            // Get Surface And BuiltinData
        
            void GetSurfaceAndBuiltinData(FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData RAY_TRACING_OPTIONAL_PARAMETERS)
            {
                // Don't dither if displaced tessellation (we're fading out the displacement instead to match the next LOD)
                #if !defined(SHADER_STAGE_RAY_TRACING) && !defined(_TESSELLATION_DISPLACEMENT)
                #ifdef LOD_FADE_CROSSFADE // enable dithering LOD transition if user select CrossFade transition in LOD group
                LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
                #endif
                #endif
        
                #ifndef SHADER_UNLIT
                #ifdef _DOUBLESIDED_ON
                    float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
                #else
                    float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
                #endif
        
                ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants); // Apply double sided flip on the vertex normal
                #endif // SHADER_UNLIT
        
                SurfaceDescriptionInputs surfaceDescriptionInputs = FragInputsToSurfaceDescriptionInputs(fragInputs, V);
        
                #if defined(HAVE_VFX_MODIFICATION)
                GraphProperties properties;
                ZERO_INITIALIZE(GraphProperties, properties);
        
                GetElementPixelProperties(fragInputs, properties);
        
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs, properties);
                #else
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs);
                #endif
        
                // Perform alpha test very early to save performance (a killed pixel will not sample textures)
                // TODO: split graph evaluation to grab just alpha dependencies first? tricky..
                #ifdef _ALPHATEST_ON
                    float alphaCutoff = surfaceDescription.AlphaClipThreshold;
                    #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
                    // The TransparentDepthPrepass is also used with SSR transparent.
                    // If an artists enable transaprent SSR but not the TransparentDepthPrepass itself, then we use AlphaClipThreshold
                    // otherwise if TransparentDepthPrepass is enabled we use AlphaClipThresholdDepthPrepass
                    #elif SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_POSTPASS
                    // DepthPostpass always use its own alpha threshold
                    alphaCutoff = surfaceDescription.AlphaClipThresholdDepthPostpass;
                    #elif (SHADERPASS == SHADERPASS_SHADOWS) || (SHADERPASS == SHADERPASS_RAYTRACING_VISIBILITY)
                    // If use shadow threshold isn't enable we don't allow any test
                    #endif
        
                    GENERIC_ALPHA_TEST(surfaceDescription.Alpha, alphaCutoff);
                #endif
        
                #if !defined(SHADER_STAGE_RAY_TRACING) && _DEPTHOFFSET_ON
                ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
                #endif
        
                #ifndef SHADER_UNLIT
                float3 bentNormalWS;
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS);
        
                #ifdef FRAG_INPUTS_USE_TEXCOORD1
                    float4 lightmapTexCoord1 = fragInputs.texCoord1;
                #else
                    float4 lightmapTexCoord1 = float4(0,0,0,0);
                #endif
        
                #ifdef FRAG_INPUTS_USE_TEXCOORD2
                    float4 lightmapTexCoord2 = fragInputs.texCoord2;
                #else
                    float4 lightmapTexCoord2 = float4(0,0,0,0);
                #endif
        
                // Builtin Data
                // For back lighting we use the oposite vertex normal
                InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], lightmapTexCoord1, lightmapTexCoord2, builtinData);
        
                #else
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData);
        
                ZERO_BUILTIN_INITIALIZE(builtinData); // No call to InitBuiltinData as we don't have any lighting
                builtinData.opacity = surfaceDescription.Alpha;
        
                #if defined(DEBUG_DISPLAY)
                    // Light Layers are currently not used for the Unlit shader (because it is not lit)
                    // But Unlit objects do cast shadows according to their rendering layer mask, which is what we want to
                    // display in the light layers visualization mode, therefore we need the renderingLayers
                    builtinData.renderingLayers = GetMeshRenderingLightLayer();
                #endif
        
                #endif // SHADER_UNLIT
        
                #ifdef _ALPHATEST_ON
                    // Used for sharpening by alpha to mask - Alpha to covertage is only used with depth only and forward pass (no shadow pass, no transparent pass)
                    builtinData.alphaClipTreshold = alphaCutoff;
                #endif
        
                // override sampleBakedGI - not used by Unlit
        
                builtinData.emissiveColor = surfaceDescription.Emission;
        
                // Note this will not fully work on transparent surfaces (can check with _SURFACE_TYPE_TRANSPARENT define)
                // We will always overwrite vt feeback with the nearest. So behind transparent surfaces vt will not be resolved
                // This is a limitation of the current MRT approach.
                #ifdef UNITY_VIRTUAL_TEXTURING
                #endif
        
                #if _DEPTHOFFSET_ON
                builtinData.depthOffset = surfaceDescription.DepthOffset;
                #endif
        
                // TODO: We should generate distortion / distortionBlur for non distortion pass
                #if (SHADERPASS == SHADERPASS_DISTORTION)
                builtinData.distortion = surfaceDescription.Distortion;
                builtinData.distortionBlur = surfaceDescription.DistortionBlur;
                #endif
        
                #ifndef SHADER_UNLIT
                // PostInitBuiltinData call ApplyDebugToBuiltinData
                PostInitBuiltinData(V, posInput, surfaceData, builtinData);
                #else
                ApplyDebugToBuiltinData(builtinData);
                #endif
        
                RAY_TRACING_OPTIONAL_ALPHA_TEST_PASS
            }
        
            // --------------------------------------------------
            // Main
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPassPathTracing.hlsl"
        
            // --------------------------------------------------
            // Visual Effect Vertex Invocations
        
        	#ifdef HAVE_VFX_MODIFICATION
        	#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/VisualEffectVertex.hlsl"
        	#endif
        
            ENDHLSL
        }
    }
    CustomEditor "UnityEditor.ShaderGraph.GenericShaderGraphMaterialGUI"
    CustomEditorForRenderPipeline "Rendering.HighDefinition.LitShaderGraphGUI" "UnityEngine.Rendering.HighDefinition.HDRenderPipelineAsset"
    FallBack "Hidden/Shader Graph/FallbackError"
}