behaviour = Idle; //states: Idle | Attack | Flee | Special
iFrames = 0;
damageFlash = 0;

function GetHit(atk) {
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
	//...
}
function Flee() {
	//...
}