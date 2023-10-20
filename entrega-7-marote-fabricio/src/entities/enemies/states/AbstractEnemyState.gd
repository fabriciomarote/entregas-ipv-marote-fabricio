extends AbstractState
class_name AbstractEnemyState


## Manejamos los eventos de detección de cuerpo aprovechando el polimorfismo
## del parámetro "value" para pasar el cuerpo detectado
func handle_event(event: String, value = null) -> void:
	match event:
		"body_entered":
			_handle_body_entered(value)
		"body_exited":
			_handle_body_exited(value)


# Derivamos la detección del target que entra
func _handle_body_entered(body: Node) -> void:
	if character.target == null:
		character.target = body


# Derivamos la detección del target que sale
func _handle_body_exited(body) -> void:
	if body == character.target:
		character.target = null

