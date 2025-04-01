extends Node
class_name ThrottleInput

signal pressed

# action name
@export var action_name: String
# how often the action can be called
@export var time: float = 0.5

var cooldown: float = 0.0

func _process(delta: float) -> void:
	cooldown -= delta

	if cooldown < 0.0:
		cooldown = 0.0

	if Input.is_action_pressed(action_name):
		if cooldown == 0.0:
			pressed.emit()
			cooldown = time

