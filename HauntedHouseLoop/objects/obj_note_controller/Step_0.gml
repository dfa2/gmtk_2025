if (obj_note_01.is_read) && (obj_player.x > 300) && (spawn_2 == false)
{
	instance_create_layer(160, 110, "Interactables_bottom", obj_note_2);
	spawn_2 = true;
}

if (spawn_2 == true) && (obj_note_2.is_read) && (obj_player.x > 300) && (spawn_3 == false)
{
	instance_create_layer(40, 100, "Interactables_bottom", obj_note_3);
	spawn_3 = true;
}

if (spawn_3 == true) && (obj_note_3.is_read) && (obj_player.x > 300) && (spawn_4 == false)
{
	instance_create_layer(30, 235, "Interactables_bottom", obj_note_4);
	spawn_4 = true;
}

if (spawn_4 == true) && (obj_note_4.is_read) && (obj_player.x > 300) && (spawn_5 == false)
{
	instance_create_layer(180, 240, "Interactables_bottom", obj_note_5);
	spawn_5 = true;
}