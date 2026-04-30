function NextRoomDefault(){
	var roomType = round(random(2)+1); //statisch raumart auswürfeln
	var roomNr = round(random(1)+1); // an der vorhandenen Raumanzahl des Typs auswürfeln || gerade statisch
	var roomName = "rm" + string(roomType) + "_" + string(roomNr);
	var roomID = asset_get_index(roomName);
	
	show_debug_message(roomName);
	show_debug_message(roomID);
	
	room_goto(roomID);
	obj_Player.roomsPassed++;
}