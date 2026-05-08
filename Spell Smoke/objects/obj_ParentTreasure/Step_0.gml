if (keyboard_check_pressed(ord("E")) && point_distance(x, y, obj_Player.x, obj_Player.y))
	{
		GetTreasure(TreasurePool);
		instance_destroy();
	}