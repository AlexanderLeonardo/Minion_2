extends Node2D

var score = 0

signal bronze
signal reload

func _ready():
	pass # Replace with function body.

func _on_bronze():
	#score -= 1
	emit_signal("bronze", score)
	
func _on_reload():
	emit_signal("reload", score)