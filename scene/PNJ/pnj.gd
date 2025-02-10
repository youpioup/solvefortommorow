extends Area2D

@export var txt = "salut Kayou !"

@onready var label: Label = $CanvasLayer/textBox/MarginContainer/HBoxContainer/Label
@onready var text_box: PanelContainer = $CanvasLayer/textBox

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Kayou":
		label.text = txt
		text_box.show()


func _on_body_exited(body: Node2D) -> void:
	if body.name == "Kayou":
		text_box.hide()
