var treasure_center_x = x + sprite_width * 0.5;
var treasure_center_y = y - sprite_height * 0.5;

if (point_distance(obj_Player.x, obj_Player.y, treasure_center_x, treasure_center_y) <= 40 && obj_Player.keys >= 1)
{
	EPress(true);
	should_show_price = true;
		
	if (keyboard_check_pressed(ord("E")))
	{
		obj_Player.keys --;
		audio_play_sound(sou_Lock, 1, false);
		EPress(false);
		instance_create_layer(x, y, "Instances", obj_ParentTreasure);
		instance_destroy();

	}
}
	else
	{
		EPress(false);
		should_show_price = false;
	}