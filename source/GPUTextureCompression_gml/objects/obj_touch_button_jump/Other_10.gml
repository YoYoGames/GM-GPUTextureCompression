event_inherited();

// This block applies to obj_player.
// It runs the Key Press - Space event in it, causing the
// player to jump.
with (obj_player)
{
	event_perform(ev_keypress, vk_space);
}