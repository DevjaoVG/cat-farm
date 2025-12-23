extends Sprite2D

@onready var hurt_component: HurtComponent = $HurtComponent
@onready var damage_component: DamageComponent = $DamageComponent

#var tween = create_tween()
var log_scene = preload("res://scene/objects/collectable/log.tscn")


func _ready() -> void:
	hurt_component.hurt.connect(on_hurt) # Conecta Sinal de HurdComponent 
	damage_component.max_damage_reached.connect(os_max_damage_reached)


func on_hurt(hit_damage: int) -> void: # Quando sinal foir disparado, chama metodo de dano de HitComponent
	damage_component.apply_damage(hit_damage)
	
	material.set_shader_parameter("shake_intensity", 1)
	await get_tree().create_timer(0.5).timeout
	material.set_shader_parameter("shake_intensity", 0)


func os_max_damage_reached() -> void: # Quando o sinal for disparado significa que o objeto "Morreu"
	call_deferred("add_log_scene")
	print("MATEIRA!")
	queue_free() # Remove de cena
	
	
func add_log_scene() -> void: # Adiciona a Cena Log quando a arvore for quebrada
	var log_instance = log_scene.instantiate() as Node2D
	get_parent().add_child(log_instance)
	log_instance.global_position = global_position
	
