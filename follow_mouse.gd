extends Node2D

@onready var sprite := Sprite2D.new()

func _ready():
	sprite.texture = preload("res://icon.svg")  # 기본 아이콘
	add_child(sprite)

func _process(delta):
	sprite.global_position = get_global_mouse_position()
