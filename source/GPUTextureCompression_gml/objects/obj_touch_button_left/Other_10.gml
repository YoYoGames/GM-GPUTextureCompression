event_inherited();

// This block applies to obj_player.
// It runs the Key Down - Left event in it, causing the
// player to move left.
with (obj_player)
{
	event_perform(ev_keyboard, vk_left);
}