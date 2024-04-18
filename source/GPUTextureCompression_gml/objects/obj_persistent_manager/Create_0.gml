// Create a global particle system that is persistent, so it can be used throughout the game
global.part_system = part_system_create_layer("Instances", true);

// If the game is running on a browser, it changes the window and application surface
// size to fit the browser area. It uses the height to ensure the aspect ratio stays the same.
if (os_browser != browser_not_a_browser)
{
	var _aspect = 1920/1080;

	window_set_size(display_get_height() * _aspect, display_get_height());

	surface_resize(application_surface, display_get_height() * _aspect, display_get_height());

	display_set_gui_size(1920, 1080);
	
}


// Play music track with looping enabled
audio_play_sound(snd_music_level, 0, true);

// Set the falloff model used for all audio emitters, like in obj_end_gate
audio_falloff_set_model(audio_falloff_linear_distance_clamped);

// Set listener orientation for proper 3D audio
audio_listener_orientation(0, 0, 1000, 0, -1, 0);

//show_debug_overlay(true);
texture_debug_messages(true);
metrics_view = dbg_view("Metrics", true);
create_time_text = "";
create_time_text_ref = ref_create(self, "create_time_text");
fps_text = "";
fps_text_ref = ref_create(self, "fps_text");
frame_time_text = "";
frame_time_text_ref = ref_create(self, "frame_time_text");
current_draw_text = "";
current_draw_text_ref = ref_create(self, "current_draw_text");
dbg_text(create_time_text_ref);
dbg_text(fps_text_ref);
dbg_text(frame_time_text_ref);
dbg_text(current_draw_text_ref);



create_time = -1;
post_draw_time = -1;
time_to_post_draw = 0;

last_frame_time = 0;
frame_timer_accumulated = 0;
frame_timer_frames = 0;

fps_accumulated = 0;

game_set_speed(120, gamespeed_fps);