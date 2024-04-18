/// @description Insert description here
// You can write your code in this editor

if(gamepad_button_check_released(0, gp_padu) || keyboard_check_released(vk_up))
{
	global.per_sprite_draw_count += 10;
}

if(gamepad_button_check_released(0, gp_padd) || keyboard_check_released(vk_down))
{
	global.per_sprite_draw_count -= 10;
}


if(gamepad_button_check_released(0, gp_face3) || keyboard_check_released(vk_alt))
{
	global.enable_draws_left_to_right = !global.enable_draws_left_to_right;
	global.enable_draws_top_to_bottom = false;
}

if(gamepad_button_check_released(0, gp_face2) || keyboard_check_released(vk_control))
{
	global.enable_draws_top_to_bottom = !global.enable_draws_top_to_bottom;
	global.enable_draws_left_to_right = false;
}