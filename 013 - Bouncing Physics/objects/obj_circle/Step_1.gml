if place_meeting(x, y, obj_point_parent) or place_meeting(x, y, obj_wall) {
	var _point = instance_place(x, y, all);
	bounce(_point);
}