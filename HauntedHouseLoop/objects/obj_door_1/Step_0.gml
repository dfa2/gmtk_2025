var _interact = keyboard_check_released(vk_space);

if (_interact) && (place_meeting(x, y, obj_player_interaction))
{
	image_index = 1;

	blocker_1.x = -40;
	blocker_1.y = -40;
	
	audio_play_sound(sfx_door_open, 1, false);
}

if (obj_player.y > y)
{
	image_index = 0;
	
	blocker_1.x = x;
	blocker_1.y = y;
}
