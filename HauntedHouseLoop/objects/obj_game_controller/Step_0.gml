if (game_over)
{
	audio_play_sound(sfx_gameover, 1, 0);
	room_goto(GAMEOVER);
}

if (game_win)
{
	audio_stop_sound(bgm_ouroboros_hall);
	audio_play_sound(sfx_game_win, 1, 0);
	room_goto(GAMEWIN);
}