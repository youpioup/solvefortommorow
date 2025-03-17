extends Control

var timer = 0
@onready var label: Label = $Label

func _on_timer_timeout() -> void:
	timer +=1
	label.text=str(timer)
