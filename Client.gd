extends Control

var following = false
var drag_spos = Vector2()

func _ready():
	pass # Replace with function body.

func change_status(status):
	if status == "online":
		$SideBar/Cima/Statuslbl.modulate = Color.green
		$SideBar/Cima/Statusbtn.modulate = Color.green
	elif status == "offline":
		$SideBar/Cima/Statuslbl.modulate = Color.green
		$SideBar/Cima/Statusbtn.modulate = Color.green
	elif status == "ocioso":
		$SideBar/Cima/Statuslbl.modulate = Color.green
		$SideBar/Cima/Statusbtn.modulate = Color.green

func _on_Button_pressed():
	get_tree().quit()

func _process(_delta):
	if following:
		OS.set_window_position(OS.window_position + get_global_mouse_position() - drag_spos)

func _on_Control_gui_input(event):
	if event is InputEventMouseButton:
		if event.get_button_index() == 1:
			following = !following
			drag_spos = get_global_mouse_position()
