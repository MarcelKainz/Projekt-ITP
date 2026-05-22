var closed = instance_exists(obj_ParentEnemy);
var door_center_x = obj_Door.x + obj_Door.sprite_width * 0.5;
var door_center_y = obj_Door.y + obj_Door.sprite_height * 0.5;


if(closed){}
else
{
	if(!stateChanged){
		audio_play_sound(sou_Lock, 1, false);
		sprite_index = spr_Door;
		stateChanged = true;
	}

	if (point_distance(obj_Player.x, obj_Player.y, door_center_x, door_center_y) <= 40 && keyboard_check_pressed(ord("E")))
	{
		audio_play_sound(sou_NextRoom, 1, false);
		RoomLogic();
	}
}