extends CharacterBody2D

# set up variables, so that we can use them to control properties with _physics_process
var direction := Vector2(0,0)  # start at 0,0 & no movmnt; moves by 1 when key pressed
var speed: int = 150
# Get the input vector from the specified actions
# The order is (negative_x_action, positive_x_action, negative_y_action, positive_y_action)
#var input_direction: Vector2 = Input.get_vector("left", "right", "up", "down")

		
func _physics_process(_delta: float) -> void:
	direction =  Input.get_vector("left","right","up","down") #what happens if not in order?
	velocity = direction * speed  # UPDATE SCREEN
	move_and_slide() # ??
	
	
	if Input.is_action_just_pressed("space"): #_just_pressed only shows action once
		print("something")

	
	
	########FULL GAME: PLAYER IN ONE SPOT#########################################
	#var direction := Vector2(1,0)  # start at 0,0 & no movmnt
#var speed: int = 1
#
#func _physics_process(_delta: float) -> void:
	#if Input.is_action_pressed("right"):
		#direction += Vector2.RIGHT
	#if Input.is_action_pressed("left"):
		#direction += Vector2.LEFT
#
	#position += direction #* speed  # UPDATE SCREEN
########FULL GAME:PLAYER IN ONE SPOT#####MAZE BUT YOU NEED TO ALIGN TO TURN####################################
