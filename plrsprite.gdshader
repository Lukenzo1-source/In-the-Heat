shader_type canvas_item;

uniform float progress;

void fragment() {
	COLOR.gb *= 1.0-progress;
}
