if (place_meeting(x, y, obj_Player))
{
		
	if (statToIncrease == "sprintMultiplier")
		{
			obj_Player.sprintMultiplier += increaseModifier;
		}

	if (statToIncrease == "damageMultiplier")
		{
			obj_Player.damageMultiplier += increaseModifier;
		}

	if (statToIncrease == "hp")
		{
			obj_Player.hp += increaseModifier;
		}
		
	instance_destroy();
}
	
