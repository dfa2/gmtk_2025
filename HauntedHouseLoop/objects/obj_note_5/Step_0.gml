var _interact = keyboard_check_released(vk_space);

if (place_meeting(x, y, obj_player))
{
	selector.visible = true;
	
	if (_interact) && (big_note.visible == false)
	{
		big_note.visible = true;
		is_read = true
		
		audio_stop_sound(sfx_paper);
		audio_play_sound(sfx_paper, 1, 0);
	}
}
else
{
	big_note.visible = false;	
	selector.visible = false;
}
