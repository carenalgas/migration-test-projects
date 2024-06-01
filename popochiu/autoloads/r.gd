@tool
extends "res://addons/popochiu/engine/interfaces/i_room.gd"

# classes ----
const PRHouse := preload('res://popochiu/rooms/house/room_house.gd')
const PROutside := preload('res://popochiu/rooms/outside/room_outside.gd')
const PRAttic := preload('res://popochiu/rooms/attic/room_attic.gd')
# ---- classes

# nodes ----
var House: PRHouse : get = get_House
var Outside: PROutside : get = get_Outside
var Attic: PRAttic : get = get_Attic
# ---- nodes

# functions ----
func get_House() -> PRHouse: return super.get_runtime_room('House')
func get_Outside() -> PROutside: return super.get_runtime_room('Outside')
func get_Attic() -> PRAttic: return super.get_runtime_room('Attic')
# ---- functions

