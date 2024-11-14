extends CardState

func enter() -> void:
	card_ui.color.color = Color.ORANGE
	card_ui.state.text = "CLICKED"
	card_ui.drop_point_detector.monitoring = true

func on_input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		var ns := CardState.new()
		ns.state = CardState.State.DRAGGING
		transition_requested.emit(self, ns)
