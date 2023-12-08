extends Node2D

var _player_ref: player = null


@export var teleportPrin: Vector2
#300, 90
@export var teleportSec: Vector2
#165 , 207





func _on_porta_principal_body_entered(body):
	if body is player:
		_player_ref = body
		_player_ref.global_position = teleportPrin



func _on_transicao_body_entered(body):
	if body is player:
		_player_ref = body
		_player_ref.global_position = teleportSec
