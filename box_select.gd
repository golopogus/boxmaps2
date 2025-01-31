extends Node2D

func _ready():
	SilentWolf.configure({
		"api_key": "eLIggd6nu78BNB46cEpfF3eukPEvK8Bb6RSolTgF",
		"game_id": "boxmaps",
		"log_level": 0
  	})

	SilentWolf.configure_scores({
		"open_scene_on_close": "res://menu.tscn"
  	})
	
	if Globals.game_type == 3:
		$name.show()
	else:
		$name.hide()
		
var boxes = []
var pressed = false

func _on_button_41000_pressed():
	if 41000 in boxes:
		boxes.erase(41000)
	else:
		boxes.append(41000)


func _on_button_41008_pressed():
	if 41008 in boxes:
		boxes.erase(41008)
	else:
		boxes.append(41008)
		
func _on_button_41011_pressed():
	if 41011 in boxes:
		boxes.erase(41011)
	else:
		boxes.append(41011)
		
func _on_button_41012_pressed():
	if 41012 in boxes:
		boxes.erase(41012)
	else:
		boxes.append(41012)

func _on_button_41014_pressed():
	if 41014 in boxes:
		boxes.erase(41014)
	else:
		boxes.append(41014)

func _on_button_41041_pressed():
	if 41041 in boxes:
		boxes.erase(41041)
	else:
		boxes.append(41041)

func _on_button_41091_pressed():
	if 41091 in boxes:
		boxes.erase(41091)
	else:
		boxes.append(41091)

func _on_button_41092_pressed():
	if 41092 in boxes:
		boxes.erase(41092)
	else:
		boxes.append(41092)

func _on_button_41093_pressed():
	if 41093 in boxes:
		boxes.erase(41093)
	else:
		boxes.append(41093)

func _on_button_41094_pressed():
	if 41094 in boxes:
		boxes.erase(41094)
	else:
		boxes.append(41094)

func _on_button_41095_pressed():
	if 41095 in boxes:
		boxes.erase(41095)
	else:
		boxes.append(41095)
		
func _on_button_41096_pressed():
	if 41097 in boxes:
		boxes.erase(41096)
	else:
		boxes.append(41096)
			
func _on_button_41097_pressed():
	if 41097 in boxes:
		boxes.erase(41097)
	else:
		boxes.append(41097)

func _on_button_41098_pressed():
	if 41098 in boxes:
		boxes.erase(41098)
	else:
		boxes.append(41098)

func _on_button_41099_pressed():
	if 41099 in boxes:
		boxes.erase(41099)
	else:
		boxes.append(41099)


func _on_button_all_pressed():
	var all_boxes = [41000,41008,41011,41012,41014,41041,41091,41092,41093,41094,41095,41096,41097,41098,41099]
	if pressed == false:
		pressed = true
		for button in $TextureRect.get_children():
			if 'button' in button.name:
				get_node('TextureRect/' + button.name).button_pressed = true
		boxes.clear()
		for box in all_boxes:
			boxes.append(box)
	else:
		pressed = false
		for button in $TextureRect.get_children():
			if 'button' in button.name:
				get_node('TextureRect/' + button.name).button_pressed = false
		boxes.clear()
		
		
func _on_start_pressed():
#	if Globals.game_type == 3:
#		if $name/name.text != "":
#			Globals.player = $name/name.text
#			Globals.handle_start(boxes)
#			Globals.change_scene()
#	else:
#		Globals.handle_start(boxes)
#		Globals.change_scene()
	if len(boxes) > 0:
		Globals.handle_start(boxes)
		Globals.change_scene()


func _on_back_pressed():
	get_tree().change_scene_to_file("res://menu.tscn")
