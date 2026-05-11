var treasure_center_x = obj_ParentTreasure.x + obj_ParentTreasure.sprite_width * 0.5;
var treasure_center_y = obj_ParentTreasure.y + obj_ParentTreasure.sprite_height * 0.5;

if (point_distance(obj_Player.x, obj_Player.y, treasure_center_x, treasure_center_y) <= 40 && keyboard_check_pressed(ord("E")))
{
		GetTreasure(TreasurePool);
		instance_destroy();
}