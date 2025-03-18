extends Node3D

@onready var head: Node3D = $"."
@onready var anim: AnimatedSprite3D = $AnimatedSprite3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	anim.play("idle")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# Check for key presses and switch animations
	if Input.is_action_pressed("up"):  # If the W key is pressed
		anim.play("walk")  # Play the run animation
	elif Input.is_action_pressed("down"):
		anim.play("walk")
	elif Input.is_action_pressed("left"):
		anim.play("walk")
	elif Input.is_action_pressed("right"):
		anim.play("walk")
	else:
		anim.play("idle")  # Play the idle animation when no key is pressed
