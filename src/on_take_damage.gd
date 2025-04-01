extends Node
class_name OnTakeDamage

@export var node: Node2D

func start_hurt_animation(_damage: float):
	var tween = create_tween()
	node.modulate = Color.DARK_RED
	tween.tween_property(node, "modulate", Color.WHITE, 0.3)
