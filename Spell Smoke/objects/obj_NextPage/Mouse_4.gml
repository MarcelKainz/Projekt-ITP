event_inherited();

var room_name = $"rm_AchievementMenu{pageToGo}";

var nextRoom_id = asset_get_index(room_name);

room_goto(nextRoom_id);