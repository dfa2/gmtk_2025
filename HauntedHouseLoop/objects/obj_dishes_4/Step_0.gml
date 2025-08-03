var _interact = keyboard_check_released(vk_space);

if (place_meeting(x, y, obj_player_interaction))
{
	selector.visible = true;	
	
	if (_interact) && (obj_puzzle_controller.dining_completed == false)
	{
		image_index++;
		audio_stop_sound(sfx_dish);
		audio_play_sound(sfx_dish, 1, 0);
		
		if (image_index == 7)
		{
			image_index = 0;	
		}
	}
}
else
{
	selector.visible = false;	
}

if (image_index == win_image)
{
	has_won = true;
}
else
{
	has_won = false;
}