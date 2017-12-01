extends Spatial

var cuentaDianasAbajo = 0


onready var animacion = get_node("Contenedor Diana/Diana/Malla/AnimationPlayer")
onready var animacion1 = get_node("Contenedor Diana1/Diana/Malla/AnimationPlayer")
onready var animacion2 = get_node("Contenedor Diana2/Diana/Malla/AnimationPlayer")
onready var animacion3 = get_node("Contenedor Diana3/Diana/Malla/AnimationPlayer")
onready var animacion4 = get_node("Contenedor Diana4/Diana/Malla/AnimationPlayer")

onready var Diana = get_node("Contenedor Diana/Diana")
onready var Diana1 = get_node("Contenedor Diana1/Diana")
onready var Diana2 = get_node("Contenedor Diana2/Diana")
onready var Diana3 = get_node("Contenedor Diana3/Diana")
onready var Diana4 = get_node("Contenedor Diana4/Diana")


func _ready():
	set_process(true)
	
func _process(delta):
	if (cuentaDianasAbajo >= 5):
		
#		print ("Sube dianas")
		animacion.play("Subir diana")
		animacion1.play("Subir diana")
		animacion2.play("Subir diana")
		animacion3.play("Subir diana")
		animacion4.play("Subir diana")
		
		
		Diana.DianaAbajo = false
		Diana1.DianaAbajo = false
		Diana2.DianaAbajo = false
		Diana3.DianaAbajo = false
		Diana4.DianaAbajo = false
		cuentaDianasAbajo = 0
	
	

