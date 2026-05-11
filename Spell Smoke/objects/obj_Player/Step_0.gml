#region Movement

	var maxi = keyboard_check(vk_shift) ? maxSpeed * sprintMultiplier : maxSpeed;
	var acci = keyboard_check(vk_shift) ? accel * sprintMultiplier : accel;
	 //ONLY modifying maxSpeed DOES NOT WORK for walking diagnoally, idk why
	 //ALWAYS buff maxSpeed AND accel
	#region WASD + ArrowKeys
	var xMove = 0;
	var yMove = 0;

	/// Horizontal
	if (keyboard_check(ord("D")))
	{
	    xMove = 1;
	}
	else if (keyboard_check(ord("A")))
	{
	    xMove = -1;
	}
	else
	{
	    xMove =
	        keyboard_check(vk_right)
	        -
	        keyboard_check(vk_left);
	}

	if (keyboard_check(ord("S")))
	{
	    yMove = 1;
	}
	else if (keyboard_check(ord("W")))
	{
	    yMove = -1;
	}
	else
	{
	    yMove =
	        keyboard_check(vk_down)
	        -
	        keyboard_check(vk_up);
	}
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


	// bei mehr als 5 Speed Bossts einfach bei 5 bleiben, weil sonst unspielbar
	
	if(sprintMultiplier >= 5)
	{
		sprintMultiplier = 5;
		move_and_collide(xSpeed*1.5, ySpeed*1.5, obj_ParentSolid)
	}
	
	if(sprintMultiplier > 1.5)
	{
		move_and_collide(xSpeed*1.15, ySpeed*1.15, obj_ParentSolid)
	}
	else
		move_and_collide(xSpeed/1.2, ySpeed/1.2, obj_ParentSolid);
	
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

	var moving = xMove != 0 || yMove != 0 ? "walk_" : "idle_";
	sprite_index = asset_get_index("spr_Player_" + moving + directionLooking);
#endregion Sprites
#region Camera

	camera_set_view_pos(view_camera[0], x - (camera_get_view_width(view_camera[0]) / 2), y  - (camera_get_view_height(view_camera[0]) / 2));
	
#endregion Camera
#region Shoot

	if (mouse_check_button(mb_left)) && (cooldown < 1)
	{
		var bullet = instance_create_layer(x, y, layer, obj_PlayerBullet);
		bullet.owner = id;
		bullet.damage *= damageMultiplier;
		cooldown = 30;
	}
	if(cooldown > 0)
	{
		cooldown = cooldown - 1;
	}

#endregion Shoot
#region Hit
	var bulletHit = instance_place(x, y, obj_DummyGoodBullet);
	var enemyHit = instance_place(x, y, obj_ParentEnemy);

	if (bulletHit != noone)
	{
		if(bulletHit.hitPlayer)
		{
			if(hitcooldown <= 0)
			{
				GetHit(bulletHit.damage, bulletHit.dmgType);
			}
		}
		
	}
	//Wenn man Gegner berührt, aber noch buggy, ka wieso
	/*if(enemyHit != noone)
	{
		if(enemyHit.hitPlayer)
		{
			if(hitcooldown <= 0)
			{
				GetHit(enemyHit.damage, enemyHit.dmgType);
			}
		}
	}
	*/
	
	if(hitcooldown > 0)
	{
		hitcooldown = hitcooldown - 1;
	}
	
#endregion Hit