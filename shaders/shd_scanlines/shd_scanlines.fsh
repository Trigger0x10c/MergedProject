//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float surface_width;
uniform float surface_height;

void main()
{
    vec4 _c = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	if(mod(floor(v_vTexcoord.y * surface_height), 2.0) == 0.0){
		discard;
	}
	
	gl_FragColor = _c;
}
