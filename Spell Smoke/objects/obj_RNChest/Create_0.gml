randomPulled = irandom(9) + 1; 

if (randomPulled == 10) {
    instance_create_layer(x+16, y+16, "Instances", obj_ParentTreasure);
	instance_destroy();
}
else
{
	instance_destroy();
}