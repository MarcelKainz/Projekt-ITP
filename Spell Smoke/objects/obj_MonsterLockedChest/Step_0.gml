var treasure_center_x = x + sprite_width * 0.5;
var treasure_center_y = y - sprite_height * 0.5;

if (open)
{
	instance_create_layer(x, y, "Instances", obj_ParentTreasure);
	instance_destroy();
}
	

if (!instance_exists(obj_ParentEnemy)){
	open = true;
}