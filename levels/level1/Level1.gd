extends Node2D

onready var player = $Player
onready var tablero = $TileMap
onready var bloque = $Bloque1
onready var canvas = $UI/Control
onready var meta = $Bloque2

func _ready():
	player.tileMap = tablero
	bloque.player = player
	bloque.tileMap = tablero
	canvas.player = player
	meta.player = player