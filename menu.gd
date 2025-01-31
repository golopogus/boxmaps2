extends Node2D


func _on_button_pressed():
	#Globals.handle_start(boxes)
	#get_tree().change_scene_to_file("res://find_it.tscn")
	Globals.game_type = 1
	get_tree().change_scene_to_file("res://box_select.tscn")


func _on_button_2_pressed():
	#Globals.handle_start(boxes)
	#get_tree().change_scene_to_file("res://street_drill.tscn")
	Globals.game_type = 2

	get_tree().change_scene_to_file("res://box_select.tscn")


func _on_button_4_pressed():
	Globals.game_type = 3
	var boxes = [41000,41008,41011,41012,41014,41041,41091,41092,41093,41094,41095,41096,41097,41098,41099]

	Globals.handle_start(boxes)
	Globals.change_scene()


func _on_button_3_pressed():
	get_tree().change_scene_to_file("res://leaderboard.tscn")
