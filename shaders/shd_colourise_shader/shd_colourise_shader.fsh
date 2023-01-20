//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
uniform float g_Intensity;
uniform vec4 g_TintCol;

float YUVval(vec4 _rgb)
{
	return dot(vec3(0.299, 0.587, 0.114), _rgb.rgb);
}

void main()
{	
	// Cheap colourisation effect		
	vec4 texcol = texture2D( gm_BaseTexture, v_vTexcoord);
	
	float tintval = YUVval(g_TintCol);
	float texval = YUVval(texcol);
	
	vec4 outcol;
	if (texval < tintval)
	{
		outcol = mix(vec4(0.0, 0.0, 0.0, 1.0), g_TintCol, texval / tintval);
	}
	else if (texval < 1.0)
	{
		outcol = mix(g_TintCol, vec4(1.0, 1.0, 1.0, 1.0), (texval - tintval) / (1.0 - tintval));
	}
	else
	{
		outcol = vec4(1.0, 1.0, 1.0, 1.0);	
	}
	
	outcol.a = texcol.a;	
	
	gl_FragColor = mix(texcol, outcol, g_Intensity);
}