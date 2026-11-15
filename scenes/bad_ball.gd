extends RigidBody2D

func _init():
	apply_impulse(Vector2(randf_range(-180, 180)*2, randf_range(-180, 180)*2))
	
