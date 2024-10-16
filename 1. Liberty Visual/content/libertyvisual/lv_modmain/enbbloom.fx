///////////////// Liberty Visual Bloom File /////////////////
//
// Original file by		: 	Boris Vorontsov // enbdev.com
// Using shadercode by	:	Boris Vorontsov, The Sandvich Maker
// Edited & compiled by : 	orangebrains
//
// !!! Do not redistribute !!!

#include "enbbloom.fxh"
VS_LVOUT VS_LV(VS_LVIN l){VS_LVOUT v;v.a=float4(l.c.x,l.c.y,l.c.z,1.0);v.b.xy=l.b.xy+TempParameters.xy;return v;}
float4 PS_LV0(VS_LVOUT l):COLOR{float4 x=0.;float2 y=0.;y=TempParameters.z;y.y*=ScreenSize.z;for(int u=0;u<9;u++){x+=tex2D(SamplerBloom1,l.b.xy+z[u]*y)*w[u];}x.xyz=clamp(x.xyz,0.,1.63840000e+004f);x.w=1.f;return x;}
float4 PS_LV1(VS_LVOUT l):COLOR{float4 x=0.;float2 y=0.;y=TempParameters.z;y.y*=ScreenSize.z;x.xyz=t(SamplerBloom1,float2(1.,0.),l.b.xy);x.xyz=clamp(x.xyz,0.,1.63840000e+004f);x.w=1.f;return x;}
float4 PS_LV2(VS_LVOUT l):COLOR{float4 x=0.;float2 y=0.;y=TempParameters.z;y.y*=ScreenSize.z;x.xyz=t(SamplerBloom1,float2(0.,1.),l.b.xy);x.xyz=clamp(x.xyz,0.,1.63840000e+004f);x.w=1.f;return x;}
float4 PS_LV3(VS_LVOUT l):COLOR{float4 x=0.;float4 u,v=0.;u=lerp(float4(5.00000000e-002f,8.00000000e-001f,4.00000000e-001f,1.00000000e-001f),1.f,.25f);v=lerp(float4(5.00000000e-002f,6.90000000e-001f,2.60000000e-002f,9.60000000e-004f),1.f,.25f);x.xyz+=u.x*s(SamplerBloom5,l.b.xy,1.*f).xyz+u.y*s(SamplerBloom1,l.b.xy,2.*f).xyz+u.z*s(SamplerBloom2,l.b.xy,4.*f).xyz+u.w*s(SamplerBloom3,l.b.xy,8.*f).xyz+v.x*s(SamplerBloom4,l.b.xy,16.*f).xyz;x*=1/(u.x+u.y+u.z+u.w+v.x);x.xyz*=3.50f;x.w=max(x.x,max(x.y,x.z));x.xyz/=(x.w+1.00000000e-004f);x.xyz*=x.w;x.xyz=clamp(x.xyz,0.,1.63840000e+004f);x.w=1.f;return x;}
technique BloomPrePass{pass p0{VertexShader=compile vs_3_0 VS_LV();PixelShader=compile ps_3_0 PS_LV0();COLORWRITEENABLE=ALPHA|RED|GREEN|BLUE;CullMode=NONE;AlphaBlendEnable=FALSE;AlphaTestEnable=FALSE;SEPARATEALPHABLENDENABLE=FALSE;FogEnable=FALSE;SRGBWRITEENABLE=FALSE;}}
technique BloomTexture1{pass p0{VertexShader=compile vs_3_0 VS_LV();PixelShader=compile ps_3_0 PS_LV1();COLORWRITEENABLE=ALPHA|RED|GREEN|BLUE;CullMode=NONE;AlphaBlendEnable=FALSE;AlphaTestEnable=FALSE;SEPARATEALPHABLENDENABLE=FALSE;FogEnable=FALSE;SRGBWRITEENABLE=FALSE;}}
technique BloomTexture2{pass p0{VertexShader=compile vs_3_0 VS_LV();PixelShader=compile ps_3_0 PS_LV2();COLORWRITEENABLE=ALPHA|RED|GREEN|BLUE;CullMode=NONE;AlphaBlendEnable=FALSE;AlphaTestEnable=FALSE;SEPARATEALPHABLENDENABLE=FALSE;FogEnable=FALSE;SRGBWRITEENABLE=FALSE;}}
technique BloomPostPass{pass p0{VertexShader=compile vs_3_0 VS_LV();PixelShader=compile ps_3_0 PS_LV3();COLORWRITEENABLE=ALPHA|RED|GREEN|BLUE;CullMode=NONE;AlphaBlendEnable=FALSE;AlphaTestEnable=FALSE;SEPARATEALPHABLENDENABLE=FALSE;FogEnable=FALSE;SRGBWRITEENABLE=FALSE;}}