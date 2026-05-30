event_inherited();

var difficulty;

if (array_contains(global.difficultyCompleted, "mediumEndless"))
{
	sprite_index = spr_MediumDifficultyButtonDiamond;
}
else if (array_contains(global.difficultyCompleted, "medium"))
{
	sprite_index = spr_MediumDifficultyButtonGold;
}