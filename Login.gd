extends Control


var following = false
var drag_spos = Vector2()
onready var region = $Login/LoginCont/LoginBox/Region

func _ready():
	add_item()

func add_item():
	region.add_item("Brasil (Português)")
	region.add_item("North America (English)")
	region.add_item("Japan (Japanese)")
	region.add_item("EU (Spanish)")

func _on_Exit_pressed():
	get_tree().quit()


func _on_CheckButton_toggled(button_pressed):
	if button_pressed:
		$Image/VideoPlayer.volume_db = -100
	else:
		$Image/VideoPlayer.volume_db = -15


func _on_Control_gui_input(event):
	if event is InputEventMouseButton:
		if event.get_button_index() == 1:
			following = !following
			drag_spos = get_global_mouse_position()

func _process(_delta):
	if following:
		OS.set_window_position(OS.window_position + get_global_mouse_position() - drag_spos)


func _on_Minimize_pressed():
	OS.window_minimized = true 


func _on_Login_pressed():
	get_tree().change_scene("res://Client.tscn")
