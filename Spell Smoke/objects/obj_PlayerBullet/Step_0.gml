if(place_meeting(x, y, obj_ParentSolid))
	{
		audio_play_sound(sou_Hit, 1, false)
		Hit(false);
	}
	
if(distance_to_point(startingDistanceX, startingDistanceY) > obj_Player.attackRange)
{
	instance_destroy();
}