event_inherited();

// This block applies to obj_player.
// It runs the Key Down - Right event in it, causing the
// player to move right.
with (obj_player)
{
	event_perform(ev_keyboard, vk_right);
}