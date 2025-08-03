var _interact = keyboard_check_released(vk_space);


if (place_meeting(x, y, obj_player_interaction))
{
	visible = true;	
}
else
{
	visible = false;	
}

if(place_meeting(x, y, obj_player_interaction)) && (obj_player.curr_facing = Facing.Up)
{
	
	//show book title and interact option
	
	book_title.visible = true;
	
	if (_interact) && (book_highlighted.visible == false) && (obj_lib_puzzle_controller.lib_puzzle_completed == false)
	{
		//activate book
		book_highlighted.visible = true;
		
		ds_list_add(obj_lib_puzzle_controller.highlighted_books, book_highlighted);
		ds_list_add(obj_lib_puzzle_controller.chosen_books, book);
		
		//deactivation occurs in puzzle controller
	}
}
else
{
	book_title.visible = false;
}