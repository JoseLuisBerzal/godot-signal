# godot-signal 
Ejemplo de una señal personalizada con un parámetro para un control de pausa.

El ejemplo consta de dos escenas una de las cuales es el Timer con una etiqueta
(Label) donde se muestra el paso del tiempo en segundos. Y la otra es la escena
principal que contiene un mensaje de bienvenida y el logo de godot para que no 
quede tanto soso el ejemplo y el botón que cuando se presiona manda una señal 
pressed() que le da la señal para poner la pausa.

Cuando es presionado el botón de pausa/reinicio la escena del timer emite una
señal personalizada con parámetro buleano - godot-pause(bool) - para indicar en
que estado. Y está es conectada con la escena principal para cambiar, según el 
estado, el texto del botón.

Nodos usados:
	Button (activamente).
	Timer (activamente).
	Label (pasivo).
	Sprinte 2D (pasivo).

Versión de Godot Engine v4.1.1.stable.official.
Example of signal with one parameter by Berzal.
