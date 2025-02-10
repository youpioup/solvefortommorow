extends Area2D

@export var txt = "salut Kayou !"
@export var img:Texture

@onready var label: Label = $CanvasLayer/textBox/MarginContainer/HBoxContainer/Label
@onready var text_box: PanelContainer = $CanvasLayer/textBox
@onready var texture_rect = $CanvasLayer/textBox/MarginContainer/HBoxContainer/TextureRect

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Kayou":
		label.text = txt
		texture_rect.texture = img
		text_box.show()


func _on_body_exited(body: Node2D) -> void:
	if body.name == "Kayou":
		text_box.hide()
