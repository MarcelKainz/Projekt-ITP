if (place_meeting(x, y, obj_Player))
{
		
	if (statToIncrease == "sprintMultiplier")
		{
			obj_Player.sprintMultiplier += increaseModifier;
			obj_Player.accel += increaseModifier;
		}

	if (statToIncrease == "damageMultiplier")
		{
			obj_Player.damageMultiplier += increaseModifier;
		}

	if (statToIncrease == "max_hp")
		{
			obj_Player.max_hp += increaseModifier;
			obj_Player.hp += increaseModifier;
		}
	
	if (statToIncrease == "hp")
	{
	    obj_Player.hp += increaseModifier;

	    obj_Player.hp = clamp(obj_Player.hp, 0, obj_Player.max_hp);
	}
		
	instance_destroy();
}
	
