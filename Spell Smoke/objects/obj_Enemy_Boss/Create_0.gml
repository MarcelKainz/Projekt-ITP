behaviour = Idle; //states: Idle | Attack | Flee | Special
player = instance_find(obj_Player, 0);
iFrames = 0;
damageFlash = 0;
cooldown = 120
tempVars = [];

#region Difficulty Scaling
switch (player.difficulty) { //scale stats based on difficulty
	case "easy" : break;
	case "middle" : hp *= 2; damage *= 2; break;
	case "hard" : damage *= 3; hp *= 3; break;
}
#endregion
maxHp = hp;

function GetHit(atk) {
	hp -= atk.damage;
	iFrames = 20;
	damageFlash = 1;
	
	audio_play_sound(sou_Hit, 1, false);
	instance_destroy(atk);
	
	if (hp <= 0)
		instance_destroy();
}

function Idle() { //wait a second, Stun or smth, then choose random attack
	if (cooldown > 0){
		cooldown--;
		return;
	}
	//make a randomizer once you have multiple attacks
	behaviour = AttackCircleMove;
	tempVars[0] = 0; //Angle of bullets
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
	
	cooldown = 8;
	
	if (tempVars[0] >= 900){
		behaviour = Idle;
		cooldown = 200;
	}
}
function AttackCircleBullet(offset) {
	var bullet = instance_create_layer(x, y, "Instances", obj_simpleBullet);
	bullet.sprite_index = spr_sludgeBullet;
	bullet.direction = point_direction(x, y, x + lengthdir_x(1, tempVars[0] + offset), y + lengthdir_y(1, tempVars[0] + offset));
	bullet.image_angle = bullet.direction;
	bullet.speed = 5;
	bullet.hitPlayer = true;
	bullet.dmgType = ["physical", "necrotic"];
}
#endregion
#region Summoning
function Summoning() { //temporarily invincible, summones a small number of random enemies in the room
	
}
#endregion