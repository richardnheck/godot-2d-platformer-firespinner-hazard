extends Node2D


onready var fireball_spinner = $FireBallSpinner

onready var start_direction_value_label = $CanvasLayer/GUI/VBoxContainer/StartDirection/ValueLabel
onready var spin_speed_value_label = $CanvasLayer/GUI/VBoxContainer/SpinSpeed/ValueLabel
onready var swing_degrees_value_label = $CanvasLayer/GUI/VBoxContainer/SwingDegrees/ValueLabel
onready var rotation_style_option_button = $CanvasLayer/GUI/VBoxContainer/RotationStyle/OptionButton
onready var swing_speed_value_label = $CanvasLayer/GUI/VBoxContainer/SwingSpeed/ValueLabel
onready var swing_time_offset_value_label = $CanvasLayer/GUI/VBoxContainer/SwingTimeOffset/ValueLabel
onready var length_value_label = $CanvasLayer/GUI/VBoxContainer/Length/ValueLabel
onready var chains_value_label = $CanvasLayer/GUI/VBoxContainer/Chains/ValueLabel
onready var gap = $CanvasLayer/GUI/VBoxContainer/Gap/CheckBox
onready var show_editor_guides = $CanvasLayer/GUI/VBoxContainer/ShowEditorGuides/CheckBox


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	rotation_style_option_button.select(fireball_spinner.rotation_style)
	start_direction_value_label.text = String(fireball_spinner.start_direction)
	spin_speed_value_label.text = String(fireball_spinner.spin_speed)
	swing_degrees_value_label.text = String(fireball_spinner.swing_degrees)
	swing_speed_value_label.text = String(fireball_spinner.swing_speed)
	swing_time_offset_value_label.text = String(fireball_spinner.swing_time_offset)
	length_value_label.text = String(fireball_spinner.length)
	chains_value_label.text = String(fireball_spinner.chains)
	gap.pressed = fireball_spinner.gap
	show_editor_guides.pressed = fireball_spinner.show_editor_guides
	_init_swing_spin_ui()
	
# Initialise the ui based on whether rotation style is swing or spin
func _init_swing_spin_ui() -> void:
		get_tree().set_group("spin", "visible", fireball_spinner.rotation_style == 0)
		get_tree().set_group("swing", "visible", fireball_spinner.rotation_style != 0)
	
# Rotation Style changed
func _on_RotationStyleOptionButton_item_selected(index: int) -> void:
	fireball_spinner.rotation_style = index
	_reset_spinner()
	_init_swing_spin_ui()


# Start Direction changed
func _on_StartDirectionHSlider_value_changed(value: float) -> void:
	fireball_spinner.start_direction = value
	start_direction_value_label.text = String(fireball_spinner.start_direction)
	_reset_spinner()


# Swing Speed changed
func _on_SpinSpeedHSlider_value_changed(value: float) -> void:
	fireball_spinner.spin_speed = value
	spin_speed_value_label.text = String(fireball_spinner.spin_speed)
	_reset_spinner()
	
	
# Swing Degrees changed
func _on_SwingDegreesHSlider_value_changed(value: float) -> void:
	fireball_spinner.swing_degrees = value
	swing_degrees_value_label.text = String(fireball_spinner.swing_degrees)
	_reset_spinner()


# Swing Speed changed
func _on_SwingSpeedHSlider_value_changed(value: float) -> void:
	fireball_spinner.swing_speed = value
	swing_speed_value_label.text = String(fireball_spinner.swing_speed)
	_reset_spinner()


# Swing Time Offset changed
func _on_SwingTimeOffsetHSlider_value_changed(value: float) -> void:
	fireball_spinner.swing_time_offset = value
	swing_time_offset_value_label.text = String(fireball_spinner.swing_time_offset)
	_reset_spinner()


# Length changed
func _on_LengthHSlider_value_changed(value: float) -> void:
	fireball_spinner.length = value
	length_value_label.text = String(fireball_spinner.length)
	_reset_spinner()


# Chains changed
func _on_ChainsHSlider_value_changed(value: float) -> void:
	fireball_spinner.chains = value
	chains_value_label.text = String(fireball_spinner.chains)
	_reset_spinner()


# Gap changed
func _on_GapCheckBox_toggled(button_pressed: bool) -> void:
	fireball_spinner.gap = button_pressed
	_reset_spinner()


# Show Swing Boundary changed
func _on_ShowSwingBoundaryCheckBox_toggled(button_pressed: bool) -> void:
	fireball_spinner.show_editor_guides = button_pressed
	
	
func _on_ResetSpinnerButton_pressed() -> void:
	_reset_spinner()


func _reset_spinner() -> void:
	fireball_spinner.reset()



