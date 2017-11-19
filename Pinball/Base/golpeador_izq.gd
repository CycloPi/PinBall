extends KinematicBody

var rotacion = 0
func _ready():
	
	set_fixed_process(true)
	pass
func _fixed_process(delta):
	if Input.is_action_pressed("ui_left"):
		if rotacion < 1:
			rotacion += 0.25
			set_rotation(Vector3(0,rotacion,0))
	if not Input.is_action_pressed("ui_left"):
		if rotacion > 0:
			rotacion -= 0.25
			set_rotation(Vector3(0,rotacion,0))