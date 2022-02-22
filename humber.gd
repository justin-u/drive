extends VehicleBody

var horsepower = 1200
var acceleration_speed = 80
var steer_angle = deg2rad(20)
var steer_speed = 2

var brake_power = 40
var brake_speed = 40

func _physics_process(delta):
	var throttle_input = -Input.get_action_strength('w')+Input.get_action_strength("s")
	engine_force = lerp(engine_force,throttle_input*horsepower,acceleration_speed*delta)
	var steer_input = -Input.get_action_strength("d")+Input.get_action_strength("a")
	steering = lerp_angle(steering, steer_input*steer_angle,steer_speed*delta)
	var brake_input = Input.get_action_strength("SPACE")
	brake = lerp(brake, brake_input*brake_power,brake_speed*delta)
