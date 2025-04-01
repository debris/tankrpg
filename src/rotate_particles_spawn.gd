extends Node

@export var body: Node2D
@export var particles: GPUParticles2D

func _process(_delta: float) -> void:
	particles.process_material.angle_min = body.rotation
	particles.process_material.angle_max = body.rotation
