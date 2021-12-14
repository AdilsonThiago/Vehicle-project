extends VehicleBody

var Axys = Vector2(0, 0)

func _ready():
	pass

func _input(event):
	if event.is_action_pressed("b_left"):
		Axys.x = 1
	elif event.is_action_pressed("b_right"):
		Axys.x = -1
	if event.is_action_pressed("b_up"):
		Axys.y = 1
	elif event.is_action_pressed("b_down"):
		Axys.y = -1
	if event.is_action_released("b_right") or event.is_action_released("b_left"):
		Axys.x = 0
	if event.is_action_released("b_up") or event.is_action_released("b_down"):
		Axys.y = 0
	pass

func _process(delta):
	if Axys.y > 0:
		engine_force = 120
		brake = 0.0
	else:
		if Axys.y < 0:
			brake = 0.8
		else:
			brake = 0.0
		engine_force = 0
	steering = deg2rad(Axys.x * 40)
	pass
