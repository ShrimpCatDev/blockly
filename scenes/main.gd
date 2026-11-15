extends Node2D

@export var brick_scene: PackedScene
@export var max_bricks: int = 3


const bricks_scene = preload("res://scenes/bricks.tscn")
func _addbrick(event1):
	var brick = brick_scene.instantiate()
	if _checkbricks() == false:
		add_child(brick)
		brick.position.x = event1.position.x
		brick.position.y = event1.position.y

func _input(event2):
	if event2 is InputEventMouseButton and event2.pressed == true:
		_addbrick(event2)

func _checkbricks():
	print(get_tree().get_nodes_in_group("Brick").size())
	return get_tree().get_nodes_in_group("Brick").size() >= max_bricks
