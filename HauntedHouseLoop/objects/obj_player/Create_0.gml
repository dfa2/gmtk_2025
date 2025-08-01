h_speed = 0;
v_speed = 0;
move_speed_original = 2;
move_speed_diagonal = 1.5;
move_speed = move_speed_original;

walk_sfx_timer_max = 20;
walk_sfx_timer = 0;

instance_create_layer(x, y, "Player", obj_player_interaction);

enum Facing {
    Up,
    Down,
    Left,
    Right
}

curr_facing = Facing.Down;