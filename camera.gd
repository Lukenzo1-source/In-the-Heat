extends Camera2D
var rng = RandomNumberGenerator.new()
@onready var player = get_parent().get_node("Player")
@export var noise = FastNoiseLite.new();
var shaketime = 0
var time = 0.0

func _process(delta):
	time += delta
	var look = Vector2(0.0, 0.0) #(get_global_mouse_position() - position)*Vector2(0.1, 0.2)
	position = lerp(position, Vector2(look.x, player.position.y+look.y-128.0), delta * 16.0)
	if shaketime > 0:
		shaketime -= delta
		offset = lerp(offset, Vector2(noise.get_noise_2d(time*128.0, 0.0)*32.0, noise.get_noise_2d(time*128.0+10.0, 0.0)*32.0), delta*32.0)
	else:
		offset = lerp(offset, Vector2(0.0, 0.0), delta*32.0)

func screenshake(time):
	shaketime = time
