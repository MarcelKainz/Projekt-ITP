global.achievementQueue = [];
global.currentAchievement = undefined;
global.achievementTimer = 0;
global.lastAchievementCount = 0;

popup_x = display_get_gui_width() + 300;
target_x = display_get_gui_width() - 250;
popup_y = 40;


if (variable_global_exists("difficultyCompleted"))
{
    global.lastAchievementCount = array_length(global.difficultyCompleted);
}
else
{
    global.lastAchievementCount = 0;
}