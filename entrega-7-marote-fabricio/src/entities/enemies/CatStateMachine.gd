extends AbstractStateMachine


func notify_body_entered(body: Node) -> void:
	current_state.handle_event("body_entered", body)


func notify_body_exited(body: Node) -> void:
	current_state.handle_event("body_exited", body)


func notify_hit(amount: int) -> void:
	if current_state != $Dead:
		_change_state("dead")


func _on_Body_animation_finished() -> void:
	_on_animation_finished(character.get_current_animation())
