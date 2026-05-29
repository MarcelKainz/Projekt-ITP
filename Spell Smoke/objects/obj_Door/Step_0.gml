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
		layer_sprite_create("Instances", x, y - 32, spr_GuidanceArrow)
	}

	if (point_distance(obj_Player.x, obj_Player.y, door_center_x, door_center_y) <= 40){
		EPress(true);
		if (keyboard_check_pressed(ord("E")))
		{
			audio_play_sound(sou_NextRoom, 1, false);
			if (fixedRoom != noone) {
				room_goto(roomID);
				obj_Player.roomsPassed++;
			} else RoomLogic(); //basically Always
		}
	}
	else
	{
		EPress(false);
	}
}