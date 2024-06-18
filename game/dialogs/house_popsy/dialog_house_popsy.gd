@tool
extends PopochiuDialog


#region Virtual ####################################################################################
func _on_start() -> void:
	await C.player.face_clicked()
	await C.player.say("Hi")
	await C.Popsy.say("Hi!")
	await E.get_tree().process_frame


func _option_selected(opt: PopochiuDialogOption) -> void:
	await D.say_selected()
	
	match opt.id:
		"HowAreYou":
			await C.Popsy.say("I'm... fine")
			await C.player.say("You sure?")
			await C.player.say("Your eyes are glassy")
			await C.Popsy.say("Oh... really?")
			await C.player.say("Yup")
			await C.Popsy.say("I'm completely fine", "sad")
			
			opt.turn_off()
			turn_on_options(["WhySad"])
		"WhySad":
			await E.queue([
				"Popsy(sad): I already told I'm not sad",
				"Goddiu: Then why are you crying?",
				"Popsy: I'm not crying... you see?",
				"Goddiu: Ok... then I'll go",
				C.player.queue_face_left(),
				"...",
				E.queue_camera_shake_bg(),
				"Popsy(sad): [shake]Because I'm hungry!!![/shake]",
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
			await C.Popsy.say("The apple that's on the tree outside!", "sad")
			await C.player.say("Ok ok. Stop crying")
			E.stop_camera_shake()
			await C.Popsy.say("Ok")
		"Exit":
			stop()
	
	_show_options()


# Use this to save custom data for this PopochiuDialog when saving the game.
# The Dictionary must contain only JSON supported types: bool, int, float, String.
func _on_save() -> Dictionary:
	return {}


# Called when the game is loaded.
# This Dictionary should has the same structure you defined for the returned one in _on_save().
func _on_load(data: Dictionary) -> void:
	prints(data)


#endregion
