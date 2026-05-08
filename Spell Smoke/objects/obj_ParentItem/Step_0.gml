if (place_meeting(x, y, obj_Player))
{
		
	if (statToIncrease == "maxSpeed")
		{
			obj_Player.maxSpeed += increaseModifier;
			obj_Player.accel += increaseModifier;
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
	
