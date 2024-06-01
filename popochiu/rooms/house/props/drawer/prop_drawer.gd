@tool
extends PopochiuProp
# You can use E.queue([]) to trigger a sequence of events.
# Use await E.queue([]) if you want to pause the excecution of
# the function until the sequence of events finishes.

var key_taken := false


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ VIRTUAL ░░░░
# When the node is clicked
func _on_click() -> void:
	await C.player.walk_to_clicked()
	await C.player.face_clicked()
	
	if current_frame == 0:
		await A.sfx_drawer_open.play()
		change_frame(1)
	else:
		await A.sfx_drawer_close.play()
		change_frame(0)
		return
	
	if key_taken:
		await C.player.say("Its empty")
	else:
		key_taken = true
		await C.player.say("A key!")
		await I.Key.add()
		await C.player.say("I'm free")


# When the node is right clicked
func _on_right_click() -> void:
	# Replace the call to super() to implement your code. This only makes
	# the default behavior to happen.
	# For example you can make the character walk to the Prop and then say
	# something:
#	E.queue([
#		C.face_clicked(),
#		'Player: A deck of cards'
#	])
	super.on_right_click()


# When the node is clicked and there is an inventory item selected
func on_item_used(item: PopochiuInventoryItem) -> void:
	# Replace the call to super(item) to implement your code. This only
	# makes the default behavior to happen.
	# For example you can make the PC react checked using some items in this Prop
#	if item.script_name == 'Key':
#		E.queue(["Player: I can't do that"])
	super(item)


# When an inventory item linked to this Prop (link_to_item) is removed from
# the inventory (i.e. when it is used in something that makes use of the object).
func on_linked_item_removed() -> void:
	pass


# When an inventory item linked to this Prop (link_to_item) is discarded from
# the inventory (i.e. when the player throws the object out of the inventory).
func on_linked_item_discarded() -> void:
	pass
