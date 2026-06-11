behaviour = Idle; //states: Idle | Attack
iFrames = 0; //wird 25
cooldown = 0;
damageFlash = 0;
shootCooldown = 50;

path = path_add();
player = instance_find(obj_Player, 0);

itemPool = ["Heal", "Key"]

#region Difficulty Scaling
switch (player.difficulty) { //scale stats based on difficulty
	case "easy" : break;
	case "middle" : hp *= 1.5; break;
	case "hard" : damage *= 2; hp *= 3; break;
}
if (player.endlessMode) //scale stats based on Room
{
	hp *= max(floor(player.roomsPassed / 10), 1);
	damage *= max(floor(player.roomsPassed / 10), 1);
}
#endregion
function GetHit(atk) {
	hp -= atk.damage;
	//iFrames = 25;
	damageFlash = 1;
	
	audio_play_sound(sou_Hit, 1, false);
	atk.Hit(true);
	
	behaviour = Attack;//agro on hit
	
	if (hp <= 0)
		instance_destroy();
}

function Idle() {
	if (point_distance(x, y, player.x, player.y) < 350) //stand still till Player is near
	{
		mp_potential_settings(80, 10, 10, true)
		behaviour = Attack;//then attack
	}
}
function Attack() {
	if(cooldown <= 0) {
		mp_grid_path(global.grid, path, x, y, player.x, player.y, true);
		cooldown = 5;
	}
	else cooldown--;
	
	var playerDistance = point_distance(x, y, player.x, player.y)
	lineOfSight = collision_line(x, y, player.x, player.y, obj_ParentSolid, false, true);
	
	var walk;
	if (playerDistance > 200 || lineOfSight != noone)
		walk = path;
	else
		walk = path_add();
	path_start(walk, moveSpeed, 0, 0)
	
	if (playerDistance < 230 && shootCooldown <= 0 && lineOfSight == noone)
		Shoot();
	else
	 shootCooldown--;
}
function Shoot() {
	var bullet = instance_create_layer(x, y, "Instances", obj_simpleBullet);
	bullet.direction = point_direction(x, y, player.x, player.y);
	bullet.speed = 8;
	bullet.image_angle = bullet.direction;
	bullet.hitPlayer = true;
	bullet.damage = damage;
	bullet.dmgType = ["force", "necrotic"];
	shootCooldown = 70;
}