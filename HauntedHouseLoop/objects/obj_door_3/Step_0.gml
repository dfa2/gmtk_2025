var _interact = keyboard_check_released(vk_space);

if (_interact) && (place_meeting(x, y, obj_player_interaction))
{

	blocker.x = -40;
	blocker.y = -40;
	audio_play_sound(sfx_door_open, 1, false);
}

if (obj_player.x < x)
{
	
	blocker.x = x;
	blocker.y = y;
}
