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
	
	if(statToIncrease == "hp")
		{
			if(obj_Player.max_hp-2 >= obj_Player.hp)
			{
				obj_Player.hp += increaseModifier;
			}
			else if(obj_Player.max_hp-1 == obj_Player.hp)
			{
				obj_Player.hp += increaseModifier - 1;
			}
			else
			{
				obj_Player.hp += increaseModifier - 2;
			}
		}
		
	instance_destroy();
}
	
