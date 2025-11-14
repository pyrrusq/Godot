extends Area2D


func _ready():
	print("Coin created..")

func _on_body_entered(body: Node2D) -> void:
	print("+1 Coin Collected")
	queue_free()
