// Declare a function to keep an instance in the room.
function keep_in_room() 
{
	// If the right of the instance's bounding box is below 50...
	if (bbox_right + hspeed > (WORLD_SIZE/2) - 50)
	{
		// Set horizontal speed to 0.
		hspeed = 0;	
	}
	
	// If the left of the instance's bounding box is below 50...
	if (bbox_left + hspeed < (-WORLD_SIZE/2) + 50)
	{
		// Set horizontal speed to 0.
		hspeed = 0;	
	}
	
	// If the top of the instance's bounding box is below 50...
	if (bbox_top + vspeed < (-WORLD_SIZE/2) + 50)
	{
		// Set vertical speed to 0.
		vspeed = 0;	
	}
	
	// If the bottom of the instance's bounding box is below 50...
	if (bbox_bottom + vspeed > (WORLD_SIZE/2) - 50)
	{
		// Set vertical speed to 0.
		vspeed = 0;	
	}
}