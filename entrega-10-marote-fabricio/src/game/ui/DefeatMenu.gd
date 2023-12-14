extends Control

## Menú de derrota genérico. Solo se presenta si detecta que
## el Player llegó a 0 de HP.

signal retry_selected()
signal return_selected()
signal set_bgm(bgm)

export (AudioStream) var bgm: AudioStream


func _ready() -> void:
	hide()
	GameState.connect("current_player_changed", self, "_on_current_player_changed")


func _on_current_player_changed(player: Player) -> void:
	player.connect("hp_changed", self, "_on_hp_changed")
	_on_hp_changed(player.hp, player.max_hp)


func _on_hp_changed(hp: int, hp_max: int) -> void:
	if hp == 0:
		show()
		emit_signal("set_bgm", bgm)


func _on_RetryButton_pressed() -> void:
	hide()
	emit_signal("retry_selected")


func _on_ReturnButton_pressed() -> void:
	hide()
	emit_signal("return_selected")
