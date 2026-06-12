extends Node2D

const SPEED = 60
var direction = 1

@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var ground_check_right: RayCast2D = $GroundCheckRight
@onready var ground_check_left: RayCast2D = $GroundCheckLeft
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if direction == 1:
		if ray_cast_right.is_colliding() or !ground_check_right.is_colliding():
			direction = -1
			animated_sprite.flip_h = true
	
	else:
		if ray_cast_left.is_colliding() or !ground_check_left.is_colliding():
			direction = 1
			animated_sprite.flip_h = false
		
	position.x += direction * SPEED * delta
