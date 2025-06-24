extends Node2D

@onready var sprite = $Sprite2D

func _ready():
	sprite.modulate = Color.WHITE

func _input(event):
	if event is InputEventMouseButton and event.pressed:
		sprite.modulate = Color(randf(), randf(), randf()) # 무작위 색
