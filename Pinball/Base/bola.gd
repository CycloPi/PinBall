extends RigidBody

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass


func _on_Area_bola_area_enter( area ):
	
	var grupikos = area.get_groups()
	if (grupikos.has("muerte")):
		GLOBAL.bolas_juego -=1
		queue_free()
		print ("Una bola menos",area)
		
	if (grupikos.has("5Puntos")):
		GLOBAL.puntos += 5
		print("5 puntos")
		
	if (grupikos.has("2Puntos")):
		GLOBAL.puntos += 2
		print("2 puntos")


	
	
		print (area)

