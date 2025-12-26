class_name CollectableComponent # Componente Reutilizavel
extends Area2D

@export var collectable_name: String # Nome do coletavel

func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		InventoryManager.add_collectable(collectable_name)
		print("Coletou: ", collectable_name)
		get_parent().queue_free()
