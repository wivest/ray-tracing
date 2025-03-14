shader_type spatial;
render_mode unshaded, world_vertex_coords;

varying vec3 normal;

void vertex() {
	normal = NORMAL;
}

void fragment() {
	vec3 reflection = reflect(VIEW, NORMAL);
	ALBEDO = (INV_VIEW_MATRIX * vec4(reflection, 0.0)).xyz;
}
