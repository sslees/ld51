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
    if InputMap.has_action("jump") and Input.is_action_just_pressed("jump") and jumps < max_jumps:
        jump()
    if Input.is_action_pressed("right"):
        velocity.x += run_speed
        if is_on_floor():
            $Sprite.animation = "run"
        elif $Sprite.animation != "jump":
            $Sprite.animation = "default"
        $Sprite.flip_h = false
    elif Input.is_action_pressed("left"):
        velocity.x -= run_speed
        if is_on_floor():
            $Sprite.animation = "run"
        elif $Sprite.animation != "jump":
            $Sprite.animation = "default"
        $Sprite.flip_h = true
    elif $Sprite.animation != "jump" or $Sprite.frame == 1:
        $Sprite.animation = "default"
    velocity.y += gravity * delta


func _physics_process(_delta):
    velocity = move_and_slide(velocity, Vector2(0, 1 if $Sprite.flip_v else -1))


func jump():
    jumps += 1
    velocity.y = -jump_speed if $Sprite.flip_v else jump_speed
    $Sprite.animation = "jump"
