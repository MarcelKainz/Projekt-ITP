cursor_sprite = noone;
window_set_cursor(cr_default);

//if (get_timer() < 1000) //nur am Anfang des Spiels laden
LoadAchievements("save.txt", global.difficultyCompleted);
//SaveAchievements("save.txt", global.difficultyCompleted);