@tool
extends Node2D
class_name Powerup

const MAX_RADIUS: float = 100.0

@export var progress: float = 0.0:
	set(value):
		progress = value
		queue_redraw()

func _process(delta: float) -> void:
	progress += delta * 0.5
	if progress >= 1.0:
		progress -= 1.0

func _draw() -> void:
	var color = Color.WHITE
	color.a = 1.0 - progress
	draw_circle(Vector2.ZERO, MAX_RADIUS * progress, color, true)
