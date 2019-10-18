extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var player = $Player
onready var tile = $TileMap
# Called when the node enters the scene tree for the first time.
func _ready():
	player.tileMap = tile
	# Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
