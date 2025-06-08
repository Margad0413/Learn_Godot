extends Node2D


func _input(event):
	if event is InputEventMouseButton and event.pressed:
		$Sprite2D.position = event.position
