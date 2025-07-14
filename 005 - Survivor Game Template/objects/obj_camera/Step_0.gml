if (instance_exists(obj_hero)) {
	xTo = obj_hero.x;
	yTo = obj_hero.y;
	
	x += (xTo - x)/25;
	y += (yTo - y)/25;
}

camera_set_view_pos(
	view_camera[0],
	x - camera_get_view_width(view_camera[0])/2,
	y - camera_get_view_height(view_camera[0])/2	
);