extends Area2D

@onready var timer: Timer = $Timer # create a var for timer() signal
# HINT: click and drag Timer out of the Scene Node,
#       then hold CTRL + release (created code for the var)


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	print("You were TERMINATED") 
	timer.start()  #start the timer when player enters deathzone

func _on_timer_timeout() -> void:#then create a timeout signal unfrneath
	get_tree().reload_current_scene()
