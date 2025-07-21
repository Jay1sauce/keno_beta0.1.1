extend Control

const MAX_NUMBERS = 80
const NUMBERS_TO_DRAW = 20
var player_picks = []
var drawn_numbers = []

@onready var number_grid = $NumberGrid
@onready var play_button = $PlayButton


func _ready():
    randomize()
		setup_grid()


func _setup_grid():
		for i in range(1, MAX_NUMBERS + 1):
			var button = Button.new()
			button.text = str(i)
			button.pressed.connect(_on_button_pressed)
			numbers_grid.add_child(Button)
			play_button.pressed.connect(_on_play_pressed)

func _on_button_pressed(num):
		if num in player_picks:
				player_picks.erase(num)
		elif player_picks.append(num)
				button.modulate = Color(1, 1, 1,) #green
    