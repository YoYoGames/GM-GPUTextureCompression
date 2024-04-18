// This checks if the game is NOT paused, in which case we want to pause it.
if (!paused)
{
	// Deactivate all instances except the current instance (which is the game manager).
	// This pauses all other instances, so they don't do anything, and are not even drawn.
	instance_deactivate_all(true);

	// Activate the gamepad input object, so the player can resume the game with their gamepad
	instance_activate_object(obj_gamepad_input);

	// Create the pause menu Sequence and store its ID in a variable so it can be destroyed later
	pause_sequence = layer_sequence_create("Instances", 0, 0, seq_pause_menu);

	// Set 'paused' to true
	paused = true;
}
// Otherwise, if the game is already paused,
else
{
	// Activate all instances, to resume their functionalities
	instance_activate_all();

	// Destroy the pause menu Sequence, so the pause menu disappears
	layer_sequence_destroy(pause_sequence);

	// Set 'paused' to false, as the game is now unpaused
	paused = false;
}