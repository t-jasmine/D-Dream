extends Area2D

var player

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	player = get_parent().get_node("Player")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		print("Hello!")
		killPlayer()

func killPlayer() -> void:
	player.velocity = Vector2.ZERO
	player.position = Vector2(150,-450)
