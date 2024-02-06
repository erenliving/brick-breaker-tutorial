extends CanvasLayer


class_name UI

@onready var lives_label = %LivesLabel

func set_lives(lives: int):
	lives_label.text = "Lives: %d" % lives


func _on_game_lost_button_pressed():
	get_tree().reload_current_scene()
