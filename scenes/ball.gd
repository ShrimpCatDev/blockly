extends Area2D

var vx=0
var vy=0
var speed=50

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	vx=speed*delta
	vy=speed*delta
	position.x+=vx
	position.y+=vy
