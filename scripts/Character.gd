extends KinematicBody2D

export (int) var max_jumps = 2
export (int) var run_speed = 100
export (int) var jump_speed = -275
export (int) var gravity = 981

var jumps = 0
var velocity = Vector2()


func _process(delta):
    if is_on_floor():
        jumps = 0
    elif jumps == 0:
        jumps = 1
    velocity.x *= 0.1
    if Input.is_action_just_pressed('ui_accept') and jumps < max_jumps:
        jumps += 1
        velocity.y = jump_speed
    if Input.is_action_pressed('ui_right'):
        velocity.x += run_speed
    if Input.is_action_pressed('ui_left'):
        velocity.x -= run_speed
    velocity.y += gravity * delta




func _physics_process(_delta):
    velocity = move_and_slide(velocity, Vector2(0, -1))
