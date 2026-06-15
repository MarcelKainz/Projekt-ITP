if(place_meeting(x, y, obj_ParentSolid))
	{
		if (sprite_index == spr_bulletBall){
		audio_play_sound(sou_Hit, 1, false)
		Hit(false);
		}
	}
	
if(distance_to_point(startingDistanceX, startingDistanceY) > obj_Player.attackRange)
{
	speed=0;
	sprite_index = spr_bulletBallExplosion;
	hitEnemy = false;
}