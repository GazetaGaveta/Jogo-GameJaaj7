extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const optionDictionary = {
	"estrago": 0, 
	"distancia": 0, 
	"distanciaPombo":0
	};
export(Array, Dictionary) var Modificadores = [
	optionDictionary,
	optionDictionary,
	optionDictionary
	];

signal chosenOption(option, modificadores)
signal eventoTerminado(modificadores);

var resultadoEscolhido;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_EventOption_pressed(extra_arg_0):
	get_node("Resultado%d" % (extra_arg_0+1)).visible = true;
	resultadoEscolhido =  Modificadores[extra_arg_0];
	pass # Replace with function body.

func _on_Resultado_resultadoFoiLido():
	emit_signal("eventoTerminado", resultadoEscolhido);
	pass # Replace with function body.
