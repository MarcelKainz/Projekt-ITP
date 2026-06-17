// detect new achievements

while (array_length(global.difficultyCompleted) > global.lastAchievementCount)
{
	var id2 = global.difficultyCompleted[global.lastAchievementCount];
	achievement_unlock(id2);
	global.lastAchievementCount++;
}

// load next
if (global.currentAchievement == undefined)
{
	if (array_length(global.achievementQueue) > 0)
	{
	    global.currentAchievement = global.achievementQueue[0];
	    array_delete(global.achievementQueue, 0, 1);

	    global.achievementTimer = room_speed * 4;
	}
}

// timer
if (global.currentAchievement != undefined)
{
	global.achievementTimer--;

	if (global.achievementTimer <= 0)
	{
	    global.currentAchievement = undefined;
	}
}

// slide
var goal_x = (global.currentAchievement != undefined)
	? target_x
	: display_get_gui_width() + 300;

popup_x = lerp(popup_x, goal_x, 0.15);