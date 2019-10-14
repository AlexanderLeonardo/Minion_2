extends Control

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	global.connect("bronze", self, "bronze")
	$score.text = "SCORE: " + "0"
	pass
	
func bronze(s):
	$score.text = "SCORE: " + str(s)