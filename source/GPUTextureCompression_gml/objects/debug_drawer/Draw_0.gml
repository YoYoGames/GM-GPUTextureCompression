/// @description Insert description here
// You can write your code in this editor

var per_sprite_draw_count = global.per_sprite_draw_count;

if(global.enable_draws_left_to_right == true)
{
	var _sprite_list = texturegroup_get_sprites("tg_game");

	var _y = (room_height / array_length(_sprite_list)) * 0.5;
	for(var _i = 0; _i < array_length(_sprite_list); _i++)
	{
		var _x = (room_width / per_sprite_draw_count) * 0.5;
		for(var _j = 0; _j < per_sprite_draw_count; _j++)
		{
			draw_sprite(_sprite_list[_i], 0, _x, _y);
			_x += room_width / per_sprite_draw_count;
		}
		_y += room_height / array_length(_sprite_list);
	}
}

if(global.enable_draws_top_to_bottom == true)
{
	var _sprite_list = texturegroup_get_sprites("tg_game");
	
	var _x = (room_width / per_sprite_draw_count) * 0.5;
	for(var _j = 0; _j < per_sprite_draw_count; _j++)
	{
		var _y =(room_height / array_length(_sprite_list)) * 0.5;
		for(var _i = 0; _i < array_length(_sprite_list); _i++)
		{
			draw_sprite(_sprite_list[_i], 0, _x, _y);
			_y += room_height / array_length(_sprite_list);
		}
		_x += room_width / per_sprite_draw_count;
	}
}