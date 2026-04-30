behaviour = Idle; //states: Idle | Attack | Flee | Special

function GetHit(damage, type) {
	hp -= damage;
	
	if (hp <= 0)
		instance_destroy();
}

function Idle() {
	show_message_async("Idling");
}
function Attack() {
	show_message_async("Attack");
}
function Flee() {
	//...
}