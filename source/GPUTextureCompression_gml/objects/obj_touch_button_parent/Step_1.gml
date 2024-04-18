// This for loop runs for each touch that can be detected (it checks up to 10 touches)
// Each "device" is a touch, which is used in device_* functions below to detect the position
// and state of that touch (pressed/released)
for (var _device = 0; _device < 10; _device ++) {
	// Here we're getting the X position of the touch on the GUI layer.
	// The Draw GUI event is used to draw the button, which is a separate layer
	// on top of the game. So input for these buttons must also be taken on the GUI layer.
	var _mouse_gui_x = device_mouse_x_to_gui(_device);

	// Here we get the Y touch position on GUI.
	var _mouse_gui_y = device_mouse_y_to_gui(_device);

	// Check if the mouse point is colliding with this instance (using 'id').
	// This means the mouse is hovering on the button.
	if (collision_point(_mouse_gui_x, _mouse_gui_y, object_index, false, false) == id)
	{
		// This checks if the touch is active (being held down)
		var _touching = device_mouse_check_button(_device, mb_left);
	
		// If it is touching,
		if (_touching)
		{
			// Switch to frame 1
			image_index = 1;
		
			// Run User Event 0
			event_user(0);
		
			// Stop the loop so the button doesn't look for additional touches
			break;
		}
		// Otherwise, use frame 0
		else
		{
			image_index = 0;
		}
	}
	// Otherwise, use frame 0
	else
	{
		image_index = 0;
	}
}