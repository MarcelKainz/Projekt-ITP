behaviour = Idle; //states: Idle | Attack | Flee | Special

function GetHit(damage, type) {
	hp -= damage;
	
	if (hp <= 0)
		instance_destroy();
}

function Idle() {
	//...	
}
function Attack() {
	//...
}
function Flee() {
	//...
}