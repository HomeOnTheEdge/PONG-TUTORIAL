extends CharacterBody2D #KinematicBody2D for Godot 3

func _physics_process(delta):
	if Input.is_key_pressed(KEY_W):
		position.y -= 5
	if Input.is_key_pressed(KEY_S):
		position.y += 5
