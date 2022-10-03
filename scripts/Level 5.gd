extends Node2D

var initial_speed


func _ready():
    initial_speed = $Character.run_speed


func _on_Timer_timeout():
    $Character.run_speed += initial_speed
