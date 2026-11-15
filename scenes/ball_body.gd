extends RigidBody2D

func _init():
		apply_impulse(Vector2(randf_range(-200, 200)*3, randf_range(-200, 200)*3))
