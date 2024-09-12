extends CharacterBody2D

@export var speed = 300
@onready var _animation_player = $AnimationPlayer

var offset = 0

func get_input():
	var input_dir = Input.get_vector("left", "right", "up", "down")
	velocity = input_dir * speed
	
	
func _physics_process(delta):
	get_input()
	move_and_slide()
	if velocity != Vector2.ZERO:
		_animation_player.play("walk")
	else:
		_animation_player.stop()
