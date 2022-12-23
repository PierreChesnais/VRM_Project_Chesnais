extends CanvasLayer

export(String, FILE, "*.tscn") var NEXT_LEVEL = ""

#onready var title = $PanelContainer/MarginContainer/Rows/Title


func _ready():
	pass


#func changeTitle(title): 
#	title.text = title 

func _on_Next_pressed():
	get_tree().change_scene(NEXT_LEVEL)


func _on_Quit_pressed():
	get_tree().quit()
