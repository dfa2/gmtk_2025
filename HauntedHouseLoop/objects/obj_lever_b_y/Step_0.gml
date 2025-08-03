var _interact = keyboard_check_released(vk_space);

if (_interact) && (place_meeting(x, y, obj_player_interaction))
{
	obj_water_lane_blue.on_off++;
	obj_water_lane_yellow.on_off++;
	
	if (image_index = 0)
	{
		image_index = 1;	
	}
	else
	{
		image_index = 0;	
	}
}