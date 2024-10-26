extends Node
class_name character_list
var current_character

func battleinit() -> void:
	while true:
		for character in get_children():
			current_character = character
			print(str(current_character))
			await current_character.play_turn()
