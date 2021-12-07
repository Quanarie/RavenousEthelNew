extends Actor

export var chase_distance: = 300.0

func _physics_process(delta: float) -> void:
	if (GameManager.player_position - self.position).length() < chase_distance:
		_velocity = (GameManager.player_position - self.position).normalized() * speed
	else:
		_velocity = Vector2.ZERO
