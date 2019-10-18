extends Control

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var cantPasos = 10
# Called when the node enters the scene tree for the first time.
func _ready():
	global.connect("bronze", self, "bronze")
	$score.text = "PASOS: " + str(cantPasos)
	pass
	
func bronze(s):
	cantPasos -= 1
	$score.text = "PASOS: " + str(cantPasos)