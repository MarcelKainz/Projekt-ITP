function EPress(_should_show){
    if (_should_show)
    {
        if (!instance_exists(my_prompt)) 
        {
            my_prompt = instance_create_layer(obj_Player.x - obj_Player.sprite_width/2, obj_Player.y - 32, "Instances", obj_EPress);
        }
    }
    else
    {
        if (instance_exists(my_prompt)) 
        {
            instance_destroy(my_prompt);
            my_prompt = noone;
        }
    }
}