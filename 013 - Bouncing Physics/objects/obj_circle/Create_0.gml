// Inherit the parent event
event_inherited();

bounce = function (object) {
	var _length = point_distance(x, y, object.x, object.y);
	var _direction = point_direction(x, y, object.x, object.y);
	
	var _xForce = lengthdir_x(_length, _direction) / 15;
	var _yForce = lengthdir_y(_length, _direction) / 15;
	
	phy_speed_x = -_xForce;
	phy_speed_y = -_yForce;
	
	alarm[0] = 5;
}