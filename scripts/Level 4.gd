extends Node2D


func _on_Timer_timeout():
    $Character.jump_speed *= 1.2
