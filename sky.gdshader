shader_type sky;

uniform samplerCube source : filter_linear, source_color, hint_default_black;

void sky() {
	COLOR = texture(source, EYEDIR).rgb;
}
