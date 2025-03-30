extends CharacterBody2D

@export var speed = 500

var can_move:bool = true

func _physics_process(delta: float) -> void:
	if !can_move:
		return
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
