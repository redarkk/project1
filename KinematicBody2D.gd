extends actor

func _physics_process(delta): 
	var direction: =get_direction()
	velocity=direction*speed
	velocity=move_and_slide(velocity)
		
func get_direction() -> Vector2:
	return Vector2(
		Input.get_action_strength("ui_right")-Input.get_action_strength("ui_left")
		,-1.0 if Input.get_action_strength("jump")and is_on_floor()else 1.0
		)
		
		func calculate_move_velocity() -> Vetor2:
			linear_velocity: = Vector2,
			speed: =Vector2,
			direction: =Vector2
			
		) -> Vector2:
			var new_velocity: =linear_velocity
		new_velocity.x=speed.x*direction.x
		new_velocity.y+=gravity*get_physics_process_delta_time()
		
		return speed*direction
