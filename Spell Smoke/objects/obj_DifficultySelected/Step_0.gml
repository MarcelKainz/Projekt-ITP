if(global.difficulty == "easy")
{	
	if (array_contains(global.difficultyCompleted, "easy"))
	{
		sprite_index = spr_EasyDifficultyButtonGold;
	}
	else
	{
	obj_DifficultySelected.sprite_index = spr_EasyDifficultyButton;
	}
}
else if(global.difficulty == "medium")
{	
	if (array_contains(global.difficultyCompleted, "medium"))
	{
		sprite_index = spr_MediumDifficultyButtonGold;
	}
	else
	{
	obj_DifficultySelected.sprite_index = spr_MediumDifficultyButton;
	}
}
else if(global.difficulty == "hard")
{	
	if (array_contains(global.difficultyCompleted, "hard"))
	{
		sprite_index = spr_HardDifficultyButtonGold;
	}
	else
	{
	obj_DifficultySelected.sprite_index = spr_HardDifficultyButton;
	}
}