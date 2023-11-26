extends Control

@onready var btn_pause = $btn_pause  # Instanciamos el botón.

func _ready():
	pass 

func _on_control_godot_pause(isPaused):
	if isPaused: # Si el juego está pausado ...
		btn_pause.text = "Restart" # ... cambiamos el texto del botón a Restart
	else: # Si el juego no está pausado...
		btn_pause.text = "Pause" # ... cambiamos el texto del botón a Pause
