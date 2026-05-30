event_inherited();

var difficulty;


if (array_contains(global.difficultyCompleted, "easyEndless"))
{
	sprite_index = spr_EasyDifficultyButtonDiamond;
}
else if (array_contains(global.difficultyCompleted, "easy"))
{
	sprite_index = spr_EasyDifficultyButtonGold;
}