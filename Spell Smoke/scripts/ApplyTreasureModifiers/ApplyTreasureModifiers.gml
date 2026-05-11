function ApplyTreasureModifiers(treasure){
	
	if (obj_ParentTreasure.TreasurePool[treasure] == "Speed")
		{
			obj_ParentItem.statToIncrease = "maxSpeed";
			obj_ParentItem.increaseModifier = 1;
			obj_ParentItem.sprite_index = spr_TreasureSpeed;
		}
		
		
	if (obj_ParentTreasure.TreasurePool[treasure] == "Power")
		{
			obj_ParentItem.statToIncrease = "damageMultiplier";
			obj_ParentItem.increaseModifier = 1;
			obj_ParentItem.sprite_index = spr_TreasurePower;
		}
		
		
	if (obj_ParentTreasure.TreasurePool[treasure] == "Health")
		{
			obj_ParentItem.statToIncrease = "max_hp";
			obj_ParentItem.increaseModifier = 1;
			obj_ParentItem.sprite_index = spr_TreasureHealth;
		}
		
	if (obj_ParentTreasure.TreasurePool[treasure] == "Heal")
		{
			obj_ParentItem.statToIncrease = "hp";
			obj_ParentItem.increaseModifier = 2;
			obj_ParentItem.sprite_index = spr_TreasureHeal;
		}
	
}