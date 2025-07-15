if (instance_exists(obj_hero)) {
	xTo = obj_hero.x;
	yTo = obj_hero.y;
	
	x += (xTo - x)/25;
	y += (yTo - y)/25;
}

camera_set_view_pos(
	view_camera[0],
	clamp ( x - camera_get_view_width(view_camera[0])/2, -WORLD_SIZE/2, (WORLD_SIZE/2) - camera_get_view_width(view_camera[0]) ),
	clamp ( y - camera_get_view_height(view_camera[0])/2, -WORLD_SIZE/2, (WORLD_SIZE/2) - camera_get_view_height(view_camera[0]) )
);

for (var i = 0; i < array_length(bg_elements); i++) {
	var _xx = layer_sprite_get_x(bg_elements[i]);
	if (_xx < x) && (abs(_xx - x) > 1920) layer_sprite_x(bg_elements[i], _xx + 3840);
	if (_xx > x) && (abs(_xx - x) > 1920) layer_sprite_x(bg_elements[i], _xx - 3840);
	
	var _yy = layer_sprite_get_y(bg_elements[i]);
	if (_yy < y) && (abs(_yy - y) > 1080) layer_sprite_y(bg_elements[i], _yy + 2160);
	if (_yy > y) && (abs(_yy - y) > 1080) layer_sprite_y(bg_elements[i], _yy - 2160);
}