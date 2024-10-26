extends Node2D
class_name Character

@export var stats : Stats
@export var move_set_list: Array[Move_set] = []
@onready var current_health = stats.max_health
@onready var CharacterSprite = stats.sprite
var damage_amount

func take_damage(amount):
	current_health -= amount
