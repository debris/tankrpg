extends Node
class_name DynamicCameraZoom

@export var camera: Camera2D
@export var player: Node2D
@export var target: Node2D
@export var min_distance: float = 300.0
@export var max_distance: float = 600.0
@export var min_zoom: Vector2 = Vector2(1.0, 1.0)
@export var max_zoom: Vector2 = Vector2(0.5, 0.5)

func _process(_delta: float) -> void:
	var distance = player.global_position.distance_to(target.global_position)
	distance = max(min_distance, distance)
	distance = min(max_distance, distance)
	var ratio = (distance - min_distance) / (max_distance - min_distance)
	camera.zoom = min_zoom - max_zoom * ratio
