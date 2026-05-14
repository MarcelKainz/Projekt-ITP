// Script: PlayMode

global.endlessmode = false;
global.difficulty = "easy";

function DifficultyMode(dif)
{
    global.difficulty = dif;
}

function EndlessMode(endless)
{
    global.endlessmode = endless;
}