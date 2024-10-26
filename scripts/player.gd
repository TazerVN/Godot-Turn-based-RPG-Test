extends Character
var move_selected : String
signal move_complete

func _ready():
	get_node("AnimatedSprite2D").sprite_frames = CharacterSprite
	get_node("AnimatedSprite2D").play("default")

func target_selection():
	pass
	

func play_turn():
	var use_move : Move_set
	await move_complete
	for move_set in move_set_list:
		if move_set.move_name == move_selected:
			use_move = move_set
	damage_amount = use_move.Move_Base_Damage
	get_node("AnimationPlayer").play(str(use_move.move_name))
	await get_node("AnimationPlayer").animation_finished

func move_selection(move : String):
	pass



func _on_master_move_selection(move):
	move_selected = move
	print(str(move_selected))
	emit_signal("move_complete")
