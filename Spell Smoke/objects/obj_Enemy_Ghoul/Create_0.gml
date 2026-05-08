behaviour = Idle; //states: Idle | Attack | Flee | Special
player = instance_find(obj_Player, 0);

function GetHit(damage, type) {
	hp -= damage;
	
	if (hp <= 0)
		instance_destroy();
}

function Idle() {
	if (point_distance(x, y, player.x, player.y) < 200) //stand still till Player is near
		behaviour = Attack;//than attack
}
function Attack() {
	//move toward Player, don't care about Walls
	/*x += player.x < x ? -1 : 1; 
	y += player.y < y ? -1 : 1;*/
	mp_potential_step(player.x, player.y, moveSpeed, false) //move toward Player, dodge solids
	
	if (place_meeting(x, y, player) && player.hitcooldown == 0)
		player.GetHit(damage, dmgType);
}
function Flee() {
	//...
}