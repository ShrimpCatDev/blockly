extends Node2D

func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("Ball"):
		$AliveTower.visible = false
		$DeadTower.visible = true
