extends CharacterBody2D

@export var speed = 500

func _physics_process(delta: float) -> void:
	var dir = Vector2.ZERO
	dir.y = Input.get_axis("avancer", "reculer")
	dir.x = Input.get_axis("gauche", "droite")
	velocity = dir * speed
	move_and_slide()
