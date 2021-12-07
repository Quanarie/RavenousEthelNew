extends Actor

func _on_Joystick_use_move_vector(move_vector: Vector2) -> void:
	_velocity = move_vector * speed
