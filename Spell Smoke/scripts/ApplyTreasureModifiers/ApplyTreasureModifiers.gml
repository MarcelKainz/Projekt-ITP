function ApplyTreasureModifiers(treasure){
	
	if (obj_ParentTreasure.TreasurePool[treasure] == "Speed")
		{
			obj_ParentItem.statToIncrease = "maxSpeed";
			obj_ParentItem.increaseModifier = 1;
		}
		
		
	if (obj_ParentTreasure.TreasurePool[treasure] == "Power")
		{
			obj_ParentItem.statToIncrease = "damageMultiplier";
			obj_ParentItem.increaseModifier = 1;
		}
		
		
	if (obj_ParentTreasure.TreasurePool[treasure] == "Health")
		{
			obj_ParentItem.statToIncrease = "hp";
			obj_ParentItem.increaseModifier = 2;
		}
	
}