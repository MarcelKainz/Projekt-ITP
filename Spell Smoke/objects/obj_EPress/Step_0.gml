x = obj_Player.x
y = obj_Player.y-40

if (point_distance(obj_Player.x, obj_Player.y, x, y) >= 48)
{
	instance_destroy();
}