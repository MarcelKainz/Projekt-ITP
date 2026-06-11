cursor_sprite = noone;
window_set_cursor(cr_default);

if (get_timer() < 10000000){ //nur am Anfang des Spiels laden
	global.difficultyCompleted = [];
	LoadAchievements("save.txt", global.difficultyCompleted);
}
SaveAchievements("save.txt", global.difficultyCompleted);