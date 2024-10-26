extends Character

func _ready():
	get_node("AnimatedSprite2D").sprite_frames = CharacterSprite
	get_node("AnimatedSprite2D").play("default")

func play_turn():
	var use_move = move_set_list.pick_random()
	damage_amount = use_move.Move_Base_Damage
	get_node("AnimationPlayer").play(str(use_move.move_name))
	await get_node("AnimationPlayer").animation_finished
