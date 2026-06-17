cursor_sprite = noone;
window_set_cursor(cr_default);

if (get_timer() < 3000000){ //nur am Anfang des Spiels laden
	global.buttonMoveUp = ord("W");
	global.buttonMoveLeft = ord("A");
	global.buttonMoveRight = ord("D");
	global.buttonMoveDown = ord("S");
	global.buttonSprint = vk_shift;
	global.difficultyCompleted = [""];
	LoadAchievements("save.txt", global.difficultyCompleted);
}
SaveAchievements("save.txt", global.difficultyCompleted);


obj_Sound.player_was_alive = !obj_Sound.player_was_alive