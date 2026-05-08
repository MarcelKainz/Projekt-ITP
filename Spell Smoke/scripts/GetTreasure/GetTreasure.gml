function GetTreasure(pool){
	treasurePulled = round(random_range(0, array_length(pool)-1));
	instance_create_layer(x, y, "Instances", obj_ParentItem);
	ApplyTreasureModifiers(treasurePulled);
}