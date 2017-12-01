extends KinematicBody

var rotacion = 0
onready var SonidoFliper = get_node("SamplePlayer")
func _ready():
	
	set_fixed_process(true)
	pass
func _fixed_process(delta):
	if is_colliding():
		print("golpeadora")
	if Input.is_action_pressed("ui_right"):
		
		if rotacion > -1:
			SonidoFliper.play("Pinball-buttons")
			rotacion -= 0.25
			set_rotation(Vector3(0,rotacion,0))
	if not Input.is_action_pressed("ui_right"):
		if rotacion < 0:
			rotacion += 0.25
			set_rotation(Vector3(0,rotacion,0))