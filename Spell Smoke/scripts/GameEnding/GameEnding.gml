function GameWin(){
	startMenu = asset_get_index(rm_StartMenu);
	instance_destroy(obj_Player);
	window_set_cursor(cr_default);
	cursor_sprite = cr_default;
	if (!array_contains(global.difficultyCompleted, global.difficulty))
	{
		array_push(global.difficultyCompleted, global.difficulty);
	}
	room_goto(startMenu);	
}

function GameLose() {
	startMenu = asset_get_index(rm_StartMenu);
	instance_destroy(obj_Player);
	window_set_cursor(cr_default);
	cursor_sprite = cr_default;
	room_goto(startMenu);
}