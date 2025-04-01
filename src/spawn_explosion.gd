extends Node
class_name SpawnExplosion

@export var object: Node2D
@export var explosion_scene: PackedScene

func spawn_explosion():
	var explosion: Node2D = explosion_scene.instantiate()
	explosion.global_position = object.global_position
	object.get_parent().add_child(explosion)
	#object.add_sibling(explosion)
