extends Area2D


func _on_body_entered(body):
	if body.name == "Inimigo":
		owner.anim_inimigo.play("morte")
