extends Control

@onready var btn_jogar = $VBoxContainer/btn_jogar
@onready var btn_creditos = $VBoxContainer/btn_creditos
@onready var btn_sair = $VBoxContainer/btn_sair


func _on_btn_jogar_pressed():
	get_tree().change_scene_to_file("res://Cenas/primeira_noite.tscn")

func _on_btn_creditos_pressed():
	get_tree().change_scene_to_file("res://Cenas/creditos.tscn")

func _on_btn_sair_pressed():
	get_tree().quit()
