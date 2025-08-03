var _interact = keyboard_check_released(vk_space);

if (_interact) && (place_meeting(x, y, obj_player_interaction))
{
	image_index = 1;

	blocker_3.x = -40;
	blocker_3.y = -40;
}

if (obj_player.y < y - 30)
{
	image_index = 0;
	
	blocker_3.x = x;
	blocker_3.y = y;
}
