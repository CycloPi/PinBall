extends Spatial

onready var animacion =get_node("Malla/AnimationPlayer")
onready var cuentaDianas = get_parent().get_parent()

var DianaAbajo = false	

func _ready():
	animacion.play("Subir diana")
	pass

func _on_Area_area_enter( area ):
	print ("Dentro del area DIANA")
	if (area.get_groups().has("bola") and DianaAbajo == false):
		animacion.play("Bajar diana")
		DianaAbajo = true
		cuentaDianas.cuentaDianasAbajo += 1
#		print ("Dianas abajo: " , cuentaDianas.cuentaDianasAbajo)
#		print ("La diana se esconde")
		GLOBAL.puntos += 5
#		print("5 puntos por golpear la diana")

#
#	




