behaviour = Idle; //states: Idle | Attack
player = instance_find(obj_Player, 0);
iFrames = 0; //wird 30
FleeDuration = 0; //wird <Zahl>
damageFlash = 0;
path = path_add();

function GetHit(atk) {
	hp -= atk.damage;
	iFrames = 30;
	damageFlash = 1;
	
	audio_play_sound(sou_Hit, 1, false);
	instance_destroy(atk);
	
	if (hp <= 0)
		instance_destroy();
}

#region behaviours
function Idle() {
	if (point_distance(x, y, player.x, player.y) < 200) //stand still till Player is near
	{
		behaviour = Attack;//then attack //danke
	}
}
function Attack() {
	mp_potential_path(path, player.x, player.y, moveSpeed, 200, false)
	path_start(path, moveSpeed, 0, 0)
	
	if (point_distance(x, y, player.x, player.y) < 20)
		Hit();
}
function Hit() {
	player.GetHit(damage, dmgType);
}
function Flee() {
	//...
}
#endregion