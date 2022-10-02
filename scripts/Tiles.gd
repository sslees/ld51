extends TileMap


func _ready():
    var coins = 1
    var timer = Timer.new()

    for cell in get_used_cells_by_id(1):
        var old = get_cell_autotile_coord(cell[0], cell[1])

        old.x = int(old.x + coins) % 12
        set_cell(cell[0], cell[1], 1, false, false, false, old)
        coins += 1
    timer.set_wait_time(0.1)
    timer.connect("timeout", self, "_on_Timer_timeout")
    add_child(timer)
    timer.start()

func _on_Timer_timeout():
    for cell in get_used_cells_by_id(1):
        var old = get_cell_autotile_coord(cell[0], cell[1])

        old.x = int(old.x + 1) % 12
        set_cell(cell[0], cell[1], 1, false, false, false, old)
