if(place_meeting(x, y, obj_ParentSolid))
	{
		audio_play_sound(sou_Hit, 1, false)
		Hit(false);
	}
if (place_meeting(x, y, obj_Player)) {
	player.GetHit(damage, dmgType);
	audio_play_sound(sou_Hit, 1, false)
	Hit(true);
}