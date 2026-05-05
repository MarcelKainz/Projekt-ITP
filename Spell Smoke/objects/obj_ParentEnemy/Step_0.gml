var bulletHit = instance_place(x, y, obj_ParentBullet);

if (bulletHit != noone)
	if (bulletHit.hitEnemy)
		GetHit(bulletHit.damage, bulletHit.dmgType);
	
behaviour();