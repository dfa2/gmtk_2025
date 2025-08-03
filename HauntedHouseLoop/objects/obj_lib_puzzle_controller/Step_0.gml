if (ds_list_size(chosen_books) == 6) && (!lib_puzzle_completed)
{
	for (var _i = 0; _i < 6; _i++)
	{
		var _inst = ds_list_find_value(chosen_books, _i);
		
		for (var _ii = 0; _ii < 6; _ii++)
		{
			var _correct = ds_list_find_value(correct_books, _ii);
			
			if (_inst == _correct)
			{
				total_correct_books++;
			}
		}
	}
	
	if (total_correct_books < 6)
	{
		for (var _i = 0; _i < 6; _i++)
		{
			var _inst = ds_list_find_value(highlighted_books, _i);
		
			_inst.visible = false;
		}
	
		ds_list_clear(chosen_books);
		ds_list_clear(highlighted_books);
		
		total_correct_books = 0;
	}
	
	if (total_correct_books == 6)
	{
		lib_puzzle_completed = true;
		
		obj_puzzle_controller.library_completed = true;
	}
}
