//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float Intensity;
uniform float Time;

void main()
{
	vec2 coord = v_vTexcoord;
	
	coord.x += sin((coord.y*Intensity)+(Time/2.0))*0.01;	
	coord.y += sin((coord.x*Intensity)+(Time/2.0))*0.01;
	
	coord.x = mod(coord.x, 1.0);
	coord.y = mod(coord.y, 1.0);
	
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, coord );
}