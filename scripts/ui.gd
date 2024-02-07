extends CanvasLayer


class_name UI

@onready var lives_label = %LivesLabel
@onready var game_lost_container = $GameLostContainer
@onready var level_won_container = $LevelWonContainer
@onready var level_won_label = %LevelWonLabel
@onready var level_won_button = %LevelWonButton

func set_lives(lives: int):
	lives_label.text = "Lives: %d" % lives

func game_over():
	game_lost_container.show()

func _on_game_lost_button_pressed():
	get_tree().reload_current_scene()

func on_level_won():
	if LevelDefinitions.current_level < LevelDefinitions.levels.size():
		LevelDefinitions.current_level += 1
		level_won_label.text = "YOU HAVE WON THE LEVEL"
		level_won_button.text = "GO TO NEXT LEVEL"
	else:
		LevelDefinitions.current_level = 1
		level_won_label.text = "YOU HAVE WON THE GAME! CONGRATS!"
		level_won_button.text = "RESTART GAME"
	level_won_container.show()

func _on_level_won_button_pressed():
	get_tree().reload_current_scene()
