extends Node2D

var character_pos: Vector2


func _ready():
    character_pos = $Character.position


func _on_Timer_timeout():
    $Character.position = character_pos
