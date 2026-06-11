#region HealthBar
	/// POSITION
	var bar_x = 80;
	var bar_y = 32;

	/// GRÖSEN
	var bar_width = 180;
	var bar_height = 24;
	var radius = 12;

	/// HP %
	var hp_percent = hp / max_hp;

	/// Farben
	var border_col = make_color_rgb(120, 220, 255);
	var bg_col = make_color_rgb(35, 35, 45);
	var hp_col = make_color_rgb(220, 40, 60);


	/// ----------------------
	/// OUTER GLOW / RAHMEN
	/// ----------------------
	draw_set_alpha(0.35);

	draw_set_color(border_col);

	draw_roundrect_ext(
	    bar_x - 4,
	    bar_y - 4,
	    bar_x + bar_width + 4,
	    bar_y + bar_height + 4,
	    radius,
	    radius,
	    false
	);

	draw_set_alpha(1);


	/// ----------------------
	/// HINTERGRUND
	/// ----------------------
	draw_set_color(bg_col);

	draw_roundrect_ext(
	    bar_x,
	    bar_y,
	    bar_x + bar_width,
	    bar_y + bar_height,
	    radius,
	    radius,
	    false
	);


	/// ----------------------
	/// HP FÜLLUNG
	/// ----------------------
	draw_set_color(hp_col);

	draw_roundrect_ext(
	    bar_x + 2,
	    bar_y + 2,
	    bar_x + ((bar_width - 2) * hp_percent),
	    bar_y + bar_height - 2,
	    radius - 4,
	    radius - 4,
	    false
	);


	/// ----------------------
	/// TEXT
	/// ----------------------
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	draw_set_color(c_white);

	draw_text(
	    bar_x + bar_width / 2,
	    bar_y + bar_height / 2,
	    string(hp) + " / " + string(max_hp)
	);


	/// ----------------------
	/// ICON
	/// ----------------------
	draw_sprite(spr_TreasureHealth, 0, bar_x - 48, bar_y - 2);

	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
#endregion HealthBar
#region Door
	draw_sprite_ext(spr_Door, 0, 32, 68, 1, 1, 0, c_white, 1);

	if(roomsPassed <= roomsToBoss)
	{
		if(endlessMode == false)
		{
			draw_text(80, 76,
			    string(roomsPassed) + "/" + string(roomsToBoss)
			);
		}
		else
		{
			draw_text(80, 76,
			    string(roomsPassed) + " (" + string(global.difficulty) + " Endless)"
			);
		}
	}
	else
	{
		draw_text(80, 76, "Final Room");
	}
#endregion Door
#region TreasureMultipliers
	#region TreasureSpeedMultiplier
		draw_sprite_ext(spr_TreasureSpeed, 0, 32, 114, 2, 2, 0, c_white, 1);
		draw_text(80, 120, string(obj_Player.sprintMultiplier));
	#endregion TreasureSpeedMultiplier
	#region TreasurePowerMultiplier
		draw_sprite_ext(spr_TreasurePower, 0, 32, 146, 2, 2, 0, c_white, 1);
		draw_text(80, 152, string(obj_Player.damageMultiplier));
	#endregion TreasurePowerMultiplier
		draw_sprite_ext(spr_TreasureAttackSpeed, 0, 32, 178, 2, 2, 0, c_white, 1);
		draw_text(80, 184, string(obj_Player.cooldownTimer));
		
		draw_sprite_ext(spr_TreasureRange, 0, 32, 210, 2, 2, 0, c_white, 1);
		draw_text(80, 216, string(obj_Player.attackRange));
#endregion TreasureMultipliers
#region DroppedItems
	#region Keys
		draw_sprite_ext(spr_Key, 0, 32, 242, 2, 2, 0, c_white, 1);
		draw_text(80, 248, string(obj_Player.keys));
	#endregion Keys
	#region Bones
		draw_sprite_ext(spr_Bone, 0, 32, 276, 2, 2, 0, c_white, 1);
		draw_text(80, 280, string(obj_Player.bones));
	#endregion Bones
#endregion DroppedItems
#region Debug
	if(debug == true)
	{
		draw_text(1080, 40, "X: " + string(obj_Player.x));
		draw_text(1080, 60, "Y: " + string(obj_Player.y));
		if(keyboard_check(vk_shift))
		{
			draw_text(1080, 80, "XSpeed: " + string(obj_Player.xSpeed));
			draw_text(1080, 100, "YSpeed: " + string(obj_Player.ySpeed));
		}
		else
		{
			if(sprintMultiplier >= 4)
			{
				draw_text(1080, 80, "XSpeed: " + string(obj_Player.xSpeed*1.5));
				draw_text(1080, 100, "YSpeed: " + string(obj_Player.ySpeed*1.5));
			}
			else
			{
				if(sprintMultiplier > 1.5 && sprintMultiplier < 4)
				{
					draw_text(1080, 80, "XSpeed: " + string(obj_Player.xSpeed*1.15));
					draw_text(1080, 100, "YSpeed: " + string(obj_Player.ySpeed*1.15));
				}
				else
				{
					draw_text(1080, 80, "XSpeed: " + string(obj_Player.xSpeed/1.2));
					draw_text(1080, 100, "YSpeed: " + string(obj_Player.ySpeed/1.2));
				}
			}
		}
	
		draw_text(1080, 120, "MaxSpeed: " + string(obj_Player.maxSpeed));
		draw_text(1080, 140, "Accel: " + string(obj_Player.accel));
		draw_text(1080, 160, "DirectionLooking: " + string(obj_Player.directionLooking));
		draw_text(1080, 180, "Cooldown: " + string(obj_Player.cooldown));
		draw_text(1080, 200, "Hitcooldown: " + string(obj_Player.iFrames));
		draw_text(1080, 220, "FPS: " + string(fps));
		var door_center_x = obj_Door.x + obj_Door.sprite_width * 0.5;
		var door_center_y = obj_Door.y + obj_Door.sprite_height * 0.5;
		draw_text(1080, 240, "Distance Door: " + string(point_distance(obj_Player.x, obj_Player.y, door_center_x, door_center_y)));
		try
		{
			var treasure_center_x = obj_ParentTreasure.x + obj_ParentTreasure.sprite_width * 0.5;
			var treasure_center_y = obj_ParentTreasure.y - obj_ParentTreasure.sprite_height * 0.5;
			draw_text(1080, 260, "Distance Chest: " + string(point_distance(obj_Player.x, obj_Player.y, treasure_center_x, treasure_center_y)));
		}
		catch (exception_unhandled_handler)
		{
			// nur am chillen
			// ka, der braucht ein catch weil er a klanes kind is
		}
		draw_text(1080, 280, "RoomsPassed: " + string(obj_Player.roomsPassed));
		draw_text(1080, 300, "RoomsToBoss: " + string(obj_Player.roomsToBoss));
		draw_text(0, 700, "Achievement: " + string(global.difficultyCompleted)) 
	}
#endregion Debug