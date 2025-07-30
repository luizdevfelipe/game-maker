//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float mouse;

void main()
{
	
	vec4 this_colour = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord ); 
	float new_colour = dot(this_colour.rgb, vec3(0.2126, 0.7152, 0.0722 ));
	gl_FragColor = vec4(new_colour,new_colour,new_colour,this_colour.a);
	
	/* vec4 my_color = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	// my_color.b = 0.1; filtro de cor para definir o azul em 10%
	my_color.b = mouse;
	
    gl_FragColor = my_color; */
}
