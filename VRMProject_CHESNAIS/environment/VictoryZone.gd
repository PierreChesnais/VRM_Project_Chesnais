extends Area

export(String, FILE, "*.tscn") var NEXT_LEVEL = ""

onready var ball = get_parent().get_node("Ball")

const GameOverScreenBis = preload("res://GameOverScreenBis.tscn")

func _on_VictoryZone_body_entered(body):
	if body.name == "Ball":
		var game_over = GameOverScreenBis.instance()
		add_child(game_over)		
#		game_over.changeJump(ball.nbJump)
		#get_tree().change_scene(NEXT_LEVEL)
