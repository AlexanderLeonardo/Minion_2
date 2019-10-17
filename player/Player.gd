extends "res://player/Player_game.gd"

func _control(delta):
	#$Torret.look_at(global_mouse_position())
	var rot_dir = 0
	
	if Input.is_action_pressed("ui_right"):
		rot_dir += 1
	if Input.is_action_pressed("ui_left"):
		rot_dir -= 1
	
	rotation += rotation_speed * rot_dir * delta
	velocity = Vector2()
	
	if Input.is_action_pressed("ui_up"):
		velocity = Vector2(speed, 1).rotated(rotation)
	if Input.is_action_pressed("ui_down"):
		velocity = Vector2(-speed/2, 1).rotated(rotation)


