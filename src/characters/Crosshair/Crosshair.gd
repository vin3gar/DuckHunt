extends Area2D

var click = 0

func _physics_process(_delta: float) -> void:
	global_position = get_global_mouse_position()

#func _on_Crosshair_area_entered(area):
#	area.shot()
