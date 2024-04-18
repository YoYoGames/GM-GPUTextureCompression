event_inherited();

// Set the position of the default audio listener to the player's position, for positional audio
// with audio emitters (such as in obj_end_gate)
audio_listener_set_position(0, x, y, 0);


if(gamepad_button_check_released(0,gp_face4))
{
	debug_event("DumpMemory");
	
	var s = debug_event("ResourceCounts");
	
	show_debug_message("resturned struct:" +string(s));
}


if(global.TimerRunning ==1)
{
	global.TimerRunning= false;
	show_debug_message("Level load took::"+string(get_timer()-global.RoomTimer) + " Total time:" +string(get_timer()));
}
else if(global.TimerRunning >0)
	global.TimerRunning--;