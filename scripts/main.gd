extends Control

@onready var btn_pause = $btn_pause

func _ready():
	pass 

func _on_control_godot_pause(isPaused):
	if isPaused:
		btn_pause.text = "Restart"
	else:
		btn_pause.text = "Pause"
