@tool
extends PopochiuCharacter
# You can use E.queue([]) to trigger a sequence of events.
# Use await E.queue([]) if you want to pause the excecution of
# the function until the sequence of events finishes.

const Data := preload('character_popsy_state.gd')

var state: Data = load('res://game/characters/popsy/character_popsy.tres')


#region Virtual ####################################################################################
# When the room in which this node is located finishes being added to the tree
func _on_room_set() -> void:
	pass


# When the node is clicked
func _on_click() -> void:
	await C.player.walk_to_clicked()
	await C.player.face_clicked()
	D.HousePopsy.start()


# When the node is right clicked
func _on_right_click() -> void:
	# Replace the call to E.command_fallback() to implement your code.
	E.command_fallback()
	# For example, you can make the player character gaze at this character and then say something:
#	await C.player.face_clicked()
#	await C.player.say("Is someone...")


# When the node is middle clicked
func _on_middle_click() -> void:
	# Replace the call to E.command_fallback() to implement your code.
	E.command_fallback()


# When the node is clicked and there is an inventory item selected
func _on_item_used(item: PopochiuInventoryItem) -> void:
	if item == I.Apple:
		await C.player.walk_to_clicked()
		await C.player.face_clicked()
		await E.queue([
			"Player: Hey Popsy! I have something for you",
			"Popsy: What?",
			"Player: Take this apple",
			I.Apple.queue_remove(),
			"Popsy(happy): [shake]Whaaaaaat!?[/shake]",
			"Popsy(happy): [rainbow]Thank you so much!?[/rainbow]",
		])
		
		D.HousePopsy.turn_off_options(["Confirmation"])


# Use it to play the idle animation for the character
func _play_idle() -> void:
	super()


# Use it to play the walk animation for the character
# target_pos can be used to know the movement direction
func _play_walk(target_pos: Vector2) -> void:
	super(target_pos)


# Use it to play the talk animation for the character
func _play_talk() -> void:
	play_animation(emotion if emotion else "talk")


# Use it to play the grab animation for the character
func _play_grab() -> void:
	super()


#endregion

#region Public #####################################################################################
# You can add here functions triggered by the GUI commands. For example, if your GUI has a command
# for look_at, you could have the function:
#func on_look_at() -> void:
	#pass


#endregion
