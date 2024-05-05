extends CharacterBody2D #KinematicBody2D for Godot 3

#for Godot 3, add the following line:
#var veolocity

var collision_data

func _ready():
	velocity = Vector2(300,2)

func _physics_process(delta):
	collision_data = move_and_collide(velocity * delta)
	if collision_data:
		velocity.y += randf_range(-20, 20) #rand_range(-20, 20) for Godot 3
		velocity = velocity.bounce(collision_data.get_normal())
