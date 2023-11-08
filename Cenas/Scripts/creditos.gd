extends Control

@onready var btn_sair = $btn_sair

func _on_button_pressed():
	get_tree().change_scene_to_file("res://Cenas/menu_Inicial.tscn")
