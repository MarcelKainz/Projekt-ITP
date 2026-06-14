//Seed();

randomise();
/*
if (!variable_global_exists("seed"))
{
    global.seed = 0;
}

if (global.seed != 0)
{
    random_set_seed(global.seed);
}
else
{
    randomize();

    global.seed = random_get_seed();
}
*/
gml_pragma("MarkTagAsUsed", "playerSpr");

endlessMode = false;
difficulty = ""; //easy, middle, hard

if (global.endlessmode)
{
    roomsToBoss = infinity;
}
else
{
    switch (global.difficulty)
    {
        case "easy":
            roomsToBoss = 15;
        break;

        case "medium":
            roomsToBoss = 25;
        break;

        case "hard":
            roomsToBoss = 30;
        break;
    }
}

endlessMode = global.endlessmode;
difficulty = global.difficulty;

roomsPassed = 0;
roomsBeenTo = [];
allrooms = [];

for (var ix = 1; ix <= room_last; ix ++)
{
    if room_exists(ix)
	{
        array_push(allrooms, room_get_name(ix));
    }
}


hp = 3;
max_hp = 3;
xSpeed = 0;
ySpeed = 0;
maxSpeed = 1.5;
accel = 1;
sprintMultiplier = 1.25;
directionLooking = "down";
iFrames = 0;
damageFlash = 0;

damageMultiplier = 1;
cooldown = 30; //current Cooldown
cooldownTimer = 30;  //max Cooldown
attackRange = 100;

bones = 0;
keys = 2;


function GetHit(damage, type) {
//	if(bulletHit.dmgType == "enemy"){ //oder so ka wie das geht, macht Marvin glaub oder so, besserer Code noch hinzufügen; nur zum testen
		if (iFrames > 0)
			return;
		
		hp -= damage;
		iFrames = 40;
		damageFlash = 1;
	
		if(hp <= 0)
		{
			GameLose();
		}
//	}
}


debug = global.debug;

window_set_cursor(cr_none);
