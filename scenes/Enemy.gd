extends KinematicBody2D

const GRAVITY = 200.0
const WALK_SPEED = 100

var motion = Vector2()
var velocity = Vector2()

func _ready():
	pass
	
func _physics_process(delta):
	motion.y = GRAVITY
	motion.x = WALK_SPEED
	
	motion = move_and_slide(motion)
