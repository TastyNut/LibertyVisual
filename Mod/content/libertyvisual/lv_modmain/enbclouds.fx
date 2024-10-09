///////////////// ENBSeries Clouds Generator File /////////////////
//
// Edited by 			: 	orangebrains
// Decompiled by		: 	Boris Vorontsov // enbdev.com
// Using shadercode by	:	Rockstar Games
//
///////////////////////////////////////////////////////////////////

// pre-release test build 1.0 : private
texture2D texColor;struct VS_LVOUT{float4 a:POSITION;float2 b:TEXCOORD0;};struct VS_LVIN{float3 c:POSITION;float2 b:TEXCOORD0;};sampler2D SamplerColor=sampler_state{Texture=<texColor>;};VS_LVOUT VS_LV(VS_LVIN l){VS_LVOUT v;v.a=float4(l.c.x,l.c.y,l.c.z,1.);v.b.xy=l.b.xy;return v;}float4 PS_LV(VS_LVOUT l):COLOR{float4 x=tex2D(SamplerColor,l.b.xy);x.w=1.;return x;}
technique Shader_Clouds{pass p0{PixelShader=asm{ps_3_0 def c0, -.5,0.,12.,.5 def c1,.125, 0.,-1.,1. def c2,1.,.00005,0.,0. defi i0,2,0,0,0 dcl_texcoord v0.xy dcl_2d s0 dcl_2d s1 mov r11,c1.yyyy mov r11.y,-r11.y mul r11,r11.xyxy,c2.y add r0,c0.x,r11.xyxy add r0,c0.x,v0.xyxy dp2add r1.x,r0.zwzw,r0.zwzw,c2.w pow r2.x,r1.x,c70.x rsq r1.x,r1.x 
mul r0,r0,r1.x mul r0,r2.x,r0 mad r0,r0,c0.z,c0.w mul r1,r0,c1.x mov r0.x,c72.x mul r2.xy,r0.x,c64 mul r2.zw,r0.x,c65.xyxy mad r0,r0.zwzw,c1.x,r2 mov r3.x,c66.x mov r3.z,c67.x mul r4,r1,r3.xxzz mad r1,r1,r3.xxzz,r2 add r10,r0,r11.xyxy texld r5,r10,s0 texld r0,r10.zwzw,s0 add r10,r1,r11.xyxy texld r6,r10,s0 texld r1,r10.zwzw,s0 
mov r5.xz,r5.xyyw mov r5.yw,r0.xxzy mov r0.w,c0.w mul r0.x,r0.w,c71.x mov r6.xz,r6.xyyw mov r6.yw,r1.xxzy dp2add r0.y,r6,r0.x,c2.w dp2add r0.y,r5,c0.w,r0.y dp2add r0.z,r6.zwzw,r0.x,c2.w dp2add r0.z,r5.zwzw,c0.w,r0.z mul r1,r3.xxzz,r4 mul r0.x,r0.x,c71.x mov r4,r1 mov r5.xy,r0.yzzw mov r0.w,r0.x rep i0 add r6,r2,r4 mul r7,r3.xxzz,r4 
mad r8,r4,r3.xxzz,r2 add r10,r6,r11.xyxy texld r9,r10,s0 texld r6,r10.zwzw,s0 add r11,r8,r11.xyxy texld r10,r11,s0 texld r8,r11.zwzw,s0 mov r9.xz,r9.xyyw mov r9.yw,r6.xxzy dp2add r3.y,r9,r0.w,r5.x dp2add r3.w,r9.zwzw,r0.w,r5.y mul r5.w,r0.w,c71.x mov r6.xz,r10.xyyw mov r6.yw,r8.xxzy dp2add r5.x,r6,r5.w,r3.y dp2add r5.y,r6.zwzw,r5.w,r3.w 
mul r4,r3.xxzz,r7 mul r0.w,r5.w,c71.x endrep add r0.x,-r0.y,r5.x add r5.z,r0.x,r0.x add_sat r0.xyz,r5,-c68.x mul r0.xy,r0,c69.x mov r1.zw,c1 mad r0.z,r0.z,c69.x,r1.z mad r0.w,c73.x,r0.z,r1.w mov oC0.w,c1.w mov r11,c1.yyyy mov r11.y,-r11.y mul r11,r11.xyxy,c2.y add r11.xy,r2,v0.xy texld r5,r11,s1 lrp r10.xyz,c2.x,r5,r0.xyww mov_sat oC0.xyz,r10};}}
technique ShiftClouds{pass p0{VertexShader=compile vs_3_0 VS_LV();PixelShader=compile ps_3_0 PS_LV();}}