var _move_up = keyboard_check(vk_up);
var _move_left = keyboard_check(vk_left);
var _move_down = keyboard_check(vk_down);
var _move_right = keyboard_check(vk_right);

var _mvmt_h = _move_right - _move_left;
var _mvmt_v = _move_down - _move_up;

//set facing enum
if (_move_up)
{
	curr_facing = Facing.Up;
	
	sprite_index = spr_player_up;
}
if (_move_down)
{
	curr_facing = Facing.Down;
	
	sprite_index = spr_player_down;
}
if (_move_left)
{
	curr_facing = Facing.Left;
	
	sprite_index = spr_player_left;
}
if (_move_right)
{
	curr_facing = Facing.Right;
	
	sprite_index = spr_player_right;
}

if (h_speed == 0) && (v_speed == 0)
{
	image_speed = 0;	
	image_index = 1;
}
else
{
	image_speed = 2;	
}

//check diagonal movement
if (_move_up || _move_down) && (_move_left || _move_right)
{
	move_speed = move_speed_diagonal;
}
else
{
	move_speed = move_speed_original;	
}

h_speed = _mvmt_h * move_speed;
v_speed = _mvmt_v * move_speed;

//check hor collision
if (place_meeting(x + h_speed, y, obj_impassable))
{
	while (!place_meeting(x + sign(h_speed), y, obj_impassable))
	{
		x += sign(h_speed);
	}
	
	h_speed = 0;
}

//check vert collision
if (place_meeting(x, y + v_speed, obj_impassable))
{
	while (!place_meeting(x, y + sign(v_speed), obj_impassable))
	{
		y += sign(v_speed);
	}
	
	v_speed = 0;
}

//move
x += h_speed;
y += v_speed;