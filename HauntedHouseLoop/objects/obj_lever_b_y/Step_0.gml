var _interact = keyboard_check_released(vk_space);

if(place_meeting(x, y, obj_player_interaction))
{
	selector.visible = true;
	
	if (_interact)
	{
		obj_water_lane_blue.on_off++;
		obj_water_lane_yellow.on_off++;
	
		if (image_index = 0)
		{
			image_index = 1;
			audio_stop_sound(sfx_lever);
			audio_play_sound(sfx_lever, 1, 0);	
		}
		else
		{
			image_index = 0;	
			audio_stop_sound(sfx_lever);
			audio_play_sound(sfx_lever, 1, 0);
		}
	}
}
else
{
	selector.visible = false;	
}