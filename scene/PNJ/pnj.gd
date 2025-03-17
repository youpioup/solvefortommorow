extends Area2D

@export var txt:Array[String]
@export var img:Texture

@onready var label: Label = $CanvasLayer/textBox/MarginContainer/HBoxContainer/Label
@onready var text_box: PanelContainer = $CanvasLayer/textBox
@onready var texture_rect = $CanvasLayer/textBox/MarginContainer/HBoxContainer/TextureRect
@onready var intercat_label = $CanvasLayer/textBox/MarginContainer/intercatLabel

var dialogue_start:bool = false
var dialogue_pg_nb:int = 0

func _ready():
	if txt.size() > 1:
		intercat_label.show()
	texture_rect.texture = img

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Kayou":
		if txt.size() == 1:
			show_simple_dialogue()
		elif txt.size() > 1:
			show_advenced_dialogue()

func show_simple_dialogue():
	label.text = txt[0]
	text_box.show()

func _process(delta):
	if dialogue_start && Input.is_action_just_pressed("interagire") && dialogue_pg_nb < txt.size() - 1:
		print(dialogue_pg_nb)
		dialogue_pg_nb += 1
		label.text = txt[dialogue_pg_nb]
		
		if dialogue_pg_nb == txt.size() - 1:
			intercat_label.hide()

func show_advenced_dialogue():
	dialogue_start = true
	var i = 0
	label.text = txt[i]
	text_box.show()

func _on_body_exited(body: Node2D) -> void:
	if body.name == "Kayou":
		text_box.hide()
		if txt.size() > 1:
			intercat_label.show()
			dialogue_pg_nb = 0
