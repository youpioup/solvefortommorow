extends CharacterBody2D

var speed = 300
func _physics_process(delta: float) -> void:
	var dir = Vector2.ZERO
	dir.y = Input.get_axis("avancer", "reculer")
	dir.x = Input.get_axis("gauche", "droite")
	velocity = dir * speed
	move_and_slide()
