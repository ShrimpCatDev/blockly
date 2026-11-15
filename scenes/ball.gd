extends Area2D

var vx=0
var vy=0

var dx=1
var dy=1

var speed=randf_range(200,500)

var width: float
var gs: Vector2
var gp: Vector2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	gs=get_viewport().get_visible_rect().size
	gp=get_viewport().get_visible_rect().position
	width=$Collision.shape.radius


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	vx=speed*dx*delta
	vy=speed*dy*delta
	position.x+=vx
	position.y+=vy
	
	if position.x+width>=gs.x:
		dx=-1
	if position.y+width>=gs.y:
		dy=-1
	if position.y-width<=0:
		dy=1
	if position.x-width<=0:
		dx=1

func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("Tower") and not area.get_node("DeadTower").visible:
		area.get_node("AliveTower").visible = false
		area.get_node("DeadTower").visible = true
