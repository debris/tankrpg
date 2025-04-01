extends Node
class_name Fly

@export var node: Node2D
@export var speed: float
@export var shooter_velocity: Vector2 = Vector2.ZERO

func _process(delta: float) -> void:
	node.position += (Vector2(1.0, 0.0).rotated(node.rotation) * speed + shooter_velocity) * delta
