extends Node2D

@export var brick_scene: PackedScene

func _input(event):
	if event is InputEventMouseButton and event.pressed == true:
		var brick = brick_scene.instantiate()
		add_child(brick)
		brick.position.x = event.position.x
		brick.position.y = event.position.y
