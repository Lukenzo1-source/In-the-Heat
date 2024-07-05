extends GPUParticles2D

func start(pos, parent):
	parent.add_child(self)
	position = pos
	emitting = true

func _on_finished():
	queue_free()
