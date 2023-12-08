extends CharacterBody2D

class_name inimigo

@onready var anim_inimigo = $anim_inimigo

const SPEED = 1500.0


var direction := 1
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	velocity.x = direction * SPEED * delta
	anim_inimigo.play ("Run") 

	move_and_slide()



func _on_animation_animation_finished():
	if anim_inimigo.name == "morte":
		queue_free()
