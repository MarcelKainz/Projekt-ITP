randomise();

gml_pragma("MarkTagAsUsed", "playerSpr");
endlessMode = false;
difficulty = "easy";

if (endlessMode)
{
    roomsToBoss = infinity;
}
else
{
    switch (difficulty)
    {
        case "easy":
            roomsToBoss = 20;
        break;

        case "middle":
            roomsToBoss = 15;
        break;

        case "hard":
            roomsToBoss = 10;
        break;

        default:
            roomsToBoss = 20;
    }
}
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


hp = 10;
max_hp = 10;
xSpeed = 0;
ySpeed = 0;
maxSpeed = 1.5;
accel = 1;
sprintMultiplier = 1.5;
directionLooking = "down";
hitcooldown = 0;

damageMultiplier = 1;




cooldown = 30;


function GetHit(damage, type) {
//	if(bulletHit.dmgType == "enemy"){ //oder so ka wie das geht, macht Marvin glaub oder so, besserer Code noch hinzufügen; nur zum testen
		hp -= damage;
	
		hitcooldown = 25;
	
		if(hp <= 0)
		{
			GameLose();
		}
//	}
}

window_set_fullscreen(false)

debug = true;