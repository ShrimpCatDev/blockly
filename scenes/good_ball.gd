extends RigidBody2D

func _init():
	apply_impulse(Vector2(randf_range(-100, 100)*5, randf_range(-100, 100)*5))
