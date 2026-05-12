if(place_meeting(x, y, obj_ParentSolid))
	{
		audio_play_sound(sou_Hit, 1, false)
		instance_destroy();
	}