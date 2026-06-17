#region
	direction = point_direction(x, y, mouse_x, mouse_y);
	direction = direction + random_range(-4, 4);
	speed = 16;
	image_angle = direction;
	depth = -100;
	
	startingDistanceX = x;
	startingDistanceY = y;
#endregion

function Hit(enemy) {
	speed=0;
	sprite_index = spr_bulletBallExplosion;
	hitEnemy = false;
}