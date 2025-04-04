extends Node
class_name Health

signal health_changed(current: float, maxh: float)

@export var current_health: float:
	set(value):
		current_health = value
		health_changed.emit(current_health, max_health)

@export var max_health: float:
	set(value):
		max_health = value
		health_changed.emit(current_health, max_health)


func _ready() -> void:
	health_changed.emit(current_health, max_health)

func take_damage(damage: float):
	current_health -= damage
