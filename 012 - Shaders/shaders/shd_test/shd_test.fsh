//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float mouse;

void main()
{
	vec4 my_color = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	// my_color.b = 0.1; filtro de cor para definir o azul em 10%
	my_color.b = mouse;
	
    gl_FragColor = my_color;
}
