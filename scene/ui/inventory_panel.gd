extends PanelContainer

@onready var stone_label: Label = $MarginContainer/VBoxContainer/Stone/StoneLabel

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	InventoryManager.inventory_changed.connect(on_inventory_changed)
	
func on_inventory_changed() -> void:
	var inventory: Dictionary = InventoryManager.inventory
	
	if inventory.has("stone"):
		stone_label.text = str(inventory["stone"])
