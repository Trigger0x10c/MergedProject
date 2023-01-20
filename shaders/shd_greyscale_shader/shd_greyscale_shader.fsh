//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float g_Intensity;

void main()
{
	vec3 texcol = texture2D( gm_BaseTexture, v_vTexcoord ).rgb;
	float avgcol = dot(texcol, vec3(1.0, 1.0, 1.0)) / 3.0;
	vec3 greyCol = vec3(avgcol,avgcol, avgcol);
	vec3 finalCol = mix(texcol,greyCol, g_Intensity);
    gl_FragColor = vec4(finalCol, 1.0);
}
