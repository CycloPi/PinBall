extends Node


onready var puntosgameover = get_node("puntos")
onready var muGO = get_node("SamplePlayer")
func _ready():
	puntosgameover.set_text("score : " + str(GLOBAL.puntos))
	set_process_input(true)
	muGO.play("musicaGO")
	pass
func _input(event):
	if event.type == InputEvent.KEY:
		GLOBAL.bolas = 3
		GLOBAL.puntos = 0
		get_node("/root/GLOBAL").goto_scene("res://main.tscn")
		print ("comienzo")
