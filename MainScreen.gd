extends Control


onready var http = $HTTPRequest

func _ready():
	pass # Replace with function body.



func _on_CheckButton_toggled(button_pressed):
	if button_pressed:
		$Display/VideoDemo.volume_db = -100
	else:
		$Display/VideoDemo.volume_db = -15
