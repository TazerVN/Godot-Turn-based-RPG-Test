extends Node2D

func _ready():
	get_node("CharacterList").next_turn()
