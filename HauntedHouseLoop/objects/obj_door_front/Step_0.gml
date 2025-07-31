var _interact = keyboard_check_released(vk_space);


if (door_pos == 1) && (_interact) && (place_meeting(x, y, obj_player_interaction)) && (obj_player.y < y)
{
	obj_room_controller.door1_x = x;
	obj_room_controller.door1_y = y;
	
	instance_destroy();	
}

if (door_pos == 2) && (_interact) && (place_meeting(x, y, obj_player_interaction)) && (obj_player.x < x)
{
	obj_room_controller.door2_x = x;
	obj_room_controller.door2_y = y;
	
	instance_destroy();	
}

if (door_pos == 3) && (_interact) && (place_meeting(x, y, obj_player_interaction)) && (obj_player.y > y)
{
	obj_room_controller.door3_x = x;
	obj_room_controller.door3_y = y;
	
	instance_destroy();	
}

if (door_pos == 4) && (_interact) && (place_meeting(x, y, obj_player_interaction)) && (obj_player.x > x)
{
	obj_room_controller.door4_x = x;
	obj_room_controller.door4_y = y;
	
	instance_destroy();	
}