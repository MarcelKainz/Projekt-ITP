var bulletHit = instance_place(x, y, obj_PlayerBullet);

if (iFrames <= 0) {
	if (bulletHit != noone)
		if (bulletHit.hitEnemy)
			GetHit(bulletHit);
} else iFrames--;
	
behaviour();

damageFlash = max(0, damageFlash - 0.08)

depth = -y;