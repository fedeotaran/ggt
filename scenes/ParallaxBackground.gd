extends ParallaxBackground

var backmovement = 0

func _ready():
	set_process(true)

func _process(delta):
	backmovement += 50 * delta
	set_scroll_offset(Vector2(backmovement, 0))