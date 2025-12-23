class_name Player
extends CharacterBody2D

@export var current_tool : DataTypes.Tools = DataTypes.Tools.None # Armazena ferramenta atual
var player_direction: Vector2 # Vetor de direções

func _ready() -> void:
	ToolManager.tool_selected.connect(on_tool_selected)


func on_tool_selected(tool: DataTypes.Tools) -> void:
	current_tool = tool
	print(current_tool)
