extends TileMap

enum CellType { EMPTY = -1, PARED, PISO}

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func puedeMoverse(player, sigPos):
	var cellNext = world_to_map(sigPos)
	var cellNextType = get_cellv(cellNext)
	match cellNextType:
		CellType.PISO:
			player.moverse(sigPos)
		CellType.PARED:
			player.noMoverse()