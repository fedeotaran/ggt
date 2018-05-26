extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var motion = Vector2()
onready var player = get_node("Player")

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func _physics_process(delta):
	motion.y = 200
	if Input.is_key_pressed(KEY_SPACE):
		$Sprite.play("hit")
		yield(player, "finished")
	else:
		$Sprite.play("idle")
	motion = move_and_slide(motion)
	pass