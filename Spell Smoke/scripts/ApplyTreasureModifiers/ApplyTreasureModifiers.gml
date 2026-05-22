function ApplyTreasureModifiers(treasure, type){

  var latestItem = instance_find(obj_ParentItem, instance_number(obj_ParentItem) - 1);

  if (type = "Treasure"){

  if (obj_ParentTreasure.itemPool[treasure] == "Speed")
    {
      latestItem.statToIncrease = "sprintMultiplier";
      latestItem.increaseModifier = 0.75;
      latestItem.sprite_index = spr_TreasureSpeed;
    }


  if (obj_ParentTreasure.itemPool[treasure] == "Power")
    {
      latestItem.statToIncrease = "damageMultiplier";

      switch (global.difficulty)
        {
            case "easy":
          latestItem.increaseModifier = 1;
            break;

            case "middle":
          latestItem.increaseModifier = 0.75;
            break;

            case "hard":
          latestItem.increaseModifier = 0.5;
            break;
        }

      latestItem.sprite_index = spr_TreasurePower;

    }


  if (obj_ParentTreasure.itemPool[treasure] == "Health")
    {
      latestItem.statToIncrease = "max_hp";
      latestItem.increaseModifier = 2;
      latestItem.sprite_index = spr_TreasureHealth;
    }

  }



  if (type = "Shop"){

  if (obj_ShopItem.itemPool[treasure] == "Heal")
    {
      latestItem.statToIncrease = "heal";
      latestItem.increaseModifier = 2;
      latestItem.sprite_index = spr_TreasureHeal;
      switch (global.difficulty)
        {
            case "easy":
          latestItem.price = 6;
            break;

            case "middle":
          latestItem.price = 12;
            break;

            case "hard":
          latestItem.price = 18;
            break;
        }
    }

  if (obj_ShopItem.itemPool[treasure] == "Key")
    {
      latestItem.statToIncrease = "key";
      latestItem.increaseModifier = 1;
      latestItem.sprite_index = spr_Key;
      switch (global.difficulty)
        {
            case "easy":
          latestItem.price = 4;
            break;

            case "middle":
          latestItem.price = 8;
            break;

            case "hard":
          latestItem.price = 12;
            break;
        }
    }

  }
}