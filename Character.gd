extends KinematicBody2D

export (int) var run_speed = 100
export (int) var jump_speed = -275
export (int) var gravity = 981
export (int) var max_jumps = 2

var velocity = Vector2()
var jumps = 0

func _physics_process(delta):
    velocity.x *= 0.1
    if is_on_floor():
        jumps = 0
    if Input.is_action_just_pressed('ui_select') and jumps < max_jumps:
        velocity.y = jump_speed
        jumps += 1
    if Input.is_action_pressed('ui_right'):
        velocity.x += run_speed
    if Input.is_action_pressed('ui_left'):
        velocity.x -= run_speed
    velocity.y += gravity * delta
    velocity = move_and_slide(velocity, Vector2(0, -1))
