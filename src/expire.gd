extends Node
class_name Expire

signal expired

@export var object: Node2D
@export var time: float = 2.0

func _process(delta: float) -> void:
	time -= delta
	if time <= 0:
		expired.emit()
		object.queue_free()
