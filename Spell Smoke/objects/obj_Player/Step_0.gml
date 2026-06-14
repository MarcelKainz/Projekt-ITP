#region Movement

	var maxi = keyboard_check(global.buttonSprint) ? maxSpeed * sprintMultiplier : maxSpeed;
	var acci = keyboard_check(global.buttonSprint) ? accel * sprintMultiplier : accel;
	 //ONLY modifying maxSpeed DOES NOT WORK for walking diagnoally, idk why
	 //ALWAYS buff maxSpeed AND accel
	#region WASD + ArrowKeys
	var xMove = 0;
	var yMove = 0;

	/// Horizontal
	if (keyboard_check(global.buttonMoveRight))
	{
	    xMove = 1;
	}
	else if (keyboard_check(global.buttonMoveLeft))
	{
	    xMove = -1;
	}
	/*else
	{
	    xMove =
	        keyboard_check(vk_right)
	        -
	        keyboard_check(vk_left);
	}*/

	if (keyboard_check(global.buttonMoveDown))
	{
	    yMove = 1;
	}
	else if (keyboard_check(global.buttonMoveUp))
	{
	    yMove = -1;
	}
	/*else
	{
	    yMove =
	        keyboard_check(vk_down)
	        -
	        keyboard_check(vk_up);
	}*/
	#endregion WASD + ArrowKeys

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
		ySpeed *= 1/sqrt(2);
		xSpeed *= 1/sqrt(2);
	}
	
	move_and_collide(xSpeed, ySpeed, obj_ParentSolid)
	
#endregion Movement
#region Sprites
	if (xMove < 0)
		directionLooking = "left";
	else if (xMove > 0)
		directionLooking = "right";
	else if (yMove < 0)
		directionLooking = "up";
	else if (yMove > 0)
		directionLooking = "down";
		
	depth = -y; //wenn spieler vor sachen ist ist er davor, wenn er dahiner ist dahinter

	var moving = xMove != 0 || yMove != 0 ? "walk_" : "idle_";
	sprite_index = asset_get_index("spr_Player_" + moving + directionLooking);
#endregion Sprites
#region Camera

	camera_set_view_pos(view_camera[0], x - (camera_get_view_width(view_camera[0]) / 2), y  - (camera_get_view_height(view_camera[0]) / 2));
	
#endregion Camera
#region Shoot
// cooldown runter
if (cooldown > -10)
{
    cooldown--;
}

// merken ob Taste gehalten wird
if (mouse_check_button_pressed(mb_left))
{
    holding = false;
}

if (mouse_check_button(mb_left))
{
    if (cooldown <= 0)
    {
        var bullet = instance_create_layer(x, y, "Instances", obj_PlayerBullet);
        bullet.owner = id;
        bullet.damage *= damageMultiplier;

        // Taste wurde seit dem letzten Schuss nie losgelassen
        if (holding)
        {
            cooldown = cooldownTimer * 2;
            currentCooldownMax = cooldownTimer * 2;
        }
        else
        {
            cooldown = cooldownTimer;
            currentCooldownMax = cooldownTimer;
        }

        holding = true;
    }
}

// Loslassen setzt zurück
if (mouse_check_button_released(mb_left))
{
    holding = false;
}
#endregion Shoot	
#region Hit
	if(iFrames > 0)
	{
		iFrames--;
	}
	
	damageFlash = max(0, damageFlash - 0.08);
#endregion Hit
/*if(keyboard_check_pressed(vk_enter))
{
	export_json("", "");
}*/



#region Achievements
if (bones >= 100 && !array_contains(global.difficultyCompleted, "rich"))
{
	array_push(global.difficultyCompleted, "rich");
}

if (damageMultiplier >= 5 && !array_contains(global.difficultyCompleted, "power"))
{
	array_push(global.difficultyCompleted, "power");
}

if (sprintMultiplier >= 2.5 && !array_contains(global.difficultyCompleted, "speed"))
{
	array_push(global.difficultyCompleted, "speed");
}

if (max_hp >= 10 && !array_contains(global.difficultyCompleted, "tank"))
{
	array_push(global.difficultyCompleted, "tank");
}

if (attackRange >= 350 && !array_contains(global.difficultyCompleted, "sniper"))
{
	array_push(global.difficultyCompleted, "sniper");
}

if (cooldownTimer <= 15 && !array_contains(global.difficultyCompleted, "rapidFire"))
{
	array_push(global.difficultyCompleted, "rapidFire");
}
#endregion Achievements


if(keyboard_check(vk_escape))
{
	GameLose();
}