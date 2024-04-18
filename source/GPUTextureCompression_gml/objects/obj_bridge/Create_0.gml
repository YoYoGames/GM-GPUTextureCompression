// Use the "left end" frame by default
image_index = 1;

// If there is a bridge piece on the left,
if (place_meeting(x - 1, y, obj_bridge))
{
	// Use the "right end" frame
	image_index = 2;

	// If there is also a bridge piece on the right,
	if (place_meeting(x + 1, ystart, obj_bridge))
	{
		// Use the "middle" frame
		image_index = 0;
	}
}