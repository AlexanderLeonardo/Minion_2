extends Control

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var combustible = 100
onready var game_over = preload("res://Label/GameOver.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	global.connect("bronze", self, "bronze")
	global.connect("reload", self, "reload")
	global.connect("reload_gold", self, "reload_gold")
	$score.text = "Combustible: " + str(combustible)
	pass
	
func bronze(s):
	combustible -= 10
	if(combustible <= 0):
		$score.text = "Combustible: " + "0"
		var game_over_new = game_over.instance()
		game_over_new.set_anchor_and_margin(MARGIN_TOP, 200 ,200)
		get_parent().add_child(game_over_new)
		#print("Se termino el combustible: GAME OVER!!")
	else:
	    $score.text = "Combustible: " + str(combustible)
	
func reload(s):
	combustible += 25
	$score.text = "Combustible: " + str(combustible)
	
func reload_gold(s):
	combustible += 50
	$score.text = "Combustible: " + str(combustible)
	
	
func _on_cronometro_timeout():
	combustible -= 50
	if(combustible <= 0):
		$score.text = "Combustible: " + "0"
		var game_over_new = game_over.instance()
		game_over_new.set_anchor_and_margin(MARGIN_TOP, 200 ,200)
		get_parent().add_child(game_over_new)
		#print("Se termino el combustible: GAME OVER!!")
	else:
	    $score.text = "Combustible: " + str(combustible)
