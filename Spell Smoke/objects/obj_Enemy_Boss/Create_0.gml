behaviour = Idle; //states: Idle | Attack | Flee | Special
player = instance_find(obj_Player, 0);
iFrames = 0;
damageFlash = 0;
cooldown = 120
tempVars = [];
prevAtk = 0;

#region Difficulty Scaling
switch (player.difficulty) { //scale stats based on difficulty
	case "easy" : break;
	case "middle" : hp *= 2; damage *= 2; break;
	case "hard" : damage *= 2; hp *= 3; break;
}
#endregion
maxHp = hp;

function GetHit(atk) {
	hp -= atk.damage;
	damageFlash = 1;
	
	audio_play_sound(sou_Hit, 1, false);
	
	if (hp <= 0)
		instance_destroy();
}

function Idle() { //wait a second, Stun or smth, then choose random attack
	if (cooldown > 0){
		cooldown--;
		return;
	}
	//randomizer for attacks:
	var temp = ceil(random(3));
	while (temp == prevAtk) { temp = ceil(random(3)) } //same atk not twice in a row
	prevAtk = temp;
	switch(temp) {
		case 1: //Circle
			behaviour = AttackCircleMove;
			tempVars[0] = 0; //Angle of bullets
			break;
		case 2: //Summon
			cooldown = 1000; //time of invincibility
			iFrames = 1001; //actual invincibility
			sprite_index = spr_Boss_invincible;
			behaviour = Summoning;
			break;
		case 3: //Dash
			/*tempVars[0] = 0;
			tempVars[1] = 0;
			tempVars[2] = 0;
			behaviour = DashAttackCharge;
			cooldown = 40;*/
			break;
	}
}
#region AttackCircle
function AttackCircleMove() {
	if (x != 270 || y != 210)
		move_towards_point(270, 210, min(moveSpeed, point_distance(x, y, 270, 210)));
	else {
		behaviour = AttackCircle;
		speed = 0;
	}
}
function AttackCircle() { //shoot sludge bullets in a circle around
	if (cooldown > 0) {
		cooldown--;
		return;
	}
	AttackCircleBullet(0);
	AttackCircleBullet(180);
	if (hp < maxHp / 2) //extra bullets when below 50% hp
	{
		AttackCircleBullet(90);
		AttackCircleBullet(270);
	}
	
	tempVars[0] += 10; //adjust angle
	
	cooldown = 15;
	
	if (tempVars[0] >= 700){
		behaviour = Idle;
		cooldown = 200;
	}
}
function AttackCircleBullet(angle) {
	var bullet = instance_create_layer(x, y, "Instances", obj_simpleBullet);
	bullet.sprite_index = spr_sludgeBullet;
	bullet.direction = point_direction(x, y, x + lengthdir_x(1, tempVars[0] + angle), y + lengthdir_y(1, tempVars[0] + angle));
	bullet.image_angle = bullet.direction;
	bullet.speed = 5;
	bullet.damage = damage;
	bullet.hitPlayer = true;
	bullet.dmgType = ["physical", "necrotic"];
}
#endregion
#region Summoning
function Summoning() { //temporarily invincible, summones a small number of random enemies in the room
	if (cooldown % 150 == 0) {
		/*var spawn = */instance_create_layer(max(random(480), 64), max(random(352), 64), "Instances", obj_Enemy_Random, {animate : true});
		//spawn.behaviour = Attack;
	}
	cooldown--;
	if !(cooldown > 0) {
		sprite_index = spr_Boss_idle;
		behaviour = Idle;
		cooldown = 150;
	}
}
#endregion
/*
#region DashAttack
function DashAttackPrecharge() {
	tempVars[1] = point_direction(x, y, player.x, player.y);
	if (cooldown < 0 && !place_meeting(x, y, obj_ParentSolid)) {
		direction = tempVars[1];
		speed = moveSpeed;
		cooldown--;
	} else {
		cooldown = 40;
		behaviour = DashAttackCharge;
	}
}
function DashAttackCharge() {
	//indicate direction by moving very slightly away from it
	tempVars[1] = point_direction(player.x, player.y, x, y); //opposite dir from player
	if (cooldown > 0 && !place_meeting(x, y, obj_ParentSolid)) {
		direction = tempVars[1];
		speed = moveSpeed / 3;
		cooldown--;
	} else {
		tempVars[2] = point_direction(x, y, player.x, player.y); //lock in dash dir
		cooldown = 10;
		behaviour = DashAttackChargeQuick;
	}
}
function DashAttackChargeQuick() { //move back quick to indicate being about to dash
	if (cooldown > 0) {
		direction = tempVars[1];
		speed = moveSpeed * 1.5;
		cooldown--;
	} else {
		behaviour = DashAttack;
	}
	
}
function DashAttack() {
	//dash quickly toward target
	if (place_meeting(x, y, obj_ParentSolid)) {
		speed = 0;
		tempVars[0]++;
		if (tempVars[0] > 4)
		{
			cooldown = 40;
			behaviour = Idle;
		} else {
			cooldown = 80;
			behaviour = DashAttackPrecharge;
		}
	} else {
		direction = tempVars[2];
		speed = moveSpeed * 5;
	}
}

#endregion