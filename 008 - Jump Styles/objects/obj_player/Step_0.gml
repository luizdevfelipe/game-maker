var _rightKey = keyboard_check( ord("D") );
var _leftKey = keyboard_check( ord("A") );
var _jumpKey = keyboard_check_pressed(vk_space);
var _jumpKeyHold = keyboard_check(vk_space);

x_speed = (_rightKey - _leftKey) * move_speed;
y_speed += custom_gravity;

if place_meeting(x, y+1, obj_wall){
	jump_count = 0;
	y_speed = 0;
} else {   
	if jump_count == 0 {
		jump_count = 1;
	}
}

if _jumpKey && jump_count < jump_max {
	jump_count++;
	jump_timer = jump_height;
}

if !_jumpKeyHold { jump_timer = 0; }

if jump_timer > 0 {
	y_speed = jump_speed;
	jump_timer--;
}

x += x_speed
y += y_speed