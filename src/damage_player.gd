extends Node
class_name HitPlayer

signal on_hit

@export var hit_source: Node2D

func hit_player(body: Node2D):
	var player: PlayerCharacter = body
	if player != null:
		hit_source.queue_free()
		player.hit(10.0)
		on_hit.emit()
