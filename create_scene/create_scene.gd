extends Node2D

@onready var scene := preload("res://clickable_box.tscn")  # 먼저 MyObject.tscn 만들어야 함

func _input(event):
	if event is InputEventMouseButton and event.pressed:
		var obj = scene.instantiate()
		obj.global_position = event.position
		add_child(obj)
