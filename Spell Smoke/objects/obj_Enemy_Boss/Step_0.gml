var bulletHit = instance_place(x, y, obj_PlayerBullet);


if (bulletHit != noone) {
	if (bulletHit.hitEnemy){
		if (iFrames <= 0)
			GetHit(bulletHit);	
		bulletHit.Hit(true);
	}
}
iFrames--;

if (place_meeting(x, y, player))
	player.GetHit(damage, ["physical", "necrotic"])

behaviour();

damageFlash = max(0, damageFlash - 0.08)

depth = -y;