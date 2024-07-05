extends CharacterBody2D

var veloc = Vector2(0.0, 0.0)
var grav = 768.0
var jumpforce = 1024.0
var speed = 128.0
var jumptime = 0.0
var jumping = false
var bounces = 0
var bounce_count = 0
var jumpparts = preload("res://jumpparts.tscn")
var fallparts = preload("res://fallparts.tscn")

@onready var indicator = get_node("Indicator/Sprite2D")
@onready var plrsprite = get_node("Sprite2D")
@onready var cam = get_parent().get_node("Camera2D")

var default_texture = preload("res://idle-removebg-preview.png")
var charge_texture = preload("res://charging-removebg-preview.png")
var recovery_texture = preload("res://recovery-removebg-preview.png")

var landed = false

func _physics_process(delta):
	var move = (Input.get_action_strength("D") - Input.get_action_strength("A"))

	if is_on_floor() and !landed:
		if veloc.y > 700.0:
			cam.screenshake(0.15)
			var nparts = fallparts.instantiate()
			nparts.start(global_position + Vector2(0.0, 16.0), get_parent())

		veloc.y = 0.0

		if !jumping and Input.is_action_just_pressed("W"):
			jumping = true
			veloc = Vector2(0.0, 0.0)
			plrsprite.texture = charge_texture

		elif Input.is_action_just_released("W"):
			jumping = false
			jump(move)
			plrsprite.texture = default_texture

		elif jumping:
			jumptime += delta * 2.0
			if jumptime >= 1.0:
				jumptime = 1.0
		else:
			veloc.x = lerp(veloc.x, move * speed, delta * 16.0)

		if veloc.y != 0:
			landed = true

	elif !is_on_floor() and landed:
		if bounce_count == 0 and bounces == 0:
			bounces = calculate_bounces(veloc.y)
			bounce_count = bounces

		landed = false

	else:
		veloc.y = lerp(veloc.y, grav, delta * 2.0)
		if is_on_ceiling():
			veloc.y *= -1.0
		if is_on_wall():
			veloc.x *= -1.0
		jumptime = 0.0

	indicator.material.set_shader_parameter("progress", jumptime * 1.5)
	plrsprite.material.set_shader_parameter("progress", jumptime)

	velocity = veloc
	move_and_slide()

	update_sprite_tilt()

	if is_on_floor():
		plrsprite.rotation = 0

func jump(move):
	jumping = false
	veloc = ((get_global_mouse_position() - position) * Vector2(1.0, 1.5)).normalized() * jumptime * jumpforce
	cam.screenshake(0.05)
	var nparts = jumpparts.instantiate()
	nparts.start(global_position + Vector2(0.0, 16.0), get_parent())
	jumptime = 0.0

func update_sprite_tilt():
	if veloc.length() > 0:
		plrsprite.rotation = veloc.angle()
	else:
		plrsprite.rotation = 0.0

func calculate_bounces(fall_velocity):
	if fall_velocity > 700.0:
		return 3
	elif fall_velocity > 400.0:
		return 2
	else:
		return 1
