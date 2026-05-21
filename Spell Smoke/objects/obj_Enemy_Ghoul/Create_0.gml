behaviour = Idle; //states: Idle | Attack
player = instance_find(obj_Player, 0);
iFrames = 0; //wird 30
FleeDuration = 0; //wird <Zahl>
damageFlash = 0;

function GetHit(damage, type) {
	hp -= damage;
	iFrames = 30;
	damageFlash = 1;
	
	if (hp <= 0)
		instance_destroy();
}

function Idle() {
	if (point_distance(x, y, player.x, player.y) < 200) //stand still till Player is near
		behaviour = Attack;//then attack //danke
}
function Attack() {
	mp_potential_step(player.x, player.y, moveSpeed, false) //move toward Player, dodge solids
	
	if (point_distance(x, y, player.x, player.y) < 20)
		Hit();
}
function Hit() {
	player.GetHit(damage, dmgType);
}
function Flee() {
	//...
}