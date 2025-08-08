phy_speed_x /= 1.1;
phy_speed_y /= 1.1;
alarm[0] = 1;

if abs(phy_speed_x) < 0.01 and abs(phy_speed_y) < 0.01 {
	phy_speed_x = 0;
	phy_speed_x = 0;
	alarm[0] = -1;
}


