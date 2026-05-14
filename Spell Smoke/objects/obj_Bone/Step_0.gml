if (place_meeting(x, y, obj_Player))
{
	audio_play_sound(sou_ItemPickup, 1, false);
	obj_Player.bones += boneamount;
	instance_destroy();
}