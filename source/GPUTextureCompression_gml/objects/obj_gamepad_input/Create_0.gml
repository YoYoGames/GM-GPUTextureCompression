// This object handles gamepad input.
// Gamepads are detected in the Async - System event, and added into a list.
// This creates that list, and calls it 'gamepads'.
gamepads = ds_list_create();