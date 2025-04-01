@tool
extends Line2D
class_name Circle

func _ready() -> void:
	clear_points()

	var r = 64.0
	for i in 360:
		var point = Vector2(r, 0.0).rotated(deg_to_rad(i))
		add_point(point)
