extends Node


onready var puntosgameover = get_node("puntos")

func _ready():
	puntosgameover.set_text("score : " + str(GLOBAL.puntos))
	set_process_input(true)
	pass
func _input(event):
	if event.type == InputEvent.KEY:
		GLOBAL.bolas = 3
		GLOBAL.puntos = 0
		get_node("/root/GLOBAL").goto_scene("res://main.tscn")
		print ("comienzo")
