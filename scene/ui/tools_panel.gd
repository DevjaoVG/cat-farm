extends PanelContainer

@onready var tool_axe: Button = $MarginContainer/HBoxContainer/ToolAxe
@onready var tool_tilling: Button = $MarginContainer/HBoxContainer/ToolTilling
@onready var tool_watering_can: Button = $MarginContainer/HBoxContainer/ToolWateringCan


func _on_tool_axe_pressed() -> void:
	ToolManager.selecte_tool(DataTypes.Tools.AxeWood)


func _on_tool_tilling_pressed() -> void:
	ToolManager.selecte_tool(DataTypes.Tools.TillGround)


func _on_tool_watering_can_pressed() -> void:
	ToolManager.selecte_tool(DataTypes.Tools.WaterCrops)
