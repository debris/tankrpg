extends Node
class_name RotateTowardsMouse

@export var body: Node2D

func _process(_delta: float) -> void:
	var mouse_position = body.get_global_mouse_position()
	body.look_at(mouse_position)
