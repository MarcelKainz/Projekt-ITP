// Script: PlayMode

global.endlessmode = false;
global.difficulty = "easy";
global.debug = false;

function DifficultyMode(dif)
{
    global.difficulty = dif;
}

function EndlessMode(endless)
{
    global.endlessmode = endless;
}
function DebugMode(bug)
{
	global.debug = bug;
}