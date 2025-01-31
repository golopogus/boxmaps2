extends Node2D

func _ready():
	$score_label.text += Globals.final_score
	$score_label2.text += Globals.final_score


func _on_menu_button_pressed():
	get_tree().change_scene_to_file("res://menu.tscn")


func _on_submit_button_pressed():
	if $LineEdit.text != '':
		var player_name = ($LineEdit.text).to_upper()
		var score = Globals.final_score
		SilentWolf.Scores.save_score(player_name, score)
		get_tree().change_scene_to_file("res://menu.tscn")


