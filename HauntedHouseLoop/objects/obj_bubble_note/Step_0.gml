visible_counter++;

if (visible_counter > 200) && (visible)
{
	visible = false;
	is_playing = false;
	audio_stop_sound(sfx_whistle);
	
	visible_counter = 0;
}

if (visible_counter > 400) && (!visible)
{
	visible = true;	
	
	visible_counter = 0;
}

if (visible) && (!is_playing) && (point_distance(x, y, obj_player.x, obj_player.y) < 50)
{
	audio_play_sound(sfx_whistle, 1, false)
	is_playing = true;
}