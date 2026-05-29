behaviour = Idle; //states: Idle | Attack
player = instance_find(obj_Player, 0);
iFrames = 0; //wird 25
cooldown = 0;
damageFlash = 0;
path = path_add();

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
	iFrames = 25;
	damageFlash = 1;
	
	audio_play_sound(sou_Hit, 1, false);
	atk.Hit(true);
	
	if (hp <= 0)
		instance_destroy();
}

#region behaviours
function Idle() {
	if (point_distance(x, y, player.x, player.y) < 200) //stand still till Player is near
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
	path_start(path, moveSpeed, 0, 0)
	
	if (point_distance(x, y, player.x, player.y) < 20)
		Hit();
}
function Hit() {
	player.GetHit(damage, dmgType);
}
#endregion