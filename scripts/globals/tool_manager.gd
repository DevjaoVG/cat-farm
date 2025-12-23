extends Node

var selected_tool: DataTypes.Tools = DataTypes.Tools.None # Ferramenta selecionada

signal tool_selected(tool: DataTypes.Tools) # Sinal que emite qual ferramenta foi selecionada

func selecte_tool(tool: DataTypes.Tools) -> void: # Função global para anunciar qual ferramenta foi selecionada
	tool_selected.emit(tool)
	selected_tool = tool
