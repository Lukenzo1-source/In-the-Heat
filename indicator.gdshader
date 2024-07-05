shader_type canvas_item;

uniform float progress;

void fragment() {
	if (1.0-UV.y > progress)
	{
		COLOR.a = 0.0;
	}
	if (progress > 1.0)
	{
		COLOR.gb *= (1.5-progress)*2.0;
	}
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
