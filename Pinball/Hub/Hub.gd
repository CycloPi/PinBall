extends Node
var contador_bolas
var contador_bolas_juego 
var contador_puntos
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