extends Button

@export var exitToScene : PackedScene

func _on_pressed() -> void:
	if exitToScene != null:
		SceneTransition.load_scene(exitToScene)
	else:
		get_tree().change_scene_to_file("res://Scenes/Levels/menu.tscn")


func _on_music_player_finished() -> void:
	$MusicPlayer.play(0)
	# Replace with function body.
