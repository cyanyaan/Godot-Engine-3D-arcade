extends KinematicBody

var velo = Vector3()

func _physics_process(delta):
	move_and_slide(velo)


func _on_Area_body_entered(body):
	if body.is_in_group("Enemies"):
		body.queue_free()
		queue_free()
