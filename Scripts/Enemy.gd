extends Actor

export var chase_distance: = 300.0

var player_position: = Vector2()

func _physics_process(delta: float) -> void:
	if (get_node("Player").position - self.position).length() < chase_distance:
		print("F")
