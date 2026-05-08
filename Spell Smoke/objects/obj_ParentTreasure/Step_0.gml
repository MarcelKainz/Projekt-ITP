if (keyboard_check_pressed(ord("E")) && point_distance(x, y, obj_Player.x, obj_Player.y)<=45)
	{
		GetTreasure(TreasurePool);
		instance_destroy();
	}