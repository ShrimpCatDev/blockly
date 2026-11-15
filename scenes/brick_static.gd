extends RigidBody2D


func _on_body_entered(body: Node) -> void:
	if body.is_in_group("Ball"):
		queue_free()

func _physics_process(delta: float) -> void:
	var collidingbodies = get_colliding_bodies()
	collidingbodies
	contact_monitor = true
