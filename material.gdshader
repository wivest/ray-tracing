shader_type spatial;
render_mode unshaded, world_vertex_coords;

void fragment() {
	vec3 reflection = reflect(VIEW, NORMAL);
	vec3 world_reflection = (INV_VIEW_MATRIX * vec4(reflection, 0.0)).xyz;
	ALBEDO = world_reflection;
}
