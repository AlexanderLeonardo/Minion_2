extends Control

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var combustible = 100
# Called when the node enters the scene tree for the first time.
func _ready():
	global.connect("bronze", self, "bronze")
	global.connect("reload", self, "reload")
	$score.text = "Combustible: " + str(combustible)
	pass
	
func bronze(s):
	combustible -= 10
	$score.text = "Combustible: " + str(combustible)
	
func reload(s):
	combustible += 15
	$score.text = "Combustible: " + str(combustible)