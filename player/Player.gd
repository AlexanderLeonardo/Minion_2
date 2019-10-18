extends "res://player/Player_game.gd"


func _control(delta):
	#$Torret.look_at(global_mouse_position())
#	var rot_dir = 0
#	
#	if Input.is_action_pressed("ui_right"):
#		rot_dir += 1
#	if Input.is_action_pressed("ui_left"):
#		rot_dir -= 1
#	
#	rotation += rotation_speed * rot_dir * delta
	velocity = Vector2()
	
#	if Input.is_action_pressed("ui_up"):
#		velocity = Vector2(speed, 1).rotated(rotation)
#	if Input.is_action_pressed("ui_down"):
#		velocity = Vector2(-speed/2, 1).rotated(rotation)
#
#	if Input.is_action_just_pressed("ui_left") and puedeMoverIzq():
#		position.x = position.x - 116
	
#	if Input.is_action_just_pressed("ui_right") and puedeMoverDer():
#		position.x = position.x + 116
	
#	if Input.is_action_just_pressed("ui_down") and puedeMoverAbajo():
#		position.y = position.y + 74
		
#	if Input.is_action_just_pressed("ui_up") and puedeMoverArriba():
#		position.y = position.y - 74

#func puedeMoverIzq():
#	if position.x > 116 and position.x < 232:
#		return false
#	else: return true

#func puedeMoverDer():
#	if position.x > 695 and position.x < 811:
#		return false
#	else: return true

#func puedeMoverAbajo():
#	if position.y > 447 and position.y < 517:
#		return false
#	else: return true
	
#func puedeMoverArriba():
#	if position.y > 74 and position.y < 158:
#		return false
#	else: return true