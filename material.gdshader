shader_type spatial;
render_mode unshaded, world_vertex_coords;

uniform samplerCube sky : filter_linear, source_color, hint_default_black;

vec3 environment(vec3 eyedir) {
	return texture(sky, eyedir).rgb;
}

void fragment() {
	vec3 reflection = reflect(-VIEW, NORMAL);
	vec3 world_reflection = (INV_VIEW_MATRIX * vec4(reflection, 0.0)).xyz;
	ALBEDO = environment(world_reflection);
}
