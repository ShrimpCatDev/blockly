extends RigidBody2D

func _init():
	apply_impulse(Vector2(randf_range(-140, 140)*5, randf_range(-140, 140)*5))
