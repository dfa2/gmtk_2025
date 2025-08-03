var _interact = keyboard_check_released(vk_space);

if (place_meeting(x, y, obj_player_interaction))
{
	selector.visible = true;	
	
	if (_interact)
	{
		image_index++;
		
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