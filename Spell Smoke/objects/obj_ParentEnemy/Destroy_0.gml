if (random(1) < 0.25)
{
    instance_create_layer(x-8, y-8, "Instances", obj_Key);
}
else
{
    instance_create_layer(x-8, y-8, "Instances", obj_Bone);
}
instance_destroy(obj_PlayerBullet);
audio_play_sound(sou_Hit, 1, false);