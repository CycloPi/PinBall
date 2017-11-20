extends RigidBody



func _ready():
	set_fixed_process(true)
	pass

func _fixed_process(delta):
#	var cuerpos = get_colliding_bodies()
#	print("Diana")
#	for i in cuerpos:
#		if (cuerpos[i].get_goup() == "Diana"):
#			print("Diana")
	pass

func _on_Area_bola_area_enter( area ):
	
	var grupikos = area.get_groups()
	if (grupikos.has("muerte")):
		GLOBAL.bolas_juego -=1
		queue_free()
		print ("Una bola menos",area)
		
	
		
	if (grupikos.has("2Puntos")):
		GLOBAL.puntos += 2
		print("2 puntos")



