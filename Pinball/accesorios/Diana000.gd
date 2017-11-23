extends Spatial
onready var animacion =get_node("AnimationPlayer")


func _ready():
	
	pass


func _on_Area_area_enter( area ):
	if (area.get_groups().has("bola")):
		animacion.play("Diana abajo")
		print ("La diana se esconde")
	
	GLOBAL.puntos += 5
	print("5 puntos por golpear la diana")


