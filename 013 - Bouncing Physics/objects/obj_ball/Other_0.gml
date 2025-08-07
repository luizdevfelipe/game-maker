instance_destroy();

var new_point = choose(obj_circle, obj_diamond, obj_square, obj_triangle);
var point_x = choose(64, 128, 192, 256, 320, 384, 448);

with (obj_point_parent) {
	phy_position_y -= 100;
}