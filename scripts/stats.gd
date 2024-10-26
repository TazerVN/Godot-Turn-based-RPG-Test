extends Resource
class_name Stats

@export var character_type: String
@export var max_health: int
@export var Defense: int
@export var base_damage: int
@export var sprite: SpriteFrames
@export var character_class: String
signal dealdamage(amount)
