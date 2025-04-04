extends ProgressBar

func set_health(current: float, maxh: float):
	value = current/maxh * 100.0
