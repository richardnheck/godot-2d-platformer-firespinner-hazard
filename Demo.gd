extends Node2D


onready var fireball_spinner = $FireBallSpinner

onready var start_direction_value_label = $GUI/VBoxContainer/StartDirection/ValueLabel
onready var spin_speed_value_label = $GUI/VBoxContainer/SpinSpeed/ValueLabel
onready var swing_degrees_value_label = $GUI/VBoxContainer/SwingDegrees/ValueLabel
onready var rotation_style_option_button = $GUI/VBoxContainer/RotationStyle/OptionButton
onready var swing_speed_value_label = $GUI/VBoxContainer/SwingSpeed/ValueLabel


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	rotation_style_option_button.select(fireball_spinner.rotation_style)
	start_direction_value_label.text = String(fireball_spinner.start_direction)
	spin_speed_value_label.text = String(fireball_spinner.speed)
	swing_degrees_value_label.text = String(fireball_spinner.swing_degrees)
	swing_speed_value_label.text = String(fireball_spinner.swing_speed)


func _on_RefreshButton_pressed() -> void:
	_reset_spinner()


#
# Rotation Style
#
func _on_RotationStyleOptionButton_item_selected(index: int) -> void:
	fireball_spinner.rotation_style = index
	_reset_spinner()


#
# Start Direction
#
func _on_StartDirectionHSlider_value_changed(value: float) -> void:
	fireball_spinner.start_direction = value
	start_direction_value_label.text = String(fireball_spinner.start_direction)
	_reset_spinner()


#
# Swing Speed
#
func _on_SpinSpeedHSlider_value_changed(value: float) -> void:
	fireball_spinner.speed = value
	spin_speed_value_label.text = String(fireball_spinner.speed)
	_reset_spinner()
	
	
#
# Swing Degrees
#
func _on_SwingDegreesHSlider_value_changed(value: float) -> void:
	fireball_spinner.swing_degrees = value
	swing_degrees_value_label.text = String(fireball_spinner.swing_degrees)
	_reset_spinner()


#
# Swing Speed
#
func _on_SwingSpeedHSlider_value_changed(value: float) -> void:
	fireball_spinner.swing_speed = value
	swing_speed_value_label.text = String(fireball_spinner.swing_speed)
	_reset_spinner()


func _reset_spinner() -> void:
	fireball_spinner.reset()
