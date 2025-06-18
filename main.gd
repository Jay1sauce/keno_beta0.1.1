extend Control

const MAX_NUMBERS = 80
const NUMBERS_TO_DRAW = 20

@onready var number_grid = $NumberGrid

func _ready():
    randomize()
    