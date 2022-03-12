extends Area2D


var speedx: float 
var speedy: float 
var score: int = 0

func _ready():
	speedx = rand_range(250, 500)
	speedy = rand_range(80, 150)

func _physics_process(delta):
	position.y -= speedy * delta
	position.x -= speedx * delta

#func _process(delta):
#	if Input.is_key_pressed("")
#	shot()
	
func shot():
	score += 1
	queue_free()

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()

