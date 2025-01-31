extends Node2D

func _ready():
	var percent = float(Globals.right)/(float(Globals.right) + float(Globals.wrong)) * 100
	percent = snapped(percent,.01)
	var percent_str = str(percent)

	$correct/Label.text = percent_str + '% STREETS CORRECT'
	$correct/Label2.text = percent_str + '% STREETS CORRECT'


func _on_button_pressed():
	get_tree().change_scene_to_file("res://menu.tscn")
