extends Area2D

func _ready():
	print("LevelExit ready")

func _on_body_entered(body):
	print("Touched by:", body.name)

	if body.name == "Player":
		get_tree().change_scene_to_file("res://scenes/levels/game_l2.tscn")
