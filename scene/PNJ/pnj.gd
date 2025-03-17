extends Area2D

@export var txt:DialogueResource
@export var img:Texture

var dialogue_start:bool = false
var dialogue_pg_nb:int = 0

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Kayou":
		DialogueManager.show_dialogue_balloon(txt, "start")
