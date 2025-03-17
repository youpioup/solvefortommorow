extends Area2D

@export var txt:DialogueResource
@export var img:Texture

@onready var label: Label = $CanvasLayer/textBox/MarginContainer/HBoxContainer/Label
@onready var text_box: PanelContainer = $CanvasLayer/textBox
@onready var texture_rect = $CanvasLayer/textBox/MarginContainer/HBoxContainer/TextureRect
@onready var intercat_label = $CanvasLayer/textBox/MarginContainer/intercatLabel

var dialogue_start:bool = false
var dialogue_pg_nb:int = 0

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Kayou":
		DialogueManager.show_dialogue_balloon(txt, "start")
