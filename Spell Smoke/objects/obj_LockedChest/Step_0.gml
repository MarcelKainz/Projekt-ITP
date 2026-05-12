var treasure_center_x = x + sprite_width * 0.5;
var treasure_center_y = y + sprite_height * 0.5;

if (point_distance(obj_Player.x, obj_Player.y, treasure_center_x, treasure_center_y) <= 40 && keyboard_check_pressed(ord("E")) && obj_Player.keys >= 1)
{
		obj_Player.keys --;
		instance_create_layer(x, y, "Instances", obj_ParentTreasure);
		instance_destroy();
}