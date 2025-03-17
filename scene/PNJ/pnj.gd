extends Area2D

@export var txt:Array[String]
@export var img:Texture

@onready var label: Label = $CanvasLayer/textBox/MarginContainer/HBoxContainer/Label
@onready var text_box: PanelContainer = $CanvasLayer/textBox
@onready var texture_rect = $CanvasLayer/textBox/MarginContainer/HBoxContainer/TextureRect

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Kayou":
		if txt.size() == 1:
			show_simple_dialogue()
		elif txt.size() >= 1:
			show_advenced_dialogue()

func show_simple_dialogue():
	label.text = txt[0]
	texture_rect.texture = img
	text_box.show()

func show_advenced_dialogue():
	pass

func _on_body_exited(body: Node2D) -> void:
	if body.name == "Kayou":
		text_box.hide()
