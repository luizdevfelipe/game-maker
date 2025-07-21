var rightKey = keyboard_check(ord("D"));
var leftKey = keyboard_check(ord("A"));
var jumpKeyPressed = keyboard_check_pressed(vk_space);

x_speed = (rightKey - leftKey) * move_speed;
y_speed += gravity_custom;

if jumpKeyPressed && place_meeting(x, y+1, obj_wall) {
	y_speed = jump_speed;
}

if place_meeting(x + x_speed, y, obj_wall) {	
	var pixelCheck = sign(x_speed);
	
	while !place_meeting(x + pixelCheck, y, obj_wall) {
		x += pixelCheck;
	}
	
	x_speed = 0;
}

if place_meeting(x + x_speed, y + y_speed, obj_wall) {
	var pixelCheck = sign(y_speed);
	
	while !place_meeting(x + x_speed, y + pixelCheck, obj_wall) {
		y += pixelCheck;
	}
	
	y_speed = 0;
}

x += x_speed;
y += y_speed;