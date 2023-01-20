//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float g_ColourLevels;

vec3 yyround(vec3 _vec)
{
	vec3 outvec;
	outvec.r = fract(_vec.r) < 0.5 ? floor(_vec.r) : ceil(_vec.r);
	outvec.g = fract(_vec.g) < 0.5 ? floor(_vec.g) : ceil(_vec.g);
	outvec.b = fract(_vec.b) < 0.5 ? floor(_vec.b) : ceil(_vec.b);
	
	return outvec;
}

void main()
{
	vec4 texcol = texture2D( gm_BaseTexture, v_vTexcoord );
	texcol *= g_ColourLevels;	
	texcol.rgb = yyround(texcol.rgb);
	texcol /= g_ColourLevels;
	texcol.a = 1.0;
		
    gl_FragColor = texcol;
}
