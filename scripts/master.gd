extends Node2D
@onready var player_move_set = get_node("CharacterList/Player").move_set_list
@onready var Move_List_Panel = $ScrollContainer/VBoxContainer
signal move_selection(move : String)
var move_id : int
var move_name: String
var Move_Button1
var Move_press

func _ready() -> void:
	get_node("CharacterList").battleinit()
	loadMoveList()
	
func loadMoveList():
	var move = player_move_set[0]
	Move_Button1 = Button.new()
	Move_Button1.text = move.move_name
	print(str(Move_Button1.text))
	Move_Button1.connect("pressed", moveSelected.bind(0), 0)
	Move_List_Panel.add_child(Move_Button1)
	
	var move1 = player_move_set[1]
	var Move_Button2
	Move_Button2 = Button.new()
	Move_Button2.text = move1.move_name
	print(str(Move_Button2.text))
	Move_Button2.connect("pressed", moveSelected.bind(1), 1)
	Move_List_Panel.add_child(Move_Button2)
	
	#moveSelected()

func moveSelected(move_id : int):
	match move_id:
		0: emit_signal("move_selection", "tackle")
		1: emit_signal("move_selection", "spinningkick")
