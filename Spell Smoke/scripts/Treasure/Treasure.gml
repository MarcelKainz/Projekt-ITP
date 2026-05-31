function ApplyTreasureModifiers(treasure, type){

  var latestItem = instance_find(obj_ParentItem, instance_number(obj_ParentItem) - 1);

  if (type = "Treasure"){

  if (obj_ParentTreasure.itemPool[treasure] == "Speed")
    {
      latestItem.statToIncrease = "sprintMultiplier";
      latestItem.increaseModifier = 0.1;
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

            case "medium":
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
      latestItem.increaseModifier = 1;
      latestItem.sprite_index = spr_TreasureHealth;
    }
	
	
	if (obj_ParentTreasure.itemPool[treasure] == "AttackSpeed")
    {
      latestItem.statToIncrease = "attackSpeed";
            switch (global.difficulty)
        {
            case "easy":
          latestItem.increaseModifier = 0.7;
            break;

            case "medium":
          latestItem.increaseModifier = 0.8;
            break;

            case "hard":
          latestItem.increaseModifier = 0.9;
            break;
        }
      latestItem.sprite_index = spr_TreasureAttackSpeed;
    }
	
  if (obj_ParentTreasure.itemPool[treasure] == "Range")
    {
      latestItem.statToIncrease = "range";
      latestItem.increaseModifier = 50;
      latestItem.sprite_index = spr_TreasureRange;
    }	

  }
  




  if (type = "Shop"){

  if (obj_ShopItem.itemPool[treasure] == "Heal")
    {
      latestItem.statToIncrease = "heal";
      latestItem.increaseModifier = 1;
      latestItem.sprite_index = spr_TreasureHeal;
      switch (global.difficulty)
        {
            case "easy":
          latestItem.price = 5;
            break;

            case "medium":
          latestItem.price = 10;
            break;

            case "hard":
          latestItem.price = 15;
            break;
        }
    }
	
	if (obj_ShopItem.itemPool[treasure] == "GreaterHeal")
    {
      latestItem.statToIncrease = "greaterHeal";
      latestItem.increaseModifier = 3;
      latestItem.sprite_index = spr_TreasureGreaterHeal;
      switch (global.difficulty)
        {
            case "easy":
          latestItem.price = 10;
            break;

            case "medium":
          latestItem.price = 20;
            break;

            case "hard":
          latestItem.price = 30;
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

            case "medium":
          latestItem.price = 8;
            break;

            case "hard":
          latestItem.price = 12;
            break;
        }
    }

  }
}

function GetTreasure(pool, type){
	treasurePulled = round(random_range(0, array_length(pool)-1));
	instance_create_layer(x+8, y-24, "Instances", obj_ParentItem);
	ApplyTreasureModifiers(treasurePulled, type);
}