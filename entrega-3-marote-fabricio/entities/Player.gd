extends Sprite

export (float) var speed:float = 50

func _process(delta):
	#Basica
#	var direction:int = 0
#
#	if Input.is_action_pressed("move_left"):
#		direction = -1
#	elif Input.is_action_pressed("move_right"):
#		direction = 1 
	
	#Mejorada
	var direction = int(Input.is_action_pressed("move_right")) - int( Input.is_action_pressed("move_left")) 
	 
	position.x += direction * 500 * delta

func _physics_process(delta):
	pass
