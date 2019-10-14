extends Node2D

var score = 0

signal bronze

func _ready():
	pass # Replace with function body.

func _on_bronze():
	score += 500
	emit_signal("bronze", score)