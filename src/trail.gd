extends Line2D
class_name Trail

@export var body: Node2D
@export var max_length: int

var queue = []

func _process(_delta: float) -> void:
	var pos = body.global_position
	queue.push_back(pos)

	if queue.size() > max_length:
		queue.pop_front()

	clear_points()

	for point in queue:
		add_point(point)

