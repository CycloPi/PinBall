extends Spatial

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
onready var potenciador = get_node("KinematicBody")


func _ready():

	
	set_process(true)
	pass

func _process(delta):

	if potenciador.is_colliding():
		print("Colision con potenciador001")
		