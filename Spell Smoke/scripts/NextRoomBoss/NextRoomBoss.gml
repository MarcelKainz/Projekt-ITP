function NextRoomBoss(){
	var roomType = "boss";
	var roomNr = 1; // vllt dynamisch später || gerade statisch
	var roomName = "rm" + roomType + "_" + string(roomNr);
	var roomID = asset_get_index(roomName);
	
	show_debug_message(roomName);
	show_debug_message(roomID);
	
	room_goto(roomID);
	obj_Player.roomsPassed++;
}