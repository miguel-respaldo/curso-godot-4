extends CharacterBody3D

''' MOVIMIENTO 2.5D '''
# Presten mucha atención, porque esto ya es el script del personaje, no el autoload ¿sí?
# ¿No querían aprender? Pues se me ponen vivos...

# Variables de movimiento del personaje.
@export var speed : float

func _process(delta):
	motion_ctrl()


func motion_ctrl() -> void:
	velocity.x = GLOBAL.get_axis().x * speed
	move_and_slide()
