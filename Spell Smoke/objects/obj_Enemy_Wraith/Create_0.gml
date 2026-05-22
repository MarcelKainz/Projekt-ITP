behaviour = Idle; //states: Idle | Attack | Flee | Special
iFrames = 0;
damageFlash = 0;

function GetHit(atk) {
	//damage resistances & immunities & weaknesses
	/*if (array_contains(["physical", "acid"], atk.type)) ////EDIT THIS
		return;  ///TYPE IS AN ARRAY, THIS WILL BREAK STUFF
	if (array_contains(["poison", "necrotic"], atk.type))
		damage /= 2;
	if (array_contains(["radiant", "psychic"], atk.type))
		damage *= 2;*/
	
	hp -= atk.damage;
	iFrames = 30;
	damageFlash = 1;
	
	audio_play_sound(sou_Hit, 1, false);
	instance_destroy(atk);
	
	if (hp <= 0)
		instance_destroy();
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