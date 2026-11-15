extends Node2D

func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("BadBall"):
		$AliveTower.visible = false
		$DeadTower.visible = true
		$DeadTower.velocity = 200
	if area.is_in_group("GoodBall"):
		area.get_parent().queue_free()
