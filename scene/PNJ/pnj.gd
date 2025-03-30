extends Area2D

@export var txt:DialogueResource
@export var img:Texture
@onready var sprite_2d = $Sprite2D

var player:CharacterBody2D

var dialogue_start:bool = false
var dialogue_pg_nb:int = 0

func _ready():
	sprite_2d.texture = img

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Kayou":
		player = body
		DialogueManager.show_dialogue_balloon(txt, "start")
		body.can_move = false
		DialogueManager.dialogue_ended.connect(dialogue_ended)

func dialogue_ended(ressource):
	print("dialogue ended")
	player.can_move = true
