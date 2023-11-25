extends Control

@onready var timer = $timer
@onready var lbl_timer = $timer/lbl_timer

signal godot_pause(isPaused)
var seconds

func _ready():
	seconds = 0
	timer.start()

func _on_timer_timeout():
	seconds += 1
	lbl_timer.text = str(seconds)

func _on_btn_pause_pressed():
	if timer.paused:
		print("Restart")
		timer.set_paused(false)
		emit_signal("godot_pause", false)
	else:
		print("Pause")
		timer.set_paused(true)
		emit_signal("godot_pause", true)
