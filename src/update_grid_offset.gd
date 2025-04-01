extends Node2D
class_name UpdateGridOffset

@export var camera: Camera2D
@export var grid: TextureRect

func _process(_delta: float) -> void:
	#var resolution = Vector2(1152.0, 648.0)
	#grid.material.set("shader_parameter/resolution", resolution / camera.zoom)
	grid.material.set("shader_parameter/offset", global_position)
