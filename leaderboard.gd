extends Node2D

func _ready():
	var sw_result: Dictionary = await SilentWolf.Scores.get_scores().sw_get_scores_complete

	
	#print(sw_result.scores[0]["score"])
	
	for i in len(sw_result.scores):
		
		#$names.get_child(i).text = sw_result.scores[i]["player_name"]
		for label in $names.get_child(i).get_children():
			label.text = sw_result.scores[i]["player_name"]
		
		for label in $score.get_child(i).get_children():
			label.text = str(sw_result.scores[i]["score"])
		
				
		i += 1
		
		


func _on_button_pressed():
	get_tree().change_scene_to_file("res://menu.tscn")
