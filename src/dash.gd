extends Node
class_name DashOnSpace

@export var player: GameCharacter

func dash():
	var tween = create_tween()
	player.movement_speed = 320.0 * 3.0
	tween.tween_property(player, "movement_speed", 320.0, 0.2)
