if(point_distance(obj_Player.x, obj_Player.y,  x, y) <= 45)
{
	if(keyboard_check_pressed(ord("E")))
	{
		RoomLogic();
	}
}

if (!instance_exists(obj_EPress)){
		instance_create_layer(obj_Player.x, obj_Player.y - 40, "Instances", obj_EPress)
		}
		if(keyboard_check(ord("E")))
		{
			instance_destroy(EPress_obj)
		}