extends CharacterBody2D

@export var speed = 500

func _physics_process(delta: float) -> void:
	var dir = Vector2.ZERO
	dir.y = Input.get_axis("avancer", "reculer")
	dir.x = Input.get_axis("gauche", "droite")
	dir = dir.normalized()
	velocity = dir * speed
	if Input.is_action_pressed("sprint"):
		speed = 900
	else:
		speed = 500
	move_and_slide()
