//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;

uniform vec2 gm_pSurfaceDimensions;

uniform sampler2D g_NoiseTexture;
uniform vec2 g_NoiseTextureDimensions;
uniform float g_Radius;

// Annoyingly the number of samples has to be fixed to be compatible across platforms
#define NUM_SAMPLES	64.0

vec2 noise2D(vec2 _in)
{
	//vec2 newNoise = fract(_in + texture2D( g_NoiseTexture, _in ).xy);
	//return newNoise;
	return texture2D( g_NoiseTexture, _in ).xy;
}

void main()
{
	vec2 noiseCoords;
	noiseCoords.x = fract((v_vTexcoord.x * gm_pSurfaceDimensions.x) / g_NoiseTextureDimensions.x);
	noiseCoords.y = fract((v_vTexcoord.y * gm_pSurfaceDimensions.y) / g_NoiseTextureDimensions.y);		
		
	vec4 accumcol = vec4(0.0,0.0,0.0,0.0);
	
	for(float s = 0.0; s < NUM_SAMPLES; s++)
	{
		noiseCoords = noise2D(noiseCoords);		
		vec2 sampleCoords = v_vTexcoord + (((noiseCoords - 0.5) * 4.0 * g_Radius) / gm_pSurfaceDimensions);		
		accumcol += texture2D( gm_BaseTexture, sampleCoords );
	}
	
	gl_FragColor = accumcol / NUM_SAMPLES;
}