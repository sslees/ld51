extends Node2D


func _ready():
    if InputMap.has_action("jump"):
        InputMap.erase_action("jump")

func _on_Timer_timeout():
    $Character.jump()
