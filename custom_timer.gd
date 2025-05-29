extends Node2D

func _ready():
	var timer = Timer.new()
	timer.wait_time = 2.0
	timer.one_shot = true
	timer.timeout.connect(func(): print("2초 지남!"))
	add_child(timer)
	timer.start()
