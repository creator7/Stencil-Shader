Shader "Custom/Stencil Window" {
	Properties {
		_Color ("Color", Color) = (1,1,1,1)

		_SRef("Stencil Ref", Float) = 1
		[Enum(UnityEngine.Rendering.CompareFunction)] _SComp("Stencil Comp", Float) = 8
		[Enum(UnityEngine.Rendering.StencilOp)] _SOp("Stencil Op", Float) = 2

	}
	SubShader {
		Tags { "Queue" = "Geometry-1" }
		LOD 200

		ColorMask 0
		ZWrite off

		Stencil{
			Ref [_SRef]
			Comp [_SComp]
			Pass [_SOp]
		}

		CGPROGRAM
		// Physically based Standard lighting model, and enable shadows on all light types
		#pragma surface surf Lambert

		// Use shader model 3.0 target, to get nicer looking lighting
		#pragma target 3.0

		struct Input {
		float2 uv_MainTex;
		};

		fixed4 _Color;

		void surf (Input IN, inout SurfaceOutput o) {
			o.Albedo = _Color.rgb;
		}
		ENDCG
	}
	FallBack "Diffuse"
}
