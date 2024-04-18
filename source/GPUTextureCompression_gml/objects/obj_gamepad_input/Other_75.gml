// Data in this event is provided in the 'async_load' map.
// In this action we're getting the "event_type" key, which tells us whether a gamepad was discovered, or
// a gamepad was lost (disconnected).
// The value for the "event_type" is stored in a temporary variable called 'event'.
var _event = async_load[? "event_type"];

// This condition checks if the event was "gamepad discovered", in which case we want to get the gamepad's ID, and add it to
// our list.
// The first controller in the list will be the one used for all input (see the Begin Step event).
if (_event == "gamepad discovered")
{
	// Here we're getting the ID (index) of the gamepad that was connected.
	var _new_gamepad_id = async_load[? "pad_index"];

	// Here we're adding that gamepad to our 'gamepads' list.
	ds_list_add(gamepads, _new_gamepad_id);
}

// The "gamepad lost" event runs when a gamepad is disconnected.
// In that case, we want to remove it from the 'gamepads' list.
if (_event == "gamepad lost")
{
	// We first get the ID of the gamepad that was lost.
	var _lost_gamepad_id = async_load[? "pad_index"];

	// Then we find the index of the gamepad stored within the 'gamepads' list. That index refers
	// to its position in the list (0, 1, 2, etc.) so that particular position can be deleted
	// from the list.
	var _index_to_remove = ds_list_find_index(gamepads, _lost_gamepad_id);

	// That position is then removed from the list, so the gamepad is not registered anymore.
	if (ds_list_size(gamepads) > _index_to_remove)
	{
		ds_list_delete(gamepads, _index_to_remove);
	}
}