extends Node

var jump_audio = preload("res://audio/jump.wav")
var coin_audio = preload("res://audio/pickupCoin.wav")

var levels = [
    preload("res://scenes/Level 0.tscn"),
    preload("res://scenes/Level 1.tscn"),
    preload("res://scenes/Level 3.tscn"),
    preload("res://scenes/Level 4.tscn"),
    preload("res://scenes/Level 5.tscn"),
    preload("res://scenes/Level 2.tscn"),
    preload("res://scenes/End.tscn"),
]

var level = null
var score = 0
var level_score = 0
var game_time


func _ready():
    reset_level()
    game_time = OS.get_unix_time()


func _process(_delta):
    if levels.size() > 1:
        $CanvasLayer/Time.text = "Time: " + format_time(OS.get_unix_time() - game_time)
    for player in get_children():
        if player is AudioStreamPlayer and not player.is_playing():
            player.queue_free()

func reset_level():
    level_score = 0
    $CanvasLayer/Score.text = "Score: %d" % score
    if level:
        level.name = "LevelOld"
        level.queue_free()
    level = levels.front().instance()
    # warning-ignore:return_value_discarded
    level.get_node("Character").connect("character_jumped", self, "character_jumped")
    # warning-ignore:return_value_discarded
    level.get_node("Character").connect("coin_collected", self, "coin_collected")
    # warning-ignore:return_value_discarded
    level.get_node("Character").connect("character_fell", self, "reset_level")
    if level.has_node("Flag"):
        # warning-ignore:return_value_discarded
        level.get_node("Flag").connect("body_entered", self, "flag_entered")
    call_deferred("add_child", level)


func next_level():
    if levels:
        score += level_score
        levels.pop_front()
        reset_level()


func character_jumped():
    play_sound(jump_audio)


func coin_collected():
    level_score += 10
    $CanvasLayer/Score.text = "Score: %d" % (score + level_score)
    play_sound(coin_audio)


func flag_entered(body):
    if has_node("Level/Character") and body == $Level/Character:
        next_level()


func format_time(delta):
    return "%d:%02d" % [(delta / 60) % 60, delta % 60]


func play_sound(sound):
    var player = AudioStreamPlayer.new()

    player.stream = sound
    player.play()
    call_deferred("add_child", player)
