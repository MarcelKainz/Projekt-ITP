randomise();

gml_pragma("MarkTagAsUsed", "playerSpr");
roomsToBoss = 10;
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
xSpeed = 0;
ySpeed = 0;
maxSpeed = 1.5;
accel = 1;
directionLooking = "down";
hitcooldown = 0;




cooldown = 30;


function GetHit(damage, type) {
	hp -= damage;
	
	hitcooldown = 25;
	
	if(hp <= 0){
		GameLose();
	}
}