if !instance_exists(obj_ball) {
	var ball = instance_create_layer(x , y, "Instances", obj_ball);
	
	var dir = point_direction(x, y, mouse_x, mouse_y);
	
	var x_force = lengthdir_x(100, dir) * 10000;
	var y_force = lengthdir_y(100, dir) * 10000;
	
	with ball {
		physics_apply_impulse(x, y, x_force, y_force);
	}
}