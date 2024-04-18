// Any data structures created (lists, maps, grids, etc.) MUST be destroyed when they're no longer needed.
// So in this Clean Up event (which runs when the instance is destroyed, or the room or game ends) we're destroying our
// 'gamepads' list, as it's no longer needed.
ds_list_destroy(gamepads);