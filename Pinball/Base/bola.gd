extends RigidBody



func _ready():
	set_fixed_process(true)
	pass

#func _fixed_process(delta):
#	var cuerpos = get_colliding_bodies()
#	print("Diana")
#	for i in cuerpos:
#		if (cuerpos[i].get_goup() == "Diana"):
#			print("Diana")
#	pass
	
func _on_Area_bola_area_enter( area ):
	
	var grupikos = area.get_groups()
	
	if (grupikos.has("muerte")):
		GLOBAL.bolas_juego -=1
		queue_free()
		print ("Una bola menos",area)
		
	
		
	if (grupikos.has("2Puntos")):
		GLOBAL.puntos += 2
		print("2 puntos")


	
	var entrada = get_node("/root/main/PinBall01/PINBALL_base_TOBOGAN_edit/lanzador/Area_lanzador").get_translation()
	var salida = get_node("/root/main/PinBall01/PINBALL_base_TOBOGAN_edit/lanzador/direccion").get_translation()
	var direccion =  salida - entrada
	
	if (grupikos.has("lanzador")):
#		print (salida,"entrada")
#		print (entrada,"entrada")
#		print (direccion,"direccion")
		GLOBAL.puntos += 100
		GLOBAL.bolas +=1
		set_scale(Vector3(1.5,1.5,1.5))
		apply_impulse( Vector3 (0,0,0), Vector3 (direccion*100))
#		

