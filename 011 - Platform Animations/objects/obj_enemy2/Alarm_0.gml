if !instance_exists(obj_player) exit;

vel_y = -21;

var _jump_direction_x = sign(obj_player.x - x);
vel_x = _jump_direction_x * 4;

alarm[0] = 60;