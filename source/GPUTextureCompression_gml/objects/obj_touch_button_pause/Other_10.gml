event_inherited();

// This block applies to obj_game_manager.
// It runs the Key Press - Escape event in it, which
// pauses/resumes the game.
with (obj_game_manager)
{
	event_perform(ev_keypress, vk_escape);
}