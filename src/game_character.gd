extends CharacterBody2D
class_name GameCharacter

signal on_hit(damage: float)

@export var movement_speed: float = 320.0
	
func hit(damage: float):
	on_hit.emit(damage)
