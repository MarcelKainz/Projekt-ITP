if(point_distance(obj_Player.x, obj_Player.y,  x, y) <= 45)
{
	if(keyboard_check_pressed(ord("E")))
	{
		RoomLogic();
	}
}