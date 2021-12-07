extends Actor

func _ready() -> void:
	set_player_position(position)

func _on_Joystick_use_move_vector(move_vector: Vector2) -> void:
	_velocity = move_vector * speed
	set_player_position(position)

func set_player_position(position: Vector2) -> void:
	GameManager.player_position = position
