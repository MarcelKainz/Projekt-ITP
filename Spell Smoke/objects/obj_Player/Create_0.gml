
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


xSpeed = 0;
ySpeed = 0;
maxSpeed = 1.5;
accel = 1;
directionLooking = "down";




cooldown = 30;
