 Shader "Custom/SpritesDefaultModded"
 {
     Properties
     {
         [PerRendererData] _MainTex ("Sprite Texture", 2D) = "white" {}
         _Color ("Tint", Color) = (1,1,1,1)
         _OffsetVar ("Offset", Float) = 0
         [MaterialToggle] PixelSnap ("Pixel snap", Float) = 0
     }
 
     SubShader
     {
 
         Tags
         { 
             "Queue"="Transparent" 
             "IgnoreProjector"="True" 
             "RenderType"="Transparent" 

             "CanUseSpriteAtlas"="True"
         }
 
         Cull Off
         Lighting Off
         ZWrite Off
         Blend One OneMinusSrcAlpha
 
         Pass
         {
         CGPROGRAM
             #pragma vertex vert
             #pragma fragment frag
             #pragma target 3.0
             #pragma multi_compile _ PIXELSNAP_ON
             #pragma multi_compile _ ETC1_EXTERNAL_ALPHA
             #pragma multi_compile_fog
             #include "UnityCG.cginc"
 
             struct appdata_t
             {
                 float4 vertex   : POSITION;
                 float4 color    : COLOR;
                 float2 texcoord : TEXCOORD0;
             };
 
             struct v2f
             {
                 float4 vertex   : SV_POSITION;
                 fixed4 color    : COLOR;
                 float2 texcoord  : TEXCOORD0;
                 UNITY_FOG_COORDS(1)
             };
             
             fixed4 _Color;
             float _OffsetVar;
 
             v2f vert(appdata_t IN)
             {
                 v2f OUT;

                 OUT.vertex = UnityObjectToClipPos(IN.vertex);
                 OUT.vertex.xyz += _OffsetVar * frac(sin(dot(IN.vertex.xyz,float3(12.9898,78.233,45.5432))) * 43758.5453);

                 //frac(sin(dot(IN.vertex.xyz ,float3(12.9898,78.233,45.5432))) * 43758.5453);
                 OUT.texcoord = IN.texcoord;
                 OUT.color = IN.color;


                 UNITY_TRANSFER_FOG(OUT,OUT.vertex);
 
                 return OUT;
             }
 
             sampler2D _MainTex;
             sampler2D _AlphaTex;
 
             fixed4 SampleSpriteTexture (float2 uv)
             {
                 fixed4 color = tex2D (_MainTex, uv);
                 return color;
             }
 
             fixed4 frag(v2f IN) : SV_Target
             {
                 fixed4 c = SampleSpriteTexture (IN.texcoord) * IN.color;
                 UNITY_APPLY_FOG(IN.fogCoord, c);
                 return c;
             }
         ENDCG
         }
     }
 }