extends Node

var boxes_used = []
var final_score = ''
var game_type = 0
var player
var right = 0
var wrong = 0

func _ready():
	SilentWolf.configure({
		"api_key": "eLIggd6nu78BNB46cEpfF3eukPEvK8Bb6RSolTgF",
		"game_id": "boxmaps",
		"log_level": 0
  	})

	SilentWolf.configure_scores({
		"open_scene_on_close": "res://menu.tscn"
  	})

	
func handle_start(boxes):
	boxes_used = boxes
	
func finish_round(score):
	final_score = score
	
func change_scene():
	
	get_tree().change_scene_to_file("res://find_it.tscn")
#	elif game_type == 2:
#		get_tree().change_scene_to_file("res://street_drill.tscn")
	
	
