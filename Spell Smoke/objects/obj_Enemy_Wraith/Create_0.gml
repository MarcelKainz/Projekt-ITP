behaviour = Idle; //states: Idle | Attack | Flee | Special
iFrames = 0;
damageFlash = 0;

function GetHit(damage, type) {
	//damage resistances & immunities & weaknesses
	if (array_contains(["physical", "acid"], type)) ////EDIT THIS
		return;  ///TYPE IS AN ARRAY, THIS WILL BREAK STUFF
	if (array_contains(["poison", "necrotic"], type))
		damage /= 2;
	if (array_contains(["radiant", "psychic"], type))
		damage *= 2;
	
	hp -= damage;
	
	if (hp <= 0)
		instance_destroy();
	iFrames = 30;
}

function Idle() {
	//...	
}
function Attack() {
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