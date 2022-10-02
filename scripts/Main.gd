extends Node

export(Array, PackedScene) var levels

var level: Node2D


func _ready():
    level = levels.front().instance()
    # warning-ignore:return_value_discarded
    level.get_node("Flag").connect("body_entered", self, "flag_entered")
    call_deferred("add_child", level)


func _process(_delta):
    if Input.is_action_just_pressed("menu"):
        reset_level()


func reset_level():
    level.get_node("Flag").disconnect("body_entered", self, "flag_entered")
    call_deferred("remove_child", level)
    _ready()


func next_level():
    if levels:
        levels.pop_front()
        reset_level()


func flag_entered(body):
    if body == $Level/Character:
        next_level()
