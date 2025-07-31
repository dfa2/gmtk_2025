//room 1 coords: 0, 0, 240, 264		top left
//room 2 coords: 0, 265, 240, 528	bottom left
//room 3 coords: 241, 265, 480, 528 bottom right
//room 4 coords: 241, 0, 480, 264	top right

// Move the camera to position (x, y)
var cam = view_camera[0]; 

if (obj_player.y > 240) && (obj_player.x < 241) && (!has_switched)
{
	camera_set_view_pos(cam, 0, 256); 
	
	var _inst = instance_create_layer(door1_x, door1_y, "Wall_door", obj_door_front);
	_inst.door_pos = 1;
	
	obj_player.y += 50;
	obj_darkness_controller.image_alpha = 0.0;
	
	has_switched = true;
}

if (obj_player.y > 240) && (obj_player.x > 240) && (has_switched)
{
	camera_set_view_pos(cam, 240, 256);
	
	var _inst = instance_create_layer(door2_x, door2_y, "Wall_door", obj_door_front);
	_inst.door_pos = 2;
	
	obj_player.x += 20;
	obj_darkness_controller.image_alpha = 0.0;
	
	has_switched = false;
}

if (obj_player.y < 241) && (obj_player.x > 240) && (!has_switched)
{
	camera_set_view_pos(cam, 240, 0);
	
	var _inst = instance_create_layer(door3_x, door3_y, "Wall_door", obj_door_front);
	_inst.door_pos = 3;
	
	obj_player.y -= 20;
	obj_darkness_controller.image_alpha = 0.0;
	
	has_switched = true;
}

if (obj_player.y < 241) && (obj_player.x < 241) && (has_switched)
{
	camera_set_view_pos(cam, 0, 0);
	
	var _inst = instance_create_layer(door4_x, door4_y, "Wall_door", obj_door_front);
	_inst.door_pos = 4;
	
	obj_player.x -= 35;
	obj_darkness_controller.image_alpha = 0.0;
	
	has_switched = false;
}