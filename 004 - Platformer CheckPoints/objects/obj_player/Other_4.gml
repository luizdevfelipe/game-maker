if (file_exists("checkpoint.ini")) {
	ini_open("checkpoint.ini");
	
	x = ini_read_real("player", "x", x);
	y = ini_read_real("player", "y", y);
	hp = ini_read_real("player", "hp", hp);
	coins = ini_read_real("player", "coins", coins);
	
	ini_close();
}