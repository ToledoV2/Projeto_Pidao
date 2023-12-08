extends CharacterBody2D
class_name player

const SPEED = 30.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

@onready var animacao := $anim_player as AnimatedSprite2D

func _physics_process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta

	var direction = Input.get_axis("direita", "esquerda")

	if direction:
		if Input.is_action_pressed("Correr"):
			velocity.x = direction * SPEED * 1.25
			animacao.play("Run")
			
			animacao.scale.x = direction
		else:
			velocity.x = direction * SPEED
			animacao.play("Walk")
			animacao.scale.x = direction
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		animacao.play("Idle")

	move_and_slide()


func _on_ht_box_body_entered(body):
	if body.name == "player":
		owner.Animation.play("morte")
