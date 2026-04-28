#region Movement

	var maxi = keyboard_check(vk_shift) ? maxSpeed * 1.5 : maxSpeed;
	var acci = keyboard_check(vk_shift) ? accel * 1.5 : accel;
 //ONLY modifying maxSpeed DOES NOT WORK for walking diagnoally. We don't know why, it just doesn't. ALWAYS buff maxSpeed AND accel
	var xMove = (keyboard_check(ord("D")) - keyboard_check(ord("A")));
	var yMove = (keyboard_check(ord("S")) - keyboard_check(ord("W")));

	if(xMove == 0)
		xSpeed = xSpeed <= 0 ? min(xSpeed + acci, 0) : max(xSpeed - acci, 0);
	else 
		xSpeed = clamp(xSpeed + (xMove * acci), -maxi, maxi);
	if(yMove == 0)
		ySpeed = ySpeed <= 0 ? min(ySpeed + acci, 0) : max(ySpeed - acci, 0);
	else 
		ySpeed = clamp(ySpeed + (yMove * acci), -maxi, maxi);

	if (xMove != 0 && yMove != 0)
	{
		ySpeed *= 0.707;
		xSpeed *= 0.707;
	}

	move_and_collide(xSpeed, ySpeed, obj_ParentSolid);
	
#endregion Movement
/*#region Sprites
if (xMove < 0)
	directionLooking = "left";
else if (xMove > 0)
	directionLooking = "right";
else if (yMove < 0)
	directionLooking = "up";
else if (yMove > 0)
	directionLooking = "down";
	
var moving = xMove != 0 || yMove != 0 ? "walk_" : "idle_";
sprite_index = asset_get_index("spr_Player_" + moving + directionLooking);
#endregion Sprites*/