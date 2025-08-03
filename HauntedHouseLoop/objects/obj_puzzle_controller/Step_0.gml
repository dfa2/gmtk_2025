if (cellar_completed) && (library_completed) && (dining_completed) && (concert_completed)
{
	obj_game_controller.game_win = true;	
}

if (cellar_completed) && (!cellar_played)
{
	audio_play_sound(sfx_puzzle_clear, 1, 0);	
	cellar_played = true;
}

if (library_completed) && (!library_played)
{
	audio_play_sound(sfx_puzzle_clear, 1, 0);	
	library_played = true;
}

if (dining_completed) && (!dining_played)
{
	audio_play_sound(sfx_puzzle_clear, 1, 0);	
	dining_played = true;
}

if (concert_completed) && (!concert_played)
{
	audio_play_sound(sfx_puzzle_clear, 1, 0);	
	concert_played = true;
}