////////////////////Liberty Visual Bloom Header File ////////////////////
//
// Liberty Visual by 	: 	orangebrains
// Using shadercode by	:	Rockstar Games, Jorge Jimenez, Intel® (Filip Strugar?)
// Decompiled by		: 	Boris Vorontsov // enbdev.com

#define p 3.14159263
#define f 0.001953125
float4 Timer;float4 TempParameters;float4 ScreenSize;struct VS_LVOUT{float4 a:POSITION;float2 b:TEXCOORD0;};struct VS_LVIN{float3 c:POSITION;float2 b:TEXCOORD0;};texture2D texBloom1;texture2D texBloom2;texture2D texBloom3;texture2D texBloom4;texture2D texBloom5;
sampler2D SamplerBloom1=sampler_state{Texture=<texBloom1>;MinFilter=LINEAR;MagFilter=LINEAR;MipFilter=NONE;AddressU=Clamp;AddressV=Clamp;SRGBTexture=FALSE;MaxMipLevel=0;MipMapLodBias=0;};sampler2D SamplerBloom2=sampler_state{Texture=<texBloom2>;MinFilter=LINEAR;MagFilter=LINEAR;MipFilter=NONE;AddressU=Clamp;AddressV=Clamp;SRGBTexture=FALSE;MaxMipLevel=0;MipMapLodBias=0;};
sampler2D SamplerBloom3=sampler_state{Texture=<texBloom3>;MinFilter=LINEAR;MagFilter=LINEAR;MipFilter=NONE;AddressU=Clamp;AddressV=Clamp;SRGBTexture=FALSE;MaxMipLevel=0;MipMapLodBias=0;};sampler2D SamplerBloom4=sampler_state{Texture=<texBloom4>;MinFilter=LINEAR;MagFilter=LINEAR;MipFilter=NONE;AddressU=Clamp;AddressV=Clamp;SRGBTexture=FALSE;MaxMipLevel=0;MipMapLodBias=0;};
sampler2D SamplerBloom5=sampler_state{Texture=<texBloom5>;MinFilter=LINEAR;MagFilter=LINEAR;MipFilter=NONE;AddressU=Clamp;AddressV=Clamp;SRGBTexture=FALSE;MaxMipLevel=0;MipMapLodBias=0;};static const float2 o[4]={float2(-5.00000000e-001f,-5.00000000e-001f),float2(5.00000000e-001f,-5.00000000e-001f),float2(-5.00000000e-001f,5.00000000e-001f),float2(5.00000000e-001f,5.00000000e-001f)};
static const float2 z[9]={float2(-7.94777260e-001f,7.94777260e-001f),float2(7.5000000e-001f,0.f),float2(7.94777260e-001f,7.94777260e-001f),float2(-7.5000000e-001f,0.f),float2(0.f,0.f),float2(0.f,7.5000000e-001f),float2(-7.94777260e-001f,-7.94777260e-001f),float2(0.f,-7.5000000e-001f),float2(7.94777260e-001f,-7.94777260e-001f)};static const float w[9]={6.25000000e-002f,1.25000000e-001f,6.25000000e-002f,1.25000000e-001f,2.50000000e-001f,1.25000000e-001f,6.25000000e-002f,1.25000000e-001f,6.25000000e-002f};
float4 s(sampler2D x,float2 y,float2 z){float4 u=0.;for(int a=0;a<4;a++){u+=tex2D(x,y+o[a]*z);}return u*.25f;}float3 t(sampler2D x,float2 y,float2 z){float a,b,c,d,e,h=0.;float4 u,v=0.;static const float g=sqrt(p+sqrt(3.172231746e+006f))*.5f;y*=TempParameters.z;for(a=-g;a<=g;a++){h=sqrt(rcp(.25f));d=a*3.f-.5f;c=(p/475998883e-008f)*d;b=exp(-rcp(pow(g,h))*pow(c,h));u+=b*tex2Dlod(x,float4(z+y*d,0.,0.));e+=b;}u*=rcp(e);return u;}
