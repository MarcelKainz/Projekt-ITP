if (place_meeting(x, y, obj_Player) && price=0)
{
  audio_play_sound(sou_ItemPickup, 1, false);

  if (statToIncrease == "sprintMultiplier")
    {
      obj_Player.sprintMultiplier += increaseModifier;
      obj_Player.accel += increaseModifier;
    }

  if (statToIncrease == "damageMultiplier")
    {
      obj_Player.damageMultiplier += increaseModifier;
    }

  if (statToIncrease == "max_hp")
    {
      obj_Player.max_hp += increaseModifier;
      obj_Player.hp += increaseModifier;
    }

    if (statToIncrease == "heal")
    {
      obj_Player.hp += increaseModifier;
      obj_Player.hp = clamp(obj_Player.hp, 0, obj_Player.max_hp)
    }

  if (statToIncrease == "key")
    {
      obj_Player.keys += increaseModifier;
    }

  instance_destroy();
}

if (point_distance(obj_Player.x, obj_Player.y, x+sprite_width/2, y+sprite_height/2) <= 40 && keyboard_check_pressed(ord("E")))
{

  if (statToIncrease == "heal" && obj_Player.bones >= price)
    {
      obj_Player.hp += increaseModifier;
      obj_Player.hp = clamp(obj_Player.hp, 0, obj_Player.max_hp)
      obj_Player.bones -= price;
      audio_play_sound(sou_ItemPickup, 1, false);
      instance_destroy();
    }

  if (statToIncrease == "key" && obj_Player.bones >= price)
    {
      obj_Player.keys += increaseModifier;
      obj_Player.bones -= price;
      audio_play_sound(sou_ItemPickup, 1, false);
      instance_destroy();
    }

}