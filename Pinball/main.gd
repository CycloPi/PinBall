extends Spatial

# class member variables go here, for example:
var escenabola
var bola = preload("res://Base/bola.tscn")


func _ready():
	set_process_input(true)
	set_fixed_process(true)
#	# Initialization here
	pass
#saca una bola y le resta a la reserva
func _fixed_process(delta):

	if (GLOBAL.bolas == 0 and GLOBAL.bolas_juego == 0):
		print("gam e over , mete la funcion muete")
	
func _input(event):
	var salida = get_node("salida").get_global_transform()
	
	if Input.is_action_pressed("ui_up"):
		if GLOBAL.bolas > 0:
			escenabola = bola.instance()
			get_parent().add_child(escenabola)
			salida = get_node("salida").get_global_transform()
			escenabola.set_global_transform(salida)
			GLOBAL.bolas -=1
			GLOBAL.bolas_juego+=1
			print(GLOBAL.bolas)

#añade una a la reserva
	if Input.is_action_pressed("ui_down"):
		GLOBAL.bolas +=1
		