// Here we're getting the X position of the mouse on the GUI layer.
// The Draw GUI event is used to draw the button, which is a separate layer
// on top of the game. So input for these buttons must also be taken on the GUI layer.
var _mouse_gui_x = device_mouse_x_to_gui(0);

// Get the Y position of the mouse on the GUI layer
var _mouse_gui_y = device_mouse_y_to_gui(0);



// Check if the mouse point is colliding with this instance (using 'id').
// This means the mouse is hovering on the button.



var coll_pt = collision_point(_mouse_gui_x, _mouse_gui_y, object_index, false, false);

if(mouse_check_button_pressed(mb_left))
	show_debug_message($"mouse pressed at guix:{0} guiy:{1} with result {2}",_mouse_gui_x,_mouse_gui_y,coll_pt);

if (coll_pt == id)
{
	// If it is, change the frame to the hover frame (1)
	image_index = 1;

	// If the left mouse button is pressed,
	if (mouse_check_button_pressed(mb_left))
	{
		// Reduce the scale of the instance so it appears smaller while it's pressed
		image_xscale = 0.9;
		image_yscale = 0.9;
	}

	// If the left mouse button is released (which is when we register a click),
	if (mouse_check_button_released(mb_left))
	{
		// Change the frame to the idle frame (0)
		image_index = 0;
	
		// Call User Event 0 where the button performs its actions
		event_user(0);
	
		// Reset the scale so the button appears at its normal size
		image_xscale = 1;
		image_yscale = 1;
	
		// Play the button press sound effect
		audio_play_sound(snd_button_press_01, 0, 0);
	}
}
// If the mouse is not hovering,
else
{
	// Change the frame to the idle frame (0)
	image_index = 0;

	// Reset the scale so the button appears at its normal size
	image_xscale = 1;
	image_yscale = 1;
}