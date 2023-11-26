extends Control

@onready var op10="%op10"
var level = "res://World/world.tscn"

func _ready()->void:
	random_op()


func _on_btn_play_click_end():
	var _level = get_tree().change_scene_to_file(level)

func _on_btn_exit_click_end():
	get_tree().quit()
	
func random_op():
	#変数宣言
	var random
	
	# randmize()でシード値を変更
	randomize()
	
	# randi()で乱数を生成
	random = randi()%10
	
	get_node("op10").frame = random
	print(random)
