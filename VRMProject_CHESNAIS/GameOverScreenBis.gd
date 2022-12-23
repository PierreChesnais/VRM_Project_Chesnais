extends CanvasLayer

export(String, FILE, "*.tscn") var NEXT_LEVEL = ""

onready var jumps = $PanelContainer/MarginContainer/Rows/Jump

func changeJump(jumps): 
	print(jumps)
	
	jumps.text = "test"
#	jumps.text = jumps
	
func _on_Next_pressed():
	get_tree().change_scene("res://environment/Level03.tscn")


func _on_Quit_pressed():
	get_tree().quit()
