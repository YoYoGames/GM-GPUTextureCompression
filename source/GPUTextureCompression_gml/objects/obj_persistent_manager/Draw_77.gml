if(post_draw_time == -1)
{
	post_draw_time = current_time;
	time_to_post_draw = post_draw_time - create_time;
	create_time_text = "Time until first draw: " + string(time_to_post_draw) + "ms";
}