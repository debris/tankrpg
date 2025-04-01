extends Node
class_name Shoot

@export var shooter: Node2D
@export var bullet_origin: Node2D
@export var bullet_scene: PackedScene
@export var animation_player: AnimationPlayer

func shoot():
	var bullet: Node2D = bullet_scene.instantiate()
	bullet.global_position = bullet_origin.global_position
	bullet.global_rotation = bullet_origin.global_rotation

	if "collision_layer" in shooter:
		# prevent shooting self
		var is_player = shooter.get_collision_layer_value(1)
		bullet.set_collision_mask_value(1, !is_player)
		var is_enemy = shooter.get_collision_layer_value(2)
		bullet.set_collision_mask_value(2, !is_enemy)

	if "velocity" in shooter:
		bullet.get_node("Fly").shooter_velocity = shooter.velocity

	if animation_player != null:
		animation_player.stop()
		animation_player.play("shoot")

	shooter.add_sibling(bullet)
