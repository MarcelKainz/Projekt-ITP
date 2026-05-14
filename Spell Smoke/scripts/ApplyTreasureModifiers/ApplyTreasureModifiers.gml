function ApplyTreasureModifiers(treasure){
	
	var latestItem = instance_find(obj_ParentItem, instance_number(obj_ParentItem) - 1);
	
	if (obj_ParentTreasure.TreasurePool[treasure] == "Speed")
		{
			latestItem.statToIncrease = "sprintMultiplier";
			latestItem.increaseModifier = 0.75;
			latestItem.sprite_index = spr_TreasureSpeed;
		}
		
		
	if (obj_ParentTreasure.TreasurePool[treasure] == "Power")
		{
			latestItem.statToIncrease = "damageMultiplier";
				
			switch (global.difficulty)
		    {
		        case "easy":
					latestItem.increaseModifier = 1;
		        break;

		        case "middle":
					latestItem.increaseModifier = 0.75;
		        break;

		        case "hard":
					latestItem.increaseModifier = 0.5;
		        break;
		    }
			
			latestItem.sprite_index = spr_TreasurePower;
			
		}
		
		
	if (obj_ParentTreasure.TreasurePool[treasure] == "Health")
		{
			latestItem.statToIncrease = "max_hp";
			latestItem.increaseModifier = 1;
			latestItem.sprite_index = spr_TreasureHealth;
		}
		
	if (obj_ParentTreasure.TreasurePool[treasure] == "Heal")
		{
			latestItem.statToIncrease = "hp";
			switch (global.difficulty)
		    {
		        case "easy":
					latestItem.increaseModifier = 2;
		        break;

		        case "middle":
					latestItem.increaseModifier = 1.5;
		        break;

		        case "hard":
					latestItem.increaseModifier = 1;
		        break;
		    }
			latestItem.sprite_index = spr_TreasureHeal;
		}
	
}