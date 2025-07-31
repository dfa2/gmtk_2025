

if (obj_player.curr_facing == Facing.Down)
{
	image_angle = 270;	
	
	x = obj_player.x + 8;
	y = obj_player.y + 32;
}

if (obj_player.curr_facing == Facing.Up)
{
	image_angle = 90;	
	
	x = obj_player.x + 8;
	y = obj_player.y;
}

if (obj_player.curr_facing == Facing.Right)
{
	image_angle = 0;	
	
	x = obj_player.x + 16;
	y = obj_player.y + 16;
}

if (obj_player.curr_facing == Facing.Left)
{
	image_angle = 180;	
	
	x = obj_player.x;
	y = obj_player.y + 16;
}