draw_self();


if(global.endlessmode)
{
	if (obj_EndlessSelected.sprite_index == spr_EndlessModeButton){
		draw_text(x-32, y-100, global.difficulty + " Endless");
		draw_text(x-32, y-175, "No boss. look how long you can survive in the " + global.difficulty + " endless dungeon.");
		draw_text(x-32, y-150, "Get a special trophy for the " + global.difficulty + " difficulty after beating 100 floors.");
	}
}
else if (!global.endlessmode){
	if (sprite_index == spr_EasyDifficultyButton || sprite_index == spr_EasyDifficultyButtonGold || sprite_index == spr_EasyDifficultyButtonDiamond){
		draw_text(x-32, y-100, "Easy");
		draw_text(x-32, y-150, "Prepare yourself in 10 Rooms before facing the Boss.");
		draw_text(x-32, y-175, "Strong powerups and weak enemies.");
	}

	else if (sprite_index == spr_MediumDifficultyButton || sprite_index == spr_MediumDifficultyButtonGold || sprite_index == spr_MediumDifficultyButtonDiamond){
		draw_text(x-32, y-100, "Medium");
		draw_text(x-32, y-150, "Prepare yourself in 15 Rooms before facing the Boss.");
		draw_text(x-32, y-175, "Moderate powerups and medium enemies.");
	}

	else if (sprite_index == spr_HardDifficultyButton || sprite_index == spr_HardDifficultyButtonGold || sprite_index == spr_HardDifficultyButtonDiamond){
		draw_text(x-32, y-100, "Hard");
		draw_text(x-32, y-150, "Prepare yourself in 20 Rooms before facing the Boss.");
		draw_text(x-32, y-175, "Weak powerups and strong enemies.");
	}
}
