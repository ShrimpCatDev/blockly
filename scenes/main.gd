extends Node2D

@export var brick_scene: PackedScene
@export var max_bricks: int = 5
@export var min_goodballs: int = 0
var score = 0
const bricks_scene = preload("res://scenes/bricks.tscn")
const goodball_scene = preload("res://scenes/goodball.tscn")

func _addbrick(event1):
	var brick = brick_scene.instantiate()
	if _checkbricks() == false:
		add_child(brick)
		brick.position.x = event1.position.x
		brick.position.y = event1.position.y

func _input(event2):
	if event2 is InputEventMouseButton and event2.pressed == true:
		_addbrick(event2)

func _process(delta: float) -> void:
	var goodball = goodball_scene.instantiate()
	if checkgoodballs() == true:
		await(get_tree().create_timer(0.005).timeout)
		add_child(goodball)
		goodball.position.x = randf_range(10,710)
		goodball.position.y = randf_range(10,470)
		score += 1
		

func _checkbricks():
	return get_tree().get_nodes_in_group("Brick").size() >= max_bricks
func checkgoodballs():
	return get_tree().get_nodes_in_group("GoodBall").size() <= min_goodballs
func givescore():
	return score
