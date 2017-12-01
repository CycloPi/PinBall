extends Node
var contador_bolas
var contador_bolas_juego 
var contador_puntos
onready var bolaGratis
var banderaPremio1 = false

func _ready():
	set_process(true)
	pass

func _process(delta):
	
	contador_bolas = get_node("Bolas")
	contador_bolas.set_text("STOCK BALL:"+str(GLOBAL.bolas))
	
	contador_bolas_juego = get_node("Bolas en juego")
	contador_bolas_juego.set_text("PLAY BALL:"+str(GLOBAL.bolas_juego))
	
	contador_puntos= get_node("Puntos")
	contador_puntos.set_text("SCORE:"+str(GLOBAL.puntos))
	
	if GLOBAL.puntos == 1000 and banderaPremio1 == false:
		GLOBAL.bolas += 1
		banderaPremio1 = true
		print("premiobola")
	
	if GLOBAL.puntos == (1000*2) and banderaPremio1 == false:
		GLOBAL.bolas += 2
		banderaPremio1 = true
		print("premiobola")
	
	