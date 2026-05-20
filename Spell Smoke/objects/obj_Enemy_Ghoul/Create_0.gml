behaviour = Idle; //states: Idle | Attack
player = instance_find(obj_Player, 0);
iFrames = 0; //wird 30
FleeDuration = 0; //wird <Zahl>

function GetHit(damage, type) {
	hp -= damage;
	iFrames = 30;
	
	if (hp <= 0)
		instance_destroy();
}

function Idle() {
	if (point_distance(x, y, player.x, player.y) < 200) //stand still till Player is near
		behaviour = Attack;//than attack // then du hs. LG Kainz und Lukas
}
function Attack() {
	//move toward Player, don't care about Walls
	/*x += player.x < x ? -1 : 1; 
	y += player.y < y ? -1 : 1;*/
	mp_potential_step(player.x, player.y, moveSpeed, false) //move toward Player, dodge solids
	
	if (point_distance(x, y, player.x, player.y) < 20)
		Hit();
}
function Hit() { 
	hitPlayer = true;
	dmgType = "physical";
}
function Flee() {
	//...
}