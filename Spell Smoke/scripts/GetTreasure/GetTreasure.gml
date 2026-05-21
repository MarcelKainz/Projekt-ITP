function GetTreasure(pool, type){
	treasurePulled = round(random_range(0, array_length(pool)-1));
	instance_create_layer(x+8, y-24, "Instances", obj_ParentItem);
	ApplyTreasureModifiers(treasurePulled, type);
}