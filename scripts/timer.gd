extends Control

@onready var timer = $timer  # Instanciamos el Timer.
@onready var lbl_timer = $timer/lbl_timer # Instanciamos el Label.

signal godot_pause(isPaused) # Con esto creamos un señal custom.
var seconds # Variable para guardar el segundo actual.

func _ready():
	seconds = 0   # Le indicamos que segundo es el primero.
	timer.start() # Arrancamos el Timer (contador)

func _on_timer_timeout():  
	seconds += 1 # Le sumamos 1 segundo al 'reloj'
	lbl_timer.text = str(seconds) # Y visualizamos es

func _on_btn_pause_pressed():
	if timer.paused: # Si el estado del timer está pausado ...
		print("Restart") # ... visualizamos en consola Restart ...
		timer.set_paused(false) # ... quitamos la pausa del timer ...
		# ... y emitimos la señal godot_pause con el parámetro a false
		emit_signal("godot_pause", false) 
	else: # Si el estado del timer no es pausado ...
		print("Pause") # ... visualizamos en consola Pause ...
		timer.set_paused(true) # ... iniciamos la pausa del timer ...
		# ... y emitimos la señal godot_pause con el parámetro a true
		emit_signal("godot_pause", true)
