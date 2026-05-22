behaviour = Idle;
player = instance_find(obj_Player, 0);

iFrames = 0;
damageFlash = 0;
currCooldown = 0;

function GetHit(atk) {
	var prevHp = hp;
	hp -= atk.damage;
	
	audio_play_sound(sou_Hit, 1, false);
	instance_destroy(atk);
	
	if (prevHp > 40 && hp <= 40){ //once you drop below certain hp, do something
		damageFlash = 10;
		iFrames = 100;
	} else if (prevHp > 25 && hp <= 25){
		damageFlash = 5;
	} else
		iFrames = 50;
	
	damageFlash++;
	if (hp <= 0)
		instance_destroy();
}

#region behaviours
function Idle() {	
	if (currCooldown > 0){
		currCooldown--;
		return;
	}
		
	action = random(1);
	
	if (action < 0.05)
	behaviour = SludgeShootInitiate;
	else if (action < 0.1)
	behaviour = RushInitiate;
}

#region Rush
function RushInitiate() { //rush toward player, crash into walls. Do a few times, then be vulnerable
	var orientation;
	if (random(1) < 0.5)
		orientation = "x"; //horizontal
	else
		orientation = "y"; //vertical
	
	//split map into lines
	if (orientation == "x") {
		
	}
	//check which line the player is on
}
function RushMove() {
	//move to start of line
	//move lines if Player moved and hp is below 40
}
function RushAttack() {
	//rush across line into wall
	//get back to Initiate, repeat a few times
}
#endregion

function SludgeShootInitiate() { //shoot sludge in high arch while resisting/invulnerable to damage
	//not implemented
	behaviour = Idle;
}
#endregion