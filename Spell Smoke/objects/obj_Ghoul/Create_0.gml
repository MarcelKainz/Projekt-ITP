behaviour = Idle; //states: Idle | Attack | Flee | Special
player = instance_find(obj_Player, 0);

function GetHit(damage, type) {
	hp -= damage;
	
	if (hp <= 0)
		instance_destroy();
}

function Idle() {
	if (point_distance(x, y, player.x, player.y) < 200)
		behaviour = Attack;
}
function Attack() {
	x += player.x < x ? -1 : 1;
	y += player.y < y ? -1 : 1;
	
	if (place_meeting(x, y, player)
		player.GetHit(damage, dmgType);
}
function Flee() {
	//...
}