behaviour = Idle; //states: Idle | Attack | Flee | Special
iFrames = 0;

function GetHit(damage, type) {
	hp -= damage;
	iFrames = 30;
	
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