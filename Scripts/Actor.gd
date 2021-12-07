extends KinematicBody2D
class_name Actor

export var speed: = Vector2(500, 500)

var _velocity: = Vector2.ZERO

func _physics_process(delta: float) -> void:
	_velocity = move_and_slide(_velocity)
	get_node("Sprite").flip_h = _velocity.x < 0
