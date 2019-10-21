extends Camera2D

# Declaración de variables locales
onready var textGaOv = preload("res://Label/GameOver.tscn")

func _ready():
	set_process(true)
	
func gameOver():
	var newTextGaOv = textGaOv.instance()
	newTextGaOv.set_position(Vector2(get_camera_position().x-300,get_camera_position().y))
	get_parent().add_child(newTextGaOv)