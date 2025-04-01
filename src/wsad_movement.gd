extends Node
class_name WsadMovement

@export var character: PlayerCharacter

func _process(_delta: float) -> void:
	var x_axis = Input.get_axis("move_left", "move_right")
	var y_axis = Input.get_axis("move_up", "move_down")

	character.velocity = Vector2(x_axis, y_axis).normalized() * character.movement_speed
	character.move_and_slide()
