extends Node2D


var speed = 170

func _ready():
	set_physics_process(true)


func _physics_process(delta):
	enemyMovement(delta)


func enemyMovement(delta):
	global_position.x += speed * delta
	pass 
