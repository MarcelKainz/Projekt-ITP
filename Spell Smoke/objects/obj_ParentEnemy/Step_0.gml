var bulletHit = instance_place(x, y, obj_ParentBullet);

if (bulletHit != noone)
	GetHit(bulletHit.damage, bulletHit.dmgType);
	
	
