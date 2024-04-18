
if(last_frame_time == -1)
{
	last_frame_time = current_time;
}
else
{
	frame_timer_accumulated += current_time - last_frame_time;
	frame_timer_frames++;
	last_frame_time = current_time;
	
	fps_accumulated += fps_real;
	
	if(frame_timer_frames > 60)
	{
		frame_time_text = "Frame time: " + string(frame_timer_accumulated / frame_timer_frames) + "ms";
		fps_text = "FPS (Real): " + string(fps_accumulated / frame_timer_frames);		
		fps_accumulated = 0;
		frame_timer_accumulated = 0;
		frame_timer_frames = 0;
		
	}
}

if(gamepad_button_check_released(0, gp_face2) || keyboard_check_released(vk_enter))
{
	room_goto_next();
}

current_draw_text = "No current debug draws";
if(global.enable_draws_left_to_right == true)
{
	current_draw_text = "Drawing " + string(global.per_sprite_draw_count) + " copies of sprites row first.";
}

if(global.enable_draws_top_to_bottom == true)
{
	current_draw_text = "Drawing " + string(global.per_sprite_draw_count) + " copies of sprites column first.";
}