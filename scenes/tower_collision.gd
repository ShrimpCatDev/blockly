extends Node2D

func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("BadBall"):
		$AliveTower.visible = false
		$DeadTower.visible = true
	if area.is_in_group("GoodBall"):
		area.get_parent().queue_free()
