extends CanvasLayer

signal use_move_vector

onready var texture_center = get_node("TouchScreenButton").position + Vector2(72, 72)


func _input(event):
	if event is InputEventScreenTouch or event is InputEventScreenDrag:
		if get_node("TouchScreenButton").is_pressed():
			var move_vector = calculate_move_vector(event.position)
			emit_signal("use_move_vector", move_vector)
			get_node("InnerCircle").position = event.position
		else:
			emit_signal("use_move_vector", Vector2.ZERO)
			get_node("InnerCircle").position = texture_center


func calculate_move_vector(event_position: Vector2) -> Vector2:
	return (event_position - texture_center).normalized()
