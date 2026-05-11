var door_center_x = obj_Door.x + obj_Door.sprite_width * 0.5;
var door_center_y = obj_Door.y + obj_Door.sprite_height * 0.5;

if (point_distance(
    obj_Player.x,
    obj_Player.y,
    door_center_x,
    door_center_y
) <= 40)
{
    if (keyboard_check_pressed(ord("E")))
    {
        RoomLogic();
    }
}