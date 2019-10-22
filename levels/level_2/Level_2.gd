extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var textGaOv = preload("res://Label/GameOver.tscn")
onready var player = $Player
onready var tile = $TileMap
# Called when the node enters the scene tree for the first time.
func _ready():
	player.tileMap = tile
	player.level_1 = self
	# Replace with function body.
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
