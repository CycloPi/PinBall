extends Spatial
onready var animacion =get_node("AnimationPlayer")
onready var SonidoPot = get_node("SamplePlayer")

#func _ready():
#	
#	pass

	
func _on_Area_area_enter( area ):
	if (area.get_groups().has("bola")):
		animacion.play("golpeo")
		SonidoPot.play("gibiri")
#		print ("impulso a la bola")
	
	GLOBAL.puntos += 5
#	print("5 puntos desde el potenciador")

func _on_Area_area_exit( area ):
	if (area.get_groups().has("bola")):
		animacion.stop(true)
#		print ("Se detiene el potenciador")
	
