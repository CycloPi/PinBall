extends KinematicBody
onready var SonidoSa = get_node("SamplePlayer")


var posicion
func _ready():
	set_fixed_process(true)
	pass
func _fixed_process(delta):
	
	posicion = get_translation().z
	if Input.is_action_pressed("ui_select"):
		if posicion < 6:
			translate(Vector3(0,0,0.2))
#			print(get_translation())

	if not Input.is_action_pressed("ui_select"):
		if posicion > 3:
			SonidoSa.play("golpeSalida")
			translate(Vector3(0,0,-0.6))
#			print(get_translation())