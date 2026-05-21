behavior = Idle;
iFrames = 0;
damageFlash = 0;

function GetHit() {
	var prevHp = hp;
	hp -= damage;
	
	if (prevHp > 40 && hp <= 40){ //once you drop below certain hp, do something
		show_message("unter 40, aua aua");
		iFrames = 200;
	} else if (prevHp > 25 && hp <= 25){
		show_message("grrrr, unter 25 du Fiesa >:(");
	} else
		iFrames = 80;
	
	damageFlash = 1;
	if (hp <= 0)
		instance_destroy();
}

function Idle() {
	action = random(1);
	
	if (action < 0.2)
	{}
	else if (action < 0.5)
	behaviour = Rush;
}

function Rush() { //rush toward player, crash into walls. Do a few times, then be vulnerable
	
}

function Idk() {
	
}

