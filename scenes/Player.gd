extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var motion = Vector2()
var hit = false

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	$Sprite.connect("animation_finished", self, "_stop_hit")

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func _physics_process(delta):
	motion.y = 200
	
	if Input.is_key_pressed(KEY_SPACE) and !hit:
		$Sprite.play("hit")
		_start_hit()
	
	if hit:
		$Sprite.play("hit")
	else:
		$Sprite.play("idle")
	
	motion = move_and_slide(motion)
	
func _stop_hit():
	hit = false
	
func _start_hit():
	hit = true