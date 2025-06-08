extends Node2D

func _ready():
	var area = Area2D.new()
	var shape = CollisionShape2D.new()
	shape.shape = CircleShape2D.new()
	shape.shape.radius = 30
	area.add_child(shape)
	add_child(area)
	
	area.body_entered.connect(func(body): print("충돌 감지: ", body.name))

	# 간단한 충돌 대상 생성
	var body = CharacterBody2D.new()
	body.name = "Player"
	body.position = Vector2(0, -100)
	body.velocity = Vector2.DOWN * 100
	add_child(body)
	
	set_process(true)
	area.monitoring = true
	area.collision_layer = 1
	area.collision_mask = 1
	body.collision_layer = 1
	body.collision_mask = 1

func _process(delta):
	var player := get_node("Player") as CharacterBody2D
	player.move_and_slide()
