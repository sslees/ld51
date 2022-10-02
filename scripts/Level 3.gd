extends Node2D


func _ready():
    InputMap.load_from_globals()


func _on_Timer_timeout():
    $Character.gravity *= -1
    $Character/Sprite.flip_v = not $Character/Sprite.flip_v
