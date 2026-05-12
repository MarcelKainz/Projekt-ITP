if (place_meeting(x, y, obj_Player))
{
	obj_Player.bones += boneamount;
	instance_destroy();
}