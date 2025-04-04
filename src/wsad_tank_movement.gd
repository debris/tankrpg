extends Node
class_name WsadTankMovement

@export var character: GameCharacter
@export var animation_player: AnimationPlayer

func _process(delta: float) -> void:
	var left_right = Input.get_axis("move_left", "move_right")
	var forward = Input.get_axis("move_down", "move_up")

	character.rotation_degrees += delta * 90.0 * left_right
	character.velocity = Vector2(forward, 0.0).rotated(character.rotation) * character.movement_speed

	if character.velocity.is_zero_approx():
		animation_player.play("idle")
	else:
		animation_player.play("move")

	character.move_and_slide()
