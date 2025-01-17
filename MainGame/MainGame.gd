extends Control

export(int) var countdownMax
var currentTimer


func _ready():
	set_process(true)
	currentTimer = countdownMax
	$Timer_HUD/TimerCounter.text = str(currentTimer)
	while currentTimer > 0:
		yield(get_tree().create_timer(1.0), "timeout")
		$Timer_HUD/TimerCounter.text = str(currentTimer)
		currentTimer = currentTimer - 1
		print(currentTimer)
#	print("Game Over")
	get_tree().change_scene("res://MainGame/LoseScene.tscn")
	
#	for childNode in $HUD.get_children():
#		if childNode is Button:
#			childNode.connect("pressed", self, "_on_Button_pressed", [childNode.scene_to_load])
	
	var name = "Autobot 1"
	var welcome = "Yo"
	var message = welcome + " " + name
	print(message)


func _process(delta):
	$Score_HUD/ScoreCounter.text = str(GlobalVariables.ScoringInformation["currentScore"])
	if get_tree().get_nodes_in_group("enemy").size() == 0:
		GlobalVariables.Player == null
		get_tree().change_scene("res://NewLevels/MoveOnToTheNextLevel.tscn")
