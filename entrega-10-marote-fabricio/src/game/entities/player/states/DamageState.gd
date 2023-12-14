extends AbstractState

onready var damage_sfx : AudioStreamPlayer = $"../../DamageSfx"


func enter() -> void:
	character._play_animation("damage")
	damage_sfx.play()
	

func _on_animation_finished(anim_name:String) -> void:
	if (anim_name == "damage"):
		emit_signal("finished", "idle")
