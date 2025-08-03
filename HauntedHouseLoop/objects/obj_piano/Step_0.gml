var _interact = keyboard_check_released(vk_space);
var _play_A = keyboard_check_pressed(ord("A"));
var _play_B = keyboard_check_pressed(ord("B"));
var _play_C = keyboard_check_pressed(ord("C"));
var _play_D = keyboard_check_pressed(ord("D"));
var _play_E = keyboard_check_pressed(ord("E"));
var _play_F = keyboard_check_pressed(ord("F"));
var _play_G = keyboard_check_pressed(ord("G"));

if (place_meeting(x, y, obj_player_interaction))
{
	selector.visible = true;
	
	if (_interact) && (keys.visible == false)
	{
		audio_play_sound(sfx_paper, 1, 0);
		keys.visible = true;
		song_sheet.visible = true;
	}
}

if (!place_meeting(x, y, obj_player_interaction))
{
	keys.visible = false;
	song_sheet.visible = false;
	selector.visible = false;
	
	played_notes = "";
}

if (keys.visible == true)
{
	if (_play_A)
	{
		audio_stop_sound(sfx_note_A);
		audio_play_sound(sfx_note_A, 1, false);
		
		played_notes += "A";
	}

	if (_play_B)
	{
		audio_stop_sound(sfx_note_B);
		audio_play_sound(sfx_note_B, 1, false);
		
		played_notes += "B";
	}

	if (_play_C)
	{
		audio_stop_sound(sfx_note_C);
		audio_play_sound(sfx_note_C, 1, false);
		
		played_notes += "C";
	}

	if (_play_D)
	{
		audio_stop_sound(sfx_note_D);
		audio_play_sound(sfx_note_D, 1, false);
		
		played_notes += "D";
	}

	if (_play_E)
	{
		audio_stop_sound(sfx_note_E);
		audio_play_sound(sfx_note_E, 1, false);
		
		played_notes += "E";
	}

	if (_play_F)
	{
		audio_stop_sound(sfx_note_F);
		audio_play_sound(sfx_note_F, 1, false);
		
		played_notes += "F";
	}

	if (_play_G)
	{
		audio_stop_sound(sfx_note_G);
		audio_play_sound(sfx_note_G, 1, false);
		
		played_notes += "G";
	}
}

if (keys.visible = true) && (obj_puzzle_controller.concert_completed = false)
{
	if (string_length(played_notes) > 3) && (string_pos("CFGE", played_notes) > 0)
	{
		obj_puzzle_controller.concert_completed = true;
	}
}
