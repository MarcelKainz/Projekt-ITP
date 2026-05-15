if(global.difficulty == "easy")
{	
	obj_DifficultySelected.sprite_index = spr_EasyDifficultyButton;
}
else if(global.difficulty == "middle")
{	
	obj_DifficultySelected.sprite_index = spr_MediumDifficultyButton;
}
else if(global.difficulty == "hard")
{	
	obj_DifficultySelected.sprite_index = spr_HardDifficultyButton;
}

if(global.endlessmode)
{
	obj_DifficultySelected.sprite_index = spr_EndlessModeButton;
}