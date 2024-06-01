@tool
extends PopochiuDialog


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ VIRTUAL ░░░░
func _on_start() -> void:
	await C.player.face_clicked()
	await C.player.say("Hiiiiiiii")
	await C.Popsy.say("Oaaaaaaaa")
	# (!) It MUST always use an await
	await E.get_tree().process_frame


func _option_selected(opt: PopochiuDialogOption) -> void:
	match opt.id:
		"How":
			await C.Popsy.say("I'm saaaaaaad", "sad")
			
			opt.turn_off()
			turn_on_options(["Want"])
		"Want":
			await D.say_selected()
			await E.camera_shake_bg()
			await C.Popsy.say("I WANNA AN APPLE!!!")
		"Exit":
			await C.player.say("Bye")
			await C.Popsy.say("Bye bye!")
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
