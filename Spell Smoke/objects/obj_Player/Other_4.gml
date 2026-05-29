global.grid = mp_grid_create(0, 0, room_width / 32, room_height / 32, 32, 32);
mp_grid_add_instances(global.grid, obj_ParentSolid, false);

if (instance_exists(obj_Entrance)) {
    x = obj_Entrance.x + obj_Entrance.sprite_width / 2;
    y = obj_Entrance.y - obj_Entrance.sprite_height;
}