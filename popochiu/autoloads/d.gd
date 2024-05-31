@tool
extends "res://addons/popochiu/engine/interfaces/i_dialog.gd"

# classes ----
const PDHousePopsy := preload('res://popochiu/dialogs/house_popsy/dialog_house_popsy.gd')
# ---- classes

# nodes ----
var HousePopsy: PDHousePopsy : get = get_HousePopsy
# ---- nodes

# functions ----
func get_HousePopsy() -> PDHousePopsy: return E.get_dialog('HousePopsy')
# ---- functions

