extends Node
class_name RotateTowards

@export var body: Node2D
@export var towards: Node2D

func _process(_delta: float) -> void:
	body.look_at(towards.global_position)
