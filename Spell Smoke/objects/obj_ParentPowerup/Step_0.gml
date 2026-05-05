if (place_meeting(x, y, obj_Player))
{
	obj_Player.PowerupStat += PowerupModifier;
	instance_destroy();
}