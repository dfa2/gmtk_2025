if (!obj_puzzle_controller.cellar_completed)
{
	if (obj_gg_01.is_on) && (obj_gg_02.is_on) && (obj_gg_03.is_on) && (obj_gg_04.is_on)
	{
		image_index = 1;	
		obj_puzzle_controller.cellar_completed = true;
	}
	else
	{
		image_index = 0;
	}
}