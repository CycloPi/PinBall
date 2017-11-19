extends Spatial

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
onready var potenciador = get_node("KinematicBody")
 
signal prueba

func _ready():
	var bola = get_node("/root/bola.tscn/bola")
	
	set_process(true)
	pass

func _process(delta):

	pass
	
#	if potenciador.is_colliding():
#		print("Colision con potenciador001")

func _on_Area_area_enter( area ):
	var animacion =get_node("AnimationPlayer")
	var grupikos = area.get_groups()
	
	if (grupikos.has("bola")):
		animacion.play("golpeo")
		
		print ("impulso a la bola")
	
	GLOBAL.puntos += 5
	print("5 puntos desde el potenciador")

func _on_Area_area_exit( area ):
	var animacion =get_node("AnimationPlayer")
	var grupikos = area.get_groups()
	if (grupikos.has("bola")):
		animacion.stop(true)
		print ("para potenciador")
	pass # replace with function body
