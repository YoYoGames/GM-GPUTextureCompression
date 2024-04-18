// If we're in the end room
if (room == rm_end)
{
	// Play music track with looping enabled
	audio_play_sound(snd_music_level, 0, 1);
}

create_time = current_time;
last_frame_time = -1;
frame_timer_accumulated = 0;
frame_timer_frames = 0;
post_draw_time = -1;