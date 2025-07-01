extends Node2D

var selected = false
var mouse_offset = Vector2(0, 0)
@onready var area = $Area2D

func _process(delta):
	if selected:
		followMouse()

func followMouse():
	var mouse_position = get_global_mouse_position() + mouse_offset
	
	# This is the current screen size
	var screen_size = get_viewport_rect().size
	
	# Margin so the item doesn't go off-screen
	var margin = 60.0
	
	# Limit position based on dynamic screen size and margins
	mouse_position.x = clamp(mouse_position.x, margin, screen_size.x - margin)
	mouse_position.y = clamp(mouse_position.y, margin, screen_size.y - margin)
	
	global_position = mouse_position

func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.is_pressed():
			mouse_offset = position - get_global_mouse_position()
			selected = true
		else:
			selected = false

func _input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and not event.is_pressed():
		selected = false
		var overlapping_areas = area.get_overlapping_areas()
		for overlap in overlapping_areas:
			if overlap.name == "BasketScene":
				overlap.call("_on_toast_dropped") 
				var toastLabel = get_parent().get_node("Square/ToastLabel")
				toastLabel.text = str(Global.toastNumber)
				position = Vector2(688, 552)
