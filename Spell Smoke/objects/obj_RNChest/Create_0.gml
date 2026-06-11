randomPulled = irandom(19)+1; 

if (randomPulled == 20) {
    instance_create_layer(x, y+32, "Instances", obj_MonsterLockedChest);
	instance_destroy();
}
else
{
	instance_destroy();
}