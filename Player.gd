extends KinematicBody2D

var motion  = Vector2()
const UP = Vector2(0,-1)
export var speed = 400
export var gravity = 10
export var jump_force = -300

func _physics_process(delta): #runs 60 fps
	motion.y += gravity
	if Input.is_action_pressed("ui_right"):
		motion.x = speed
	
	elif Input.is_action_pressed("ui_left"):
		motion.x = -speed
	
	else:
		motion.x = 0
	
	if is_on_floor():
		if Input.is_action_just_pressed("ui_up"):
			motion.y=jump_force
	
	move_and_slide(motion,UP)
	
	
 
 
