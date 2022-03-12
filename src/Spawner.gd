extends Node2D

var Birds = preload("res://src/characters/Bird/Bird.tscn")

onready var spawnTimer := $Timer

func _ready():
	randomize()
	spawnTimer.start(1.0)

func _on_Timer_timeout():
	var viewRect := get_viewport_rect()
	var yPos := rand_range(viewRect.position.y + 40, viewRect.end.y)
	
	var bird = Birds.instance()
	bird.position = Vector2(position.x, yPos)
	get_tree().current_scene.add_child(bird)
	
	spawnTimer.start(1.0)
