extends Area2D

var pos_nueva_x = 0
var pos_nueva_y = 0

onready var bloque_nuevo = preload("res://Bloque1.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	randomize() 

func _on_Bloque1_body_entered(body):
	if body.get_name() == "Player":
		queue_free()
	var bloque_corrido = bloque_nuevo.instance()
	pos_nueva_x = randi() % 400 + 1
	pos_nueva_y = randi() % 250 + 1
	bloque_corrido.move_local_x(pos_nueva_x)
	bloque_corrido.move_local_y(pos_nueva_y)
	get_parent().add_child(bloque_corrido)
