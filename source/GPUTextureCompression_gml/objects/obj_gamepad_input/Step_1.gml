// Here we are getting the first gamepad stored in our 'gamepads' list (at index 0).
// If there are no gamepads in the list, then the value 'undefined' will be returned.
gamepad = gamepads[| 0];

// This condition checks if the gamepad found in the list is NOT undefined, meaning a gamepad was found
// in the list.
// We only take input from the gamepad if this is true.
if (gamepad != undefined)
{
	// This checks if the room is rm_menu, meaning we're in the main menu.
	if (room == rm_menu)
	{
		// This checks if the Start button was pressed on our gamepad.
		if (gamepad_button_check_pressed(gamepad, gp_start))
		{
			// If it was, we move to the next room (starting the game).
			room_goto_next();
		}
	}

	// This checks if the room is rm_end, meaning we're on the game over screen.
	if ( room == rm_end)
	{
		// This checks if the Start button was pressed on our gamepad.
		if (gamepad_button_check_pressed(gamepad, gp_start))
		{
			// In that case, we go back to the main menu room.
			room_goto(rm_menu);
		}
	}

	// This checks if the player instance exists, meaning we're in a game level. We're checking for the player instance and not
	// a specific room like previous conditions, because there can be many game levels with different room names.
	if (instance_exists(obj_player))
	{
		// This gets the horizontal input from the left stick on the gamepad, which is used for moving left/right.
		// The input range is from -1 to 1, where <0 is left and >0 is right.
		// However we will use a deadzone of 0.5, so left will be smaller than -0.5 and right will be greater than 0.5.
		var _left_axis = gamepad_axis_value(gamepad, gp_axislh);
	
		// This checks if the left stick input is less than -0.5, meaning
		// we should move the player left.
		if (_left_axis < -0.5)
		{
			// This block applies to obj_player.
			// It runs the Key Down - Left event in it, causing the
			// player to move left.
			with (obj_player)
			{
				event_perform(ev_keyboard, vk_left);
			}
		}
	
		// This checks if the left stick input is greater than 0.5, meaning
		// we should move the player right.
		if (_left_axis > 0.5)
		{
			// This block applies to obj_player.
			// It runs the Key Down - Right event in it, causing the
			// player to move left.
			with (obj_player)
			{
				event_perform(ev_keyboard, vk_right);
			}
		}
	
		// This checks if the left D-PAD button is held.
		if (gamepad_button_check(gamepad, gp_padl))
		{
			// This block applies to obj_player.
			// It runs the Key Down - Left event in it, causing the
			// player to move left.
			with (obj_player)
			{
				event_perform(ev_keyboard, vk_left);
			}
		}
	
		// This checks if the right D-PAD button is held.
		if (gamepad_button_check(gamepad, gp_padr))
		{
			// This block applies to obj_player.
			// It runs the Key Down - Right event in it, causing the
			// player to move left.
			with (obj_player)
			{
				event_perform(ev_keyboard, vk_right);
			}
		}
	
		// This checks if the "face1" button on the gamepad is pressed (which is A on Xbox controllers, and the equivalent button
		// on other controllers).
		// This input is used for jumping.
		if (gamepad_button_check_pressed(gamepad, gp_face1))
		{
			// This block applies to obj_player.
			// It runs the Key Press - Space event in it, causing the player to jump.
			with (obj_player)
			{
				event_perform(ev_keypress, vk_space);
			}
		}
	}

	// This checks if the game manager instance exists, meaning we're in a game level.
	// We're using this for pausing with a gamepad instead of the obj_player block above, as the player gets deactivated when
	// the game is paused.
	if (instance_exists(obj_game_manager))
	{
		// This checks if the Start button was pressed on our gamepad.
		if (gamepad_button_check_pressed(gamepad, gp_start))
		{
			// This block applies to obj_game_manager.
			// It runs the Key Press - Escape event in it, which pauses/resumes the game.
			with (obj_game_manager)
			{
				event_perform(ev_keypress, vk_escape);
			}
		}
	}
}