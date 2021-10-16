//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 baseCol = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	if (baseCol.r * baseCol.g * baseCol.b > 0.9) {
		baseCol.a = 0.0;	
	}
	
    gl_FragColor = baseCol;
}
