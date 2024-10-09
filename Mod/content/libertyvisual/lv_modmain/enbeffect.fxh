////////////////////Liberty Visual PostFX Header File ////////////////////
//
// Liberty Visual by 	: 	orangebrains
// Using shadercode by	:	Rockstar Games, Benjamin 'BeRo' Rosseaux
// Decompiled by		: 	Boris Vorontsov // enbdev.com

struct VS_LVOUT{float4 a:POSITION;float2 b:TEXCOORD0;};struct VS_LVIN{float3 c:POSITION;float2 b:TEXCOORD0;};float4 SunDirection,ScreenSize,Timer;
float4 _c44:register(c44);float4 _c72:register(c72);float4 _c73:register(c73);float4 _c74:register(c74);float4 _c75:register(c75);float4 _c76:register(c76);float4 _c77:register(c77);float4 _c78:register(c78);float4 _c79:register(c79);float4 _c80:register(c80);float4 _c81:register(c81);
float4 _c82:register(c82);float4 _c83:register(c83);float4 _c85:register(c85);texture2D texs0:register(s0);texture2D texs1:register(s1);texture2D texs2:register(s2);texture2D texs3:register(s3);texture2D texs4:register(s4);texture2D texs5:register(s5);texture2D texs6:register(s6);	
sampler2D s0=sampler_state{Texture=<texs0>;};sampler2D s1=sampler_state{Texture=<texs1>;};sampler2D s2=sampler_state{Texture=<texs2>;};sampler2D s3=sampler_state{Texture=<texs3>;};sampler2D s4=sampler_state{Texture=<texs4>;};sampler2D s5=sampler_state{Texture=<texs5>;};sampler2D s6=sampler_state{Texture=<texs6>;};
float3 i(float x){float3x3 y=(x<=6.50000000e+003)?float3x3(float3(0.,-2.9021955373783176e+003,-8.257799727892569e+003),float3(0.,1.669580356166664e+003,2.5752827530017594e+003),float3(1.,1.3302673723350029,1.8993753891711275)):float3x3(float3(1.7450425298314171e+003,1.216616836147649e+003,-8.257799727892569e+003),
float3(-2.6663474220535695e+003,-2.173101234308223e+003,2.5752827530017594e+003),float3(5.599538913993148e-001,7.038120314055455e-001,1.8993753891711275));return saturate(float3(y[0]/(clamp(x,1.00000000e+003,4.00000000e+004)+y[1])+y[2]));}float j(float x,float y,float z){z=clamp((z-x)/(y-x),0.,1.);return z*z*z*(z*(z*6-15)+10);}