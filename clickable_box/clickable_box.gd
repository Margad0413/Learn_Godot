extends Node2D

@onready var box := $ColorRect
var colors = [Color.RED, Color.GREEN, Color.BLUE, Color.YELLOW]
var current_color_index = 0

func _ready():
	box.color = colors[current_color_index]
	box.mouse_filter = Control.MOUSE_FILTER_STOP
	box.connect("gui_input", _on_box_input)

func _on_box_input(event):
	if event is InputEventMouseButton and event.pressed:
		current_color_index = (current_color_index + 1) % colors.size()
		box.color = colors[current_color_index]
