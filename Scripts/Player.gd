extends Actor

signal player_position_changed

func _on_Joystick_use_move_vector(move_vector: Vector2) -> void:
	_velocity = move_vector * speed
	emit_signal("player_position_changed", position)
