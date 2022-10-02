extends Node2D


func _on_Timer_timeout():
    $Character.run_speed *= 1.2
