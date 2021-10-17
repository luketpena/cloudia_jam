//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 baseCol = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	baseCol.a = floor (baseCol.r * baseCol.g * baseCol.b);
	
	baseCol.r = 0.0;
	baseCol.g = 0.0;
	baseCol.b = 0.0;
	
	gl_FragColor = baseCol;
}
