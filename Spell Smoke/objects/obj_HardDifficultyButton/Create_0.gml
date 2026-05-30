event_inherited();

var difficulty;

if (array_contains(global.difficultyCompleted, "hardEndless"))
{
	sprite_index = spr_HardDifficultyButtonDiamond;
}
else if (array_contains(global.difficultyCompleted, "hard"))
{
	sprite_index = spr_HardDifficultyButtonGold;
}