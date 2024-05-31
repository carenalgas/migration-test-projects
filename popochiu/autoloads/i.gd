@tool
extends "res://addons/popochiu/engine/interfaces/i_inventory.gd"

# classes ----
const PIIKey := preload('res://popochiu/inventory_items/key/item_key.gd')
const PIIToyCar := preload('res://popochiu/inventory_items/toy_car/item_toy_car.gd')
const PIIApple := preload('res://popochiu/inventory_items/apple/item_apple.gd')
# ---- classes

# nodes ----
var Key: PIIKey : get = get_Key
var ToyCar: PIIToyCar : get = get_ToyCar
var Apple: PIIApple : get = get_Apple
# ---- nodes

# functions ----
func get_Key() -> PIIKey: return super.get_item_instance('Key')
func get_ToyCar() -> PIIToyCar: return super.get_item_instance('ToyCar')
func get_Apple() -> PIIApple: return super.get_item_instance('Apple')
# ---- functions

