// Run the Key Press - Escape key event in obj_game_manager so
// it resumes the game
with (obj_game_manager)
{
	event_perform(ev_keypress, vk_escape);
}