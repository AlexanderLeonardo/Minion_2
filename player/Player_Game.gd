extends KinematicBody2D

export (PackedScene) var Bullet
export (int) var speed
export (float) var rotation_speed
export (float) var gun_cooldown
export (int) var health

var velocity = Vector2()
var can_shoot = true
var alive = true

var level_1
var tileMap
var puedeMover = true
var movAnt

func _ready():
	# GunTimer.wait_time = gun_cooldown
	
	pass
	
func _control(delta):
	pass
	
	
func _physics_process(delta):
#	if not alive:
#		return
#	_control(delta)
#	move_and_slide(velocity)
	var sizeCellX = tileMap.cell_size.x
	var sizeCellY = tileMap.cell_size.y
	
	moverHotizontal("ui_right", sizeCellX, puedeMoverDer(Vector2(sizeCellX * 6 , sizeCellX * 7)))
	moverHotizontal("ui_left", -sizeCellX, puedeMoverIzq(Vector2(sizeCellX, sizeCellX * 2)))
	
	moverVertical("ui_up", -sizeCellY, puedeMoverArriba(Vector2(sizeCellY, sizeCellY * 2)))
	moverVertical("ui_down", sizeCellY, puedeMoverAbajo(Vector2(sizeCellY * 6, sizeCellY * 7)))
	
	
func moverHotizontal(direccion, salto, limite):
	if Input.is_action_just_pressed(direccion) and limite and puedeMover:
		position.x += salto
		movAnt = direccion
		global._on_bronze()

func moverVertical(direccion, salto, limite):
	if Input.is_action_just_pressed(direccion) and limite and puedeMover:
		position.y += salto
		movAnt = direccion
		global._on_bronze()
		
func puedeMoverIzq(rango):
	if position.x > rango.x and position.x < rango.y:
		return false
	else: return true

func puedeMoverDer(rango):
	if position.x > rango.x and position.x < rango.y:
		return false
	else: return true

func puedeMoverAbajo(rango):
	if position.y > rango.x and position.y < rango.y:
		return false
	else: return true
	
func puedeMoverArriba(rango):
	if position.y > rango.x and position.y < rango.y:
		return false
	else: return true
	
func anularMovimiento():
	puedeMover = false