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
			latestItem.increaseModifier = 1;
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
			latestItem.increaseModifier = 2;
			latestItem.sprite_index = spr_TreasureHeal;
		}
	
}