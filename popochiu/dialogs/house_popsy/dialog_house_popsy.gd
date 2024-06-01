@tool
extends PopochiuDialog


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ VIRTUAL ░░░░
func _on_start() -> void:
	await C.player.face_clicked()
	await C.player.say("Hi")
	await C.Popsy.say("Hi!")
	
	await E.get_tree().process_frame


func _option_selected(opt: PopochiuDialogOption) -> void:
	# You can make the player character say the selected option with:
	await D.say_selected()
	
	# Use match to check which option was selected and excecute something for
	# each one
	match opt.id:
		"HowAreYou":
			await E.queue([
				"Popsy: I'm... fine",
				"Player: You sure?",
				"Player: Your eyes are glassy",
				"Popsy: Oh... really?",
				"Player: Yup",
				"Popsy(cry): I'm completely fine",
			])
			
			opt.turn_off()
			turn_on_options(["WhySad"])
		"WhySad":
			await E.queue([
				"Popsy(cry): I already told I'm not sad",
				"Goddiu: Then why are you crying?",
				"Popsy: I'm not crying... you see?",
				"Goddiu: Ok... then I'll go",
				C.player.queue_face_left(),
				"...",
				E.queue_camera_shake_bg(),
				"Popsy(cry): [shake]Because I'm hungry!!![/shake]",
				C.player.queue_face_right(),
			])
			
			opt.turn_off()
			turn_on_options(["WhatWant"])
		"WhatWant":
			await C.Popsy.say("An apple")
			await C.player.say("But where am I going to get an apple from?")
			await C.Popsy.say("I think I see one on the tree outside")
			await C.player.face_left()
			await E.wait(2)
			await C.player.say("You're right")
			await C.player.face_right()
			await C.player.say("I'll grab it for you")
			
			opt.turn_off()
			turn_on_options(["Confirmation"])
		"Confirmation":
			E.camera_shake_bg(1.0, 10.0)
			await E.queue([
				"Popsy(cry): The apple that's on the tree outside!",
				"Player: Ok ok. Stop crying"
			])
			
			E.stop_camera_shake()
			await C.Popsy.say("Ok")
		"Exit":
			# By default close the dialog. Options won't show after calling
			# stop()
			stop()
	
	_show_options()


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ PUBLIC ░░░░
# Use this to save custom data for this PopochiuDialog when saving the game.
# The Dictionary must contain only JSON supported types: bool, int, float, String.
func on_save() -> Dictionary:
	return {}


# Called when the game is loaded.
# This Dictionary should has the same structure you defined for the returned
# one in on_save().
func on_load(data: Dictionary) -> void:
	prints(data)
