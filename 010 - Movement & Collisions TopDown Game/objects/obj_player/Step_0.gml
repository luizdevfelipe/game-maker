var rightKey = keyboard_check(vk_right);
var leftKey = keyboard_check(vk_left);
var upKey = keyboard_check(vk_up);
var downKey = keyboard_check(vk_down);

x_speed = (rightKey - leftKey) * move_speed;
y_speed = (downKey - upKey) * move_speed;

if place_meeting(x + x_speed, y, obj_wall ) {
	x_speed = 0;
}

if place_meeting(x, y + y_speed, obj_wall ) {
	y_speed = 0;
}

x += x_speed;
y += y_speed;